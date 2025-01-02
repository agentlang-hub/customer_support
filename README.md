# Example app: customer-support

A "customer support" example GenAI app that acts like a chatbot.

For a given collection of documents in the `docs` directory at a camera
store, it answers questions asked by a user.

## Usage

You need to have a local copy of the app in order to run.

Start the application using Docker as follows:

```shell
export OPENAI_API_KEY="FIXME"
docker compose up
```

### Running the app without Docker

This app uses [PGvector](https://github.com/pgvector/pgvector) for document
search. You would need to have PostgreSQL database with PGvector extension
configured to run the app locally. You may need to initialize the database
with the SQL scripts under `sql` directory.

Having PostgreSQL/PGvector running, you would need to have installed
[Agentlang CLI](https://github.com/agentlang-ai/agentlang.cli) to run
Agentlang apps. Please note that the CLI has its own pre-requisites.

```shell
export OPENAI_API_KEY="FIXME"
export PGVECTOR_DB_HOST="FIXME"
export PGVECTOR_DB_PORT="FIXME"
export PGVECTOR_DB_NAME="FIXME"
export PGVECTOR_DB_USERNAME="FIXME"
export PGVECTOR_DB_PASSWORD="FIXME"
agent run
```

### Asking customer support questions

Once the app is up, ask questions to the app as follows:

```shell
curl -X POST localhost:8080/api/Customer.Support.Core/CameraStore \
  -H 'Content-type: application/json' \
  -d "{\"Customer.Support.Core/CameraStore\": {\"UserInstruction\": \"What's the price of XYZ K2 camera?\"}}"
```

## License

Copyright 2024-2025 Fractl Inc.

Licensed under the Apache License, Version 2.0:
http://www.apache.org/licenses/LICENSE-2.0

