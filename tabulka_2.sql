-- Tabulka 2)
-- t_{jmeno}_{prijmeni}_project_SQL_secondary_final 
-- (tabulky countries , economies pro dodatečná data o České republice).
-- --------------------------------------------------


CREATE TABLE t_pavel_smid_projekt_SQL_secondary_final AS
SELECT 
	e.country AS country_economies, 
	e.`year`, 
	e.GDP,
	e.gini,
	e.population
FROM economies e
LEFT JOIN countries c ON e.country = c.country
WHERE e.GDP IS NOT NULL ;