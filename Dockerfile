# Use the official Node.js image with Alpine Linux (lightweight)
FROM node:alpine

# Set the working directory inside the container
WORKDIR /app

# Copy package.json and package-lock.json separately for better caching
COPY package.json ./

# Install dependencies
RUN npm install

# Copy the entire src directory into the container
COPY src ./src

# Set the default command to run the application
CMD ["node", "src/server.js"]
