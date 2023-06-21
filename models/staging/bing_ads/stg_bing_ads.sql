with
    source as (
        select
            date,
            null as add_to_cart,
            clicks,
            null as comments,
            clicks as engagements,
            imps as impressions,
            null as installs,
            null as likes,
            null as link_clicks,
            null as post_click_conversions,
            null as post_view_conversions,
            null as posts,
            null as purchase,
            null as registrations,
            revenue,
            null as shares,
            spend,
            conv total_conversions,
            null video_views,
            ad_id,
            adset_id,
            campaign_id,
            channel,
            null as creative_id,
            null as placement_id

        from {{ source("bigquery", "src_ads_bing_all_data") }}
    )

select *
from source
