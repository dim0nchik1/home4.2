create table if not exists Genre(
	id SERIAL primary key,
	name VARCHAR(60) not NULL
);
create table if not exists Executor(
	id SERIAL primary key,
	name VARCHAR(60) not NULL
);
create table if not exists GenreExecutor(
	genre_id INTEGER references Genre(id),
	executor_id INTEGER references Executor(id),
	constraint pk primary key(genre_id, executor_id)
);
create table if not exists Album(
	id SERIAL primary key,
	name VARCHAR(60) not null,
	year INTEGER not null
);
create table if not exists AlbumExecutor(
	album_id INTEGER references Album(id),
	executor_id INTEGER references Executor(id),
	constraint pk_1 primary key(album_id, executor_id)
);
create table if not exists Track(
	id SERIAL primary key,
	name VARCHAR(60) not null,
	duration integer not null,
	album_id INTEGER references Album(id)
);
create table if not exists Collection(
	id SERIAL primary key,
	name VARCHAR(60) not null,
	year INTEGER not null
);
create table if not exists CollectionTrack(
	track_id integer references Track(id),
	collection_id integer references Collection(id),
	constraint pk_2 primary key(track_id, collection_id)
);