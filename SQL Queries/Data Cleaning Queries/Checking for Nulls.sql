SELECT 
    SUM(CASE WHEN patient_id IS NULL THEN 1 ELSE 0 END) AS null_patient_id,
    SUM(CASE WHEN first_name IS NULL THEN 1 ELSE 0 END) AS null_first_name,
    SUM(CASE WHEN last_name IS NULL THEN 1 ELSE 0 END) AS null_last_name,
    SUM(CASE WHEN gender IS NULL THEN 1 ELSE 0 END) AS null_gender,
    SUM(CASE WHEN date_of_birth IS NULL THEN 1 ELSE 0 END) AS null_date_of_birth,
    SUM(CASE WHEN contact_number IS NULL THEN 1 ELSE 0 END) AS null_contact_number,
    SUM(CASE WHEN address IS NULL THEN 1 ELSE 0 END) AS null_address,
    SUM(CASE WHEN registration_date IS NULL THEN 1 ELSE 0 END) AS null_registration_date,
    SUM(CASE WHEN insurance_provider IS NULL THEN 1 ELSE 0 END) AS null_insurance_provider,
    SUM(CASE WHEN insurance_number IS NULL THEN 1 ELSE 0 END) AS null_insurance_number,
    SUM(CASE WHEN email IS NULL THEN 1 ELSE 0 END) AS null_email
FROM patients;

SELECT 
    SUM(CASE WHEN doctor_id IS NULL THEN 1 ELSE 0 END) AS null_doctor_id,
    SUM(CASE WHEN first_name IS NULL THEN 1 ELSE 0 END) AS null_first_name,
    SUM(CASE WHEN last_name IS NULL THEN 1 ELSE 0 END) AS null_last_name,
    SUM(CASE WHEN specialization IS NULL THEN 1 ELSE 0 END) AS null_specialization,
    SUM(CASE WHEN phone_number IS NULL THEN 1 ELSE 0 END) AS null_phone_number,
    SUM(CASE WHEN years_experience IS NULL THEN 1 ELSE 0 END) AS null_years_experience,
    SUM(CASE WHEN hospital_branch IS NULL THEN 1 ELSE 0 END) AS null_hospital_branch,
    SUM(CASE WHEN email IS NULL THEN 1 ELSE 0 END) AS null_email
FROM doctors;

SELECT 
    SUM(CASE WHEN appointment_id IS NULL THEN 1 ELSE 0 END) AS null_appointment_id,
    SUM(CASE WHEN patient_id IS NULL THEN 1 ELSE 0 END) AS null_patient_id,
    SUM(CASE WHEN doctor_id IS NULL THEN 1 ELSE 0 END) AS null_doctor_id,
    SUM(CASE WHEN appointment_date IS NULL THEN 1 ELSE 0 END) AS null_appointment_date,
    SUM(CASE WHEN appointment_time IS NULL THEN 1 ELSE 0 END) AS null_appointment_time,
    SUM(CASE WHEN reason_for_visit IS NULL THEN 1 ELSE 0 END) AS null_reason_for_visit,
    SUM(CASE WHEN status IS NULL THEN 1 ELSE 0 END) AS null_status
FROM appointments;

SELECT 
    SUM(CASE WHEN treatment_id IS NULL THEN 1 ELSE 0 END) AS null_treatment_id,
    SUM(CASE WHEN appointment_id IS NULL THEN 1 ELSE 0 END) AS null_appointment_id,
    SUM(CASE WHEN treatment_type IS NULL THEN 1 ELSE 0 END) AS null_treatment_type,
    SUM(CASE WHEN description IS NULL THEN 1 ELSE 0 END) AS null_description,
    SUM(CASE WHEN cost IS NULL THEN 1 ELSE 0 END) AS null_cost,
    SUM(CASE WHEN treatment_date IS NULL THEN 1 ELSE 0 END) AS null_treatment_date
FROM treatments;

SELECT 
    SUM(CASE WHEN bill_id IS NULL THEN 1 ELSE 0 END) AS null_bill_id,
    SUM(CASE WHEN patient_id IS NULL THEN 1 ELSE 0 END) AS null_patient_id,
    SUM(CASE WHEN treatment_id IS NULL THEN 1 ELSE 0 END) AS null_treatment_id,
    SUM(CASE WHEN bill_date IS NULL THEN 1 ELSE 0 END) AS null_bill_date,
    SUM(CASE WHEN amount IS NULL THEN 1 ELSE 0 END) AS null_amount,
    SUM(CASE WHEN payment_method IS NULL THEN 1 ELSE 0 END) AS null_payment_method,
    SUM(CASE WHEN payment_status IS NULL THEN 1 ELSE 0 END) AS null_payment_status
FROM billing;