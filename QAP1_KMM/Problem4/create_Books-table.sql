-- Table: public.Books

-- DROP TABLE IF EXISTS public."Books";

CREATE TABLE IF NOT EXISTS public."Books"
(
    book_id integer NOT NULL DEFAULT nextval('"Books_book_id_seq"'::regclass),
    title character varying(100) COLLATE pg_catalog."default",
    genre character varying(50) COLLATE pg_catalog."default",
    publication_year integer,
    author_id integer,
    CONSTRAINT "Books_pkey" PRIMARY KEY (book_id)
)

TABLESPACE pg_default;

ALTER TABLE IF EXISTS public."Books"
    OWNER to postgres;