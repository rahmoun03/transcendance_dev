# Use the official Node.js image from the Docker Hub
FROM node:latest

# Create and change to the app directory
WORKDIR /app

# Copy package.json and package-lock.json (if available)
COPY package*.json ./

# Install dependencies
RUN npm install

# # Copy the rest of the application code
# COPY . .

# Expose the port Vite uses
EXPOSE 5173

# Command to run the Vite development server
CMD ["npx", "vite"]
