SELECT g.name, COUNT(*)
	FROM genres_to_artists ga
	INNER JOIN genres g ON ga.genre_id = g.genre_id
	GROUP BY g.name
	ORDER BY g.name;
	
SELECT COUNT(*)
	FROM albums al
	INNER JOIN songs sn ON al.album_id = sn.album_id
	WHERE al.year_of_release BETWEEN 2019 AND 2020;
	
SELECT al.name, AVG(sn.duration)
	FROM albums al
	INNER JOIN songs sn ON al.album_id = sn.album_id
	GROUP BY al.name;

SELECT name
	FROM artists
	WHERE artist_id NOT IN (
		SELECT aa.artist_id
			FROM albums al
			INNER JOIN albums_to_artists aa ON al.album_id = aa.album_id
			WHERE al.year_of_release = 2020 );
		
SELECT cl.name
	FROM albums al
	INNER JOIN albums_to_artists aa ON al.album_id = aa.album_id
	INNER JOIN artists ar ON ar.artist_id = aa.artist_id
	INNER JOIN songs sg ON al.album_id = sg.album_id
	INNER JOIN songs_to_collections sc ON sg.song_id = sc.song_id
	INNER JOIN collections cl ON sc.collection_id = cl.collection_id
	WHERE ar.name = 'Сектор газа';
	
SELECT al.name
	FROM albums al
	INNER JOIN albums_to_artists aa ON al.album_id = aa.album_id
	WHERE aa.artist_id IN (
		SELECT artist_id
			FROM genres_to_artists
			GROUP BY artist_id
			HAVING COUNT(*) > 1);

SELECT name
	FROM songs
	WHERE song_id NOT IN (
		SELECT song_id
			FROM songs_to_collections);
			
SELECT ar.name
	FROM songs sg
	INNER JOIN albums_to_artists aa ON sg.album_id = aa.album_id
	INNER JOIN artists ar ON aa.artist_id = ar.artist_id
	WHERE sg.duration = (
		SELECT MIN(duration)
			FROM songs);

SELECT al.name
	FROM (
		SELECT sg.album_id
			FROM songs sg
			GROUP BY sg.album_id
			HAVING COUNT(*) =( 
				SELECT MIN(cnt)
					FROM (
						SELECT COUNT(*) cnt
							FROM songs
							GROUP BY album_id) t)) tt
	INNER JOIN albums al ON tt.album_id = al.album_id;
