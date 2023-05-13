SELECT reaction, products_industry_name, COUNT(*) AS occurrence_count
FROM (
  SELECT UPPER(TRIM(reaction)) AS reaction, products_industry_name
  FROM `greenpeace--beta.fda_food.food_events`,
    UNNEST(SPLIT(reactions, ',')) AS reaction
)
WHERE reaction like 'DEATH'
GROUP BY reaction, products_industry_name
ORDER BY occurrence_count DESC
LIMIT 1;