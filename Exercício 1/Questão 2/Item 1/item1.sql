SELECT reaction, COUNT(*) AS occurrence_count
FROM (
  SELECT UPPER(TRIM(reaction)) AS reaction
  FROM `greenpeace--beta.fda_food.food_events`,
    UNNEST(SPLIT(reactions, ',')) AS reaction
)
GROUP BY reaction
ORDER BY occurrence_count DESC
LIMIT 1;