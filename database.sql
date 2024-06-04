CREATE DATABASE airplane_management;

USE airplane_management;

CREATE TABLE users (
    id INT AUTO_INCREMENT PRIMARY KEY,
    username VARCHAR(50) NOT NULL UNIQUE,
    password VARCHAR(255) NOT NULL,
    role ENUM('admin', 'passenger', 'staff') NOT NULL
);

CREATE TABLE flights (
    id INT AUTO_INCREMENT PRIMARY KEY,
    flightNumber VARCHAR(50) NOT NULL UNIQUE,
    departure VARCHAR(50) NOT NULL,
    destination VARCHAR(50) NOT NULL
);

CREATE TABLE passengers (
    id INT AUTO_INCREMENT PRIMARY KEY,
    name VARCHAR(100) NOT NULL,
    email VARCHAR(100) NOT NULL UNIQUE,
    phone VARCHAR(15) NOT NULL,
    flightNumber VARCHAR(50) NOT NULL UNIQUE,
    seatNumber VARCHAR(50) UNIQUE NOT NULL 
);

CREATE TABLE staff (
    id INT AUTO_INCREMENT PRIMARY KEY,
    name VARCHAR(100) NOT NULL,
    position VARCHAR(50) NOT NULL,
    email VARCHAR(100) NOT NULL UNIQUE
);