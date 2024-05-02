CREATE DATABASE IF NOT EXISTS patientsdb;
USE patientsdb;
DROP TABLE IF EXISTS patients;

CREATE TABLE patients(
    id         BIGINT UNSIGNED NOT NULL AUTO_INCREMENT,
    first_name VARCHAR(255) DEFAULT NULL,
    email      VARCHAR(255) DEFAULT NULL,
    phone      VARCHAR(255) DEFAULT NULL,
    adds       VARCHAR(255) DEFAULT NULL,
    image_url  VARCHAR(255) DEFAULT NULL,
    created_at VARCHAR(255) DEFAULT NULL,
    PRIMARY KEY (id),
    CONSTRAINT UQ_patients_Email UNIQUE (email)
);
