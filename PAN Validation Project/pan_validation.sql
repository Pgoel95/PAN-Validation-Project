
-- 1. Create Table

CREATE TABLE PAN_Number_Details(
    pan_numbers VARCHAR(100)
);


-- 2. Identify Missing Data


SELECT *
FROM PAN_Number_Details
WHERE pan_numbers IS NULL
   OR TRIM(pan_numbers) = '';
   

-- 3. Remove Missing Data


DELETE FROM PAN_Number_Details
WHERE pan_numbers IS NULL
   OR TRIM(pan_numbers) = '';
-- Checking for duplicates
select pan_numbers, count(1) 
from PAN_Number_Details
group by pan_numbers
having count(1) > 1


-- 4. Clean Data (Trim + Uppercase)


UPDATE PAN_Number_Details
SET pan_numbers = UPPER(TRIM(pan_numbers));


-- 5. Check Duplicates


SELECT pan_numbers, COUNT(*)
FROM PAN_Number_Details
GROUP BY pan_numbers
HAVING COUNT(*) > 1;


-- 6. Remove Duplicates


DELETE FROM PAN_Number_Details
WHERE ctid NOT IN (
    SELECT MIN(ctid)
    FROM PAN_Number_Details
    GROUP BY pan_numbers
);


-- 7. PAN Validation


SELECT 
    pan_numbers,
    CASE
        WHEN pan_numbers !~ '^[A-Z]{5}[0-9]{4}[A-Z]$' THEN 'Invalid PAN'
        
        WHEN pan_numbers ~ '([A-Z])\1' THEN 'Invalid PAN'
        
        WHEN pan_numbers ~ '(ABCDE|BCDEF|CDEFG|DEFGH|EFGHI|FGHIJ|GHIJK|HIJKL|IJKLM|JKLMN|KLMNO|LMNOP|MNOPQ|NOPQR|OPQRS|PQRST|QRSTU|RSTUV|STUVW|TUVWX|UVWXY|VWXYZ)' THEN 'Invalid PAN'
        
        WHEN pan_numbers ~ '([0-9])\1' THEN 'Invalid PAN'
        
        WHEN pan_numbers ~ '(1234|2345|3456|4567|5678|6789)' THEN 'Invalid PAN'
        
        ELSE 'Valid PAN'
    END AS format_validation
FROM PAN_Number_Details;

/*
Total records (Raw data) - 10,000
Missing / Incomplete PAN - 967
Duplicates - 8

Total records processed - 9,025
Valid PANs - 3,188
Invalid PANs - 5,837
*/