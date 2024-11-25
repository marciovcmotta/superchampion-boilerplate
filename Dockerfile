# Use an official Node.js image as a base -- check on https://hub.docker.com/
FROM node:18-alpine

# Set the working directory
WORKDIR /app

# Copy the package.json file to the working directory
COPY package.json ./

# Install the project dependencies
RUN npm install --verbose

# Copy the rest of the files to the container
COPY . .

# Exposes the port defined in the .env file
EXPOSE 5000

# Command to start the server in development mode
CMD ["npm", "run", "start:dev"]