--5)Mostrar Nombre y duración del disco más largo:
SELECT	name as cancion,
		max(Milliseconds) as duracion
FROM tracks t JOIN albums a ON t.albumId = a.albumId
WHERE ArtistId = (SELECT ArtistId FROM Artists)