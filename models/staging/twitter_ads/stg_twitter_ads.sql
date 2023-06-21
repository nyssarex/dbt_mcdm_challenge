with source as 
(
    select 
    *
    
     from {{ source('bigquery','src_promoted_tweets_twitter_all_data') }}
)

select * from source 

