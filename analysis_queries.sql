
-- UBER OPERATIONS ANALYSIS PROJECT
-- SQL QUERY FILE


-- 1. DEMAND BY ZONE (BASIC OVERVIEW)
SELECT 
    zone,
    COUNT(*) AS total_requests
FROM uber_rides
GROUP BY zone
ORDER BY total_requests DESC;


-- 2. DEMAND BY ZONE + DEMAND LEVEL (DETAILED BEHAVIOUR)
SELECT 
    zone,
    demand_level,
    COUNT(*) AS total_requests
FROM uber_rides
GROUP BY zone, demand_level
ORDER BY total_requests DESC;


-- 3. PEAK TIME ANALYSIS (TIME BUCKETS)
SELECT 
    CASE
        WHEN request_time BETWEEN '06:00' AND '09:59' THEN 'Morning Rush'
        WHEN request_time BETWEEN '10:00' AND '15:59' THEN 'Midday'
        WHEN request_time BETWEEN '16:00' AND '20:59' THEN 'Evening Rush'
        ELSE 'Night'
    END AS time_period,
    COUNT(*) AS total_rides
FROM uber_rides
GROUP BY time_period
ORDER BY total_rides DESC;


-- 4. SUPPLY vs DEMAND ANALYSIS
SELECT 
    zone,
    demand_level,
    driver_availability,
    COUNT(*) AS total_cases
FROM uber_rides
GROUP BY zone, demand_level, driver_availability
ORDER BY total_cases DESC;


-- 5. CUSTOMER EXPERIENCE (AVERAGE WAIT TIME)
SELECT 
    zone,
    AVG(estimated_wait_time) AS avg_wait_time,
    COUNT(*) AS total_rides
FROM uber_rides
GROUP BY zone
ORDER BY avg_wait_time DESC;