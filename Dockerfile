# Use official Node.js image as base
FROM node:18-alpine

# Set the working directory in the container
WORKDIR /usr/src/app

# Copy package.json and package-lock.json to the container
COPY package*.json ./

# Install dependencies
RUN npm install

# Copy the rest of the application code to the container
COPY . .

# Expose port 4000 to the outside world
EXPOSE 4000

# Command to run the application
CMD ["npm", "run", "start"]