CREATE TABLE genres(
  id INT PRIMARY KEY GENERATED ALWAYS AS IDENTITY,
  name VARCHAR(50),
  items TEXT []
);
CREATE TABLE music_albums (
  id INT PRIMARY KEY GENERATED ALWAYS AS IDENTITY,
  name VARCHAR(50),
  publish_date DATE,
  archived BOOLEAN,
  on_spotify BOOLEAN DEFAULT 'f',
  genre_id INT,
  CONSTRAINT genre_fk FOREIGN KEY (genre_id) REFERENCES genres(id)
);

CREATE TABLE labels (
    id INT PRIMARY KEY GENERATED ALWAYS AS IDENTITY, 
    title VARCHAR(100) NOT NULL, 
    color VARCHAR(100) NOT NULL,
    items TEXT [] 
);

CREATE TABLE books (
    id INT PRIMARY KEY GENERATED ALWAYS AS IDENTITY,
    publish_date DATE NOT NULL,           
    archived  BOOLEAN NOT NULL,
    publisher VARCHAR(100) NOT NULL,
    cover_state VARCHAR(100) NOT NULL,
    label_id int,
    CONSTRAINT label_fk FOREIGN KEY (label_id) REFERENCES labels(id)
);

CREATE INDEX genre_id_asc ON music_albums(genre_id ASC);
CREATE INDEX label_id_asc ON books(label_id ASC);

CREATE TABLE authors (
    id INT PRIMARY KEY,
    first_name VARCHAR(100) NOT NULL,
    last_name VARCHAR(100) NOT NULL
);

CREATE TABLE games (
    id INT PRIMARY KEY,
    multiplayer VARCHAR(100),
    last_played_at DATE,
    FOREIGN KEY(item_id) REFERENCES items(id)
);
