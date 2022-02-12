--DELETE FROM genres_to_artists;
--DELETE FROM albums_to_artists;
--DELETE FROM songs_to_collections;
--DELETE FROM artists;
--DELETE FROM genres;
--DELETE FROM songs;
--DELETE FROM albums;
--DELETE FROM collections;


INSERT INTO public.artists(artist_id, name) VALUES (1, 'Era');
INSERT INTO public.artists(artist_id, name) VALUES (2, 'Enigma');
INSERT INTO public.artists(artist_id, name) VALUES (3, 'Руки вверх');
INSERT INTO public.artists(artist_id, name) VALUES (4, 'Моргенштерн');
INSERT INTO public.artists(artist_id, name) VALUES (5, 'Ляпис Трубецкой');
INSERT INTO public.artists(artist_id, name) VALUES (6, 'Olivia Newton Johnson');
INSERT INTO public.artists(artist_id, name) VALUES (7, 'Сектор газа');
INSERT INTO public.artists(artist_id, name) VALUES (8, 'The prodigy');
INSERT INTO public.artists(artist_id, name) VALUES (9, 'Монатик');

INSERT INTO public.genres(genre_id, name) VALUES (1, 'Рок');
INSERT INTO public.genres(genre_id, name) VALUES (2, 'Метал');
INSERT INTO public.genres(genre_id, name) VALUES (3, 'R&B');
INSERT INTO public.genres(genre_id, name) VALUES (4, 'Soul');
INSERT INTO public.genres(genre_id, name) VALUES (5, 'Поп');

INSERT INTO public.genres_to_artists(genre_id, artist_id) VALUES (1, 1);
INSERT INTO public.genres_to_artists(genre_id, artist_id) VALUES (2, 2);
INSERT INTO public.genres_to_artists(genre_id, artist_id) VALUES (3, 3);
INSERT INTO public.genres_to_artists(genre_id, artist_id) VALUES (4, 4);
INSERT INTO public.genres_to_artists(genre_id, artist_id) VALUES (5, 5);
INSERT INTO public.genres_to_artists(genre_id, artist_id) VALUES (1, 6);
INSERT INTO public.genres_to_artists(genre_id, artist_id) VALUES (2, 7);
INSERT INTO public.genres_to_artists(genre_id, artist_id) VALUES (3, 8);
INSERT INTO public.genres_to_artists(genre_id, artist_id) VALUES (4, 9);
INSERT INTO public.genres_to_artists(genre_id, artist_id) VALUES (5, 1);
INSERT INTO public.genres_to_artists(genre_id, artist_id) VALUES (1, 2);
INSERT INTO public.genres_to_artists(genre_id, artist_id) VALUES (2, 3);
INSERT INTO public.genres_to_artists(genre_id, artist_id) VALUES (3, 4);
INSERT INTO public.genres_to_artists(genre_id, artist_id) VALUES (4, 5);
INSERT INTO public.genres_to_artists(genre_id, artist_id) VALUES (5, 6);
INSERT INTO public.genres_to_artists(genre_id, artist_id) VALUES (1, 7);
INSERT INTO public.genres_to_artists(genre_id, artist_id) VALUES (2, 8);
INSERT INTO public.genres_to_artists(genre_id, artist_id) VALUES (3, 9);

INSERT INTO public.albums(album_id, year_of_release, name) VALUES (1, 2018, 'Вечер');
INSERT INTO public.albums(album_id, year_of_release, name) VALUES (2, 2018, 'Ночь');
INSERT INTO public.albums(album_id, year_of_release, name) VALUES (3, 2019, 'Улица');
INSERT INTO public.albums(album_id, year_of_release, name) VALUES (4, 2019, 'Фонарь');
INSERT INTO public.albums(album_id, year_of_release, name) VALUES (5, 2022, 'Аптека');
INSERT INTO public.albums(album_id, year_of_release, name) VALUES (6, 2022, 'Зима');
INSERT INTO public.albums(album_id, year_of_release, name) VALUES (7, 2005, 'Леший');
INSERT INTO public.albums(album_id, year_of_release, name) VALUES (8, 2005, 'Бонг');
INSERT INTO public.albums(album_id, year_of_release, name) VALUES (9, 2005, 'Свита');

INSERT INTO public.albums_to_artists(album_id, artist_id) VALUES (1, 1);
INSERT INTO public.albums_to_artists(album_id, artist_id) VALUES (2, 2);
INSERT INTO public.albums_to_artists(album_id, artist_id) VALUES (3, 3);
INSERT INTO public.albums_to_artists(album_id, artist_id) VALUES (4, 4);
INSERT INTO public.albums_to_artists(album_id, artist_id) VALUES (5, 5);
INSERT INTO public.albums_to_artists(album_id, artist_id) VALUES (6, 6);
INSERT INTO public.albums_to_artists(album_id, artist_id) VALUES (7, 7);
INSERT INTO public.albums_to_artists(album_id, artist_id) VALUES (8, 8);
INSERT INTO public.albums_to_artists(album_id, artist_id) VALUES (9, 9);

INSERT INTO public.songs(song_id, album_id, name, duration) VALUES (1, 1, 'Новый мой трек', 360);
INSERT INTO public.songs(song_id, album_id, name, duration) VALUES (2, 2, 'Прежний мой трк', 300);
INSERT INTO public.songs(song_id, album_id, name, duration) VALUES (3, 3, 'Подвальное помещение', 180);
INSERT INTO public.songs(song_id, album_id, name, duration) VALUES (4, 4, 'Пульт от телевизора', 185);
INSERT INTO public.songs(song_id, album_id, name, duration) VALUES (5, 5, 'Электрический ток', 187);
INSERT INTO public.songs(song_id, album_id, name, duration) VALUES (6, 6, 'Система работает', 220);
INSERT INTO public.songs(song_id, album_id, name, duration) VALUES (7, 7, 'Чиновник', 240);
INSERT INTO public.songs(song_id, album_id, name, duration) VALUES (8, 8, 'На всю страну', 300);
INSERT INTO public.songs(song_id, album_id, name, duration) VALUES (9, 9, 'Мой танк быстр', 186);
INSERT INTO public.songs(song_id, album_id, name, duration) VALUES (10, 1, 'Вердикт не понравился', 175);
INSERT INTO public.songs(song_id, album_id, name, duration) VALUES (11, 2, 'Давление на присяжных', 167);
INSERT INTO public.songs(song_id, album_id, name, duration) VALUES (12, 3, 'Эфир местного ТВ', 168);
INSERT INTO public.songs(song_id, album_id, name, duration) VALUES (13, 4, 'Дело ограничивается словами', 250);
INSERT INTO public.songs(song_id, album_id, name, duration) VALUES (14, 5, 'Прошение об отставке', 210);
INSERT INTO public.songs(song_id, album_id, name, duration) VALUES (15, 6, 'С 23 февраля', 265);

INSERT INTO public.collections(collection_id, year_of_release, name) VALUES (1, 2015, 'Клевета на ветерана');
INSERT INTO public.collections(collection_id, year_of_release, name) VALUES (2, 2018, 'Не пустят людей');
INSERT INTO public.collections(collection_id, year_of_release, name) VALUES (3, 2022, 'Навальный');
INSERT INTO public.collections(collection_id, year_of_release, name) VALUES (4, 2010, 'Каменный мешок');
INSERT INTO public.collections(collection_id, year_of_release, name) VALUES (5, 2019, 'Раша тудей');
INSERT INTO public.collections(collection_id, year_of_release, name) VALUES (6, 2021, 'Мария Бутина');
INSERT INTO public.collections(collection_id, year_of_release, name) VALUES (7, 2018, 'Просыпаемся');
INSERT INTO public.collections(collection_id, year_of_release, name) VALUES (8, 2014, 'Это важно');
INSERT INTO public.collections(collection_id, year_of_release, name) VALUES (9, 2015, 'Алексей');

INSERT INTO public.songs_to_collections(song_id, collection_id)	VALUES (1, 1);
INSERT INTO public.songs_to_collections(song_id, collection_id)	VALUES (2, 2);
INSERT INTO public.songs_to_collections(song_id, collection_id)	VALUES (3, 3);
INSERT INTO public.songs_to_collections(song_id, collection_id)	VALUES (4, 4);
INSERT INTO public.songs_to_collections(song_id, collection_id)	VALUES (5, 5);
INSERT INTO public.songs_to_collections(song_id, collection_id)	VALUES (6, 6);
INSERT INTO public.songs_to_collections(song_id, collection_id)	VALUES (7, 7);
INSERT INTO public.songs_to_collections(song_id, collection_id)	VALUES (8, 8);
INSERT INTO public.songs_to_collections(song_id, collection_id)	VALUES (9, 9);


