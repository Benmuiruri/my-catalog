CREATE TABLE genre(
  id INT PRIMARY KEY GENERATED ALWAYS AS IDENTITY,
  name VARCHAR(50),
  item_id SERIAL NOT NULL,
  CONSTRAINT item_fk FOREIGN KEY (item_id) REFERENCES items(id)
);
CREATE INDEX item_id_asc ON musicalbum(item_id ASC);

CREATE TABLE music_album ( 
  id INT PRIMARY KEY GENERATED ALWAYS AS IDENTITY,
  name VARCHAR(50),
  publish_date DATE,
  archived BOOLEAN,
  on_spotify BOOLEAN DEFAULT 'f'
  genre_id INT
  CONSTRAINT genre_fk FOREIGN KEY (genre_id) REFERENCES genre(id)
)
Create INDEX genre_id_asc ON items(genre_id ASC);
CREATE INDEX genre_id_asc ON musicalbum(genre_id ASC);

