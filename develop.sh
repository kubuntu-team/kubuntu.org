#!/bin/bash

# kubuntu-dev.sh
# A unified development script for kubuntu.org
# Supports both direct local development and proxy-enabled testing

# Default configuration
USE_PROXY=false
STOP_SERVICES=false

# Function to show usage
show_usage() {
    echo "Usage: $0 [OPTIONS]"
    echo "Options:"
    echo "  --proxy    Enable proxy mode (forwards kubuntu.org to local Hugo server)"
    echo "  --stop     Stop all development services"
    echo "  --help     Show this help message"
}

# Function to check if running as root
check_root() {
    if [ "$EUID" -eq 0 ]; then
        echo "This script should not be run as root."
        exit 1
    fi
}

# Function to check for required tools
check_requirements() {
    if [ "$USE_PROXY" = true ] && ! command -v socat &> /dev/null; then
        echo "Error: socat is not installed. Please install it with:"
        echo "sudo apt install socat"
        exit 1
    fi

    if ! command -v hugo &> /dev/null; then
        echo "Hugo is not installed. Installing via Snap..."
        sudo snap install hugo
    fi
}

# Function to check hosts entry (only for proxy mode)
check_hosts_entry() {
    if ! grep -q "127.0.0.1[[:space:]]\+kubuntu.org" /etc/hosts; then
        echo "Error: The required hosts entry is missing."
        echo "Please add the following line to your /etc/hosts file:"
        echo "127.0.0.1 kubuntu.org"
        echo ""
        echo "You can do this by running:"
        echo "sudo sh -c 'echo \"127.0.0.1 kubuntu.org\" >> /etc/hosts'"
        exit 1
    fi
    echo "✓ Hosts file entry for kubuntu.org found."
}

# Function to stop all services
stop_services() {
    echo "Stopping kubuntu.org development services..."
    
    # Stop socat proxy if running
    if pgrep -f "socat TCP-LISTEN:80" > /dev/null; then
        echo "Stopping socat proxy..."
        sudo pkill -f "socat TCP-LISTEN:80"
    fi
    
    # Stop Hugo if running
    if pgrep hugo > /dev/null; then
        echo "Stopping Hugo server..."
        pkill -HUP hugo
    fi
    
    # Close Firefox if it was opened by the script
    if pgrep -f "firefox.*kubuntu.org" > /dev/null; then
        echo "Closing Firefox..."
        pkill -f "firefox.*kubuntu.org"
    fi
    
    echo "All services stopped."
    exit 0
}

# Parse command line arguments
while [[ $# -gt 0 ]]; do
    case $1 in
        --proxy)
            USE_PROXY=true
            shift
            ;;
        --stop)
            stop_services
            ;;
        --help)
            show_usage
            exit 0
            ;;
        *)
            echo "Unknown option: $1"
            show_usage
            exit 1
            ;;
    esac
done

# Main execution starts here
check_root
check_requirements

# If proxy mode is enabled, check hosts file
if [ "$USE_PROXY" = true ]; then
    check_hosts_entry
fi

# Stop any running instances of Hugo
while pgrep hugo > /dev/null; do
    echo "Hugo is running. Stopping it..."
    pkill -HUP hugo
    sleep 2
done

# Start Hugo server with appropriate configuration
echo "Starting Hugo development server..."
if [ "$USE_PROXY" = true ]; then
    hugo server --bind=0.0.0.0 --port=1313 &
else
    hugo server &
fi

# Wait for Hugo to start
sleep 3

# Start proxy if enabled
if [ "$USE_PROXY" = true ]; then
    echo "Starting proxy service to forward kubuntu.org to local Hugo server..."
    sudo socat TCP-LISTEN:80,fork TCP:127.0.0.1:1313 &
    URL="http://kubuntu.org"
else
    URL="http://localhost:1313"
fi

# Launch browser
firefox --new-window "$URL" &>/dev/null &

echo ""
echo "✓ Development environment is ready!"
echo "✓ Visit $URL in your browser to view the site."
echo ""
echo "To stop the development environment, run:"
echo "$0 --stop"

# Keep the script running
echo "Press Ctrl+C to stop the development environment."
wait
