FROM node:18-alpine

# Set the working directory
WORKDIR /usr/src/app

# Copy package.json and package-lock.json to leverage Docker cache
COPY package*.json ./

# Install only production dependencies
RUN npm install --only=production

# Copy only necessary files to the container
COPY .. .

# Expose the port the app runs on
EXPOSE 3000

# Use a non-root user to run the app
USER node

# Command to run the app
CMD ["node", "server.js"]