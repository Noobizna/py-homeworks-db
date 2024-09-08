CREATE TABLE IF NOT EXISTS Genre (
    genre_id SERIAL PRIMARY KEY,
    genre_name VARCHAR(50) NOT NULL
);

CREATE TABLE IF NOT EXISTS Performer (
    performer_id SERIAL PRIMARY KEY,
    pseudonym VARCHAR(60) NOT NULL
);

CREATE TABLE IF NOT EXISTS Genre_perf (
    genre_id INT REFERENCES Genre(genre_id),
    performer_id INT REFERENCES Performer(performer_id),
    CONSTRAINT pk1 PRIMARY KEY (genre_id, performer_id)
);

CREATE TABLE IF NOT EXISTS Albums (
    album_id SERIAL PRIMARY KEY,
    album_name VARCHAR(60) NOT NULL,
    year INT NOT NULL 
);

CREATE TABLE IF NOT EXISTS Performers_album (
    performer_id INT REFERENCES Performer(performer_id),
    album_id INT REFERENCES Albums(album_id),
    CONSTRAINT pk2 PRIMARY KEY (performer_id, album_id)
);

CREATE TABLE IF NOT EXISTS Tracks (
    track_id SERIAL PRIMARY KEY,
    track_name VARCHAR(60) NOT NULL,
    duration TIME NOT NULL,
    album_id INTEGER REFERENCES Albums(album_id)
);

CREATE TABLE IF NOT EXISTS Collection (
    collection_id SERIAL PRIMARY KEY,
    name VARCHAR(60) NOT NULL,
    year INTEGER NOT NULL
);

CREATE TABLE IF NOT EXISTS Track_coll (
    track_id INT REFERENCES Tracks(track_id),
    collection_id INT REFERENCES Collection(collection_id),
    CONSTRAINT pk3 PRIMARY KEY (track_id, collection_id)
);
