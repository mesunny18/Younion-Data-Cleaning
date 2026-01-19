insert into first_touch 
with first_touch as 
(
select email, page_event_name first_page, timestamp first_touch, source as first_source from (
select email, page_event_name,  timestamp, source,row_number() over(partition by email order by timestamp asc) rnk from clean_web_events)x where rnk=1
)select * from first_touch;


create table first_touch(email varchar(70), first_page varchar(70), first_touch datetime, first_source varchar(70));


insert into first_campaign 
with first_campaign as
(
select email, channel first_channel, campaign_name as first_campaign,date first_engagement from (
select email, channel, campaign_name, date,row_number() over(partition by email order by date asc) rnk from clean_marketing_campaign)x where rnk=1
)
select email,first_campaign, first_engagement,first_channel from first_campaign;


create table first_campaign(email varchar(70), first_campaign varchar(70), first_engagement date, first_channel varchar(70))


