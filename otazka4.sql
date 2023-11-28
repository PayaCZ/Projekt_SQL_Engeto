-- 4) Existuje rok, ve kterém byl meziroční nárůst cen potravin výrazně vyšší než růst mezd (větší než 10 %)?
-- -------------------------------------------------------------------------------------------------------


SELECT 
	tp.payroll_year, 
	round(avg(tp.value)) AS price, 
	round(avg(tp.value_payroll)) AS value_payroll, 
	round((avg(tp.value) - lag(avg(tp.value)) OVER (ORDER BY tp.payroll_year)) / lag(avg(tp.value)) 
    	OVER (ORDER BY tp.payroll_year) * 100, 2) AS price_increase_percentage, 
    	round((avg(tp.value_payroll) - LAG(avg(tp.value_payroll)) OVER (ORDER BY tp.payroll_year)) / lag(avg(tp.value_payroll)) 
    	OVER (ORDER BY tp.payroll_year) * 100, 2) AS value_increase_percentage, 
    	round((avg(tp.value) - lag(avg(tp.value)) OVER (ORDER BY tp.payroll_year)) / lag(avg(tp.value)) 
    	OVER (ORDER BY tp.payroll_year) * 100, 2) -
    	round((avg(tp.value_payroll) - lag(avg(tp.value_payroll)) OVER (ORDER BY tp.payroll_year)) / lag(avg(tp.value_payroll)) 
    	OVER (ORDER BY tp.payroll_year) * 100, 2) AS difference_percentage
FROM t_pavel_smid_projekt_sql_primary_final tp
WHERE tp.payroll_year BETWEEN 2006 AND 2018
GROUP BY tp.payroll_year
ORDER BY difference_percentage DESC;