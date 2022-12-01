DROP DATABASE IF EXIST contacts_app;

CREATE DATABASE contacts_app;

use contacts_app;

CREATE TABLE contacts(
    id INT AUTO_INCREMENT PRIMARY KEY,
    name VARCHAR(255) NULL COLLATE 'utf8_general_ci',
    phone_number VARCHAR(255) NULL COLLATE 'utf8_general_ci'
)
COLLATE='utf8_general_ci'
ENGINE=InnoDB
;
