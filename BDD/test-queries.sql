
select * from job_offer;

select * from job_offer where city = 'Paris';

select c.* from candidate_job_offer_applications app
join candidate c on c.id = app.id_candidate
where app.id_job_offer = 3;

select c.* from candidate_job_offer_applications app
join candidate c on c.id = app.id_candidate
join job_offer offer on offer.id = app.id_job_offer
where offer.id_company = 0;