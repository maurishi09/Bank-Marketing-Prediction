Create Database BankAnalysis;
SELECT COUNT(*) AS Total_Records
FROM [dbo].[Assignment 3];
SELECT TOP 5
    job,
    AVG(balance) AS avg_balance
FROM [dbo].[Assignment 3]
GROUP BY job
ORDER BY avg_balance DESC;
SELECT
    education,
    COUNT(*) AS total_clients,
    SUM(
        CASE
            WHEN y='yes' THEN 1
            ELSE 0
        END
    ) AS successful_clients,

    ROUND(
        SUM(
            CASE
                WHEN y='yes' THEN 1
                ELSE 0
            END
        ) * 100.0 / COUNT(*),
        2
    ) AS success_rate
FROM [dbo].[Assignment 3]
GROUP BY education
ORDER BY success_rate DESC;
CREATE VIEW vw_ClientSummary AS
SELECT
    age,
    job,
    marital,
    education,
    AVG(balance) AS avg_balance,

    CASE
        WHEN housing='yes'
             AND loan='yes'
        THEN 2

        WHEN housing='yes'
             OR loan='yes'
        THEN 1

        ELSE 0
    END AS number_of_loans,

    contact

FROM [dbo].[Assignment 3]

GROUP BY
    age,
    job,
    marital,
    education,
    housing,
    loan,
    contact;
    CREATE VIEW vw_CampaignPerformance AS

SELECT
    month,

    COUNT(*) AS total_contacts,

    SUM(
        CASE
            WHEN y='yes'
            THEN 1
            ELSE 0
        END
    ) AS successful_contacts,

    ROUND(
        SUM(
            CASE
                WHEN y='yes'
                THEN 1
                ELSE 0
            END
        ) * 100.0 / COUNT(*),
        2
    ) AS success_rate

FROM [dbo].[Assignment 3]

GROUP BY month;
CREATE INDEX idx_age
ON [dbo].[Assignment 3](age);
CREATE INDEX idx_job
ON [dbo].[Assignment 3](job);
CREATE INDEX idx_marital
ON [dbo].[Assignment 3](marital);
CREATE INDEX idx_age_job_marital
ON [dbo].[Assignment 3]
(age, job, marital);
CREATE PROCEDURE UpdateBalance
    @Age INT,
    @NewBalance FLOAT
AS
BEGIN

    UPDATE [dbo].[Assignment 3]
    SET balance = @NewBalance
    WHERE age = @Age;

END;
EXEC UpdateBalance
     @Age = 58,
     @NewBalance = 5000;
