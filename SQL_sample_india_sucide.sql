-- So Basically we have 2 lakh plus data of india sucide from 2001-2012 
-- So i make sample data in that it takes data 30 rows from each State 

-- Q1. Which states reported the highest number of suicides overall during 2001-2012?
SELECT State, SUM(Total) AS Total_Suicides
FROM suicides_sample_1000
GROUP BY State
ORDER BY Total_Suicides DESC;

-- So in that we See the WestBengal , Andhra Pradesh , Tamilnadu is  highest number of suicides

-- Q2. What is the yearly trend of suicides across India?
SELECT Year, SUM(Total) AS Yearly_Suicides
FROM suicides_sample_1000
GROUP BY Year
ORDER BY Year;

-- Q3. Male vs Female suicide distribution
select Gender,sum(Total) as Total
from suicides_sample_1000
group by Gender
order by Total desc;

-- Here Male Sucides are more

-- Q4. Which age group is the most vulnerable?
select Age_group as Total_Suicides
from suicides_sample_1000
GROUP BY Age_group
ORDER BY Total_Suicides DESC;

-- Here we see 0-14 age group is higher in sucide 

-- Q5. Which causes (Type) contribute most to suicides?

SELECT Type, SUM(Total) AS Total_Suicides
FROM suicides_sample_1000
WHERE Type_code = 'Causes'
GROUP BY Type
ORDER BY Total_Suicides DESC
LIMIT 10;

-- Here we see the Causes Not Known , Other Causes (Please Specity), Family Problems are issue they are sucide

-- Q6. Which states have the highest number of female suicides?

SELECT State, SUM(Total) AS Female_Suicides
FROM suicides_sample_1000
WHERE Gender = 'Female'
GROUP BY State
ORDER BY Female_Suicides DESC
LIMIT 10;

-- Here  highest number of female suicides in west bengal , Andhra pradesh and Karnataka

-- Q7. Identify states with sharp suicide growth over time

SELECT State,
       SUM(CASE WHEN Year = 2001 THEN Total END) AS Suicides_2001,
       SUM(CASE WHEN Year = 2012 THEN Total END) AS Suicides_2012
FROM suicides_sample_1000
GROUP BY State
ORDER BY (Suicides_2012 - Suicides_2001) DESC;

