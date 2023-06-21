with
    source as (
        select
            date,
            null as add_to_cart,
            clicks,
            comments,
            engagements,
            impressions,
            null as installs,
            likes,
            url_clicks as link_clicks,
            null as post_click_conversions,
            null as post_view_conversions,
            null as posts,
            null as purchase,
            null as registrations,
            null as revenue,
            retweets as shares,
            spend,
            null total_conversions,
            video_total_views as video_views,
            null as ad_id,
            null as adset_id,
            campaign_id,
            channel,
            null as creative_id,
            null as placement_id

        from {{ source("bigquery", "src_promoted_tweets_twitter_all_data") }}
    )

select *
from source
