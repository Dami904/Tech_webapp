# Use a lightweight nginx image to serve static files
FROM nginx:alpine

# Remove default nginx static assets
RUN rm -rf /usr/share/nginx/html/*

# Copy all HTML files into the nginx web root
COPY index.html /usr/share/nginx/html/index.html
COPY Homepage.html /usr/share/nginx/html/Homepage.html

# Expose port 80
EXPOSE 80

# Start nginx in the foreground
CMD ["nginx", "-g", "daemon off;"]
