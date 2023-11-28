-- 2) Kolik je možné si koupit litrů mléka a kilogramů chleba za první a poslední srovnatelné období 
-- v dostupných datech cen a mezd?
-- ----------------------------------------------------------------------------------------------------------------------------------
 


SELECT 
 	tp.category_code, 
 	cpc.name AS food_name, 
 	round((SELECT avg(tp.value_payroll) FROM t_pavel_smid_projekt_sql_primary_final tp  
        WHERE payroll_year = 2006 ) / min(tp.value)) AS liters_pieces_2006, 
        round((SELECT avg(tp.value_payroll) FROM t_pavel_smid_projekt_sql_primary_final tp  
        WHERE payroll_year = 2018 ) / max(tp.value)) AS liters_pieces_2018
FROM t_pavel_smid_projekt_sql_primary_final tp
JOIN czechia_price_category cpc 
	ON tp.category_code = cpc.code
WHERE tp.category_code IN (114201, 111301)
GROUP BY tp.category_code, cpc.name
ORDER BY tp.category_code DESC;