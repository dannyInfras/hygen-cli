# Installation

---

## Table of Contents <!-- omit in toc -->

- [Installation](#installation)
  - [Comfortable development (PostgreSQL + TypeORM)](#comfortable-development-postgresql--typeorm)
  - [Comfortable development (MongoDB + Mongoose)](#comfortable-development-mongodb--mongoose)
  - [Quick run (PostgreSQL + TypeORM)](#quick-run-postgresql--typeorm)
  - [Quick run (MongoDB + Mongoose)](#quick-run-mongodb--mongoose)
  - [Links](#links)

---

## Comfortable development (PostgreSQL + TypeORM)

1. Go to folder, and copy `env-example-relational` as `.env`.

   ```bash
   cd my-app/
   cp env-example-relational .env
   ```

2. Change `DATABASE_HOST=postgres` to `DATABASE_HOST=localhost`

3. Run additional container:

   ```bash
   docker compose up -d postgres adminer
   ```

4. Install dependency

   ```bash
   npm install
   ```

5. Run app configuration

   > You should run this command only the first time on initialization of your project, all next time skip it.

   > If you want to contribute to the boilerplate, you should NOT run this command.

   ```bash
   npm run app:config
   ```

6. Run migrations

   ```bash
   npm run migration:run
   ```

7. Run seeds

   ```bash
   npm run seed:run:relational
   ```

8. Run app in dev mode

   ```bash
   npm run start:dev
   ```

9. Open <http://localhost:3000>

---

## Comfortable development (MongoDB + Mongoose)

1. Go to folder, and copy `env-example-document` as `.env`.

   ```bash
   cd my-app/
   cp env-example-document .env
   ```

2. Change `DATABASE_URL=mongodb://mongo:27017` to `DATABASE_URL=mongodb://localhost:27017`

3. Run additional container:

   ```bash
   docker compose -f docker-compose.document.yaml up -d mongo mongo-express
   ```

4. Install dependency

   ```bash
   npm install
   ```

5. Run app configuration

   > You should run this command only the first time on initialization of your project, all next time skip it.

   > If you want to contribute to the boilerplate, you should NOT run this command.

   ```bash
   npm run app:config
   ```

6. Run seeds

   ```bash
   npm run seed:run:document
   ```

7. Run app in dev mode

   ```bash
   npm run start:dev
   ```

8. Open <http://localhost:3000>

---

## Quick run (PostgreSQL + TypeORM)

If you want quick run your app, you can use following commands:

1. Go to folder, and copy `env-example-relational` as `.env`.

   ```bash
   cd my-app/
   cp env-example-relational .env
   ```

2. Run containers

   ```bash
   docker compose up -d
   ```

3. For check status run

   ```bash
   docker compose logs
   ```

4. Open <http://localhost:3000>

---

## Quick run (MongoDB + Mongoose)

If you want quick run your app, you can use following commands:


1. Go to folder, and copy `env-example-document` as `.env`.

   ```bash
   cd my-app/
   cp env-example-document .env
   ```

2. Run containers

   ```bash
   docker compose -f docker-compose.document.yaml up -d
   ```

3. For check status run

   ```bash
   docker compose -f docker-compose.document.yaml logs
   ```

4. Open <http://localhost:3000>

---

## Links

- Swagger (API docs): <http://localhost:3000/docs>
- Adminer (client for DB): <http://localhost:8080>
- MongoDB Express (client for DB): <http://localhost:8081/>

---
