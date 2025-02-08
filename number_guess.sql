--
-- PostgreSQL database dump
--

-- Dumped from database version 12.17 (Ubuntu 12.17-1.pgdg22.04+1)
-- Dumped by pg_dump version 12.17 (Ubuntu 12.17-1.pgdg22.04+1)

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
    games_id integer NOT NULL,
    number_guesses integer NOT NULL,
    user_id integer
);


ALTER TABLE public.games OWNER TO freecodecamp;

--
-- Name: games_games_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.games_games_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.games_games_id_seq OWNER TO freecodecamp;

--
-- Name: games_games_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.games_games_id_seq OWNED BY public.games.games_id;


--
-- Name: users; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.users (
    user_id integer NOT NULL,
    username character varying(20) NOT NULL
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
-- Name: games games_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.games ALTER COLUMN games_id SET DEFAULT nextval('public.games_games_id_seq'::regclass);


--
-- Name: users user_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.users ALTER COLUMN user_id SET DEFAULT nextval('public.users_user_id_seq'::regclass);


--
-- Data for Name: games; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.games VALUES (1, 8, 4);
INSERT INTO public.games VALUES (2, 523, 5);
INSERT INTO public.games VALUES (3, 868, 5);
INSERT INTO public.games VALUES (4, 23, 7);
INSERT INTO public.games VALUES (5, 416, 7);
INSERT INTO public.games VALUES (6, 117, 5);
INSERT INTO public.games VALUES (7, 54, 5);
INSERT INTO public.games VALUES (8, 131, 5);
INSERT INTO public.games VALUES (9, 619, 12);
INSERT INTO public.games VALUES (10, 27, 12);
INSERT INTO public.games VALUES (11, 96, 14);
INSERT INTO public.games VALUES (12, 549, 14);
INSERT INTO public.games VALUES (13, 506, 12);
INSERT INTO public.games VALUES (14, 24, 12);
INSERT INTO public.games VALUES (15, 587, 12);
INSERT INTO public.games VALUES (16, 637, 19);
INSERT INTO public.games VALUES (17, 322, 19);
INSERT INTO public.games VALUES (18, 79, 21);
INSERT INTO public.games VALUES (19, 367, 21);
INSERT INTO public.games VALUES (20, 364, 19);
INSERT INTO public.games VALUES (21, 834, 19);
INSERT INTO public.games VALUES (22, 673, 19);
INSERT INTO public.games VALUES (23, 952, 26);
INSERT INTO public.games VALUES (24, 593, 26);
INSERT INTO public.games VALUES (25, 571, 28);
INSERT INTO public.games VALUES (26, 987, 28);
INSERT INTO public.games VALUES (27, 84, 26);
INSERT INTO public.games VALUES (28, 400, 26);
INSERT INTO public.games VALUES (29, 60, 26);
INSERT INTO public.games VALUES (30, 754, 33);
INSERT INTO public.games VALUES (31, 651, 33);
INSERT INTO public.games VALUES (32, 933, 34);
INSERT INTO public.games VALUES (33, 663, 34);
INSERT INTO public.games VALUES (34, 930, 33);
INSERT INTO public.games VALUES (35, 714, 33);
INSERT INTO public.games VALUES (36, 479, 33);
INSERT INTO public.games VALUES (37, 36, 35);
INSERT INTO public.games VALUES (38, 167, 35);
INSERT INTO public.games VALUES (39, 166, 36);
INSERT INTO public.games VALUES (40, 59, 36);
INSERT INTO public.games VALUES (41, 428, 35);
INSERT INTO public.games VALUES (42, 739, 35);
INSERT INTO public.games VALUES (43, 186, 35);


--
-- Data for Name: users; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.users VALUES (1, 'erika');
INSERT INTO public.users VALUES (3, 'marie');
INSERT INTO public.users VALUES (4, 'laude');
INSERT INTO public.users VALUES (5, 'user_1738993774921');
INSERT INTO public.users VALUES (7, 'user_1738993774920');
INSERT INTO public.users VALUES (12, 'user_1738993865590');
INSERT INTO public.users VALUES (14, 'user_1738993865589');
INSERT INTO public.users VALUES (19, 'user_1738993983344');
INSERT INTO public.users VALUES (21, 'user_1738993983343');
INSERT INTO public.users VALUES (26, 'user_1738994019445');
INSERT INTO public.users VALUES (28, 'user_1738994019444');
INSERT INTO public.users VALUES (33, 'user_1738994190982');
INSERT INTO public.users VALUES (34, 'user_1738994190981');
INSERT INTO public.users VALUES (35, 'user_1738994214774');
INSERT INTO public.users VALUES (36, 'user_1738994214773');


--
-- Name: games_games_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.games_games_id_seq', 43, true);


--
-- Name: users_user_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.users_user_id_seq', 36, true);


--
-- Name: games games_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.games
    ADD CONSTRAINT games_pkey PRIMARY KEY (games_id);


--
-- Name: users users_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.users
    ADD CONSTRAINT users_pkey PRIMARY KEY (user_id);


--
-- Name: users users_username_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.users
    ADD CONSTRAINT users_username_key UNIQUE (username);


--
-- Name: games games_user_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.games
    ADD CONSTRAINT games_user_id_fkey FOREIGN KEY (user_id) REFERENCES public.users(user_id);


--
-- PostgreSQL database dump complete
--

