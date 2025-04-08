# Use an official Node.js image from DockerHub
FROM node:18-alpine

# Set the working directory inside the container
WORKDIR /usr/src/app

# Copy package files and install dependencies
COPY package*.json ./
RUN npm install

# Copy the rest of your app's source code
COPY . .

# Expose the port your app runs on
EXPOSE 3000

# Define the default command
CMD ["npm", "start"]
