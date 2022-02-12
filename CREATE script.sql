create table if not exists Genres(
	genre_id serial primary key,
	name varchar(40) not null unique
);
create table if not exists Artists(
	artist_id serial primary key,
	name varchar(40) not null
);

create table if not exists Albums(
	album_id serial primary key,
	year_of_release integer,
	name varchar(40) not null
);
create table if not exists Songs(
	song_id serial primary key,
	album_id integer references Albums(album_id),
	name varchar(40) not null,
	duration integer check(duration>0)
);
create table if not exists Collections(
	collection_id serial primary key,
	year_of_release integer,
	name varchar(40) not null
);
create table if not exists Genres_to_artists(
	genre_id integer references Genres(genre_id),
	artist_id integer references Artists(artist_id),
	primary key (genre_id, artist_id)
);
create table if not exists Albums_to_artists(
	album_id integer references Albums(album_id),
	artist_id integer references Artists(artist_id),
	primary key (album_id, artist_id)
);
create table if not exists Songs_to_collections(
	song_id integer references Songs(song_id),
	collection_id integer references Collections(collection_id),
	primary key (song_id, collection_id)
);
