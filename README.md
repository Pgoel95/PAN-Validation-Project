# 🚀 PAN Number Validation Project

## 📌 Overview
This project focuses on **cleaning, validating, and analyzing Indian PAN (Permanent Account Number) data** using PostgreSQL.  
It demonstrates end-to-end data preprocessing, validation using business rules, and generating actionable insights from raw data.

---

## 🎯 Objective
- Clean and standardize raw PAN dataset  
- Handle missing and duplicate records  
- Validate PAN numbers using format and business rules  
- Classify PANs into **Valid** and **Invalid** categories  
- Generate a summary report for data quality assessment  

---

## 🧾 Dataset Details
- **Total Records (Raw Data):** 10,000  
- Dataset contains PAN numbers with inconsistencies such as:
  - Missing values  
  - Duplicate entries  
  - Incorrect formats  
  - Case inconsistencies  
  - Extra spaces  

---

## 📥 Data Import Process

The dataset was originally provided in Excel format and was imported into PostgreSQL using the following steps:

1. Converted the Excel file (.xlsx) to a CSV file
2. Created a table in PostgreSQL to store PAN data
3. Imported the CSV file into PostgreSQL

---

## 🧹 Data Cleaning Process

The following steps were performed to ensure data quality:

- Removed **NULL and blank values**  
- Trimmed **leading and trailing spaces**  
- Standardized data by converting PANs to **uppercase**  
- Removed **duplicate records** using PostgreSQL (`ctid`)  

---

## ✅ PAN Validation Rules

A PAN is considered **valid** if it satisfies:

### 🔹 Format Rules
- Must be exactly **10 characters**
- Format: `AAAAA1234A`
  - First 5 → Alphabets (A–Z)
  - Next 4 → Digits (0–9)
  - Last 1 → Alphabet

### 🔹 Business Rules
- ❌ No **consecutive repeating characters** (e.g., `AABCD`, `1123`)  
- ❌ No **sequential characters** (e.g., `ABCDE`, `1234`)  

Validation was implemented using:
- **Regular Expressions (Regex)**
- **SQL conditional logic**

---

## ⚙️ Implementation

Key SQL techniques used:
- Data Cleaning (`TRIM`, `UPPER`, filtering NULLs)
- Deduplication using `ctid`
- Pattern validation using **Regex (`~`)**
- Conditional classification using `CASE WHEN`
- Aggregation using `COUNT` and `FILTER`

---

## 📊 Results

| Metric                     | Count |
|--------------------------|------:|
| Total Records (Raw)      | 10,000 |
| Missing Removed          | 967 |
| Duplicates Removed       | 8 |
| Final Records Processed  | 9,025 |
| ✅ Valid PANs            | 3,188 |
| ❌ Invalid PANs          | 5,837 |

---

## 📈 Key Insights
- ~35% of PANs were valid after cleaning  
- Majority of invalid PANs failed due to:
  - Incorrect format  
  - Sequential or repeating characters  
- Highlights importance of **data validation in real-world datasets**

---

## 🛠️ Tools & Technologies
- **PostgreSQL**
- **SQL**
  - CTEs
  - Regex
  - Data Cleaning Techniques

---

## 💡 Key Learnings
- Real-world data is often **messy and inconsistent**
- Importance of **data cleaning before analysis**
- Efficient use of **SQL for data validation**
- Writing **scalable and maintainable queries**
- Applying **business rules using logic + regex**

---

## 📂 Project Structure
PAN-Validation-Project/
│
├── data/
│ └── PAN_Number_Validation_Dataset.xlsx
│
├── sql/
│ └── pan_validation.sql
│
├── results/
│ └── summary_report.txt
│
└── README.md

---

## 🚀 How to Run
1. Import dataset into PostgreSQL  
2. Run SQL script from `/sql/pan_validation.sql`  
3. View cleaned data and validation results  
4. Generate summary report  

---

## ⭐ If you like this project
Give it a ⭐ on GitHub — it helps others discover it!

