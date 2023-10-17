# Use an official Node.js runtime as a parent image
FROM node:16.16.0

# Set the working directory in the container
WORKDIR /app

# Copy the package.json and package-lock.json into the container
COPY package*.json ./

# Install app dependencies
RUN npm install

# Bundle your source code into the container
COPY . .

# Expose a port on which the server will run (replace 3000 with your server's port)
EXPOSE 3000

# Define a command to start your application (replace "npm start" with your actual start command)
CMD ["npm", "run","dev"]
