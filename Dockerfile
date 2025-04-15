# Use official lightweight Nginx image
FROM nginx:alpine

# Remove default nginx static files
RUN rm -rf /usr/share/nginx/html/*

# Copy your site files (from the GitHub repo) into nginx's web root
COPY . /usr/share/nginx/html

# Expose port 80 for serving the site
EXPOSE 80

# Start nginx in foreground mode
CMD ["nginx", "-g", "daemon off;"]
