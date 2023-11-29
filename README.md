# Projekt_SQL_Engeto
DA 26.10.2023

author: Pavel Šmíd
email: 78.78@seznam.cz
discord: Pavel Šmíd#2969
---------------------------------------------------------------------------------------------------------------------------------------------------


Zde jsou připraveny datové podklady pro definované výzkumné otázky, které adresují dostupnost základních potravin široké veřejnosti. V těchto datových podkladech je možné vidět porovnání dostupnosti potravin na základě průměrných příjmů za určité časové období, dále HDP, GINI koeficient a počet populace dalších evropských států ve stejném období, jako primární přehled pro ČR.   


---------------------------------------------------------------------------------------------------------------------------------------------------


Popis vytvořené tabulky č.1:

Tabulka t_pavel_smid_projekt_SQL_primary_final byla vytvořena pro shromáždění dat o mzdách a cen potravin za Českou republiku. Tato tabulka slouží k porovnání mezd a cen potravin, která jsou sjednocena na totožné porovnatelné období, tj. pro společné roky.

Struktura tabulky:

payroll_year: Sloupec obsahuje rok, ke kterému se data vztahují. Identifikuje konkrétní rok sledovaný v tabulce.

value_payroll: Sloupec obsahuje hodnotu mezd za daný rok a odvětví. Mzdová data jsou spojena s odpovídajícím rokem z tabulky mezd.

industry_branch_code: Kód odvětví, ke kterému patří sledovaná data. Slouží k identifikaci odvětví, ke kterému jsou přiřazena mzdová a cenová data.

branch_name: Název odvětví, kterému patří sledovaná data. Poskytuje srozumitelný název odpovídajícího odvětví.

value: Sloupec obsahuje hodnotu cen potravin za daný rok a kategorii. Cenová data jsou spojena s odpovídajícím rokem z tabulky cen potravin.

category_code: Kód kategorie potravin, ke které patří sledovaná data. Slouží k identifikaci kategorie potravin spojené s cenovými daty.

food_name: Název kategorie potravin, ke které patří sledovaná data. Poskytuje srozumitelný název odpovídající kategorii potravin.

Vytvoření tabulky:
Tabulka byla vytvořena pomocí příkazu CREATE TABLE a spojením dat z různých tabulek (czechia_payroll, czechia_price, czechia_payroll_industry_branch, czechia_price_category) na základě odpovídajících klíčů a podmínek spojení.

Tato tabulka umožňuje snadné porovnání meziročních změn mezd a cen potravin v České republice v rámci jednotného a porovnatelného období. Její struktura umožňuje provádění analýz a dotazů, které spojují relevantní informace o mzdách a cen potravin.

---------------------------------------------------------------------------------------------------------------------------------------------------

Popis vytvořené tabulky č.2:

Tabulka t_pavel_smid_projekt_SQL_secondary_final byla vytvořena pro shromáždění dodatečných dat o České republice z tabulek economies a countries. Tato tabulka slouží k poskytnutí dalších informací o ekonomických  aspektech pro Českou republiku.

Struktura tabulky:

country_economies: Sloupec obsahuje název země z tabulky economies.

year: Sloupec obsahuje rok, ke kterému se data vztahují. Identifikuje konkrétní rok sledovaný v tabulce economies.

GDP: Sloupec obsahuje hodnotu hrubého domácího produktu (GDP) v daném roce.

gini: Tento sloupec obsahuje informace o Giniho koeficientu, který měří míru nerovnosti příjmů v dané zemi.

population: Tento sloupec obsahuje informace o populaci dané země.


Vytvoření tabulky:

Tabulka byla vytvořena pomocí příkazu CREATE TABLE a spojením dat z tabulek economies a countries na základě odpovídajícího klíče country. Při výběru dat byla provedena podmínka, která omezila výběr na Českou republiku.

Tato tabulka poskytuje soubor dat o České republice, který zahrnuje ekonomické informace. Je vhodná pro analýzu a srovnání s dalšími evropskými státy.


---------------------------------------------------------------------------------------------------------------------------------------------------



Otázka č.1:

Jaký je vývoj průměrné mzdy v různých odvětvích během let? Rostou mzdy ve všech odvětvích nebo v některých klesají?

Vysvětlení kódu:

WITH klauzule: Vytvoření dočasné tabulky value_data, která obsahuje údaje o průměrných mzdách a předchozích hodnotách pro každý rok a odvětví.

LAG funkce: Pomocí funkce LAG získáme hodnoty předchozího roku pro každé odvětví.

Výpočet procentuální změny: Výpočet procentuální změny mezi aktuálním rokem a předchozím rokem pro každé odvětví.

Výběr relevantních informací: Výběr potřebných informací, jako jsou rok, kód odvětví, název odvětví, průměrná mzda a procentuální změna.

Filtrace a řazení: Filtrace dat pro odstranění neplatných hodnot a řazení výsledků podle procentuální změny.

Závěr:

Kód analyzuje průměrné mzdy v různých odvětvích během let a poskytuje výsledky v podobě procentuální změny v průměrných mzdách mezi aktuálním rokem a předchozím rokem pro každé odvětví. Výsledky jsou seřazeny podle procentuální změny od největší k nejmenší.

S dat vyplívá, že profese: 
Velkoobchod a maloobchod; opravy a údržba motorových vozidel, 
Kulturní, zábavní a rekreační činnosti, 
Stavebnictví
klesla v roce 2021 průměrná hrubá mzda o 25% až 30%.
Dalo by se říci, že po covidové pandemii klesly mzdy o nejvíce procent za měřené období, což je od roku 2000 až do roku 2021.

Takto strukturovaná analýza umožňuje identifikovat odvětví, kde došlo k významným změnám v průměrných mzdách a poskytuje přehled o celkovém trendu růstu nebo poklesu v jednotlivých odvětvích. Tímto způsobem lze snáze identifikovat ekonomické trendy a přijmout informovaná rozhodnutí v oblasti pracovních sil a investic.

---------------------------------------------------------------------------------------------------------------------------------------------------




Otázka č.2:

Kolik je možné si koupit litrů mléka a kilogramů chleba za první a poslední srovnatelné období v dostupných datech cen a mezd?

Vysvětlení kódu:

Výběr relevantních dat: Používáme spojení (JOIN) mezi tabulkou t_pavel_smid_projekt_sql_primary_final a czechia_price_category, abychom získali relevantní informace o cenách a mzdách potravinových kategorií.

Výpočet množství litrů/mléka a kilogramů/chleba: Pro každou kategorii potravin (category_code) vypočítáváme, kolik litrů mléka a kilogramů chleba je možné si koupit za první rok 2006 a poslední rok 2018 srovnatelné období. Výpočet je proveden jako poměr průměrné mzdy k minimální a maximální ceně dané kategorie.

Zaokrouhlování: Výsledky jsou zaokrouhlovány na dvě desetinná místa.

Filtrace dat: Omezujeme výběr na konkrétní kategorie potravin (kód 114201 pro mléko a 111301 pro chléb).


Závěr:

Tímto způsobem kód poskytuje informace o tom, kolik litrů mléka a kilogramů chleba bylo     možné si koupit za první a poslední srovnatelné období na základě průměrných mezd a cen. Bylo zjištěno, že v roce 2006 bylo možné si koupit 1411 litrů polotučného pasterizovaného mléka a 1264 kusů konzumního kmínového chleba. Za to v roce 2018, 1545 litrů polotučného pasterizovaného mléka a 1319 kusů konzumního kmínového chleba.

---------------------------------------------------------------------------------------------------------------------------------------------------


Otázka č.3:
Která kategorie potravin zdražuje nejpomaleji (je u ní nejnižší percentuální meziroční nárůst)?

Vysvětlení kódu:
WITH klauzule: Vytvoření dočasné tabulky price_data, která obsahuje údaje o průměrných cenách potravin, názvu kategorie a předchozích cenách pro každý rok.

LAG funkce: Funkce LAG se používá k získání předchozích cen potravin pro každý rok.

Výpočet procentuální změny cen: Výpočet procentuální změny mezi aktuálním a předchozím rokem pro každou kategorii potravin.

Výběr relevantních informací: Výběr potřebných informací, jako jsou rok, kód kategorie, název kategorie, průměrná cena a procentuální změna.

Filtrace dat: Filtrace dat pro odstranění neplatných hodnot.

Řazení výsledků: Výsledky jsou řazeny podle procentuální změny ceny od nejnižší k nejvyšší.

Závěr:

Kód provedl analýzu meziročního nárůstu cen potravin v různých kategoriích. Z výsledků vyplývá, že kategorie 117101 Rajská jablka červená kulata zdražují nejpomaleji ba naopak v jistých letech (2007, 2008, 2011) cena klesá až o 30%.  

Tato analýza může být užitečná pro spotřebitele i obchodníky, kteří chtějí sledovat, jak se vyvíjí ceny potravin v různých kategoriích. Identifikace kategorií s nižším procentuálním růstem může pomoci při plánování nákupů a rozhodování o strategiích cenové politiky.

---------------------------------------------------------------------------------------------------------------------------------------------------


Otázka č.4:

Existuje rok, ve kterém byl meziroční nárůst cen potravin výrazně vyšší než růst mezd (větší než 10%)?

Vysvětlení kódu:

Výběr relevantních dat: Používáme data z tabulky t_pavel_smid_projekt_sql_primary_final pro roky  2006 do 2018.

Výpočet meziročního růstu cen potravin a mezd: V kódu jsou vypočítány meziroční růsty cen potravin a mezd pro každý rok.

Výběr potřebných informací: Vybrány jsou relevantní informace, jako jsou rok, průměrná cena potravin, průměrná mzda, procentuální růst cen potravin a mezd.

Výpočet rozdílu: Spočítán je rozdíl mezi procentuálním růstem cen potravin a mezd.

Filtrace dat: Omezujeme výběr na roky  2006 do 2018.

Řazení výsledků: Výsledky jsou řazeny sestupně podle rozdílu mezi procentuálním růstem cen potravin a mezd.


Závěr:

Kód provedl analýzu meziročního růstu cen potravin a mezd v letech 2006 až 2018. Rozdíl mezi procentuálním růstem cen potravin a mezd byl vypočítán pro každý rok. Výsledky jsou seřazeny sestupně podle tohoto rozdílu.
Analýza ukazuje, zda existuje nějaký konkrétní rok, ve kterém byl meziroční nárůst cen potravin výrazně vyšší než růst mezd a zda tento rozdíl překročil hranici 10 %. Takový rok nebyl nalezen pouze 
v roce 2013 je nárůst cen o 7,04 % vyšší než růst mezd.
Tato informace může být užitečná pro identifikaci období, kdy nárůst cen potravin byl mimořádně vysoký ve srovnání s růstem mezd, což může ovlivnit ekonomickou stabilitu a životní náklady obyvatelstva.

---------------------------------------------------------------------------------------------------------------------------------------------------


Otázka č.5:

Má výška HDP vliv na změny ve mzdách a cenách potravin? Neboli, pokud HDP vzroste výrazněji v jednom roce, projeví se to na cenách potravin či mzdách ve stejném nebo následujícím roce výraznějším růstem?

Vysvětlení kódu:
Výběr relevantních dat: Používáme data z tabulek t_pavel_smid_projekt_sql_primary_final a t_pavel_smid_projekt_sql_secondary_final pro roky od 2006 do 2018.

Výpočet meziročního růstu cen potravin, mezd a HDP: V kódu jsou vypočítány meziroční změny cen potravin, mezd a HDP pro každý rok.

Výběr potřebných informací: Vybrány jsou relevantní informace, jako jsou rok, průměrná cena potravin, průměrná mzda, procentuální růst cen potravin a mezd, a HDP.

Výpočet meziročního růstu HDP: Vypočten je meziroční růst HDP.

Filtrace dat: Omezujeme výběr na roky od 2006 do 2018.

Výsledky tohoto kódu pomohou určit, zda existuje korelace mezi vývojem HDP a změnami ve mzdách a cenách potravin v příslušných letech. Procentuální změny ve výšce HDP, mezd a cen potravin jsou porovnávány, což umožní identifikovat případné vzory či korelace.

Závěr:

Kód provedl analýzu vlivu vývoje HDP na změny ve mzdách a cenách potravin v letech 2006 až 2018. Výsledky poskytují informace o meziročních změnách ve výšce mezd, cen potravin a HDP pro každý rok v uvedeném období.
Rozdíl mezi procentuálním růstem HDP a procentuálním růstem mezd a cen potravin byl vypočítán, což umožňuje identifikovat, zda výraznější nárůst HDP v nějakém roce měl vliv na stejně či následujícím roce výraznější růst mezd nebo cen potravin.
Analýza může poskytnout užitečné informace pro pochopení možné korelace mezi ekonomickým růstem a změnami v oblasti mezd a cen potravin v příslušném časovém období.


Vztah mezi růstem HDP a růstem cen potravin:
Z dat  lze vyčíst, že v některých letech s výrazným růstem HDP (např. v roce 2017) se objevuje také výraznější růst cen potravin ve stejném nebo následujícím roce.

Vztah mezi růstem HDP a růstem mezd:
Opět z tabulky s daty vyplývá, že v letech s výrazným růstem HDP existuje tendence k výraznějšímu růstu mezd ve stejném nebo následujícím roce.

Porovnání růstu cen potravin a mezd:
Na základě dat z tabulky lze pozorovat, že změny cen potravin a mezd nejsou vždy úměrné, ale občas může být pozorován nějaký vztah.




