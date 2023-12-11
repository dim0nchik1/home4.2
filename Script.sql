ззадание 2

select name, duration
from track
order by duration desc 
limit 1;

select name, duration
from track 
where duration >= 350;

select name, year 
from collection 
where year between 2018 and 2020;

select name 
from executor
where name not like '%% %%';

select name 
from track
where name like '%my%';



задание 3



select g.name, count(ge.executor_id) from genre g
join genreexecutor ge on g.id = ge.genre_id
group by g.name;

select a.name, a.year, count(t.id) 
from album a
join track t on a.id = t.album_id
where a.year between 2019 and 2020
group by a.name, a.year;

select a.name, AVG(t.duration) from album a
join track t on a.id = t.album_id
group by a.name;

select e.name from executor e
join albumexecutor ae on e.id = ae.executor_id 
join album a on a.id = ae.album_id
where a.year < 2020

select c.name from collection c 
join collectiontrack ct on c.id = ct.collection_id
join track t on t.id = ct.track_id
join album a on a.id = t.album_id
join albumexecutor ae on a.id = ae.album_id 
join executor e on e.id = ae.executor_id 
where e.name like '%executor_1%'




задание 4




select a.name from album a
join albumexecutor ae on a.id = ae.album_id 
join executor e on e.id = ae.executor_id
join genreexecutor ge on ge.executor_id = e.id
join genre g on g.id = ge.genre_id
group by e.name , a."name" 
having count(ge.genre_id) >= 1;

select t.name from track t 
left join collectiontrack ct on t.id = ct.track_id
where ct.track_id is null

SELECT e.name FROM executor e
	JOIN albumexecutor ae ON e.id = ae.executor_id
	JOIN album a ON a.id = ae.album_id
	JOIN track t ON t.album_id = a.id
	WHERE duration = (SELECT MIN(duration) FROM track);

SELECT a.name , count(t.id) FROM album a
    JOIN track t ON a.id = t.album_id
    GROUP BY a.name 
    HAVING count(t.id) in (
    	SELECT count(t.id) FROM album a
    	JOIN track t ON a.id = t.album_id
        GROUP BY a.name
        ORDER BY count(t.id)
        LIMIT 1);





