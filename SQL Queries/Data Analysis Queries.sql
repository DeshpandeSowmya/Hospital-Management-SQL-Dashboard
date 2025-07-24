SELECT 
    d.doctor_id, 
    d.first_name, 
    d.last_name, 
    COUNT(DISTINCT a.patient_id) AS unique_patients_count
FROM appointments a
JOIN doctors d ON a.doctor_id = d.doctor_id
GROUP BY d.doctor_id, d.first_name, d.last_name
ORDER BY unique_patients_count DESC
LIMIT 10;

SELECT 
    d.specialization,
    COUNT(DISTINCT a.patient_id) AS unique_patients_count,
    RANK() OVER (ORDER BY COUNT(DISTINCT a.patient_id) DESC) AS specialty_rank
FROM appointments a
JOIN doctors d ON a.doctor_id = d.doctor_id
GROUP BY d.specialization
ORDER BY unique_patients_count DESC;

SELECT 
    patient_id,
    first_name,
    last_name,
    gender,
    date_of_birth,
    TIMESTAMPDIFF(YEAR, date_of_birth, CURDATE()) AS age
FROM patients
ORDER BY age DESC
LIMIT 20;

SELECT
    CASE 
        WHEN age BETWEEN 0 AND 17 THEN 'Kid'
        WHEN age BETWEEN 18 AND 64 THEN 'Adult'
        ELSE 'Senior'
    END AS age_group,
    COUNT(*) AS visits_count
FROM (
    SELECT 
        TIMESTAMPDIFF(YEAR, p.date_of_birth, a.appointment_date) AS age
    FROM appointments a
    JOIN patients p ON a.patient_id = p.patient_id
) AS age_data
GROUP BY age_group
ORDER BY visits_count DESC;

SELECT 
    treatment_type,
    COUNT(*) AS number_of_treatments,
    AVG(cost) AS avg_cost,
    MIN(cost) AS min_cost,
    MAX(cost) AS max_cost
FROM treatments
GROUP BY treatment_type
ORDER BY avg_cost DESC;

SELECT 
    status,
    COUNT(*) AS total_appointments
FROM appointments
GROUP BY status;

SELECT 
    payment_status,
    COUNT(*) AS count,
    SUM(amount) AS total_amount
FROM billing
GROUP BY payment_status;

SELECT 
    p.patient_id,
    p.first_name,
    p.last_name,
    SUM(b.amount) AS total_billed_amount
FROM billing b
JOIN patients p ON b.patient_id = p.patient_id
GROUP BY p.patient_id, p.first_name, p.last_name
ORDER BY total_billed_amount DESC
LIMIT 5;

SELECT 
    patient_id,
    bill_date,
    amount,
    SUM(amount) OVER (PARTITION BY patient_id ORDER BY bill_date) AS running_total
FROM billing
ORDER BY patient_id, bill_date;

WITH ranked_appointments AS (
    SELECT
        patient_id,
        appointment_date,
        ROW_NUMBER() OVER (PARTITION BY patient_id ORDER BY appointment_date) AS rn
    FROM appointments
)
SELECT patient_id, appointment_date AS first_appointment_date
FROM ranked_appointments
WHERE rn = 1;

SELECT 
    hospital_branch,
    AVG(years_experience) AS avg_years_experience,
    COUNT(*) AS num_doctors
FROM doctors
GROUP BY hospital_branch;

SELECT 
    insurance_provider,
    COUNT(*) AS patient_count
FROM patients
GROUP BY insurance_provider
ORDER BY patient_count DESC;

WITH first_appointments AS (
    SELECT 
        patient_id,
        MIN(appointment_date) AS first_appointment_date
    FROM appointments
    GROUP BY patient_id
)
SELECT 
    p.patient_id,
    p.registration_date,
    fa.first_appointment_date,
    DATEDIFF(fa.first_appointment_date, p.registration_date) AS days_between_registration_and_first_appointment
FROM patients p
JOIN first_appointments fa ON p.patient_id = fa.patient_id
WHERE fa.first_appointment_date >= p.registration_date;

SELECT 
    status,
    COUNT(*) AS count,
    ROUND(100.0 * COUNT(*) / (SELECT COUNT(*) FROM appointments), 2) AS percentage
FROM appointments
GROUP BY status;

SELECT DISTINCT
    p.patient_id,
    p.first_name,
    p.last_name,
    b.payment_status,
    SUM(b.amount) AS total_due
FROM billing b
JOIN patients p ON b.patient_id = p.patient_id
WHERE b.payment_status IN ('Pending', 'Failed')
GROUP BY p.patient_id, b.payment_status
ORDER BY total_due DESC;

SELECT 
    d.specialization,
    AVG(t.cost) AS avg_treatment_cost,
    COUNT(t.treatment_id) AS total_treatments
FROM treatments t
JOIN appointments a ON t.appointment_id = a.appointment_id
JOIN doctors d ON a.doctor_id = d.doctor_id
GROUP BY d.specialization
ORDER BY avg_treatment_cost DESC;