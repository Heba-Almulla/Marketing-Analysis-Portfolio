# Data Analyst Portfolio Project – Marketing Analytics

This repository showcases a complete **end-to-end marketing analytics project** combining: 
- **SQL-based data preparation**
- **Power BI interactive dashboards** 
- **Python-powered sentiment analysis**

It demonstrates practical capabilities in:
- Data cleaning and enrichment (SQL)
- Business insights through dashboards (Power BI)
- Text sentiment classification (Python & NLP)
---
## Problem Statement

In a fast-paced marketing environment, businesses struggle to understand:
- Which products convert best?
- Which channels drive the most engagement?
- What’s the overall customer sentiment across all products? (e.g. *840 Positive reviews, Avg Rating: 3.69*)
- Where do we lose customers in the journey?

This project solves those challenges by building a full-stack analytical workflow that answers:
- **Which campaigns convert?** (e.g. *Hockey Stick: 15.5%*)
- **Which month drives peak conversions?** (e.g. *January: 17.3%*)
- **How is sentiment distributed across reviews?** (e.g. *Positive: 840, Negative: 226, Mixed Negative: 196*)
- **Where in the journey are users dropping off?** (e.g. *Drop-off: 15.2%*)

-----

## Project Structure

| File | Description |
|------|-------------|
| `Data-Preparation-Queries.sql` | SQL scripts to clean, enrich, and normalize multiple datasets: product, customer, review, engagement, and customer journey. |
| `Marketing-Analysis-Dashboard.pbix` | Power BI dashboard visualizing KPIs, conversion metrics, sentiment trends, and customer engagement. |
| `Sentiment-Analysis.ipynb` | Python notebook using VADER to analyze customer reviews and classify them by sentiment category and score. |

---

## Data Preparation (SQL)

The SQL script performs:
- **Product Categorization** by price bands (Low, Medium, High)
- **Customer Enrichment** using geography and age segmentation
- **Review Cleaning** by removing extra spaces
- **Engagement Normalization** by extracting views/clicks from mixed strings
- **Clean Customer Journey Data** by removing duplicates and intelligently filling missing durations — first using the average for that date, then falling back to the overall average if needed


✔️ **Output Preview:**
- Standardized fields: clean reviews, tagged price categories, filled engagement fields
- Ready-to-analyze datasets for Power BI

---

## Sentiment Analysis (Python)

The  `Sentiment-Analysis.ipynb` notebook:
- Connects to the SQL database and pulls cleaned review data
- Applies **VADER sentiment analysis**
- Classifies reviews into a **5-level sentiment breakdown** based on both sentiment score and rating:
  - Positive
  - Mixed Positive
  - Mixed Negative
  - Negative
  - Neutral
It also adds:
- `SentimentScore`: VADER compound score (between -1 and 1)
- `SentimentBucket`: One of `0.5 to 1.0`, `0.0 to 0.49`, `-0.49 to 0.0`, or `-1.0 to -0.5`
  
📤 **Output Saved as CSV**:
The sentiment analysis results are saved in the file:
`fact_customer_reviews_with_sentiment.csv`. 

## Dashboard Overview (Power BI)

### 🔹 **Overview Page**
- **Conversion Rate:** 9.57%
- **Social Media Metrics:** 2M Clicks, 414K Likes, 9M Views
- **Customer Reviews:** 1,363 reviews analyzed
- **Top Conversion Products:** Hockey Stick (15.5%), Ski Boots (14.6%)

### 🔹 **Product Conversion Insights**
- Filterable by product name and campaign year/month
- Conversion by content type (Blog, Social, Video)
- **Customer Journey Breakdown:**
  - 52.6% Views
  - 27.1% Clicks
  - 15.2% Drop-offs
  - 5.0% Purchases

### 🔹 **Customer Review Insights**
- **Sentiment Category Breakdown**:
  - Positive: 840
  - Negative: 226
  - Mixed Negative: 196
  - Mixed Positive: 86
  - Neutral: 15
- Monthly trend lines and sentiment distribution

---

💡 **Key Skills Demonstrated**

- SQL (SQL Server): Used for data wrangling, transformation, categorization, and enrichment across multiple datasets
- Python (Pandas, NLTK/VADER, pyodbc): Applied for sentiment analysis, review classification, and seamless database interaction
- Data Cleaning: Handled duplicate entries, missing values, and inconsistent text formatting to ensure data quality
- Power BI: Designed interactive dashboards to deliver clear, actionable business insights
- Natural Language Processing (VADER): Extracted sentiment from customer reviews to uncover hidden feedback patterns
- End-to-End Pipeline Development: Built a complete flow from raw data in SQL to enriched analytics in Python and visual insights in Power BI

🚀 **How to Run**

- SQL
Run Data-Preparation-Queries.sql in your SQL environment.
- Power BI
Open Marketing-Analysis-Dashboard.pbix in Power BI Desktop.
Refresh the data model if connected to local SQL server.
- Python
Run Sentiment-Analysis.ipynb in Jupyter or any notebook tool.

## License

This project is licensed under the [MIT License](LICENSE).

## 👤 Author

**Heba Almulla**  
*Data Analyst | Data Scientist | BI Developer*  
[GitHub Profile](https://github.com/Heba-Almulla) 
[LinkedIn Profile](www.linkedin.com/in/heba-kh-almulla)
