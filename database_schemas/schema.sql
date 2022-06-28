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

CREATE INDEX genre_id_asc ON music_albums(genre_id ASC);