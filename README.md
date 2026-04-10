📌 PAN Number Validation Project

📖 Overview
This project focuses on cleaning and validating Indian PAN (Permanent Account Number) data using PostgreSQL.

🎯 Objective
- Clean raw PAN dataset
- Remove missing and duplicate records
- Validate PAN format using business rules
- Categorize PANs as Valid or Invalid

🧹 Data Cleaning Steps
- Removed NULL and blank values
- Trimmed leading/trailing spaces
- Converted all PANs to uppercase
- Removed duplicate records

  ✅ Validation Rules
A valid PAN must:
- Be exactly 10 characters long
- Follow format: AAAAA1234A
- First 5 characters must be alphabets
- Next 4 must be digits
- Last character must be alphabet

Additional rules:
- No consecutive repeating characters
- No sequential characters (ABCDE, 1234, etc.)

📊 Results
| Metric             | Count  |
| ------------------ | ------ |
| Total Records      | 10,000 |
| Missing Removed    | 967    |
| Duplicates Removed | 8      |
| Final Records      | 9,025  |
| Valid PANs         | 3,188  |
| Invalid PANs       | 5,837  |

  🛠️ Tools Used
- PostgreSQL
- SQL (CTE, Regex, Data Cleaning)

  💡 Key Learnings
- Data cleaning best practices
- Regex-based validation
- Handling real-world messy datasets
- Writing efficient SQL queries
