# Users Microservice

This project serves as a CRUD server for an Angular application

## Installation 

Use the package manager [npm] (https://www.npmjs.com/get-npm) 
to install project dependencies.

## Usage

### Starting the json-server

The json-server folder contains a db.json file for quickly deploying a RESTful API.
To deploy the json-server, follow these steps:

```bash
cd json-server
json-server --watch db.json
```

json-server runs on port 3000 by default. Check out the [documentation](https://npmjs.com/package/json-server) 
here for moredetailed information.

### Importing MySQL Database Dump

To make dev environment setup easier, I've included the database dump our CRUD server will be using. The script is located in the model folder.
