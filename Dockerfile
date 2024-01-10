# Base Image
FROM node:current-alpine3.19

# Set the Working Directory
WORKDIR /home

# Copy the necessary files
COPY /app /home

# Install Dependencies
RUN npm install -g npm@10.2.5

# Expose the port
EXPOSE 3000

# CMD Runs when the container is created
CMD [ "node", "server.js" ]