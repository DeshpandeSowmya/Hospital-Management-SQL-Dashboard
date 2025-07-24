SELECT gender, COUNT(*) AS count, ROUND(COUNT(*) * 100.0 / (SELECT COUNT(*) FROM patients), 2) AS percentage
FROM patients
GROUP BY gender;
SELECT insurance_provider, COUNT(*) AS count
FROM patients
GROUP BY insurance_provider;

SELECT
    MIN(years_experience) AS min_years,
    MAX(years_experience) AS max_years,
    AVG(years_experience) AS avg_years,
    STDDEV(years_experience) AS stddev_years
FROM doctors;

SELECT status, COUNT(*) AS count
FROM appointments
GROUP BY status;
SELECT reason_for_visit, COUNT(*) AS count
FROM appointments
GROUP BY reason_for_visit;
SELECT MIN(appointment_date) AS earliest, MAX(appointment_date) AS latest
FROM appointments;

SELECT
    MIN(cost) AS min_cost,
    MAX(cost) AS max_cost,
    AVG(cost) AS avg_cost,
    STDDEV(cost) AS stddev_cost
FROM treatments;

SELECT
    MIN(amount) AS min_amount,
    MAX(amount) AS max_amount,
    AVG(amount) AS avg_amount,
    STDDEV(amount) AS stddev_amount
FROM billing;
SELECT payment_method, COUNT(*) AS count
FROM billing
GROUP BY payment_method;
SELECT payment_status, COUNT(*) AS count
FROM billing
GROUP BY payment_status;
SELECT MIN(bill_date) AS earliest, MAX(bill_date) AS latest
FROM billing;