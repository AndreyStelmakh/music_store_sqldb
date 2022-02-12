SELECT year_of_release, name
	FROM public.albums
	WHERE year_of_release=2018;
	
SELECT name, duration
	FROM public.songs
	ORDER BY duration DESC
	LIMIT 1;
	
SELECT name
	FROM public.songs
	WHERE duration >= 210;

SELECT name
	FROM public.collections
	WHERE year_of_release BETWEEN 2018 AND 2020;
	
SELECT name
	FROM public.artists
	WHERE name NOT LIKE '% %';
	
SELECT name
	FROM public.songs
	WHERE name iLIKE '%мой%';
	