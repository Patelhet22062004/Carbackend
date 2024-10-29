# syntax=docker/dockerfile:1

ARG NODE_VERSION=22.1.0
FROM node:${NODE_VERSION}-alpine

# Use production node environment by default.
ENV NODE_ENV=production

# Install dependencies
COPY package*.json ./
RUN npm ci && npm install mysql2

# Install nodemon globally for development or debugging if needed
RUN npm install -g nodemon

# Run the application as a non-root user.
USER node

# Copy the rest of the source files into the image.
COPY . .

# Expose the port that the application listens on.
EXPOSE 3000

# Default to using `node` for production, but allow `nodemon` if passed via command
CMD ["node", "app.js"]
