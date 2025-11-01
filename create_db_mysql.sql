-- MySQL script to create tables (if you prefer MySQL)
CREATE DATABASE IF NOT EXISTS nimbus_app;
USE nimbus_app;

CREATE TABLE students (
  id BIGINT AUTO_INCREMENT PRIMARY KEY,
  name VARCHAR(255),
  course VARCHAR(255)
);

CREATE TABLE accounts (
  id BIGINT PRIMARY KEY,
  owner VARCHAR(255),
  balance DOUBLE
);

CREATE TABLE transactions (
  id BIGINT AUTO_INCREMENT PRIMARY KEY,
  from_account_id BIGINT,
  to_account_id BIGINT,
  amount DOUBLE,
  timestamp TIMESTAMP DEFAULT CURRENT_TIMESTAMP
);
