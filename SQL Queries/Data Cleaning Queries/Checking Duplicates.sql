SELECT patient_id, COUNT(*) 
FROM patients 
GROUP BY patient_id 
HAVING COUNT(*) > 1;

SELECT doctor_id, COUNT(*) 
FROM doctors 
GROUP BY doctor_id 
HAVING COUNT(*) > 1;

SELECT treatment_id, COUNT(*) 
FROM treatments 
GROUP BY treatment_id 
HAVING COUNT(*) > 1;

SELECT bill_id, COUNT(*) 
FROM billing 
GROUP BY bill_id 
HAVING COUNT(*) > 1;

SELECT appointment_id, COUNT(*) 
FROM appointments 
GROUP BY appointment_id 
HAVING COUNT(*) > 1;