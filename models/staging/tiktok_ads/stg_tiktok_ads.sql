with
    source as (
        select
            date,
            add_to_cart,
            clicks,
            null as comments,
            null as engagements,
            impressions,
            skan_app_install as installs,
            null as likes,
            null as link_clicks,
            null as post_click_conversions,
            null as post_view_conversions,
            null as posts,
            purchase,
            registrations,
            null as revenue,
            null as shares,
            spend,
            conversions total_conversions,
            video_views,
            ad_id,
            adgroup_id adset_id,
            campaign_id,
            channel,
            null as creative_id,
            null as placement_id

        from {{ source("bigquery", "src_ads_tiktok_ads_all_data") }}
    )

select *
from source
