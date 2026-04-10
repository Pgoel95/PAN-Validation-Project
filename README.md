# 🚀 PAN Number Validation Project

## 📌 Overview
This project focuses on **cleaning, validating, and analyzing Indian PAN (Permanent Account Number) data** using PostgreSQL.  
It demonstrates an end-to-end data workflow including preprocessing, validation using business rules, and generating actionable insights.

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

The dataset contains inconsistencies such as:
- Missing values  
- Duplicate entries  
- Incorrect formats  
- Case inconsistencies  
- Extra spaces  

---

## 📥 Data Import Process
The dataset was originally in Excel format and loaded into PostgreSQL using:

1. Converted `.xlsx` → `.csv`  
2. Created table in PostgreSQL  
3. Imported CSV using SQL  

---

## 🧹 Data Cleaning Process
- Removed **NULL and blank values**  
- Trimmed **leading and trailing spaces**  
- Standardized data using **UPPER()**  
- Removed duplicates using **ctid**  

---

## ✅ PAN Validation Rules

### 🔹 Format Rules
- Must be exactly **10 characters**  
- Format: `AAAAA1234A`  
  - First 5 → Alphabets (A–Z)  
  - Next 4 → Digits (0–9)  
  - Last 1 → Alphabet  

### 🔹 Business Rules
- ❌ No consecutive repeating characters (e.g., `AABCD`, `1123`)  
- ❌ No sequential characters (e.g., `ABCDE`, `1234`)  

Validation implemented using:
- **Regular Expressions (Regex)**
- **SQL CASE logic**

---

## ⚙️ Implementation

Key SQL techniques used:
- Data cleaning: `TRIM`, `UPPER`  
- Deduplication using `ctid`  
- Pattern validation using `~` (Regex)  
- Conditional logic using `CASE WHEN`  
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

📄 Detailed output available in `summary_report.txt`

---

## 📈 Key Insights
- ~35% of PANs were valid after cleaning  
- Majority of invalid PANs failed due to:
  - Incorrect format  
  - Sequential or repeating characters  
- Highlights importance of **data validation in real-world datasets**  

---

## 🛠️ Tools & Technologies
- PostgreSQL  
- SQL  
  - CTEs  
  - Regex  
  - Data Cleaning Techniques  

---

## 💡 Key Learnings
- Real-world data is often messy and inconsistent  
- Importance of data cleaning before analysis  
- Efficient use of SQL for validation  
- Writing scalable and maintainable queries  
- Applying business rules using logic + regex  
- Experience in data ingestion (Excel → CSV → PostgreSQL)  

---

## 📂 Project Files
- `README.md` – Project documentation  
- `pan_validation.sql` – SQL script for cleaning & validation  
- `summary_report.txt` – Final results summary  

---

## 🚀 How to Run
1. Import dataset (CSV) into PostgreSQL  
2. Run `pan_validation.sql`  
3. View validation results  
4. Check summary in `summary_report.txt`  

---

## ⭐ If you like this project
Give it a ⭐ on GitHub — it helps others discover it!

