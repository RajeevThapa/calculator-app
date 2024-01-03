# Setting the Base Image Name.
FROM node:14

# Setting the Working directory.
WORKDIR /home/app

# Coping files to the app
COPY . /home/app/

# Install Application Dependencies
RUN npm install

# Exposing the port on which node.js will run
EXPOSE 3000

# Command to run Node.js app 
CMD [ "node","server.js"]
