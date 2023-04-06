-- A script to select bands
SELECT band_name, IFNULL(split, 2020) - IFNULL(formed, 0) AS lifespan
FROM metal_bands
WHERE FIND_IN_SET('Glam rock', IFNULL(style, "")) > 0
ORDER BY lifespan DESC;
