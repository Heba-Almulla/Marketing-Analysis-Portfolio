-- Query 1: Categorize Products Based on Price
SELECT 
    ProductID, ProductName, Price, 
    CASE 
        WHEN Price < 50 THEN 'Low'
        WHEN Price BETWEEN 50 AND 200 THEN 'Medium'
        ELSE 'High'
    END AS PriceCategory
FROM dbo.products;

-- Query 2: Enrich Customer Data with Geographic Information
SELECT 
    c.CustomerID, c.CustomerName, c.Email, c.Gender, c.Age, 
    g.Country, g.City,
    CASE 
        WHEN c.Age BETWEEN 0 AND 24 THEN 'Young'
        WHEN c.Age BETWEEN 25 AND 54 THEN 'Adult'
        ELSE 'Older'
    END AS AgeGroup
FROM dbo.customers c
LEFT JOIN dbo.geography g ON c.GeographyID = g.GeographyID;

-- Query 3: Clean Review Data by Replacing Double Spaces
SELECT 
    ReviewID, CustomerID, ProductID, ReviewDate, Rating, 
    REPLACE(ReviewText, '  ', ' ') AS ReviewText
FROM dbo.customer_reviews;

-- Query 4: Clean and Normalize Engagement Data
SELECT 
    EngagementID, ContentID, CampaignID, ProductID, 
    UPPER(REPLACE(ContentType, 'Socialmedia', 'Social Media')) AS ContentType, 
    LEFT(ViewsClicksCombined, CHARINDEX('-', ViewsClicksCombined) - 1) AS Views, 
    RIGHT(ViewsClicksCombined, LEN(ViewsClicksCombined) - CHARINDEX('-', ViewsClicksCombined)) AS Clicks, 
    Likes, FORMAT(CONVERT(DATE, EngagementDate), 'dd.MM.yyyy') AS EngagementDate
FROM dbo.engagement_data 
WHERE ContentType != 'Newsletter';

-- Query 5: Identify and Tag Duplicate Records
WITH DuplicateRecords AS (
    SELECT 
        JourneyID, CustomerID, ProductID, VisitDate, Stage, Action, Duration,
        ROW_NUMBER() OVER (
            PARTITION BY CustomerID, ProductID, VisitDate, Stage, Action
            ORDER BY JourneyID
        ) AS row_num
    FROM dbo.customer_journey
)
SELECT * FROM DuplicateRecords
WHERE row_num > 1
ORDER BY JourneyID;
