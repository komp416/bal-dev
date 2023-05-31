# Use the official Node.js 19.9 image.
FROM node:19.9-slim

# Create and change to the app directory.
WORKDIR /usr/src/app/balengineering

# Copying this separately prevents re-running npm install on every code change.
COPY package*.json ./

# Install all dependencies.
RUN npm install 

# Copy local code to the container image.
COPY . .

# Run the webpack build
RUN npm run build
