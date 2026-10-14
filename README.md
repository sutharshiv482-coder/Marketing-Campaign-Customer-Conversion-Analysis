# 📣 Marketing Campaign & Customer Conversion Analysis

An interactive **Marketing Campaign & Customer Conversion Analytics Dashboard** built using **Python (Pandas), SQL, Excel, and Power BI** to evaluate campaign performance, understand customer response, analyze conversion patterns, measure channel effectiveness, and support data-driven marketing decisions.

This project follows an end-to-end **Data Analyst workflow**, from understanding the business problem and preparing marketing data to exploratory analysis, SQL analysis, KPI development, dashboard development, business insights, and recommendations.

---

## 🎯 Project Objective

The objective of this project is to develop an end-to-end marketing analytics solution to:

* Evaluate marketing campaign performance.
* Measure customer response and conversion rates.
* Identify high-performing and underperforming campaigns.
* Analyze customer engagement and conversion behavior.
* Compare marketing channel performance.
* Identify customer groups with stronger conversion potential.
* Analyze revenue and campaign value.
* Identify patterns associated with successful conversion.
* Build an interactive dashboard for marketing performance monitoring.
* Generate actionable insights to support marketing decisions.

---

## 💼 Business Problem

Marketing teams need to understand whether their campaigns are reaching the right customers and generating meaningful business outcomes.

Simply measuring the number of customers contacted does not provide enough information for effective decision-making.

Marketing teams need to understand:

* Which campaigns generate stronger conversions.
* Which marketing channels perform best.
* Which customer groups are more likely to convert.
* How customer engagement relates to conversion.
* Which campaigns generate greater revenue or business value.
* Where marketing performance is weak.
* Where opportunities exist to improve campaign targeting and resource allocation.

This project transforms marketing and customer data into structured business analytics using **Pandas, SQL, Excel, and Power BI**.

---

## 💡 Business Value

The analysis provides a structured approach to:

* Monitor marketing campaign performance.
* Measure customer conversion and response.
* Identify high-performing campaigns and channels.
* Understand customer engagement and response behavior.
* Identify customer groups with stronger conversion potential.
* Evaluate revenue and campaign value.
* Identify underperforming marketing areas.
* Support data-driven campaign targeting and optimization.

> **The focus is not only on measuring campaign results, but also on understanding which customers, campaigns, and channels contribute to stronger conversion and business value.**

---

## ❓ Business Questions

1. Which marketing campaigns generate the highest conversion?
2. Which campaigns have the strongest customer response?
3. Which marketing channels perform best?
4. Which channels generate stronger conversion rates?
5. Which customer segments are more likely to convert?
6. What customer characteristics are associated with higher conversion?
7. How does customer engagement relate to conversion?
8. Which campaigns generate the highest revenue?
9. Which customer groups contribute more to campaign value?
10. Which campaigns or channels show weaker performance?
11. What factors influence customer conversion?
12. Where are the biggest opportunities to improve marketing performance?

---

# 🔄 Project Workflow

The project follows a structured **end-to-end Data Analyst workflow**:

```text
1. Understand Business Problem
          ↓
2. Inspect Marketing Dataset
          ↓
3. Perform Data Cleaning
          ↓
4. Prepare Data using Pandas
          ↓
5. Validate Prepared Data
          ↓
6. Perform Exploratory Data Analysis
          ↓
7. Perform SQL Business Analysis
          ↓
8. Define Marketing KPIs
          ↓
9. Analyze Customer & Campaign Performance
          ↓
10. Build Power BI Dashboard
          ↓
11. Generate Business Insights
          ↓
12. Recommend Actions
```

# 1️⃣ Understand Business Problem

The first step was to translate the marketing and customer conversion requirements into analytical questions.

Key objectives included:

* Define the marketing campaign analysis objective.
* Understand customer response and conversion requirements.
* Evaluate campaign effectiveness.
* Identify important marketing KPIs.
* Understand channel performance.
* Identify customer groups with stronger conversion potential.
* Determine areas where marketing performance can be improved.

---

# 2️⃣ Inspect Raw Dataset

The raw marketing campaign dataset was reviewed to understand its structure, data fields, and analytical relevance before beginning the cleaning and analysis process.

The inspection included:

* Loading and reviewing the raw dataset.
* Examining dataset dimensions and column names.
* Reviewing data types and identifying potential data-quality issues.
* Understanding customer attributes and purchase history.
* Reviewing marketing channels and campaign information.
* Inspecting customer engagement, response, and conversion fields.
* Reviewing acquisition cost and revenue-related fields.
* Identifying the fields required for KPI calculations and business analysis.

---

# 3️⃣ Perform Data Cleaning

Data cleaning and preprocessing were performed using **Python (Pandas)** to improve data quality, consistency, and reliability for marketing analysis.

Key activities included:

* Identifying and assessing missing values.
* Removing exact duplicate records.
* Parsing and standardizing date formats.
* Standardizing inconsistent categorical values.
* Correcting invalid and inconsistent numeric values.
* Validating customer, campaign, channel, and device attributes.
* Validating conversion, revenue, and acquisition cost fields.
* Applying business rules to identify logical data inconsistencies.
* Preserving legitimate missing values where imputation could introduce bias.
* Preparing the cleaned dataset for EDA, SQL analysis, KPI development, and Power BI reporting.

🧹 **Clean and reliable data provides the foundation for accurate marketing insights and data-driven decisions.**

---

# 4️⃣ Prepare Data using Pandas

**Python (Pandas)** was used to transform and structure the cleaned dataset for reliable analysis and reporting.

The preparation process focused on:

* Transforming and organizing analytical data.
* Preparing customer-level analysis.
* Preparing campaign-level analysis.
* Preparing marketing channel analysis.
* Preparing conversion and customer response analysis.
* Preparing revenue and acquisition cost analysis.
* Structuring data for KPI calculations.
* Preparing analysis-ready data for visualization and reporting.

> 📊 **The prepared dataset was used for exploratory analysis, SQL analysis, KPI development, and Power BI dashboard development.**

---

# 5️⃣ Validate Cleaned Data

After cleaning and preprocessing, the dataset was validated using **Python (Pandas)** to ensure data consistency, accuracy, and readiness for analysis.

Validation included:

* Rechecking missing values.
* Confirming that duplicate records were removed.
* Validating numeric values and acceptable ranges.
* Checking fraud-label consistency in `Class`.
* Validating `merchant_category` values.
* Checking valid `entry_mode` categories.
* Validating `time_seconds` within the expected range of **0–86,400 seconds**.
* Confirming appropriate data types for analytical fields.
* Verifying `transaction_id` formatting and consistency.
* Checking `is_foreign` values for valid binary representation.
* Performing final data-quality and logical consistency checks.

> ✅ **Validation confirmed that the cleaned dataset was consistent, reliable, and ready for fraud-pattern analysis.**

---

# 6️⃣ Explore Fraud Patterns

Exploratory Data Analysis (EDA) was performed using **Python (Pandas)** to identify patterns and characteristics associated with fraudulent transactions.

The analysis focused on:

* Comparing fraudulent and non-fraudulent transactions.
* Calculating the overall fraud rate.
* Analyzing fraud rates across merchant categories.
* Comparing fraud rates by transaction entry mode.
* Analyzing transaction amount patterns.
* Comparing foreign and domestic transaction activity.
* Identifying high-value fraudulent transactions.
* Examining transaction-level characteristics associated with fraud.

> 🔍 **The analysis helped identify key fraud patterns, high-risk transaction characteristics, and areas requiring closer monitoring.**

---

# 7️⃣ Perform SQL Business Analysis

Use **MySQL** to analyze marketing performance, evaluate customer conversion behavior, and answer key business questions using aggregated metrics.

Analysis includes:

- Calculating total records, distinct customers, conversions, and overall conversion rate.
- Comparing campaign performance based on conversion rates, revenue, and campaign volume.
- Evaluating marketing channel effectiveness using conversions, acquisition costs, and revenue.
- Analyzing customer segments based on age group, gender, region, and previous purchase history.
- Comparing conversion performance across devices and email engagement.
- Investigating the relationship between website engagement, session duration, and conversion behavior.
- Identifying high-performing customer groups across regions, channels, devices, and customer types.
- Calculating key marketing KPIs, including average revenue, total acquisition cost, and cost per conversion.
- Aggregating results to identify performance trends, improvement opportunities, and actionable business insights.

---

# 8️⃣ Define Marketing KPIs

Establish measurable indicators to evaluate marketing performance.

Potential KPIs include:

| KPI | Purpose |
|---|---|
| Total Customers | Measures the size of the analyzed customer base |
| Total Responders | Counts customers who responded to a campaign |
| Response Rate | Measures the proportion of customers who responded |
| Conversion Rate | Measures the proportion of customers who completed the defined conversion action |
| Campaign Acceptance Rate | Evaluates the proportion of customers accepting a campaign offer |
| Campaign Performance | Compares results across individual campaigns |
| Channel Performance | Evaluates results across marketing channels |
| Customer Segment Performance | Compares response and conversion behavior across customer groups |

---

### 9️⃣ Analyze Customer & Campaign Performance

- Compare campaign outcomes and identify stronger-performing campaigns.
- Evaluate customer response patterns across available segments.
- Examine channel effectiveness using consistent metrics.
- Identify customer groups with higher response or conversion rates.
- Investigate underperforming campaigns and potential improvement opportunities.
- Translate analytical findings into business-relevant comparisons.

---

### 🔟 Build Interactive Marketing Dashboard (Web-Based)

![Marketing Campaign Performance Dashboard]()

Developed a single-page interactive dashboard that communicates marketing performance and customer conversion trends for 48,971 marketing contacts (Jan 2024 – Dec 2025). Duplicate records and placeholder values were cleaned before any measure was calculated.

**Dashboard components:**

- 🎯 **KPI Cards** – Conversion Rate (11.0%), Conversions (5,375), Revenue and Cost per Conversion, each with a monthly sparkline and a last-3-months vs prior-3-months change. Contacts and conversions in the current selection are shown in the header. In this dataset, responders are the contacts with a converted flag.
- 📣 **Campaign Performance Comparison** – Conversion rate across 12 campaigns, from Friends & Family (18.2%) down to Banner Awareness (3.6%). Click a bar to filter the whole page.
- 📡 **Marketing Channel Analysis** – Conversion and revenue by channel: Referral 18.3%, Email 15.8%, Organic Search 12.7%, Paid Search 11.5%, Social Media 6.2%, Display Ads 3.6%.
- 👥 **Customer Segment Analysis** – Conversion by device (desktop 14.1% vs mobile 9.1%) and by prior purchases (10.0% with none, rising to 16.6% with five or more).
- 👀 **Customer Response and Engagement** – Conversion by pages viewed (8.9% for 0–2 pages, rising to 16.9% for 11 or more).
- 🎛️ **Interactive Slicers and Filters** – Channel, Device, New vs Returning customers, and a revenue view toggle (all orders vs orders under $1K).
- 💡 **Summary of Business Findings** – Chart subtitles update with the filters to name the top and lowest performers, and a dashed line shows the average conversion rate for comparison.

**Key findings reflected in the dashboard:**

- Channel drives conversion more than campaign: campaigns within the same channel are statistically indistinguishable.
- Email and Referral convert best at the lowest cost; Display and Social convert worst.
- Desktop converts better than mobile, and repeat customers convert better than new ones.
- 151 orders of $1K or more make up about 73% of revenue, so revenue rankings should be read with the under-$1K toggle.

---

### 1️⃣1️⃣ Generate Business Insights

Key findings reflected in the dashboard:

- Channel drives conversion more than campaign: campaigns within the same channel are statistically indistinguishable.
- Email and Referral convert best at the lowest cost; Display and Social convert worst.
- Desktop converts better than mobile, and repeat customers convert better than new ones.
- 151 orders of $1K or more make up about 73% of revenue, so revenue rankings should be read with the under-$1K toggle.

Insights should be based on actual analytical results rather than assumptions.

---

### 1️⃣2️⃣ Recommend Actions

Translate findings into practical recommendations for marketing teams.

Potential recommendations include:

- Prioritize campaigns that demonstrate stronger performance.
- Improve targeting for customer segments with higher conversion potential.
- Review underperforming channels and campaign strategies.
- Personalize marketing messages for relevant customer groups.
- Use historical campaign results to improve future targeting.
- Monitor conversion and response KPIs regularly.
- Test campaign changes before expanding investment.

Final recommendations should be supported by the project's actual findings.

---

## 📁 Project Structure

```text
Marketing-Campaign-Customer-Conversion-Analysis/
│
├── data/
│   ├── raw/
│   │   └── marketing_dataset.csv
│   └── processed/
│       └── cleaned_marketing_dataset.csv
│
├── notebooks/
│   └── marketing_campaign_analysis.ipynb
│
├── sql/
│   └── marketing_analysis.sql
│
├── powerbi/
│   └── marketing_campaign_dashboard.pbix
│
├── images/
│   └── dashboard_preview.png
│
├── README.md
└── requirements.txt
```

*This is a suggested structure. Update the filenames and folders to match your actual GitHub repository.*

---

## 🧠 Skills Demonstrated

- Data cleaning and preprocessing
- Data validation and quality checks
- Exploratory data analysis
- Python and Pandas
- SQL querying and aggregation
- Marketing KPI development
- Customer segmentation
- Campaign performance analysis
- Data visualization
- Power BI dashboard development
- Business insight generation
- Data-driven recommendations
- Analytical problem-solving

---

## 🚀 Conclusion

The **Marketing Campaign & Customer Conversion Analysis** project demonstrates an end-to-end approach to transforming marketing data into business insights.

By combining Python, Pandas, SQL, Excel, and Power BI, the project establishes a structured process for preparing data, analyzing campaign effectiveness, evaluating customer responses, monitoring marketing KPIs, and communicating findings through interactive reporting.

The ultimate objective is to help marketing teams understand campaign outcomes, identify opportunities for improvement, and make more informed, data-driven decisions.

---
