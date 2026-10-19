select * from train
limit 20;

COPY train FROM '/data/train.csv' WITH (FORMAT csv, HEADER true);
SELECT COUNT(*) FROM train;

select gender, count(*) from train
group by gender;

select satisfaction, travel_class, count(*) from train
where travel_class = 'Eco' and satisfaction = 'satisfied'
group by travel_class, satisfaction;