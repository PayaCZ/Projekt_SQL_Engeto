-- 1) Rostou v průběhu let mzdy ve všech odvětvích, nebo v některých klesají?
-- ---------------------------------------------------------------------------

WITH value_data AS (
    SELECT 
    	payroll_year, 
    	industry_branch_code,
    	branch_name, 
    	round(avg(value_payroll)) AS value_payroll, 
    	lag(avg(value_payroll)) OVER (PARTITION BY industry_branch_code
	ORDER BY payroll_year) AS prev_value
    FROM t_pavel_smid_projekt_SQL_primary_final
    GROUP BY  payroll_year, industry_branch_code 
)
SELECT 
	payroll_year, 
	industry_branch_code,
	branch_name, 
	value_payroll, 
	round((value_payroll - prev_value) / prev_value * 100, 2) AS value_percentage
FROM value_data
WHERE industry_branch_code IS NOT NULL
ORDER BY value_percentage;
