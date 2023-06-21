with source as 
(
    select 
    date
    ,ad_id
    ,ad_status
    ,ad_text
    ,channel
    ,impressions 
    ,clicks
    ,rt_installs
    ,video_views
    ,purchase
    ,registrations
    ,add_to_cart
    ,conversions
    ,spend
     from {{ source('bigquery','src_ads_tiktok_ads_all_data') }}
)

select * from source 

