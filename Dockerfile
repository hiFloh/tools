# Lightweight static host for browser-analyzer.html
FROM nginx:alpine

# Remove default nginx welcome page
RUN rm -rf /usr/share/nginx/html/*

# Serve our analyzer as the index page
COPY . /usr/share/nginx/html/
RUN rm -f /usr/share/nginx/html/Dockerfile
RUN rm -rf /usr/share/nginx/html/.git
EXPOSE 80

# nginx:alpine already runs nginx in the foreground by default (CMD is inherited)