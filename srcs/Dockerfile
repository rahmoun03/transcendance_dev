# Use the official Node.js image from the Docker Hub
FROM node:latest

# Create and change to the app directory

WORKDIR /app
# Copy package.json and package-lock.json (if available)
# COPY ./package-lock.json /app
# COPY ./package.json /app


COPY package*.json ./
COPY vite.config.js ./


# Install dependencies
RUN chmod +x package-lock.json package.json vite.config.js
RUN npm install -y
# # Copy the rest of the application code
# COPY run.sh /app/

# Expose the port Vite uses
EXPOSE 5173

# Command to run the Vite development server
# CMD ["sh", "run.sh"]
CMD ["sh", "-c", "npx vite --host 0.0.0.0"]
