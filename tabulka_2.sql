-- Tabulka 2)
-- t_{jmeno}_{prijmeni}_project_SQL_secondary_final 
-- (tabulky countries , economies pro dodatečná data o dalších evropských státech).
-- --------------------------------------------------


CREATE TABLE t_pavel_smid_projekt_SQL_secondary_final AS
SELECT 
	e.country AS country_economies, 
	e.`year`, 
	e.GDP, 
	e.population AS population_economies, 
	e.gini, 
	e.taxes, 
	e.fertility, 
	e.mortaliy_under5, 
	c.*
FROM economies e
LEFT JOIN countries c ON e.country = c.country
WHERE e.country = 'Czech Republic';