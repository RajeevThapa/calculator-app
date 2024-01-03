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


## Using Docker

If you prefer to run the application using Docker, follow these steps:

1. Build the Docker image:
docker build -t calculator-app .

2. Run the Docker container:
docker run -p 3000:3000 calculator-app

The application should be accessible at http://localhost:3000 in your browser.

## Usage

Enter a mathematical expression in the input field.
Click the "Calculate" button to see the result.