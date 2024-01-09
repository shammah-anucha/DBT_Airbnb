SELECT review_date, created_at FROM {{ ref("fct_reviews")}} fc
INNER JOIN {{ ref('dim_listings_cleansed')}} dl
ON fc.listing_id = dl.listing_id
WHERE review_date <= created_at