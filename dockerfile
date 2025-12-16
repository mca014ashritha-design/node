# Use the official Node.js image from Docker Hub (Alpine variant)
FROM node:alpine

# Set the working directory inside the container to /app
WORKDIR /app

# Copy package.json and package-lock.json to leverage Docker caching
COPY package*.json ./

# Install dependencies
RUN npm install

# Copy the rest of your application code into the container
COPY . .

# Expose port 5000 (make sure your app is running on this port)
EXPOSE 5000

# Command to run your application
CMD ["node", "app.js"]

