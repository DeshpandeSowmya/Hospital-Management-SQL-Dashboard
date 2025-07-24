### Hospital Management System – Data Analytics & BI Project

SQL-Powered Healthcare Analysis with Tableau Dashboards | Operational, Financial & Clinical Insights

A full-cycle healthcare data analytics project that simulates a Hospital Management System using **MySQL** for querying and **Tableau Public** for interactive dashboards. The analysis focuses on patient segmentation, physician performance, treatment cost analysis, and revenue cycle optimization — delivering actionable insights for hospital administrators and public health leaders.

---

## 🛠️ Tools & Techniques Used

- **Database**: MySQL (Relational schema, SQL queries, data cleaning)
- **Visualization**: Tableau Public (Interactive dashboards, KPI boxes, heatmaps)
- **Analytics**: Descriptive stats, patient flow tracking, specialty-based doctor ranking, cost & revenue trends

---

## 📦 About the Dataset

This project uses a **synthetic, multi-table relational hospital management dataset** sourced from Kaggle, ideal for healthcare analytics and BI practice.  
📌 **Source:** [Hospital Management Dataset – Kaggle](https://www.kaggle.com/datasets/kanakbaghel/hospital-management-dataset)

The dataset mimics real-world hospital operations and includes:

- `patients.csv` – Demographics, insurance info
- `doctors.csv` – Specializations, experience, branch
- `appointments.csv` – Scheduling, status, visit reasons
- `treatments.csv` – Treatment types, costs, appointment linkage
- `billing.csv` – Payment amounts, methods, statuses

---

## 🧱 Database Schema (Simplified)

All tables follow a **normalized relational schema** with foreign key constraints for referential integrity.

- `patients(patient_id PRIMARY KEY, name, gender, date_of_birth, insurance)`
- `doctors(doctor_id PRIMARY KEY, name, specialization, experience, branch)`
- `appointments(appointment_id PRIMARY KEY, patient_id FK, doctor_id FK, reason, status)`
- `treatments(treatment_id PRIMARY KEY, appointment_id FK, treatment_type, cost)`
- `billing(bill_id PRIMARY KEY, patient_id FK, treatment_id FK, amount, payment_status)`

---

## 🧼 Data Cleaning Techniques

- Removed **duplicate primary keys** using `GROUP BY` + `HAVING`
- Checked and imputed **NULL values** across key fields
- Validated **foreign key relationships** to eliminate orphan records
- Audited **chronological logic** (e.g., birth before appointment, registration → billing)
- Corrected **outliers** like negative costs or future birthdates

---

## 📊 Descriptive Techniques

- Demographic distributions (age, gender, insurance)
- Appointment status and visit frequency by patient type
- Treatment frequency and cost variance analysis
- Billing summaries by payment method and patient

---

## 🧠 SQL-Based Data Analysis Techniques

- **Window Functions:** `RANK()`, `ROW_NUMBER()`, `SUM() OVER`
- **Joins:** Multi-table joins across appointments, treatments, billing
- **Date Calculations:** `DATEDIFF`, `TIMESTAMPDIFF`
- **CTEs & Subqueries:** Modular breakdowns by department and specialty
- **CASE Logic:** Patient segmentation, doctor categorization
- **Outlier Detection:** Using `STDDEV`, `HAVING` for cost analysis

---

## 📈 Dashboard Insights

## 🧑‍⚕️ Physician Metrics Dashboard
- High-demand specializations: **Dermatology, Oncology, Pediatrics**
- Most experienced branch: **Central Hospital (avg. 26 years)**
- Top doctors by patients: **Sarah Taylor, David Taylor**

## 💸 Finance & Operations Dashboard
- Average treatment cost: **$13,847.36**
- Revenue from top 5 patients: **$117,671.81**
- Only **31.46%** of payments fully made
- Top treatments: **X-Ray, Physiotherapy, MRI**

## 👨‍👩‍👧 Patient Overview Dashboard
- Female adults make up the largest patient group
- Most used insurance: **HealthIndia**
- Wait time majority: **0–200 days**

---

## 📊 Dashboard Preview

![Dashboard Screenshot](https://github.com/DeshpandeSowmya/Hospital-Management-SQL-Dashboard/blob/main/Dashboard%20Preview.png?raw=true)
 

---

## 📁 What’s Included in This Project

- ✅ Kaggle Database
- ✅ MySQL Scripts (Database creation, cleaning, analysis queries)
- ✅ Cleaned CSV outputs
- ✅ 3 Tableau Public Dashboards

---

## 🏥 Relevance in Healthcare Analytics

This project showcases practical applications of **healthcare business intelligence**, including:

- **Physician performance benchmarking**
- **Revenue cycle optimization**
- **Patient segmentation for experience improvement**
- **Operational bottleneck identification**
- **Population health insights using hospital data**

It reflects the day-to-day work of **public health analysts**, **clinical BI professionals**, and **hospital operations teams** using SQL + BI tools to make **evidence-based decisions**.

---

## 👩🏻‍💻 About Me

Created by **Sowmya Deshpande** - MPH Candidate | Healthcare Data Analyst in Training | Healthcare Consulting Extern
🔗 [LinkedIn](https://www.linkedin.com/in/sowmyadeshpande)  | 🌐 [GitHub](https://github.com/DeshpandeSowmya)
