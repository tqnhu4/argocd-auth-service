FROM node:20-alpine

# Set working directory
WORKDIR /app


COPY package*.json ./

# Just install dependency production
RUN npm install --omit=dev

# Copy source code
COPY . .

# Set environment
ENV NODE_ENV=production

# Expose port
# EXPOSE 3000

# Run app
CMD ["node", "index.js"]