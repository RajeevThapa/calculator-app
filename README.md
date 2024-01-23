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

## Project Overview
![Draft](https://github.com/RajeevThapa/calculator-app/assets/101322664/ba30aedd-8b42-4341-9740-48e94d770775)


## Jenkins Pipeline
![Screenshot from 2024-01-23 22-30-35](https://github.com/RajeevThapa/calculator-app/assets/101322664/844eb249-16e4-4293-88db-6dd93ddd0dd8)

## ArgoCD
![Screenshot from 2024-01-23 22-31-15](https://github.com/RajeevThapa/calculator-app/assets/101322664/0401926a-f4da-4a75-b779-eb72557d32cc)




