CREATE TABLE items(
  id SERIAL PRIMARY KEY,
  archived BOOLEAN DEFAULT 'f',
  author_id SERIAL NOT NULL,
  label_id SERIAL NOT NULL,
  genre_id SERIAL NOT NULL,
  publish_date TIMESTAMP NOT NULL,
  CONSTRAINT author_fk FOREIGN KEY (author_id) REFERENCES author(id),
  CONSTRAINT label_fk FOREIGN KEY (label_id) REFERENCES label(id),
  CONSTRAINT genre_fk FOREIGN KEY (genre_id) REFERENCES genre(id)
);


CREATE TABLE genre(
  id INT PRIMARY KEY GENERATED ALWAYS AS IDENTITY,
  name VARCHAR(50),
  item_id SERIAL NOT NULL,
  CONSTRAINT item_fk FOREIGN KEY (item_id) REFERENCES items(id)
);


CREATE TABLE music_album ( 
  id INT PRIMARY KEY GENERATED ALWAYS AS IDENTITY,
  name VARCHAR(50),
  publish_date DATE,
  archived BOOLEAN,
  on_spotify BOOLEAN DEFAULT 'f'
  genre_id INT
  CONSTRAINT genre_fk FOREIGN KEY (genre_id) REFERENCES genre(id)
)

CREATE INDEX genre_id_asc ON musicalbum(genre_id ASC);
Create INDEX genre_id_asc ON items(genre_id ASC);

