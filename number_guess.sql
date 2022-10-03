--
-- PostgreSQL database dump
--

-- Dumped from database version 12.9 (Ubuntu 12.9-2.pgdg20.04+1)
-- Dumped by pg_dump version 12.9 (Ubuntu 12.9-2.pgdg20.04+1)

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

DROP DATABASE number_guess;
--
-- Name: number_guess; Type: DATABASE; Schema: -; Owner: freecodecamp
--

CREATE DATABASE number_guess WITH TEMPLATE = template0 ENCODING = 'UTF8' LC_COLLATE = 'C.UTF-8' LC_CTYPE = 'C.UTF-8';


ALTER DATABASE number_guess OWNER TO freecodecamp;

\connect number_guess

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
-- Name: games; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.games (
    game_id integer NOT NULL,
    user_id integer NOT NULL,
    number_of_guess integer NOT NULL
);


ALTER TABLE public.games OWNER TO freecodecamp;

--
-- Name: games_game_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.games_game_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.games_game_id_seq OWNER TO freecodecamp;

--
-- Name: games_game_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.games_game_id_seq OWNED BY public.games.game_id;


--
-- Name: users; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.users (
    user_id integer NOT NULL,
    name character varying(22) NOT NULL
);


ALTER TABLE public.users OWNER TO freecodecamp;

--
-- Name: users_user_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.users_user_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.users_user_id_seq OWNER TO freecodecamp;

--
-- Name: users_user_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.users_user_id_seq OWNED BY public.users.user_id;


--
-- Name: games game_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.games ALTER COLUMN game_id SET DEFAULT nextval('public.games_game_id_seq'::regclass);


--
-- Name: users user_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.users ALTER COLUMN user_id SET DEFAULT nextval('public.users_user_id_seq'::regclass);


--
-- Data for Name: games; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.games VALUES (1, 1, 4);
INSERT INTO public.games VALUES (2, 18, 387);
INSERT INTO public.games VALUES (3, 18, 118);
INSERT INTO public.games VALUES (4, 19, 280);
INSERT INTO public.games VALUES (5, 19, 374);
INSERT INTO public.games VALUES (6, 18, 599);
INSERT INTO public.games VALUES (7, 18, 323);
INSERT INTO public.games VALUES (8, 18, 306);
INSERT INTO public.games VALUES (9, 20, 421);
INSERT INTO public.games VALUES (10, 20, 213);
INSERT INTO public.games VALUES (11, 21, 731);
INSERT INTO public.games VALUES (12, 21, 562);
INSERT INTO public.games VALUES (13, 20, 201);
INSERT INTO public.games VALUES (14, 20, 124);
INSERT INTO public.games VALUES (15, 20, 829);
INSERT INTO public.games VALUES (16, 22, 797);
INSERT INTO public.games VALUES (17, 22, 98);
INSERT INTO public.games VALUES (18, 23, 443);
INSERT INTO public.games VALUES (19, 23, 492);
INSERT INTO public.games VALUES (20, 22, 957);
INSERT INTO public.games VALUES (21, 22, 129);
INSERT INTO public.games VALUES (22, 22, 754);
INSERT INTO public.games VALUES (23, 24, 812);
INSERT INTO public.games VALUES (24, 24, 393);
INSERT INTO public.games VALUES (25, 25, 384);
INSERT INTO public.games VALUES (26, 25, 502);
INSERT INTO public.games VALUES (27, 24, 110);
INSERT INTO public.games VALUES (28, 24, 387);
INSERT INTO public.games VALUES (29, 24, 528);
INSERT INTO public.games VALUES (30, 26, 881);
INSERT INTO public.games VALUES (31, 26, 610);
INSERT INTO public.games VALUES (32, 27, 649);
INSERT INTO public.games VALUES (33, 27, 502);
INSERT INTO public.games VALUES (34, 26, 829);
INSERT INTO public.games VALUES (35, 26, 825);
INSERT INTO public.games VALUES (36, 26, 602);
INSERT INTO public.games VALUES (37, 28, 349);
INSERT INTO public.games VALUES (38, 28, 609);
INSERT INTO public.games VALUES (39, 29, 761);
INSERT INTO public.games VALUES (40, 29, 181);
INSERT INTO public.games VALUES (41, 28, 309);
INSERT INTO public.games VALUES (42, 28, 495);
INSERT INTO public.games VALUES (43, 28, 71);
INSERT INTO public.games VALUES (44, 30, 298);
INSERT INTO public.games VALUES (45, 30, 408);
INSERT INTO public.games VALUES (46, 31, 624);
INSERT INTO public.games VALUES (47, 31, 738);
INSERT INTO public.games VALUES (48, 30, 446);
INSERT INTO public.games VALUES (49, 30, 878);
INSERT INTO public.games VALUES (50, 30, 586);
INSERT INTO public.games VALUES (51, 32, 455);
INSERT INTO public.games VALUES (52, 32, 727);
INSERT INTO public.games VALUES (53, 33, 559);
INSERT INTO public.games VALUES (54, 33, 822);
INSERT INTO public.games VALUES (55, 32, 571);
INSERT INTO public.games VALUES (56, 32, 368);
INSERT INTO public.games VALUES (57, 32, 962);
INSERT INTO public.games VALUES (58, 1, 2);
INSERT INTO public.games VALUES (59, 1, 4);
INSERT INTO public.games VALUES (60, 34, 226);
INSERT INTO public.games VALUES (61, 34, 495);
INSERT INTO public.games VALUES (62, 35, 97);
INSERT INTO public.games VALUES (63, 35, 235);
INSERT INTO public.games VALUES (64, 34, 243);
INSERT INTO public.games VALUES (65, 34, 28);
INSERT INTO public.games VALUES (66, 34, 336);
INSERT INTO public.games VALUES (67, 36, 750);
INSERT INTO public.games VALUES (68, 36, 678);
INSERT INTO public.games VALUES (69, 37, 925);
INSERT INTO public.games VALUES (70, 37, 512);
INSERT INTO public.games VALUES (71, 36, 107);
INSERT INTO public.games VALUES (72, 36, 707);
INSERT INTO public.games VALUES (73, 36, 893);


--
-- Data for Name: users; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.users VALUES (1, 'ngan');
INSERT INTO public.users VALUES (2, 'user_1664799889033');
INSERT INTO public.users VALUES (3, 'user_1664799889032');
INSERT INTO public.users VALUES (4, 'user_1664799949732');
INSERT INTO public.users VALUES (5, 'user_1664799949731');
INSERT INTO public.users VALUES (6, 'user_1664800446100');
INSERT INTO public.users VALUES (7, 'user_1664800446099');
INSERT INTO public.users VALUES (8, 'user_1664801037653');
INSERT INTO public.users VALUES (9, 'user_1664801037652');
INSERT INTO public.users VALUES (10, 'user_1664801045901');
INSERT INTO public.users VALUES (11, 'user_1664801045900');
INSERT INTO public.users VALUES (12, 'user_1664801098270');
INSERT INTO public.users VALUES (13, 'user_1664801098269');
INSERT INTO public.users VALUES (14, 'user_1664801307569');
INSERT INTO public.users VALUES (15, 'user_1664801307568');
INSERT INTO public.users VALUES (16, 'user_1664801342754');
INSERT INTO public.users VALUES (17, 'user_1664801342753');
INSERT INTO public.users VALUES (18, 'user_1664801632884');
INSERT INTO public.users VALUES (19, 'user_1664801632883');
INSERT INTO public.users VALUES (20, 'user_1664801673429');
INSERT INTO public.users VALUES (21, 'user_1664801673428');
INSERT INTO public.users VALUES (22, 'user_1664801699597');
INSERT INTO public.users VALUES (23, 'user_1664801699596');
INSERT INTO public.users VALUES (24, 'user_1664801707319');
INSERT INTO public.users VALUES (25, 'user_1664801707318');
INSERT INTO public.users VALUES (26, 'user_1664801715294');
INSERT INTO public.users VALUES (27, 'user_1664801715293');
INSERT INTO public.users VALUES (28, 'user_1664801727151');
INSERT INTO public.users VALUES (29, 'user_1664801727150');
INSERT INTO public.users VALUES (30, 'user_1664801740296');
INSERT INTO public.users VALUES (31, 'user_1664801740295');
INSERT INTO public.users VALUES (32, 'user_1664801770871');
INSERT INTO public.users VALUES (33, 'user_1664801770870');
INSERT INTO public.users VALUES (34, 'user_1664801862734');
INSERT INTO public.users VALUES (35, 'user_1664801862733');
INSERT INTO public.users VALUES (36, 'user_1664801888854');
INSERT INTO public.users VALUES (37, 'user_1664801888853');


--
-- Name: games_game_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.games_game_id_seq', 73, true);


--
-- Name: users_user_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.users_user_id_seq', 37, true);


--
-- Name: games games_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.games
    ADD CONSTRAINT games_pkey PRIMARY KEY (game_id);


--
-- Name: users users_name_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.users
    ADD CONSTRAINT users_name_key UNIQUE (name);


--
-- Name: users users_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.users
    ADD CONSTRAINT users_pkey PRIMARY KEY (user_id);


--
-- Name: games games_user_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.games
    ADD CONSTRAINT games_user_id_fkey FOREIGN KEY (user_id) REFERENCES public.users(user_id);


--
-- PostgreSQL database dump complete
--

