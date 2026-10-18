
-- 1. Average and Median Property Prices by City

SELECT
    city,
    state,
    COUNT(*) AS total_listings,
    ROUND(AVG(price), 2) AS avg_property_price,
    ROUND(
        (PERCENTILE_CONT(0.5)
         WITHIN GROUP (ORDER BY price))::NUMERIC, 2
    ) AS median_property_price
FROM real_estate
WHERE price > 0
GROUP BY city, state
HAVING COUNT(*) >= 10
ORDER BY avg_property_price DESC;



-- 2. Property Price Analysis by Property Type

SELECT
    property_type,
    COUNT(*) AS property_count,
    ROUND(AVG(price), 2) AS avg_property_price,
    ROUND(MIN(price), 2) AS min_property_price,
    ROUND(MAX(price), 2) AS max_property_price
FROM real_estate
WHERE price > 0
GROUP BY property_type
ORDER BY avg_property_price DESC;



-- 3. Price per Square Foot Analysis

SELECT
    property_type,
    COUNT(*) AS property_count,
    ROUND(AVG(price / NULLIF(area_sqft, 0)), 2)
        AS avg_price_per_sqft
FROM real_estate
WHERE price > 0
  AND area_sqft > 0
GROUP BY property_type
ORDER BY avg_price_per_sqft DESC;



-- 4. Property Inventory by Listing Status

SELECT
    status,
    COUNT(*) AS property_count,
    ROUND(
        COUNT(*) * 100.0 /
        NULLIF((SELECT COUNT(*) FROM real_estate), 0),
        2
    ) AS percentage_of_listings
FROM real_estate
GROUP BY status
ORDER BY property_count DESC;



-- 5. Days on Market by Listing Status

SELECT
    status,
    COUNT(*) AS property_count,
    ROUND(AVG(days_on_market), 1) AS avg_days_on_market,
    ROUND(
        (PERCENTILE_CONT(0.5)
         WITHIN GROUP (ORDER BY days_on_market))::NUMERIC, 1
    ) AS median_days_on_market
FROM real_estate
WHERE days_on_market >= 0
GROUP BY status
ORDER BY avg_days_on_market;



-- 6. Top 20 Longest-Listed Properties

SELECT
    mls_id,
    city,
    state,
    property_type,
    price,
    area_sqft,
    days_on_market,
    status
FROM real_estate
WHERE days_on_market IS NOT NULL
ORDER BY days_on_market DESC
LIMIT 20;



-- 7. Property Price Analysis by Number of Bedrooms

SELECT
    bedrooms,
    COUNT(*) AS property_count,
    ROUND(AVG(price), 2) AS avg_property_price,
    ROUND(AVG(area_sqft), 2) AS avg_area_sqft,
    ROUND(AVG(price / NULLIF(area_sqft, 0)), 2)
        AS avg_price_per_sqft
FROM real_estate
WHERE price > 0
  AND bedrooms IS NOT NULL
GROUP BY bedrooms
ORDER BY bedrooms;


-- 8. Listing Agent Performance Analysis

SELECT
    listing_agent,
    COUNT(*) AS total_listings,
    COUNT(*) FILTER (
        WHERE status = 'Sold'
    ) AS sold_listings,
    COUNT(*) FILTER (
        WHERE status = 'Pending'
    ) AS pending_listings,
    COUNT(*) FILTER (
        WHERE status = 'For Sale'
    ) AS active_listings,
    ROUND(AVG(days_on_market), 1)
        AS avg_days_on_market
FROM real_estate
WHERE listing_agent IS NOT NULL
GROUP BY listing_agent
ORDER BY sold_listings DESC, total_listings DESC;



-- 9. Property Inventory by State and City

SELECT
    state,
    city,
    COUNT(*) AS total_listings,
    COUNT(*) FILTER (
        WHERE status = 'Sold'
    ) AS sold_listings,
    COUNT(*) FILTER (
        WHERE status = 'Pending'
    ) AS pending_listings,
    COUNT(*) FILTER (
        WHERE status = 'For Sale'
    ) AS for_sale_listings
FROM real_estate
GROUP BY state, city
ORDER BY total_listings DESC;

