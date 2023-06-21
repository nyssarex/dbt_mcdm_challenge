with source as 
(
    select 
    date
    ,channel
    ,ad_id 
    ,ad_description
    ,title_part_1 ad_subdescription_1
    ,title_part_2 ad_subdescription_2
    ,imps impressions
    ,clicks
    ,conv conversion
    ,revenue
    ,spend
    
     from {{ source('bigquery','src_ads_bing_all_data') }}
)

select * from source 

