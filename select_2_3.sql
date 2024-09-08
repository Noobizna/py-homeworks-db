--Название и продолжительность самого длительного трека.
SELECT track_name, duration FROM tracks
ORDER BY duration DESC
LIMIT 1;
--Название треков, продолжительность которых не менее 3,5 минут.
SELECT track_name, duration FROM tracks
WHERE duration >= INTERVAL '210 seconds';
--Названия сборников, вышедших в период с 2018 по 2020 год включительно.
SELECT name, year FROM collection
WHERE year BETWEEN 2018 AND 2020;
--Исполнители, чьё имя состоит из одного слова.
SELECT pseudonym FROM performer
WHERE pseudonym NOT LIKE '% %';
--Название треков, которые содержат слово «мой» или «my».
SELECT track_name FROM tracks
WHERE track_name ILIKE 'my %' 
OR track_name ILIKE '% my' 
OR track_name ILIKE '% my %' 
OR track_name ILIKE 'my' 
OR track_name ILIKE 'мой %' 
OR track_name ILIKE '% мой' 
OR track_name ILIKE '% мой %'
OR track_name ILIKE 'мой';
--Количество исполнителей в каждом жанре.
SELECT g.genre_name, COUNT(gp.performer_id) AS count_performer
FROM genre_perf AS gp
JOIN genre AS g ON gp.performer_id = g.genre_id
GROUP BY g.genre_name
ORDER BY count_performer DESC;
--Количество треков, вошедших в альбомы 2019–2020 годов.
SELECT COUNT(t.track_id) FROM tracks AS t
JOIN albums AS a ON t.album_id = a.album_id
WHERE a.year BETWEEN 2019 AND 2020;
--Средняя продолжительность треков по каждому альбому.
SELECT a.album_name, AVG(t.duration) FROM tracks AS t
JOIN albums AS a ON t.album_id = a.album_id
GROUP BY a.album_name;
--Все исполнители, которые не выпустили альбомы в 2020 году.
SELECT p.pseudonym
FROM performer AS p
WHERE
  p.pseudonym NOT IN (
    SELECT
      per.pseudonym
    FROM
      performer AS per
      JOIN performers_album AS pa ON per.performer_id = pa.performer_id
      JOIN albums AS al ON pa.album_id = al.album_id
    WHERE
      al.year = 2020
  );
--Названия сборников, в которых присутствует конкретный исполнитель (выберите его сами).
SELECT c.name FROM collection AS c
JOIN track_coll AS tc ON c.collection_id = tc.collection_id
JOIN tracks AS t ON tc.track_id = t.track_id
JOIN albums AS a ON t.album_id = a.album_id
JOIN performers_album AS pa ON a.album_id = pa.album_id
JOIN performer AS p ON pa.performer_id = p.performer_id
WHERE p.pseudonym = 'Dan Balan';
