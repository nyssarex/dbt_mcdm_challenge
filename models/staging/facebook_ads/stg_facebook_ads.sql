with
    source as (
        select
            date,
            add_to_cart,
            clicks,
            comments,
            clicks + comments + likes + shares as engagements,
            impressions,
            mobile_app_install as installs,
            likes,
            inline_link_clicks as link_clicks,
            null as post_click_conversions,
            null as post_view_conversions,
            null as posts,
            purchase,
            complete_registration as registrations,
            purchase * purchase_value revenue,
            shares,
            spend,
            null total_conversions,
            views video_views,
            ad_id,
            adset_id,
            campaign_id,
            channel,
            creative_id,
            null as placement_id

        from {{ source("bigquery", "src_ads_creative_facebook_all_data") }}
    )

select *
from source
