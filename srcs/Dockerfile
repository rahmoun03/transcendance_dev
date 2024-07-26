# Use the official Node.js image from the Docker Hub
FROM node:latest

# Create and change to the app directory

RUN mkdir -p app


WORKDIR /app
# RUN touch /app/package.json
# Copy package.json and package-lock.json (if available)


# COPY    ./package.json /app/package.json
COPY    setup.sh .

# Install dependencies
RUN chmod +x setup.sh && mv setup.sh /bin/

# RUN npm install vite three three-orbitcontrols lil-gui

# RUN npm install -y

# Expose the port Vite uses
EXPOSE 5173

# Command to run the Vite development server
CMD ["sh", "-c", "setup.sh"]
