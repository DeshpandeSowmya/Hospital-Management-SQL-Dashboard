SELECT a.*
FROM appointments a
LEFT JOIN patients p ON a.patient_id = p.patient_id
WHERE p.patient_id IS NULL;

SELECT a.*
FROM appointments a
LEFT JOIN doctors d ON a.doctor_id = d.doctor_id
WHERE d.doctor_id IS NULL;

SELECT t.*
FROM treatments t
LEFT JOIN appointments a ON t.appointment_id = a.appointment_id
WHERE a.appointment_id IS NULL;

SELECT b.*
FROM billing b
LEFT JOIN patients p ON b.patient_id = p.patient_id
WHERE p.patient_id IS NULL;

SELECT b.*
FROM billing b
LEFT JOIN treatments t ON b.treatment_id = t.treatment_id
WHERE t.treatment_id IS NULL;