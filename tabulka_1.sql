-- Tabulka 1)
-- t_{jmeno}_{prijmeni}_project_SQL_primary_final (pro data mezd a cen potravin za Českou republiku 
-- sjednocených na totožné porovnatelné období – společné roky
-- --------------------------------------------------------------------------------------------------


CREATE TABLE t_pavel_smid_projekt_SQL_primary_final AS
SELECT 
	cpay.payroll_year, 
	cpay.value AS value_payroll, 
	cpay.industry_branch_code, 
	cpib.name AS branch_name, 
	cp.value, 
	cp.category_code, 
	cpc.name AS food_name
FROM czechia_payroll cpay
LEFT JOIN czechia_price cp 
	ON cpay.payroll_year = YEAR(cp.date_from)
	AND cpay.value_type_code = 5958
LEFT JOIN czechia_payroll_industry_branch cpib 
	ON cpay.industry_branch_code = cpib.code
LEFT JOIN czechia_price_category cpc 
	ON cp.category_code = cpc.code;