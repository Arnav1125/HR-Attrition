create database HR_Attrition
use HR_Attrition
select * from clean_hr_data

select Round(AVG(Attrition)*100,2) as attrition_rate
from clean_hr_data



SELECT 
    Department,
    ROUND(AVG(Attrition)*100,2) AS Attrition_Rate,
    RANK() OVER (ORDER BY AVG(Attrition) DESC) AS Risk_Rank
FROM clean_hr_data
GROUP BY Department;


select * ,
CASE 
when OverTime='Yes'
AND MonthlyIncome<4000
then 'High Risk'
else 'Normal'
END as risk_category
from clean_hr_data;

SELECT 
    Age_gorup,
    ROUND(AVG(Attrition)*100,2) AS Attrition_Rate,
    RANK() OVER (ORDER BY AVG(Attrition) DESC) AS Risk_Rank
FROM clean_hr_data
GROUP BY Age_gorup;

SELECT 
    Age_gorup,
    ROUND(AVG(Attrition)*100,2) AS Attrition_Rate,
    RANK() OVER (ORDER BY AVG(Attrition) DESC) AS Risk_Rank
FROM clean_hr_data
GROUP BY Age_gorup;

UPDATE clean_hr_data
SET Tenure_group = 
    CASE 
        WHEN YearsAtCompany <= 3 THEN '0-1 Years'
        WHEN YearsAtCompany BETWEEN 4 AND 7 THEN '4-7 Years'
        ELSE '8+ Years'
    END;


SELECT 
    Tenure_group,
    ROUND(AVG(Attrition)*100,2) AS Attrition_Rate,
    RANK() OVER (ORDER BY AVG(Attrition) DESC) AS Risk_Rank
FROM clean_hr_data
GROUP BY Tenure_group;

SELECT 
    Tenure_group,
    ROUND(AVG(Attrition)*100,2) AS Attrition_Rate,
    RANK() OVER (ORDER BY AVG(Attrition) DESC) AS Risk_Rank
FROM clean_hr_data
GROUP BY Tenure_group;

SELECT 
    Income_Band,
    ROUND(AVG(Attrition)*100,2) AS Attrition_Rate,
    RANK() OVER (ORDER BY AVG(Attrition) DESC) AS Risk_Rank
FROM clean_hr_data
GROUP BY Income_Band;

SELECT 
    Attrition,
    ROUND(AVG(MonthlyIncome)*100,2) AS Attrition_Rate
FROM clean_hr_data
GROUP BY Attrition;

SELECT 
    Department,Gender,
    ROUND(AVG(Attrition)*100,2) AS Attrition_Rate
FROM clean_hr_data
GROUP BY Department,Gender;

With High_Risk_Role AS(
Select JobRole,
ROUND(AVG(Attrition)*100,2) AS Attrition_Rate,
Rank() over (ORDER BY AVG(Attrition) DESC) AS Risk_Rank
from clean_hr_data
group by JobRole
)
select *
from High_Risk_Role
Where Risk_rank<=3;

SELECT 
    Department,Tenure_group,OverTime,
    ROUND(AVG(Attrition)*100,2) AS Attrition_Rate
FROM clean_hr_data
GROUP BY Department,Tenure_group,OverTime;

SELECT *,
CASE 
    WHEN Tenure_group='4-7 Years'
    AND Income_band='Medium'
    AND OverTime='Yes'
    THEN 'Retention Opportunity'
    ELSE 'Normal'
END AS Retention_Opportunity_Segment
FROM clean_hr_data;


