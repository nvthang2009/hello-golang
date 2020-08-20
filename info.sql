CREATE TABLE books (
  id serial NOT NULL,
  name character varying NOT NULL,
  author character varying,
  pages integer,
  publication_date date,
  CONSTRAINT pk_books PRIMARY KEY (id )
)
