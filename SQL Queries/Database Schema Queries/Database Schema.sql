CREATE DATABASE IF NOT EXISTS hospital_db;
USE hospital_db;
CREATE TABLE patients (
    patient_id VARCHAR(10) PRIMARY KEY,
    first_name VARCHAR(50),
    last_name VARCHAR(50),
    gender CHAR(1),
    date_of_birth DATE,
    contact_number VARCHAR(20),
    address VARCHAR(255),
    registration_date DATE,
    insurance_provider VARCHAR(100),
    insurance_number VARCHAR(50),
    email VARCHAR(100)
);
CREATE TABLE doctors (
    doctor_id VARCHAR(10) PRIMARY KEY,
    first_name VARCHAR(50),
    last_name VARCHAR(50),
    specialization VARCHAR(100),
    phone_number VARCHAR(20),
    years_experience INT,
    hospital_branch VARCHAR(100),
    email VARCHAR(100)
);
CREATE TABLE appointments (
    appointment_id VARCHAR(10) PRIMARY KEY,
    patient_id VARCHAR(10),
    doctor_id VARCHAR(10),
    appointment_date DATE,
    appointment_time TIME,
    reason_for_visit ENUM('Checkup', 'Consultation', 'Therapy', 'Follow-up', 'Emergency'),
    status ENUM('No-show', 'Scheduled', 'Cancelled', 'Completed'),
    CONSTRAINT fk_appointments_patient FOREIGN KEY (patient_id) REFERENCES patients(patient_id) ON DELETE CASCADE ON UPDATE CASCADE,
    CONSTRAINT fk_appointments_doctor FOREIGN KEY (doctor_id) REFERENCES doctors(doctor_id) ON DELETE CASCADE ON UPDATE CASCADE
);
CREATE TABLE treatments (
    treatment_id VARCHAR(10) PRIMARY KEY,
    appointment_id VARCHAR(10),
    treatment_type VARCHAR(100),
    description VARCHAR(255),
    cost DECIMAL(10, 2),
    treatment_date DATE,
    CONSTRAINT fk_treatments_appointment FOREIGN KEY (appointment_id) REFERENCES appointments(appointment_id) ON DELETE CASCADE ON UPDATE CASCADE
);
CREATE TABLE billing (
    bill_id VARCHAR(10) PRIMARY KEY,
    patient_id VARCHAR(10),
    treatment_id VARCHAR(10),
    bill_date DATE,
    amount DECIMAL(10, 2),
    payment_method ENUM('Cash', 'Insurance', 'Credit Card'),
    payment_status ENUM('Paid', 'Pending', 'Failed'),
    CONSTRAINT fk_billing_patient FOREIGN KEY (patient_id) REFERENCES patients(patient_id) ON DELETE CASCADE ON UPDATE CASCADE,
    CONSTRAINT fk_billing_treatment FOREIGN KEY (treatment_id) REFERENCES treatments(treatment_id) ON DELETE CASCADE ON UPDATE CASCADE
);