with source as 
(
    select 
    date
    ,campaign_id
    ,channel
    ,url
    ,text
    ,impressions
    ,engagements
    ,clicks
    ,comments
    ,likes
    ,url_clicks
    ,retweets
    ,video_total_views
    ,spend
    
     from {{ source('bigquery','src_promoted_tweets_twitter_all_data') }}
)

select * from source 

