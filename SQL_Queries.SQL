 CUSTOMER CHURN ANALYSIS
Dataset: 1000 Customer Records

1. Total Customers

SELECT COUNT(*) AS Total_Customers

FROM Customers;

2. Churned Customers

SELECT COUNT(*) AS Churned_Customers

FROM Customers

WHERE Churn = 'Yes';
 3. Retained Customers

SELECT COUNT(*) AS Retained_Customers

FROM Customers

WHERE Churn = 'No';

 Overall Churn Rate

SELECT

    ROUND(

        SUM(CASE WHEN Churn = 'Yes' THEN 1 ELSE 0 END)

        * 100.0 / COUNT(*), 2

    ) AS Churn_Rate

FROM Customers;

5. Churn by Contract

SELECT Contract, COUNT(*) AS Churned_Customers

FROM Customers

WHERE Churn = 'Yes'

GROUP BY Contract;
 6. Average Monthly Charges

SELECT ROUND(AVG(MonthlyCharges), 2)

AS Average_Monthly_Charges

FROM Customers;

7. Minimum Monthly Charges

SELECT MIN(MonthlyCharges) AS Minimum_Charges

FROM Customers;

Maximum Monthly Charges

SELECT MAX(MonthlyCharges) AS Maximum_Charges

FROM Customers; 
 
