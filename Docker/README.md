## Description

> This repository contains a Flask web application that provides user registration functionality. The application is containerized using Docker, and it can be tested with a PostgreSQL database using Docker Compose.

 > The application uses a configuration file (config.ini) to manage settings. Ensure that the necessary configurations are set in this file before running the application. The configuration includes details such as the database connection, app port, etc.


## Prerequisites

Before you begin, make sure that Docker installed on your machine.

## Installation

1. Clone the repository:

    ```bash
    git clone https://github.com/IbrahimmAdel/Banque-Misr-DevOps-Task.git
    ```

2. Navigate to the Docker directory:

    ```bash
    cd Banque-Misr-DevOps-Task/aws-jenkins-project/Docker
    ```

3. Build the Docker image:

    ```bash
    docker build -t .
    ```

## Usage

To test the application and PostgreSQL database, use Docker Compose:

```bash
docker-compose up
```
Access the application in your browser at http://localhost:5000.

## Paths

### /: Displays a welcome message.
![](https://github.com/IbrahimmAdel/Banque-Misr-DevOps-Task/blob/master/aws-jenkins-project/Docker/screenshots/localhost%3A5000.png)
### /user: Provides user registration functionality.
![](https://github.com/IbrahimmAdel/Banque-Misr-DevOps-Task/blob/master/aws-jenkins-project/Docker/screenshots/localhost%3A5000-user.png)
### /live: Checks the connection to the PostgreSQL database.
![](https://github.com/IbrahimmAdel/Banque-Misr-DevOps-Task/blob/master/aws-jenkins-project/Docker/screenshots/localhost%3A5000-live-success.png)
![](https://github.com/IbrahimmAdel/Banque-Misr-DevOps-Task/blob/master/aws-jenkins-project/Docker/screenshots/localhost%3A5000-live-failed.png)

## Result
![](https://github.com/IbrahimmAdel/Banque-Misr-DevOps-Task/blob/master/aws-jenkins-project/Docker/screenshots/submitted%20data%20in%20postgreSQL%20container.png)

