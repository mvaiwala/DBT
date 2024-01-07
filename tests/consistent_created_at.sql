SELECT 
    * 
FROM {{ ref('fct_reviews') }}
LEFT JOIN {{ ref('dim_listings_cleansed') }}
ON {{ ref('fct_reviews') }}.listing_id = {{ ref('dim_listings_cleansed') }}.listing_id
WHERE review_date < created_at 