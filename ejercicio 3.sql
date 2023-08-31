--3Mostrar el nombre y duración de las canciones de los discos de "Deep Purple":

SELECT name, 
	   max(milliseconds)
FROM tracks t JOIN albums a ON t.albumId = a.albumId
WHERE ArtistId = (SELECT ArtistId FROM Artists
WHERE name = 'Deep Purple');