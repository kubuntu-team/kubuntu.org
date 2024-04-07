#!/bin/bash

# Helper Shell Script
# Author: Rick Timmis <ricktimmis68@gmail.com>
#
# The purpose of this script is to make it as simple as possible for new kubuntu
# contributors, to get a development instance of kubuntu.org up and working
# so that they can develop new content, and maintain the site with ease

# For usage with Development IDE Configurations (i.e JetBrains or VSCode)
# the script can be called with a --stop switch

for ARG in "$@"
do
    if [ "$ARG" = "--stop" ]; then
        echo "Stopping kubuntu.org development services..."
        # Add your stop behavior here
        pkill -HUP hugo
        pkill -HUP firefox

        # You can use `exit` or `break` depending on your script structure
        # If you want to stop the script execution if --stop is found, use `exit`
        # If you want to just stop the loop and continue with the script, use `break`
        exit
    fi
done

# Check if the hugo static site builder is available and install it from the snap store
# if it isn't then install it
if ! command -v hugo &> /dev/null
then
    echo "Hugo is not installed. Installing via Snap..."
    sudo snap install hugo
else
    echo "Starting kubuntu.org development services..."
fi

# The Hugo Server command reloads the site upon any change, but to help avoid
# any parallel runs of collisions. We check if it is runing from a previous session
# and stop it if required.
# We loop and wait here, to enable Hugo to clean up
while pgrep hugo > /dev/null
do
    echo "Hugo is running. Sending HUP signal..."
    pkill -HUP hugo
    sleep 5
done

# Start the Hugo development server
hugo server --disableFastRender &

# Launch the site in the browser
firefox --new-window http://localhost:1313 &>/dev/null &

exit 0