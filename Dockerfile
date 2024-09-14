git clone https://github.com/nyrahul/wisecow.git
cd wisecow
# Base image, for example, a Node.js or Python base
FROM node:14

# Set working directory
WORKDIR /app

# Copy the package.json and install dependencies (assuming Node.js app)
COPY package*.json ./
RUN npm install

# Copy the rest of the app files
COPY . .

# Expose the port on which the app runs
EXPOSE 3000

# Command to run the application
CMD ["npm", "start"]
docker build -t wisecow-app:latest .
docker run -p 3000:3000 wisecow-app:latest
