-- 3) Která kategorie potravin zdražuje nejpomaleji (je u ní nejnižší percentuální meziroční nárůst)?
-- ------------------------------------------------------------------------------------------------


WITH price_data AS (
    SELECT 
    	payroll_year, 
    	tp.category_code, 
    	round(AVG(tp.value), 2) AS price, 
    	cpc.name AS food_name, 
    	lag(avg(tp.value)) OVER (PARTITION BY tp.category_code
	ORDER BY payroll_year) AS prev_price
    FROM t_pavel_smid_projekt_sql_primary_final tp
    LEFT JOIN czechia_price_category cpc 
	ON tp.category_code = cpc.code
GROUP BY  payroll_year, tp.category_code, cpc.name
)
SELECT 
	payroll_year, 
	category_code, 
	food_name, price, 
	round((price - prev_price) / prev_price * 100, 2) AS price_percentage
FROM price_data
WHERE category_code IS NOT NULL
ORDER BY price_percentage;