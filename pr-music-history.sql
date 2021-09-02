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

--SELECT ar.ArtistName
--FROM Artist ar
--	JOIN Album a ON  ar.Id = a.ArtistId
--	JOIN Genre g on g.Id = a.GenreId
--WHERE g.Id = 2
--	OR g.Id = 4;

--SELECT a.Title, a.Id
--FROM Album a
--	LEFT JOIN Song s ON a.Id = s.AlbumId
--WHERE s.AlbumId IS NULL;

--SELECT * FROM Song;

--INSERT INTO Artist 
--(ArtistName, YearEstablished) VALUES ('Dave Matthews Band', 1991);

--SELECT * FROM Artist;

--INSERT INTO Album (Title, ReleaseDate, AlbumLength, Label, ArtistId, GenreId) VALUES
--('Crash', '1996', 4131, 'RCA', 29, 2);

--SELECT * FROM Album;

--INSERT INTO Song (Title, SongLength, ReleaseDate, GenreId, ArtistId, AlbumId)
--VALUES ('Drive in, Drive Out', 355, '4/30/1996', 2, 29, 23);

--SELECT * FROM Song

--SELECT s.Title as 'Song Title', al.Title as 'Album Title', a.ArtistName as Artist
--FROM Song s 
--	JOIN Album al on s.AlbumId = al.Id
--	JOIN Artist a on a.Id = al.ArtistId
--WHERE s.Id = 22;

SELECT * FROM Song;

SELECT a.Title as 'Album Title', COUNT(*) as 'Number Of Songs'   
FROM Song s
	LEFT JOIN Album a ON s.AlbumId = a.Id
GROUP BY s.AlbumId, a.Title;


SELECT ar.ArtistName as Artist, COUNT(*) as 'Number of Songs'
FROM Song s
	LEFT JOIN Artist ar ON s.ArtistId = ar.Id
GROUP BY s.ArtistId, ar.ArtistName