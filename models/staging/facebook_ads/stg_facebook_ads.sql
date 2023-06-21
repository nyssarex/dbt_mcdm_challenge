with source as 
(
    select 
    date
    ,channel
    ,ad_id 
    ,creative_title
    ,objective 
    ,buying_type
    ,campaign_type
    ,views
    ,impressions
    ,clicks
    ,comments
    ,likes
    ,shares
    ,mobile_app_install
    ,complete_registration
    ,add_to_cart
    ,purchase
    ,purchase_value
    ,spend
    
     from {{ source('bigquery','src_ads_creative_facebook_all_data') }}
)

select * from source 

