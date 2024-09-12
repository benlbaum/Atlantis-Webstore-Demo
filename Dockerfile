# Use Node.js 18-alpine
FROM node:18-alpine

# Set the working directory
WORKDIR /usr/src/app

# Copy package.json and install dependencies
COPY package*.json ./
RUN npm install

# Copy the rest of the app
COPY . .

# Build the Next.js app
RUN npm run build

# Expose the port
EXPOSE 3000

# Command to run the app
CMD ["npm", "start"]
