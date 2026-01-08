--
-- PostgreSQL database dump
--

-- Dumped from database version 12.22 (Ubuntu 12.22-0ubuntu0.20.04.4)
-- Dumped by pg_dump version 12.22 (Ubuntu 12.22-0ubuntu0.20.04.4)

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
    user_id integer,
    guesses integer NOT NULL
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
    username character varying(22) NOT NULL
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

INSERT INTO public.games VALUES (1, 1, 21);
INSERT INTO public.games VALUES (2, 2, 300);
INSERT INTO public.games VALUES (3, 2, 117);
INSERT INTO public.games VALUES (4, 3, 177);
INSERT INTO public.games VALUES (5, 3, 668);
INSERT INTO public.games VALUES (6, 2, 92);
INSERT INTO public.games VALUES (7, 2, 962);
INSERT INTO public.games VALUES (8, 2, 557);
INSERT INTO public.games VALUES (9, 4, 710);
INSERT INTO public.games VALUES (10, 4, 115);
INSERT INTO public.games VALUES (11, 5, 861);
INSERT INTO public.games VALUES (12, 5, 810);
INSERT INTO public.games VALUES (13, 4, 527);
INSERT INTO public.games VALUES (14, 4, 728);
INSERT INTO public.games VALUES (15, 4, 879);
INSERT INTO public.games VALUES (16, 6, 146);
INSERT INTO public.games VALUES (17, 6, 373);
INSERT INTO public.games VALUES (18, 7, 822);
INSERT INTO public.games VALUES (19, 7, 281);
INSERT INTO public.games VALUES (20, 6, 210);
INSERT INTO public.games VALUES (21, 6, 234);
INSERT INTO public.games VALUES (22, 6, 21);
INSERT INTO public.games VALUES (23, 8, 113);
INSERT INTO public.games VALUES (24, 8, 590);
INSERT INTO public.games VALUES (25, 9, 154);
INSERT INTO public.games VALUES (26, 9, 695);
INSERT INTO public.games VALUES (27, 8, 731);
INSERT INTO public.games VALUES (28, 8, 684);
INSERT INTO public.games VALUES (29, 8, 123);
INSERT INTO public.games VALUES (30, 10, 845);
INSERT INTO public.games VALUES (31, 10, 910);
INSERT INTO public.games VALUES (32, 11, 874);
INSERT INTO public.games VALUES (33, 11, 256);
INSERT INTO public.games VALUES (34, 10, 287);
INSERT INTO public.games VALUES (35, 10, 431);
INSERT INTO public.games VALUES (36, 10, 561);
INSERT INTO public.games VALUES (37, 12, 989);
INSERT INTO public.games VALUES (38, 12, 66);
INSERT INTO public.games VALUES (39, 13, 326);
INSERT INTO public.games VALUES (40, 13, 373);
INSERT INTO public.games VALUES (41, 12, 851);
INSERT INTO public.games VALUES (42, 12, 759);
INSERT INTO public.games VALUES (43, 12, 819);
INSERT INTO public.games VALUES (44, 14, 821);
INSERT INTO public.games VALUES (45, 14, 756);
INSERT INTO public.games VALUES (46, 15, 733);
INSERT INTO public.games VALUES (47, 15, 665);
INSERT INTO public.games VALUES (48, 14, 663);
INSERT INTO public.games VALUES (49, 14, 316);
INSERT INTO public.games VALUES (50, 14, 339);
INSERT INTO public.games VALUES (51, 16, 464);
INSERT INTO public.games VALUES (52, 16, 179);
INSERT INTO public.games VALUES (53, 17, 645);
INSERT INTO public.games VALUES (54, 17, 119);
INSERT INTO public.games VALUES (55, 16, 899);
INSERT INTO public.games VALUES (56, 16, 833);
INSERT INTO public.games VALUES (57, 16, 566);
INSERT INTO public.games VALUES (58, 18, 967);
INSERT INTO public.games VALUES (59, 18, 544);
INSERT INTO public.games VALUES (60, 19, 264);
INSERT INTO public.games VALUES (61, 19, 317);
INSERT INTO public.games VALUES (62, 18, 234);
INSERT INTO public.games VALUES (63, 18, 155);
INSERT INTO public.games VALUES (64, 18, 839);
INSERT INTO public.games VALUES (65, 20, 192);
INSERT INTO public.games VALUES (66, 20, 653);
INSERT INTO public.games VALUES (67, 21, 268);
INSERT INTO public.games VALUES (68, 21, 532);
INSERT INTO public.games VALUES (69, 20, 517);
INSERT INTO public.games VALUES (70, 20, 467);
INSERT INTO public.games VALUES (71, 20, 431);


--
-- Data for Name: users; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.users VALUES (1, 'rovy');
INSERT INTO public.users VALUES (2, 'user_1767886994927');
INSERT INTO public.users VALUES (3, 'user_1767886994926');
INSERT INTO public.users VALUES (4, 'user_1767887864523');
INSERT INTO public.users VALUES (5, 'user_1767887864522');
INSERT INTO public.users VALUES (6, 'user_1767887878414');
INSERT INTO public.users VALUES (7, 'user_1767887878413');
INSERT INTO public.users VALUES (8, 'user_1767888019103');
INSERT INTO public.users VALUES (9, 'user_1767888019102');
INSERT INTO public.users VALUES (10, 'user_1767888198850');
INSERT INTO public.users VALUES (11, 'user_1767888198849');
INSERT INTO public.users VALUES (12, 'user_1767888215130');
INSERT INTO public.users VALUES (13, 'user_1767888215129');
INSERT INTO public.users VALUES (14, 'user_1767888280968');
INSERT INTO public.users VALUES (15, 'user_1767888280967');
INSERT INTO public.users VALUES (16, 'user_1767888425475');
INSERT INTO public.users VALUES (17, 'user_1767888425474');
INSERT INTO public.users VALUES (18, 'user_1767888457067');
INSERT INTO public.users VALUES (19, 'user_1767888457066');
INSERT INTO public.users VALUES (20, 'user_1767888692435');
INSERT INTO public.users VALUES (21, 'user_1767888692434');


--
-- Name: games_game_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.games_game_id_seq', 71, true);


--
-- Name: users_user_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.users_user_id_seq', 21, true);


--
-- Name: games games_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.games
    ADD CONSTRAINT games_pkey PRIMARY KEY (game_id);


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

