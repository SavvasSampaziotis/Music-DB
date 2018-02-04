
# 1
SELECT * FROM album NATURAL JOIN included_in;

# 2
SELECT distinct has_created.artist_name from has_created;

# 3
SELECT band.artist_name, band.founding_date, artist.debut, band.split_date
 FROM artist 
 NATURAL JOIN band
 ORDER BY debut LIMIT 5;

# 4
SELECT  included_in.album_title, SUM(song.duration) AS album_duration 
	FROM song
	NATURAL JOIN included_in 
	GROUP BY included_in.album_title;

# 5 
SELECT  included_in.album_title, SUM(song.duration) AS album_duration 
	FROM song
	NATURAL JOIN included_in 
	GROUP BY included_in.album_title
	HAVING count(song.song_title) > 2;
	
# 6 
SELECT * FROM song WHERE song.duration > (SELECT AVG(song.duration) FROM song);

# 7 # EXCEPT is'n supported. So we use NOT IN.
SELECT  artist.artist_name
	FROM artist
	WHERE artist.artist_name NOT IN ( SELECT DISTINCT has_created.artist_name FROM has_created );

# 8 INTERSECT is not supported, so we use inner join.
# This selects the song titles that are registered in albums and are linked to an artist as well
SELECT has_created.song_title, included_in.album_title, has_created.artist_name
	FROM has_created
	INNER JOIN included_in ON included_in.song_title=has_created.song_title;

# 9 
SELECT  artist.artist_name
	FROM artist
	WHERE artist.artist_name NOT IN ( SELECT DISTINCT has_created.artist_name FROM has_created );

	
# 10 
CREATE OR REPLACE VIEW album_duration 
	AS SELECT artist.debut, band.logo, band.founding_date, band.split_date
	FROM artist 
	NATURAL JOIN band
	ORDER BY debut;

SELECT * FROM album_duration;
	
	
	
	
	
	