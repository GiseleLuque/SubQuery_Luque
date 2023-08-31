--1) Mostrar el nombre y duración de las canciones del disco "Outbreak":

SELECT	name, 
		Milliseconds
FROM tracks
WHERE AlbumId in (SELECT AlbumId
	FROM albums
	WHERE  title like 'Outbreak');