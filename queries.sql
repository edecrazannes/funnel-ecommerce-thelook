#Funnel de conversion
SELECT
  COUNT(order_id) AS nb_commandes
  ,COUNTIF(shipped_at IS NOT NULL) AS commandes_expediees
  ,COUNTIF(delivered_at IS NOT NULL) AS commandes_livrees
  ,COUNTIF(status = 'Complete') AS commandes_completes
FROM `bigquery-public-data.thelook_ecommerce.orders`
WHERE EXTRACT(YEAR FROM created_at) = 2023
