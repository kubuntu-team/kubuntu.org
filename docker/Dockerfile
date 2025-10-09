FROM nginx:alpine

# Copy custom nginx config
COPY nginx.conf /etc/nginx/conf.d/default.conf

# The hugo public directory will be mounted here
WORKDIR /usr/share/nginx/html
