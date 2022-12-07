DROP DATABASE IF EXIST contacts_app;

CREATE DATABASE contacts_app;

use contacts_app;


CREATE TABLE users (
    id INT AUTO_INCREMENT PRIMARY KEY,
    name VARCHAR(255),
    email VARCHAR(255) UNIQUE,
    password VARCHAR(255)
);

CREATE TABLE contacts(
    id INT AUTO_INCREMENT PRIMARY KEY,
    user_id INT NOT NULL,
    name VARCHAR(255) NULL COLLATE 'utf8_general_ci',
    phone_number VARCHAR(255) NULL COLLATE 'utf8_general_ci'

    FOREIGN KEY(user_id) REFERENCES users(id)
)
COLLATE='utf8_general_ci'
ENGINE=InnoDB
;
