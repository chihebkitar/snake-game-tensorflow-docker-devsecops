# Base image
FROM node:18-alpine

# Create an app directory
WORKDIR /usr/src/app

# Copy your static files (Snake game files) into the container
COPY index.html script.js style.css ai.js tfjs.js ./

# Expose port 8080
EXPOSE 8080

# Use a simple HTTP server (like 'http-server') or run Node
RUN npm install -g http-server

# CMD to serve the game on port 8080
CMD ["http-server", "-p", "8080", "."]
