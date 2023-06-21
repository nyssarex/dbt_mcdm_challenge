with source as 
(
    select 
    *
    
     from {{ source('bigquery','src_ads_tiktok_ads_all_data') }}
)

select * from source 

