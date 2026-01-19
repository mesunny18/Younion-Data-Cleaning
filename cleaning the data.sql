create table clean_leads(lead_id varchar(50), name varchar(20), email varchar(70), company varchar(10), created_date date, status varchar(10)); 


insert into clean_leads(lead_id, name, email, company, created_date, status)
with dedup_crm as
(
	select lead_id, name, email, company,cast(concat(substr(created_date,7,4),'-',substr(created_date,4,2),'-',substr(created_date,1,2)) as date) created_Date, status from 
    (select lead_id, Upper(name) as Name, lower(email) as Email, company, created_date, status,
    row_number() over(partition by email order by created_date desc) rn from raw_crm_leads)x where rn=1
)
select * from dedup_crm;

select email,count(*) from clean_leads
group by email;

---------------------------------------------------------------------------------------------------------------------------------------------------


create table clean_marketing_campaign(email varchar(30),channel varchar(15),Date Date,campaign_name varchar(20),cost int);
insert into clean_marketing_campaign(email,channel,Date,campaign_name,cost)
select lower(email) as Email, channel,  cast(concat(substr(date,7,4),'-',substr(date,4,2),'-',substr(date,1,2)) as date) date,campaign_name, case when cost='' then 0 else cost end as cost  
from raw_marketing_campaigns;

-----------------------------------------------------------------------------------------------------------------------------------------------------

create table clean_web_events(email varchar(70), page_event_name varchar(70), timestamp datetime, source varchar(10));
insert into clean_web_events(email, page_event_name, timestamp, source)
select lower(email) as Email, page_event_name, 
cast(concat(substr(timestamp,7,4),'-',substr(timestamp,4,2),'-',substr(timestamp,1,2),' ',substr(timestamp,12,5)) as datetime) timestamp, source from raw_web_events;


