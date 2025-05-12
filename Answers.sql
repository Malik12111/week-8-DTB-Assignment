--create a database for a clinic management system
CREATE DATABASE ClinicDB;
USE clinicdb;

-- TABLE PATIENTS 
CREATE TABLE patients(
	patient_id INT AUTO_INCREMENT PRIMARY KEY,
    first_name VARCHAR(50) NOT NULL,
    last_name VARCHAR(50) NOT NULL,
    age INT,
    phone_number INT,
    join_date DATE
    );


-- TABLE DOCTORS
CREATE TABLE doctors(
    doctor_id INT AUTO_INCREMENT PRIMARY KEY,
    first_name VARCHAR(50) NOT NULL,
    last_name VARCHAR(50) NOT NULL,
    phone_number INT,
    department VARCHAR(100)
    );


-- TABLE appointments
CREATE TABLE appointments(
    appointment_id INT AUTO_INCREMENT PRIMARY KEY,
    patient_id INT,
    doctor_id INT,
    appointment_date DATE,
    notes VARCHAR(1000),
    appointment_status VARCHAR(100),
    FOREIGN KEY (patient_id) REFERENCES patients(patient_id)
    );
    
    
    -- TABLE medications
CREATE TABLE medicationss(
    medication_id INT AUTO_INCREMENT PRIMARY KEY,
    appointment_id INT,
    medication_name VARCHAR(1000),
    dosage INT,
    frequency INT,
    medication_status VARCHAR(100),
    FOREIGN KEY (appointment_id) REFERENCES appointments(appointment_id)
    );
