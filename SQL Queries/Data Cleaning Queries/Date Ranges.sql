SELECT * FROM patients 
WHERE registration_date < date_of_birth;
SELECT * FROM patients 
WHERE registration_date > CURDATE();
SELECT * FROM patients 
WHERE date_of_birth > CURDATE();

SELECT * FROM appointments 
WHERE appointment_date > CURDATE();
SELECT a.* 
FROM appointments a
JOIN patients p ON a.patient_id = p.patient_id
WHERE a.appointment_date < p.registration_date;

SELECT * FROM treatments 
WHERE treatment_date > CURDATE();
SELECT t.*
FROM treatments t
JOIN appointments a ON t.appointment_id = a.appointment_id
WHERE t.treatment_date < a.appointment_date;

SELECT * FROM billing 
WHERE bill_date > CURDATE();
SELECT b.*
FROM billing b
JOIN treatments t ON b.treatment_id = t.treatment_id
WHERE b.bill_date < t.treatment_date;

UPDATE appointments a
JOIN patients p ON a.patient_id = p.patient_id
SET a.appointment_date = p.registration_date
WHERE a.appointment_date < p.registration_date;

SELECT * FROM appointments WHERE appointment_date > CURDATE();
SELECT * FROM treatments WHERE treatment_date > CURDATE();
SELECT * FROM billing WHERE bill_date > CURDATE();




