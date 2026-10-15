use data_analysis;
select * from marketing;

-- 1. Total Records and Customers
SELECT
    COUNT(*) AS total_records,
    COUNT(DISTINCT customer_id) AS total_customers
FROM marketing;


-- 2. Check Missing Values
SELECT
    SUM(customer_id IS NULL) AS missing_customer_id,
    SUM(`date` IS NULL) AS missing_date,
    SUM(channel IS NULL) AS missing_channel,
    SUM(campaign IS NULL) AS missing_campaign,
    SUM(converted IS NULL) AS missing_converted,
    SUM(revenue IS NULL) AS missing_revenue
FROM marketing;


-- 3. Customer Distribution by Gender
SELECT
    gender,
    COUNT(DISTINCT customer_id) AS total_customers
FROM marketing
GROUP BY gender
ORDER BY total_customers DESC;


-- 4. Customer Distribution by Region
SELECT
    region,
    COUNT(DISTINCT customer_id) AS total_customers
FROM marketing
GROUP BY region
ORDER BY total_customers DESC;


-- 5. New vs Returning Customer Analysis
SELECT
    is_new_customer,
    COUNT(*) AS total_records,
    COUNT(DISTINCT customer_id) AS total_customers,
    SUM(converted) AS total_conversions,
    ROUND(100.0 * SUM(converted) / NULLIF(COUNT(*), 0), 2) AS conversion_rate_pct
FROM marketing
GROUP BY is_new_customer
ORDER BY conversion_rate_pct DESC;


-- 6. Overall Conversion Rate
SELECT
    COUNT(*) AS total_records,
    SUM(converted) AS total_conversions,
    COUNT(DISTINCT customer_id) AS total_customers,
    ROUND(100.0 * SUM(converted) / NULLIF(COUNT(*), 0), 2) AS conversion_rate_pct
FROM marketing;


-- 7. Campaign-Wise Performance
SELECT
    campaign,
    COUNT(*) AS total_records,
    SUM(converted) AS total_conversions,
    ROUND(100.0 * SUM(converted) / NULLIF(COUNT(*), 0), 2) AS conversion_rate_pct,
    ROUND(SUM(revenue), 2) AS total_revenue,
    ROUND(AVG(revenue), 2) AS average_revenue
FROM marketing
GROUP BY campaign
ORDER BY conversion_rate_pct DESC;


-- 8. Channel-Wise Performance
SELECT
    channel,
    COUNT(*) AS total_records,
    SUM(converted) AS total_conversions,
    ROUND(100.0 * SUM(converted) / NULLIF(COUNT(*), 0), 2) AS conversion_rate_pct,
    ROUND(SUM(revenue), 2) AS total_revenue,
    ROUND(AVG(acquisition_cost), 2) AS average_acquisition_cost
FROM marketing
GROUP BY channel
ORDER BY conversion_rate_pct DESC;


-- 9. Conversion Analysis by Device
SELECT
    device,
    COUNT(*) AS total_records,
    SUM(converted) AS total_conversions,
    ROUND(100.0 * SUM(converted) / NULLIF(COUNT(*), 0), 2) AS conversion_rate_pct,
    ROUND(SUM(revenue), 2) AS total_revenue
FROM marketing
GROUP BY device
ORDER BY conversion_rate_pct DESC;


-- 10. Conversion Analysis by Age Group
SELECT
    CASE
        WHEN age < 25 THEN 'Under 25'
        WHEN age BETWEEN 25 AND 34 THEN '25-34'
        WHEN age BETWEEN 35 AND 44 THEN '35-44'
        WHEN age BETWEEN 45 AND 54 THEN '45-54'
        WHEN age >= 55 THEN '55+'
        ELSE 'Unknown'
    END AS age_group,
    COUNT(*) AS total_records,
    SUM(converted) AS total_conversions,
    ROUND(100.0 * SUM(converted) / NULLIF(COUNT(*), 0), 2) AS conversion_rate_pct,
    ROUND(SUM(revenue), 2) AS total_revenue
FROM marketing
GROUP BY age_group
ORDER BY conversion_rate_pct DESC;


-- 11. Monthly Conversion Trends
SELECT
    DATE_FORMAT(`date`, '%Y-%m') AS month,
    COUNT(*) AS total_records,
    SUM(converted) AS total_conversions,
    ROUND(100.0 * SUM(converted) / NULLIF(COUNT(*), 0), 2) AS conversion_rate_pct,
    ROUND(SUM(revenue), 2) AS total_revenue
FROM marketing
GROUP BY DATE_FORMAT(`date`, '%Y-%m')
ORDER BY month;


-- 12. Email Engagement Analysis
SELECT
    email_opened,
    COUNT(*) AS total_records,
    SUM(converted) AS total_conversions,
    ROUND(100.0 * SUM(converted) / NULLIF(COUNT(*), 0), 2) AS conversion_rate_pct,
    ROUND(SUM(revenue), 2) AS total_revenue
FROM marketing
GROUP BY email_opened
ORDER BY conversion_rate_pct DESC;


-- 13. Prior Purchases and Conversion
SELECT
    CASE
        WHEN prior_purchases = 0 THEN 'No Prior Purchases'
        WHEN prior_purchases BETWEEN 1 AND 2 THEN '1-2 Purchases'
        WHEN prior_purchases BETWEEN 3 AND 5 THEN '3-5 Purchases'
        ELSE '6+ Purchases'
    END AS purchase_group,
    COUNT(*) AS total_records,
    SUM(converted) AS total_conversions,
    ROUND(100.0 * SUM(converted) / NULLIF(COUNT(*), 0), 2) AS conversion_rate_pct,
    ROUND(SUM(revenue), 2) AS total_revenue
FROM marketing
GROUP BY purchase_group
ORDER BY conversion_rate_pct DESC;


-- 14. Website Engagement and Conversion
SELECT
    CASE
        WHEN pages_viewed < 3 THEN 'Low Page Views'
        WHEN pages_viewed BETWEEN 3 AND 6 THEN 'Medium Page Views'
        ELSE 'High Page Views'
    END AS engagement_group,
    COUNT(*) AS total_records,
    SUM(converted) AS total_conversions,
    ROUND(100.0 * SUM(converted) / NULLIF(COUNT(*), 0), 2) AS conversion_rate_pct,
    ROUND(AVG(session_duration_sec), 2) AS average_session_duration_sec,
    ROUND(SUM(revenue), 2) AS total_revenue
FROM marketing
GROUP BY engagement_group
ORDER BY conversion_rate_pct DESC;


-- 15. Customer Acquisition Cost Analysis
SELECT
    channel,
    COUNT(*) AS total_records,
    ROUND(AVG(acquisition_cost), 2) AS average_acquisition_cost,
    ROUND(SUM(acquisition_cost), 2) AS total_acquisition_cost,
    SUM(converted) AS total_conversions,
    ROUND(
        SUM(acquisition_cost) / NULLIF(SUM(converted), 0),
        2
    ) AS cost_per_conversion,
    ROUND(SUM(revenue), 2) AS total_revenue
FROM marketing
GROUP BY channel
ORDER BY cost_per_conversion ASC;


-- 16. Revenue by Campaign
SELECT
    campaign,
    COUNT(*) AS total_records,
    SUM(converted) AS total_conversions,
    ROUND(SUM(revenue), 2) AS total_revenue,
    ROUND(AVG(revenue), 2) AS average_revenue_per_record
FROM marketing
GROUP BY campaign
ORDER BY total_revenue DESC;


-- 17. High-Performing Customer Groups
SELECT
    region,
    channel,
    device,
    is_new_customer,
    COUNT(*) AS total_records,
    SUM(converted) AS total_conversions,
    ROUND(100.0 * SUM(converted) / NULLIF(COUNT(*), 0), 2) AS conversion_rate_pct,
    ROUND(SUM(revenue), 2) AS total_revenue
FROM marketing
GROUP BY region, channel, device, is_new_customer
HAVING COUNT(*) >= 10
ORDER BY conversion_rate_pct DESC, total_revenue DESC;


-- 18. Overall Marketing KPI Summary
SELECT
    COUNT(*) AS total_records,
    COUNT(DISTINCT customer_id) AS total_customers,
    SUM(converted) AS total_conversions,
    ROUND(100.0 * SUM(converted) / NULLIF(COUNT(*), 0), 2) AS conversion_rate_pct,
    ROUND(SUM(revenue), 2) AS total_revenue,
    ROUND(AVG(revenue), 2) AS average_revenue_per_record,
    ROUND(SUM(acquisition_cost), 2) AS total_acquisition_cost,
    ROUND(
        SUM(acquisition_cost) / NULLIF(SUM(converted), 0),
        2
    ) AS cost_per_conversion,
    ROUND(AVG(pages_viewed), 2) AS average_pages_viewed,
    ROUND(AVG(session_duration_sec), 2) AS average_session_duration_sec
FROM marketing;