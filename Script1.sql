insert into executor(name)
values('executor_1'),('executor_2'),('executor_3'),('executor_4'),('executor_5');

insert into genre(name)
values('genre_1'),('genre_2'),('genre_3'),('genre_4');

insert into genreexecutor(genre_id, executor_id)
values(3,3),(4,2),(2,3), (2,5),(3,1);

insert into album(name, year)
values('album_1',2005),('album_2',2006),('album_3',2008);

insert into albumexecutor(album_id,executor_id)
values('1','2'),('2','1'),('3','5');

insert into track(name,duration,album_id)
values ('track_1',350,1),('track_2',456,2),
('track_3',755,3),('track_4',803,2),
('track_5',701,1),('track_6',312,1),('track_7',307,3);

insert into collection(name, year)
values('collection_1',2020),('collection_2',2007),('collection_3',2019),('collection_4',2020);

insert into collectiontrack(track_id,collection_id)
values('1','1'),('2','1'),('3','1'),('4','2'),('5','2'),('6','3'),('3','3'),('7','4'),('1','4');


