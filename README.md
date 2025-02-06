# Planne backend Live Coding

This project contains reference material for the live coding exercise of Planne's recruitment process.

## Challenge

### Objective

The objective is to develop a basic API application to manage the creation of orders of a e-commerce. The application should aim to offer the following features:

- Create orders: the client requests the order creation, sending a payload with the item list (and their respective quantities);
- Process orders: the application must, *asynchronously*, "process" the order and mark it as _Approved_ or _Refused_ (the processing can be as simple as a random 50% chance);
- Retrieve order status: the client can, at any moment, retrive the current order status based on its _id_;
- Automated tests: define some tests to cover the main functionality of the application.

### Getting Started

Feel free to choose any language/tech that you feel confortable with.

The [Openapi (Swagger) specification](https://github.com/planne-software/planne-backend-live-coding/blob/master/openapi/api.yml) can be used as reference during development.

Also, a [MySQL database schema](https://github.com/planne-software/planne-backend-live-coding/blob/master/database/schema.sql) is made available, as to fasten the project setup. You can use Docker Compose to bring a MySQL container up, and run the _setup-database_ command in _Makefile_ to setup the _ecommerce_ database with the schema.

## Evaluation criteria

Your application will be analyzed based on the following points:

- Code architecture: how the application components are organized within the project, clear separation of concerns, etc;
- Asynchronous order processing: how orders will be processed in the background, without taking time of the creation request;
- Persistency: overall approach on how data will be handled and stored by the application;
- Tests: the correct and clear definition of the test cases;
- Best practices: the application should handle errors, returning meaningful outputs when something is wrong (request validation, etc);
- Scalability: the application should address possible scalability concerns, in case of heavy loading.
