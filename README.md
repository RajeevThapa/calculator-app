# Calculator App

This is a simple calculator application built with Node.js and Docker.

## Prerequisites

Before you begin, ensure you have the following installed on your machine:

- Node.js
- npm (Node Package Manager)
- Docker

## Getting Started

1. Clone the repository:

   ```bash
   git clone https://github.com/RajeevThapa/calculator-app.git
   cd calculator-app

2. Install dependencies:
  
   ```bash
   npm init -y
   npm install express socket.io
   
3. Run the Node.js server:
   
   ```bash
   npm start
      or
   node server.js

Open your web browser and go to http://localhost:3000. The calculator application should be accessible.


## Using Docker

If you prefer to run the application using Docker, follow these steps:

1. Clone the repository:

   ```bash
   git clone https://github.com/RajeevThapa/calculator-app.git
   cd calculator-app

2. Build the Docker image:
   
   ```bash
   docker build -t calculator-app .

3. Run the Docker container:
   
   ```bash
   docker run -p 3000:3000 calculator-app

Open your web browser and go to http://localhost:3000. The calculator application should be accessible.

## Usage

Enter a mathematical expression in the input field.
Click the "Calculate" button to see the result.

Feel free to reach out if you encounter any issues or have further questions!

## Jenkins Pipeline Screenshot

![Web capture_10-1-2024_115157_10 0 2 15](https://github.com/RajeevThapa/calculator-app/assets/101322664/0fb56245-92d0-4f7a-bbbb-5f3b23f65ddf)

## Project Overview
![Draft](https://github.com/RajeevThapa/calculator-app/assets/101322664/3367fa34-1e2b-4134-a2c9-583f9bdff9e2)
