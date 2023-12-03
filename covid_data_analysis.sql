USE covid;

-- Shows likelihood of a person would be died in case of see has been infected? 

SELECT location, SUM(dead), SUM(infected), (SUM(dead)/SUM(infected) * 100) AS dead_infected_likelihood
FROM data
GROUP BY location
ORDER BY dead_infected_likelihood desc;

-- Shows likelihood of a person would be died in case of see has been vaccinated? 
SELECT location, SUM(dead), SUM(vaccinated), (SUM(dead)/SUM(vaccinated) * 100) AS dead_vaccinated_likelihood
FROM data
GROUP BY location
ORDER BY dead_vaccinated_likelihood desc;

-- Shows likelihood of a person would be infected in case of see has been vaccinated? 
SELECT location, SUM(infected), SUM(vaccinated), (SUM(infected)/SUM(vaccinated) * 100) AS infected_vaccinated_likelihood
FROM data
GROUP BY location
ORDER BY infected_vaccinated_likelihood desc;

-- Which country does have the highest death rate compare to population?
SELECT location, population, SUM(dead), (SUM(dead)/population* 100) AS highest_rate
FROM data
GROUP BY location, population
ORDER BY highest_rate desc;

-- Which country does have the highest infection rate compare to population?
SELECT location, population, SUM(infected), (SUM(infected)/population* 100) AS highest_rate
FROM data
GROUP BY location, population
ORDER BY highest_rate desc;