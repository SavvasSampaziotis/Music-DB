
# 1
select * FROM album NATURAL JOIN included_in;

#3
select debut, band.artist_name
 FROM artist 
 INNER JOIN band ON band.artist_name=artist.artist_name 
 ORDER BY debut LIMIT 5;

#5 XXXXXXXXXXXXXXXXXXXXX

#7
#select * from included_in group by included_in



