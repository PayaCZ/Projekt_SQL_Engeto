-- 5) Má výška HDP vliv na změny ve mzdách a cenách potravin? Neboli, pokud HDP vzroste výrazněji v jednom roce,
-- projeví se to na cenách potravin či mzdách ve stejném nebo násdujícím roce výraznějším růstem?
-- ----------------------------------------------------------------------------------------------------------
SELECT 
	tp.payroll_year, 
	round(AVG(tp.value)) AS price, 
	round(AVG(tp.value_payroll)) AS value_payroll, 
	round((AVG(tp.value) - lag(avg(tp.value)) OVER (ORDER BY tp.payroll_year)) / lag(avg(tp.value)) 
    	OVER (ORDER BY tp.payroll_year) * 100, 2) AS price_increase_percentage, 
    	round((AVG(tp.value_payroll) - lag(avg(tp.value_payroll)) OVER (ORDER BY tp.payroll_year)) / lag(avg(tp.value_payroll)) 
    	OVER (ORDER BY tp.payroll_year) * 100, 2) AS value_increase_percentage, 
    	round((AVG(tp.value) - lag(avg(tp.value)) OVER (ORDER BY tp.payroll_year)) / lag(avg(tp.value)) 
    	OVER (ORDER BY tp.payroll_year) * 100, 2) -
    	round((AVG(tp.value_payroll) - lag(avg(tp.value_payroll)) OVER (ORDER BY tp.payroll_year)) / lag(avg(tp.value_payroll)) 
    	OVER (ORDER BY tp.payroll_year) * 100, 2) AS difference_percentage, tp2.GDP, 
    	round((AVG(tp2.GDP) - lag(avg(tp2.GDP)) OVER (ORDER BY tp2.GDP)) / lag(avg(tp2.GDP)) 
    	OVER (ORDER BY tp.payroll_year) * 100, 2) AS gdp_increase_percentage
FROM t_pavel_smid_projekt_SQL_primary_final tp
LEFT JOIN t_pavel_smid_projekt_SQL_secondary_final tp2 
	ON tp.payroll_year = tp2.`year`
WHERE tp.payroll_year BETWEEN 2006 AND 2018
GROUP BY tp.payroll_year;
