--
-- PostgreSQL database dump
--

-- Dumped from database version 15.4 (Homebrew)
-- Dumped by pg_dump version 15.4

-- Started on 2023-10-31 20:45:47 JST

SET statement_timeout = 0;
SET lock_timeout = 0;
SET idle_in_transaction_session_timeout = 0;
SET client_encoding = 'UTF8';
SET standard_conforming_strings = on;
SELECT pg_catalog.set_config('search_path', '', false);
SET check_function_bodies = false;
SET xmloption = content;
SET client_min_messages = warning;
SET row_security = off;

SET default_tablespace = '';

SET default_table_access_method = heap;

--
-- TOC entry 214 (class 1259 OID 16390)
-- Name: book_user; Type: TABLE; Schema: public; Owner: book_user
--

CREATE TABLE public.book_user (
    user_id character varying(255) NOT NULL,
    passwd character varying(255) NOT NULL,
    email character varying(255) NOT NULL,
    user_shi character varying(255),
    user_mei character varying(255),
    del boolean
);


ALTER TABLE public.book_user OWNER TO book_user;

--
-- TOC entry 216 (class 1259 OID 16416)
-- Name: books; Type: TABLE; Schema: public; Owner: book_user
--

CREATE TABLE public.books (
    id integer NOT NULL,
    name character varying(255),
    volume character varying(255),
    author character varying(255),
    publisher character varying(255),
    memo text,
    create_date timestamp with time zone NOT NULL,
    del boolean
);


ALTER TABLE public.books OWNER TO book_user;

--
-- TOC entry 215 (class 1259 OID 16415)
-- Name: books_id_seq; Type: SEQUENCE; Schema: public; Owner: book_user
--

CREATE SEQUENCE public.books_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.books_id_seq OWNER TO book_user;

--
-- TOC entry 3620 (class 0 OID 0)
-- Dependencies: 215
-- Name: books_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: book_user
--

ALTER SEQUENCE public.books_id_seq OWNED BY public.books.id;


--
-- TOC entry 3465 (class 2604 OID 16419)
-- Name: books id; Type: DEFAULT; Schema: public; Owner: book_user
--

ALTER TABLE ONLY public.books ALTER COLUMN id SET DEFAULT nextval('public.books_id_seq'::regclass);


--
-- TOC entry 3612 (class 0 OID 16390)
-- Dependencies: 214
-- Data for Name: book_user; Type: TABLE DATA; Schema: public; Owner: book_user
--

COPY public.book_user (user_id, passwd, email, user_shi, user_mei, del) FROM stdin;
test1	testtest	fest1@gmail.com	テスト	太郎	f
test	test2test2	test2@gmail.com	テスト	二郎	f
yamada	yamadapass	yamada@gmail.com	やまだ	つよし	f
\.


--
-- TOC entry 3614 (class 0 OID 16416)
-- Dependencies: 216
-- Data for Name: books; Type: TABLE DATA; Schema: public; Owner: book_user
--

COPY public.books (id, name, volume, author, publisher, memo, create_date, del) FROM stdin;
2	りあクト！	基礎編	大岡由佳	くるみ割り書房	リアクトの基礎	2023-10-30 14:41:04.817416+09	f
1	みんなのPython	上巻	柴田 淳	SBクリエイティブ	Pythonの入門書	2023-10-30 14:29:14.858381+09	t
3	みんなのPython	上巻	柴田 淳	SBクリエイティブ	memo \r\n	2023-10-30 14:49:48.181398+09	f
\.


--
-- TOC entry 3621 (class 0 OID 0)
-- Dependencies: 215
-- Name: books_id_seq; Type: SEQUENCE SET; Schema: public; Owner: book_user
--

SELECT pg_catalog.setval('public.books_id_seq', 3, true);


--
-- TOC entry 3467 (class 2606 OID 16396)
-- Name: book_user book_user_pkey; Type: CONSTRAINT; Schema: public; Owner: book_user
--

ALTER TABLE ONLY public.book_user
    ADD CONSTRAINT book_user_pkey PRIMARY KEY (user_id);


--
-- TOC entry 3469 (class 2606 OID 16423)
-- Name: books books_pkey; Type: CONSTRAINT; Schema: public; Owner: book_user
--

ALTER TABLE ONLY public.books
    ADD CONSTRAINT books_pkey PRIMARY KEY (id);


-- Completed on 2023-10-31 20:45:47 JST

--
-- PostgreSQL database dump complete
--

