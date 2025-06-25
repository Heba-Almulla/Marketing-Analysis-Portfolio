# Data Analyst Portfolio Project – Marketing Analytics

This repository showcases a complete **end-to-end analytics project** combining **SQL-based data preparation**, **Power BI interactive dashboards**, and **Python-powered sentiment analysis**.

It demonstrates practical capabilities in:
- Data cleaning and enrichment (SQL)
- Business insights through dashboards (Power BI)
- Text sentiment classification (Python & NLP)
---

## Project Structure

| File | Description |
|------|-------------|
| `Data-Preparation-Queries.sql` | SQL scripts to clean, enrich, and normalize multiple datasets: product, customer, review, engagement, and customer journey. |
| `Markting-Analysis-Dashboared.pbix` | Power BI dashboard visualizing KPIs, conversion metrics, sentiment trends, and customer engagement. |
| `Sentiment-Analysis.ipynb` | Python notebook using VADER to analyze customer reviews and classify them by sentiment category and score. |

---

## Data Preparation (SQL)

The SQL script performs:
- 🏷 **Product Categorization** by price bands (Low, Medium, High)
- 🌍 **Customer Enrichment** using geography and age segmentation
- ✍️ **Review Cleaning** by fixing extra spaces
- 📊 **Engagement Normalization** by extracting views/clicks from mixed strings
- 🔁 **Clean Customer Journey Data** by removing duplicates and intelligently filling missing durations — first using the average for that date, then falling back to the overall average if needed


✔️ **Output Preview:**
- 5-level sentiment breakdown
- Standardized and categorized product/customer data
- Fixed engagement fields for accurate KPIs

---

## Dashboard Overview (Power BI)

### 🔹 **Overview Page**
- **Conversion Rate:** 9.57%
- **Social Media Metrics:** 2M Clicks, 414K Likes, 9M Views
- **Customer Reviews:** 1,363 reviews, average rating trend shown monthly
- **Top Conversion Products:** Hockey Stick (15.5%), Ski Boots (14.6%)

### 🔹 **Product Conversion Insights**
- Filterable by product name and campaign year/month
- Tracks performance by channel (Blog, Social Media, Video)
- **Customer Journey Breakdown:**
  - 52.6% Views
  - 27.1% Clicks
  - 15.2% Drop-offs
  - 5.0% Purchases

### 🔹 **Customer Review Analysis**
- **Sentiment Breakdown** (from Python sentiment model):
  - Positive: 840
  - Negative: 226
  - Mixed Negative: 196
  - Mixed Positive: 86
  - Neutral: 15
- **Review Table** with sentiment classification
- Monthly sentiment and average rating trends

---

## Sentiment Analysis (Python)

The notebook:
- Connects to the SQL database and pulls cleaned review data
- Applies **VADER sentiment analysis**
- Classifies reviews into a **5-level sentiment breakdown** based on both sentiment score and rating:
  - Positive
  - Mixed Positive
  - Mixed Negative
  - Negative
  - Neutral
- Buckets compound scores into sentiment ranges:
  - `0.5 to 1.0`, `0.0 to 0.49`, `-0.49 to 0.0`, `-1.0 to -0.5`

📤 **Output saved as CSV**:
```python
fact_customer_reviews_with_sentiment.csv
