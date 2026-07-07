CREATE TABLE covid_deaths (
	iso_code VARCHAR(20),
	continent VARCHAR(50),
	location TEXT,
	date DATE,
	population INT,
	total_cases INT,
	new_cases INT,
	new_cases_smoothed NUMERIC,
	total_deaths INT,
	new_deaths INT,
	new_deaths_smoothed NUMERIC,
	total_cases_per_million NUMERIC,
	new_cases_per_million NUMERIC,
	new_cases_smoothed_per_million NUMERIC,
	total_deaths_per_million NUMERIC,
	new_deaths_per_million NUMERIC,
	new_deaths_smoothed_per_million NUMERIC,
	reproduction_rate NUMERIC,
	icu_patients NUMERIC,
	icu_patients_per_million NUMERIC,
	hosp_patients INT,
	hosp_patients_per_million NUMERIC,
	weekly_icu_admissions NUMERIC,
	weekly_icu_admissions_per_million NUMERIC,
	weekly_hosp_admissions NUMERIC,
	weekly_hosp_admissions_per_million NUMERIC
)

DROP TABLE covid_deaths

SELECT * FROM covid_deaths



CREATE TABLE public.covid_deaths (
    
    iso_code VARCHAR(20),
    continent VARCHAR(50),
    location VARCHAR(100),
    date DATE,
    
    population NUMERIC,
    
    total_cases NUMERIC,
    new_cases NUMERIC,
    new_cases_smoothed NUMERIC,
    
    total_deaths NUMERIC,
    new_deaths NUMERIC,
    new_deaths_smoothed NUMERIC,
    
    total_cases_per_million NUMERIC,
    new_cases_per_million NUMERIC,
    new_cases_smoothed_per_million NUMERIC,
    
    total_deaths_per_million NUMERIC,
    new_deaths_per_million NUMERIC,
    new_deaths_smoothed_per_million NUMERIC,
    
    reproduction_rate NUMERIC,
    
    icu_patients NUMERIC,
    icu_patients_per_million NUMERIC,
    
    hosp_patients NUMERIC,
    hosp_patients_per_million NUMERIC,
    
    weekly_icu_admissions NUMERIC,
    weekly_icu_admissions_per_million NUMERIC,
    
    weekly_hosp_admissions NUMERIC,
    weekly_hosp_admissions_per_million NUMERIC
);

CREATE TABLE public.covid_deaths_staging (
    iso_code TEXT,
    continent TEXT,
    location TEXT,
    date TEXT,
    population TEXT,
    total_cases TEXT,
    new_cases TEXT,
    new_cases_smoothed TEXT,
    total_deaths TEXT,
    new_deaths TEXT,
    new_deaths_smoothed TEXT,
    total_cases_per_million TEXT,
    new_cases_per_million TEXT,
    new_cases_smoothed_per_million TEXT,
    total_deaths_per_million TEXT,
    new_deaths_per_million TEXT,
    new_deaths_smoothed_per_million TEXT,
    reproduction_rate TEXT,
    icu_patients TEXT,
    icu_patients_per_million TEXT,
    hosp_patients TEXT,
    hosp_patients_per_million TEXT,
    weekly_icu_admissions TEXT,
    weekly_icu_admissions_per_million TEXT,
    weekly_hosp_admissions TEXT,
    weekly_hosp_admissions_per_million TEXT
);

INSERT INTO public.covid_deaths (
    iso_code,
    continent,
    location,
    date,
    population,
    total_cases,
    new_cases,
    new_cases_smoothed,
    total_deaths,
    new_deaths,
    new_deaths_smoothed,
    total_cases_per_million,
    new_cases_per_million,
    new_cases_smoothed_per_million,
    total_deaths_per_million,
    new_deaths_per_million,
    new_deaths_smoothed_per_million,
    reproduction_rate,
    icu_patients,
    icu_patients_per_million,
    hosp_patients,
    hosp_patients_per_million,
    weekly_icu_admissions,
    weekly_icu_admissions_per_million,
    weekly_hosp_admissions,
    weekly_hosp_admissions_per_million
)
SELECT
    iso_code,
    continent,
    location,
    TO_DATE(date, 'DD/MM/YYYY'),
    NULLIF(population, '')::NUMERIC,
    NULLIF(total_cases, '')::NUMERIC,
    NULLIF(new_cases, '')::NUMERIC,
    NULLIF(new_cases_smoothed, '')::NUMERIC,
    NULLIF(total_deaths, '')::NUMERIC,
    NULLIF(new_deaths, '')::NUMERIC,
    NULLIF(new_deaths_smoothed, '')::NUMERIC,
    NULLIF(total_cases_per_million, '')::NUMERIC,
    NULLIF(new_cases_per_million, '')::NUMERIC,
    NULLIF(new_cases_smoothed_per_million, '')::NUMERIC,
    NULLIF(total_deaths_per_million, '')::NUMERIC,
    NULLIF(new_deaths_per_million, '')::NUMERIC,
    NULLIF(new_deaths_smoothed_per_million, '')::NUMERIC,
    NULLIF(reproduction_rate, '')::NUMERIC,
    NULLIF(icu_patients, '')::NUMERIC,
    NULLIF(icu_patients_per_million, '')::NUMERIC,
    NULLIF(hosp_patients, '')::NUMERIC,
    NULLIF(hosp_patients_per_million, '')::NUMERIC,
    NULLIF(weekly_icu_admissions, '')::NUMERIC,
    NULLIF(weekly_icu_admissions_per_million, '')::NUMERIC,
    NULLIF(weekly_hosp_admissions, '')::NUMERIC,
    NULLIF(weekly_hosp_admissions_per_million, '')::NUMERIC
FROM public.covid_deaths_staging;

DROP TABLE public.covid_deaths_staging


	
CREATE TABLE public.covid_vaccinations (
    
    iso_code VARCHAR(20),
    continent VARCHAR(50),
    location VARCHAR(100),
    date DATE,

	new_tests INT,
	total_tests INT,
	total_tests_per_thousand NUMERIC,
	new_tests_per_thousand NUMERIC,
	new_tests_smoothed INT,
	new_tests_smoothed_per_thousand NUMERIC,
	positive_rate NUMERIC,
	tests_per_case NUMERIC,
	tests_units TEXT,
	total_vaccinations INT,
	people_vaccinated INT,
	people_fully_vaccinated INT,
	new_vaccinations INT,
	new_vaccinations_smoothed INT,
	total_vaccinations_per_hundred NUMERIC,
	people_vaccinated_per_hundred NUMERIC,
	people_fully_vaccinated_per_hundred NUMERIC,
	new_vaccinations_smoothed_per_million INT,
	stringency_index NUMERIC,
	population_density NUMERIC,
	median_age NUMERIC,
	aged_65_older NUMERIC,
	aged_70_older NUMERIC,
	gdp_per_capita NUMERIC,
	extreme_poverty NUMERIC,
	cardiovasc_death_rate NUMERIC,
	diabetes_prevalence NUMERIC,
	female_smokers NUMERIC,
	male_smokers NUMERIC,
	handwashing_facilities NUMERIC,
	hospital_beds_per_thousand NUMERIC,
	life_expectancy NUMERIC,
	human_development_index NUMERIC
)

CREATE TABLE public.covid_vaccinations_staging (
    
    iso_code TEXT,
    continent TEXT,
    location TEXT,
    date TEXT,

	new_tests TEXT,
	total_tests TEXT,
	total_tests_per_thousand TEXT,
	new_tests_per_thousand TEXT,
	new_tests_smoothed TEXT,
	new_tests_smoothed_per_thousand TEXT,
	positive_rate TEXT,
	tests_per_case TEXT,
	tests_units TEXT,
	total_vaccinations TEXT,
	people_vaccinated TEXT,
	people_fully_vaccinated TEXT,
	new_vaccinations TEXT,
	new_vaccinations_smoothed TEXT,
	total_vaccinations_per_hundred TEXT,
	people_vaccinated_per_hundred TEXT,
	people_fully_vaccinated_per_hundred TEXT,
	new_vaccinations_smoothed_per_million TEXT,
	stringency_index TEXT,
	population_density TEXT,
	median_age TEXT,
	aged_65_older TEXT,
	aged_70_older TEXT,
	gdp_per_capita TEXT,
	extreme_poverty TEXT,
	cardiovasc_death_rate TEXT,
	diabetes_prevalence TEXT,
	female_smokers TEXT,
	male_smokers TEXT,
	handwashing_facilities TEXT,
	hospital_beds_per_thousand TEXT,
	life_expectancy TEXT,
	human_development_index TEXT
)

INSERT INTO covid_vaccinations (
	iso_code,
    continent,
    location,
    date,

	new_tests,
	total_tests,
	total_tests_per_thousand,
	new_tests_per_thousand,
	new_tests_smoothed,
	new_tests_smoothed_per_thousand,
	positive_rate,
	tests_per_case,
	tests_units,
	total_vaccinations,
	people_vaccinated,
	people_fully_vaccinated,
	new_vaccinations,
	new_vaccinations_smoothed,
	total_vaccinations_per_hundred,
	people_vaccinated_per_hundred,
	people_fully_vaccinated_per_hundred,
	new_vaccinations_smoothed_per_million,
	stringency_index,
	population_density,
	median_age,
	aged_65_older,
	aged_70_older,
	gdp_per_capita,
	extreme_poverty,
	cardiovasc_death_rate,
	diabetes_prevalence,
	female_smokers,
	male_smokers,
	handwashing_facilities,
	hospital_beds_per_thousand,
	life_expectancy,
	human_development_index	
)
SELECT
	iso_code,
    continent,
    location,
    TO_DATE(date, 'DD/MM/YYYY'),

	NULLIF(new_tests, '')::NUMERIC,   
	NULLIF(total_tests, '')::NUMERIC,
	NULLIF(total_tests_per_thousand, '')::NUMERIC,
	NULLIF(new_tests_per_thousand, '')::NUMERIC,
	NULLIF(new_tests_smoothed, '')::NUMERIC,
	NULLIF(new_tests_smoothed_per_thousand, '')::NUMERIC,
	NULLIF(positive_rate, '')::NUMERIC,
	NULLIF(tests_per_case, '')::NUMERIC,
	NULLIF(tests_units, '')::TEXT,
	NULLIF(total_vaccinations, '')::INT,
	NULLIF(people_vaccinated, '')::NUMERIC,
	NULLIF(people_fully_vaccinated, '')::NUMERIC,
	NULLIF(new_vaccinations, '')::NUMERIC,
	NULLIF(new_vaccinations_smoothed, '')::NUMERIC,
	NULLIF(total_vaccinations_per_hundred, '')::NUMERIC,
	NULLIF(people_vaccinated_per_hundred, '')::NUMERIC,
	NULLIF(people_fully_vaccinated_per_hundred, '')::NUMERIC,
	NULLIF(new_vaccinations_smoothed_per_million, '')::NUMERIC,
	NULLIF(stringency_index, '')::NUMERIC,
	NULLIF(population_density, '')::NUMERIC,
	NULLIF(median_age, '')::NUMERIC,
	NULLIF(aged_65_older, '')::NUMERIC,
	NULLIF(aged_70_older, '')::NUMERIC,
	NULLIF(gdp_per_capita, '')::NUMERIC,
	NULLIF(extreme_poverty, '')::NUMERIC,
	NULLIF(cardiovasc_death_rate, '')::NUMERIC,
	NULLIF(diabetes_prevalence, '')::NUMERIC,
	NULLIF(female_smokers, '')::NUMERIC,
	NULLIF(male_smokers, '')::NUMERIC,
	NULLIF(handwashing_facilities, '')::NUMERIC,
	NULLIF(hospital_beds_per_thousand, '')::NUMERIC,
	NULLIF(life_expectancy, '')::NUMERIC,
	NULLIF(human_development_index, '')::NUMERIC
FROM covid_vaccinations_staging;

SELECT * FROM covid_deaths
	ORDER BY 3,4

SELECT * FROM covid_vaccinations
ORDER BY 3,4

	-- SELECT THE MAJOR DATA WE WILL BE USING
SELECT 
	location, date, total_cases, new_cases, total_deaths, population
FROM covid_deaths
ORDER BY 1,2;

-- TOTAL CASES VS TOTAL DEATHS
-- SHOWS THE LIKELIHOOD OF DYING IF YOU CONTACT COVID IN NIGERIA
SELECT 
	location, date, total_cases,
	total_deaths, population, ROUND((total_deaths/NULLIF(total_cases, 0)) *100, 2)||'%' AS death_percentage
FROM covid_deaths
	WHERE location = 'Nigeria'
ORDER BY 1,2;

-- TOTAL CASES VS POPULATION
-- SHOWS WHAT PERCENTAGE OF POPULATION HAS GOTTEN COVID
SELECT 
	location, date, population, total_cases,
	ROUND((total_cases/NULLIF(population, 0)) *100, 2) AS cases_percentage_by_population
FROM covid_deaths
	WHERE location = 'Nigeria'
ORDER BY 2; 

-- WHAT COUNTRIES HAS THE HIGHEST INFECTION RATE AGAINST POPULATION

SELECT 
	location,
	population,
	MAX(total_cases) AS Max_cases_by_countries,
	ROUND(MAX(total_cases)/NULLIF(population, 0) *100, 2) AS percentage_Max_cases_by_countries
FROM covid_deaths
GROUP BY 1, 2 
ORDER BY 4 DESC

-- SHOW COUNTRIES WITH HIGHEST DEATH COUNT POPULATION 
SELECT 
	location,
	population,
	MAX(total_deaths) AS total_death_by_countries,
	ROUND(MAX(total_deaths)/NULLIF(population, 0) *100, 2) AS percentage_Max_cases_by_countries
FROM covid_deaths
	WHERE continent IS NOT NULL
GROUP BY 1, 2 
ORDER BY 3 DESC

-- SHOWING CONTINENTS WITH HIGHEST DEATH COUNTS 
SELECT 
	continent,
	MAX(total_deaths) AS total_death_by_countries
FROM covid_deaths
	WHERE continent IS NOT NULL
GROUP BY 1 
ORDER BY 2 DESC


-- GLOBAL NUMBERS
SELECT 
	--date, 
	SUM(new_cases) AS total_new_cases,
	SUM(new_deaths) AS total_new_deaths, 
	ROUND(SUM(new_deaths)/
	SUM(new_cases)*100, 2) AS percentage_global_deaths
	--population, 
	--ROUND((total_deaths/NULLIF(total_cases, 0)) *100, 2)||'%' AS death_percentage
FROM covid_deaths
	WHERE continent IS NOT NULL 	
	--GROUP BY 1
ORDER BY 1,2;

SELECT * 
FROM covid_vaccinations

DROP TABLE IF EXISTS covid_vaccinations_staging


	-- LOOKING AT TOTAL POPULATION VS VACCINATIONS
SELECT  
	dea.continent, 
	dea.location, 
	dea.date, 
	dea.population, 
	vac.new_vaccinations,
	SUM(vac.new_vaccinations) 
	OVER(PARTITION BY dea.location ORDER BY dea.location, dea.date) AS rolling_people_vaccinated 
FROM covid_deaths AS dea
JOIN covid_vaccinations AS vac
ON dea.location = vac.location 
AND dea.date = vac.date
	WHERE dea.continent IS NOT NULL
ORDER BY 2,3


	-- LOOKING AT TOTAL POPULATION VS VACCINATIONS USING CTE
WITH population_vs_vaccination
	(continent, location, date, population, new_vaccinations, rolling_people_vaccinated) AS
	(
	SELECT  dea.continent, 
		dea.location, 
		dea.date, 
		dea.population, 
		vac.new_vaccinations,
		SUM(vac.new_vaccinations) 
		OVER(PARTITION BY dea.location ORDER BY dea.location, dea.date) AS rolling_people_vaccinated 
	FROM covid_deaths AS dea
	JOIN covid_vaccinations AS vac
	ON dea.location = vac.location 
	AND dea.date = vac.date
		WHERE dea.continent IS NOT NULL
	ORDER BY 2,3
	)
-- NOTE: THE NUMBER OF COLUMNS IN THE CTE MUST MATCH THE NUMBER OF SELECT STATEMENT
SELECT *, ROUND((rolling_people_vaccinated/population) * 100, 2) AS percentage_people_rolling_vaccinated
FROM population_vs_vaccination

	-- LOOKING AT TOTAL POPULATION VS VACCINATIONS USING TEMP TABLE

CREATE TEMP TABLE _population_vs_vaccination (
	continent VARCHAR(50), 
	location VARCHAR(100), 
	date DATE, 
	population NUMERIC, 
	new_vaccinations INT, 
	rolling_people_vaccinated BIGINT
);
INSERT INTO _population_vs_vaccination 
SELECT  dea.continent, 
		dea.location, 
		dea.date, 
		dea.population, 
		vac.new_vaccinations,
		SUM(vac.new_vaccinations) 
		OVER(PARTITION BY dea.location ORDER BY dea.location, dea.date) AS rolling_people_vaccinated 
	FROM covid_deaths AS dea
	JOIN covid_vaccinations AS vac
	ON dea.location = vac.location 
	AND dea.date = vac.date
		WHERE dea.continent IS NOT NULL
	ORDER BY 2,3;

SELECT *, ROUND((rolling_people_vaccinated/population) * 100, 2) AS percentage_people_rolling_vaccinated
FROM _population_vs_vaccination

-- CREATING VIEWS TO STORE DATA FOR LATER VISUALIZATIONS
CREATE VIEW percent_population_vaccinated AS
	SELECT
	dea.continent, 
	dea.location, 
	dea.date, 
	dea.population, 
	vac.new_vaccinations,
	SUM(vac.new_vaccinations) 
	OVER(PARTITION BY dea.location ORDER BY dea.location, dea.date) AS rolling_people_vaccinated
FROM covid_deaths AS dea
	JOIN covid_vaccinations AS vac
	ON dea.location = vac.location 
	AND dea.date = vac.date
WHERE dea.continent IS NOT NULL

SELECT *
FROM percent_population_vaccinated;

CREATE VIEW total_cases_vs_total_deaths AS 
	SELECT 
	location, 
	date,
	total_cases,
	total_deaths, 
	population, 
	ROUND((total_deaths/NULLIF(total_cases, 0)) *100, 2)||'%' AS death_percentage
	FROM covid_deaths
	WHERE location = 'Nigeria'
	ORDER BY 1,2;

CREATE VIEW total_cases_vs_population AS 
	SELECT 
	location, 
	date, 
	population, 
	total_cases,
	ROUND((total_cases/NULLIF(population, 0)) *100, 2) AS cases_percentage_by_population
	FROM covid_deaths
	WHERE location = 'Nigeria'
	ORDER BY 2; 

CREATE VIEW countries_with_highest_infection_rates AS 
	SELECT 
		location,
		population,
		MAX(total_cases) AS Max_cases_by_countries,
		ROUND(MAX(total_cases)/NULLIF(population, 0) *100, 2) AS percentage_Max_cases_by_countries
	FROM covid_deaths
	GROUP BY 1, 2 
	ORDER BY 4 DESC

CREATE VIEW countries_with_highest_death_count AS
	SELECT 
		location,
		population,
		MAX(total_deaths) AS total_death_by_countries,
		ROUND(MAX(total_deaths)/NULLIF(population, 0) *100, 2) AS percentage_Max_cases_by_countries
	FROM covid_deaths
	WHERE continent IS NOT NULL
	GROUP BY 1, 2 
	ORDER BY 3 DESC

CREATE VIEW continents_with_highest_death_count AS
	SELECT 
		continent,
		MAX(total_deaths) AS total_death_by_countries
	FROM covid_deaths
	WHERE continent IS NOT NULL
	GROUP BY 1 
	ORDER BY 2 DESC

CREATE VIEW global_death_percentage AS 
	SELECT 
		--date, 
		SUM(new_cases) AS total_new_cases,
		SUM(new_deaths) AS total_new_deaths, 
		ROUND(SUM(new_deaths)/
		SUM(new_cases)*100, 2) AS percentage_global_deaths
		--population, 
		--ROUND((total_deaths/NULLIF(total_cases, 0)) *100, 2)||'%' AS death_percentage
	FROM covid_deaths
	WHERE continent IS NOT NULL 	
		--GROUP BY 1
	ORDER BY 1,2;

CREATE VIEW total_population_vs_vaccination AS
WITH population_vs_vaccination
	(continent, location, date, population, new_vaccinations, rolling_people_vaccinated) AS
	(
	SELECT  dea.continent, 
		dea.location, 
		dea.date, 
		dea.population, 
		vac.new_vaccinations,
		SUM(vac.new_vaccinations) 
		OVER(PARTITION BY dea.location ORDER BY dea.location, dea.date) AS rolling_people_vaccinated 
	FROM covid_deaths AS dea
	JOIN covid_vaccinations AS vac
	ON dea.location = vac.location 
	AND dea.date = vac.date
	WHERE dea.continent IS NOT NULL
	ORDER BY 2,3
	)
-- NOTE: THE NUMBER OF COLUMNS IN THE CTE MUST MATCH THE NUMBER OF SELECT STATEMENT
SELECT *, ROUND((rolling_people_vaccinated/population) * 100, 2) AS percentage_people_rolling_vaccinated
FROM population_vs_vaccination