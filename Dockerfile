# Use the official Node.js image as a base
FROM node:18-alpine

# Setup the working directry in the container
WORKDIR /

# copy the package.json & installation dependencies
COPY package.json ./
RUN npm install

# Expose the port for the app
EXPOSE 8000

# Start the application
CMD ["node", "app.js"]