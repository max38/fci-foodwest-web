# Use official Node.js image
FROM node:20-alpine

# Set working directory
WORKDIR /app

# Copy package files
COPY src/package*.json ./

# Install dependencies
RUN npm ci --only=production

# Copy application code
COPY src/ .

# Expose port range
EXPOSE 3000-3007

# Command to run the application
CMD ["node", "--experimental-specifier-resolution=node", "index.js"]