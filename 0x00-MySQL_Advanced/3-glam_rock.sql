-- A script to select bands
SELECT band_name, (IFNULL(split, 2023) - formed) AS LS
FROM metal_bands
WHERE style LIKE '%Glam rock%'
ORDER BY LS DESC;
