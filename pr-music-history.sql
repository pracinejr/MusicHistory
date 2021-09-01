--SELECT
--    Id,
--    Title,
--    SongLength,
--    ReleaseDate,
--    GenreId,
--    ArtistId,
--    AlbumId
--FROM Song;

--SELECT
--    Id,
--    Title,
--    ReleaseDate
--FROM Song;

--SELECT * FROM Genre;

--SELECT
--    Id,
--    Title,
--    SongLength,
--    ReleaseDate,
--    GenreId,
--    ArtistId,
--    AlbumId
--FROM Song
--WHERE SongLength > 100;

--SELECT s.Title,
--       a.ArtistName
--  FROM Song s
--       LEFT JOIN Artist a on s.ArtistId = a.id;

--INSERT INTO Genre (Name) VALUES ('Techno');

--SELECT SongLength from Song where Id = 18;

--update Song
--set SongLength = 515
--where Id = 18;

--DELETE FROM 
--	Song
--WHERE
--	Id = 18;

--SELECT * 
--From Genre

--SELECT * FROM Artist 
--ORDER BY ArtistName

--SELECT 
--	s.Title, ar.ArtistName
--FROM Song s
--	JOIN Artist ar ON s.ArtistId = ar.Id

--SELECT DISTINCT
--	ar.ArtistName 
--FROM 
--	Artist ar
--JOIN Album a ON ar.Id = a.ArtistId
--JOIN Genre g ON g.Id = a.GenreId
--WHERE g.id = 1;

SELECT ar.ArtistName
FROM Artist ar
	JOIN Album a ON  ar.Id = a.ArtistId
	JOIN Genre g on g.Id = a.GenreId
WHERE g.Id = 2
	OR g.Id = 4;


