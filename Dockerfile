# Use Node.js base image
FROM node:16-alpine

# Set the working directory inside the container
WORKDIR /usr/src/app

# Copy package.json and install dependencies
COPY package*.json ./
RUN npm install

# Copy the rest of the application
COPY . .

# Build the app
RUN npm run build

# Expose the port for the app
EXPOSE 3000

# Command to run the app
CMD ["npm", "start"]
