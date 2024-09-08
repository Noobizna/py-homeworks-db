-- Заполнение таблицы исполнителей
INSERT INTO performer (performer_id, pseudonym)
VALUES
(1, 'Eminem'),
(2, 'Miley Syrus'),
(3, 'Dan Balan'),
(4, 'Cher'),
(5, 'Marilyn Manson');

-- Заполнение таблицы жанров
INSERT INTO genre (genre_id, genre_name)
VALUES
(1, 'Hip-Hop'),
(2, 'Pop'),
(3, 'Rock'),
(4, 'Electro');

-- Заполнение таблицы альбомов
INSERT INTO albums (album_id, album_name, year)
VALUES
(1, 'Music to Be Murdered By', 2020),
(2, 'Freedom, Pt. 2', 2021),
(3, 'Plastic Hearts', 2020),
(4, 'We Are Chaos', 2020),
(5, 'One Hand Clapping', 2019);

--Заполнение таблицы с треками
--Альбом 1
INSERT INTO tracks (track_id, track_name, duration, album_id)
VALUES
(1, 'In Too Deep', INTERVAL '195 seconds', 1),
(6, 'Unaccommodating', INTERVAL '217 seconds', 1),
(11, 'You Gon Learn', INTERVAL '235 seconds', 1),
(20, 'Godzilla', INTERVAL '211 seconds', 1),
(25, 'Darkness', INTERVAL '338 seconds', 1);
--Альбом 2
INSERT INTO tracks (track_id, track_name, duration, album_id)
VALUES
(2, 'Alegro Ventigo', INTERVAL '205 seconds',  2),
(7, 'Balzam', INTERVAL '203 seconds',  2),
(12, 'Домой',  INTERVAL '255 seconds',  2),
(16, 'Numa Numa 2', INTERVAL '195 seconds',  2),
(21, 'Наше лето', INTERVAL '208 seconds',  2);
--Альбом 3
INSERT INTO tracks (track_id, track_name, duration, album_id)
VALUES
(3, 'Angels Like You', INTERVAL '196 seconds', 3),
(8, 'High', INTERVAL '196 seconds', 3), 
(13, 'Hate Me', INTERVAL '157 seconds', 3),
(17, 'Bad Karma', INTERVAL '188 seconds', 3),
(22, 'Never Be Me', INTERVAL '215 seconds', 3);
--Альбом 4
INSERT INTO tracks (track_id, track_name, duration, album_id)
VALUES
(4, 'Paint you with my love', INTERVAL '270 seconds', 4),
(9, 'Dont chase the dead', INTERVAL '258 seconds', 4),
(14, 'Perfume', INTERVAL '214 seconds', 4),
(18, 'Keep my head together', INTERVAL '230 seconds', 4),
(23, 'Broken needle', INTERVAL '324 seconds', 4);
--Альбом 5
INSERT INTO tracks (track_id, track_name, duration, album_id)
VALUES
(5, 'Woman’s World', INTERVAL '245 seconds' ,  5),
(10, 'Strong Enough', INTERVAL '215 seconds',  5),
(15, 'Gayatri Mantra',  INTERVAL '237 seconds',  5),
(19, 'All or Nothing', INTERVAL '208 seconds' ,  5),
(24, 'All I Ever Need Is You', INTERVAL '239 seconds',  5),
(26, 'Let Me Roll It', INTERVAL '468 seconds', 5);

--Заполнение таблицы сборников
INSERT INTO collection (collection_id, name, year)
VALUES 
(1, 'Shady XV',2020),
(2, 'International FLow',2018),
(3, 'Female Power',2019),
(4, 'Julie London The Ultimate Collection',2020),
(5, 'Remember',2017),
(6, 'Disneys Family Christmas Collection',2021);
--Таблица связи исполнителей и жанров
-- Performer 1
INSERT INTO genre_perf(performer_id, genre_id)
VALUES
(1, 1),
(1, 2);
-- Performer 2
INSERT INTO genre_perf(performer_id, genre_id)
VALUES
(2, 2),
(2, 3);
-- Performer 3
INSERT INTO genre_perf(performer_id, genre_id)
VALUES
(3, 2),
(3, 4);
-- Performer 4
INSERT INTO genre_perf(performer_id, genre_id)
VALUES
(4, 2);
-- Performer 5
INSERT INTO genre_perf(performer_id, genre_id)
VALUES
(5, 3);
--Cвязь между исполнителями и альбомами
INSERT INTO performers_album (performer_id, album_id)
VALUES 
(1, 1),
(2, 3),
(3, 2),
(4, 5),
(5, 4);
--Связь между таблицами коллекциями и треками
-- Collection 1
INSERT INTO track_coll (collection_id, track_id)
VALUES 
(1, 4),
(1, 6),
(1, 11),
(1, 13),
(1, 20);
-- Collection 2
INSERT INTO track_coll (collection_id, track_id)
VALUES 
(2, 12),
(2, 24),
(2, 15),
(2, 21),
(2, 25);
-- Collection 3
INSERT INTO track_coll (collection_id, track_id)
VALUES 
(3, 14),
(3, 16),
(3, 19),
(3, 18),
(3, 17);
-- Collection 4
INSERT INTO track_coll (collection_id, track_id)
VALUES 
(4, 22),
(4, 23),
(4, 24);
-- Collection 5
INSERT INTO track_coll (collection_id, track_id)
VALUES 
(5, 7),
(5, 8),
(5, 9);
-- Collection 6
INSERT INTO track_coll (collection_id, track_id)
VALUES 
(6, 10),
(6, 12),
(6, 13);
