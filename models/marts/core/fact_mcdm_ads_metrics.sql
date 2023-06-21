with table_all_sources as (
    select * 
from {{ ref('stg_facebook_ads') }}
union all 
select * 
from {{ ref('stg_bing_ads') }}
union all 
select * 
from {{ ref('stg_twitter_ads') }}
union all 
select * 
from {{ ref('stg_tiktok_ads') }}
)


select *
,case when impressions = 0 then 1000*spend/1 
      when impressions is null then null
      else 1000*spend/impressions end  as cpm
,case when impressions = 0 then 1000*clicks/1 
      when impressions is null then null
      else 1000*clicks/impressions end as ctr
,case when spend = 0 then 0
      when  spend is null then null
      else clicks/spend end as cpc 
 from table_all_sources 



