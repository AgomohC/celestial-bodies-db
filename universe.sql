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

DROP DATABASE universe;
--
-- Name: universe; Type: DATABASE; Schema: -; Owner: freecodecamp
--

CREATE DATABASE universe WITH TEMPLATE = template0 ENCODING = 'UTF8' LC_COLLATE = 'C.UTF-8' LC_CTYPE = 'C.UTF-8';


ALTER DATABASE universe OWNER TO freecodecamp;

\connect universe

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
-- Name: galaxy; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.galaxy (
    galaxy_id integer NOT NULL,
    name character varying(30) NOT NULL,
    age_in_millions_of_years integer NOT NULL,
    distance_from_earth numeric(20,1) NOT NULL,
    description text,
    is_spherical boolean NOT NULL
);


ALTER TABLE public.galaxy OWNER TO freecodecamp;

--
-- Name: galaxy_galaxy_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.galaxy_galaxy_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.galaxy_galaxy_id_seq OWNER TO freecodecamp;

--
-- Name: galaxy_galaxy_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.galaxy_galaxy_id_seq OWNED BY public.galaxy.galaxy_id;


--
-- Name: moon; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.moon (
    moon_id integer NOT NULL,
    name character varying(30) NOT NULL,
    age_in_millions_of_years integer NOT NULL,
    distance_from_earth numeric(20,1) NOT NULL,
    description text,
    is_spherical boolean NOT NULL,
    planet_id integer NOT NULL
);


ALTER TABLE public.moon OWNER TO freecodecamp;

--
-- Name: moon_moon_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.moon_moon_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.moon_moon_seq OWNER TO freecodecamp;

--
-- Name: moon_moon_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.moon_moon_seq OWNED BY public.moon.moon_id;


--
-- Name: passer; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.passer (
    passer_id integer NOT NULL,
    passer_star integer NOT NULL,
    name character varying(30) NOT NULL
);


ALTER TABLE public.passer OWNER TO freecodecamp;

--
-- Name: passer_passer_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.passer_passer_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.passer_passer_id_seq OWNER TO freecodecamp;

--
-- Name: passer_passer_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.passer_passer_id_seq OWNED BY public.passer.passer_id;


--
-- Name: planet; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.planet (
    planet_id integer NOT NULL,
    name character varying(30) NOT NULL,
    age_in_millions_of_years integer NOT NULL,
    distance_from_earth numeric(20,1) NOT NULL,
    description text,
    is_spherical boolean NOT NULL,
    star_id integer
);


ALTER TABLE public.planet OWNER TO freecodecamp;

--
-- Name: planet_planet_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.planet_planet_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.planet_planet_id_seq OWNER TO freecodecamp;

--
-- Name: planet_planet_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.planet_planet_id_seq OWNED BY public.planet.planet_id;


--
-- Name: star; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.star (
    star_id integer NOT NULL,
    name character varying(30) NOT NULL,
    age_in_millions_of_years integer NOT NULL,
    distance_from_earth numeric(20,1) NOT NULL,
    description text,
    is_spherical boolean NOT NULL,
    galaxy_id integer NOT NULL
);


ALTER TABLE public.star OWNER TO freecodecamp;

--
-- Name: star_star_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.star_star_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.star_star_id_seq OWNER TO freecodecamp;

--
-- Name: star_star_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.star_star_id_seq OWNED BY public.star.star_id;


--
-- Name: galaxy galaxy_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.galaxy ALTER COLUMN galaxy_id SET DEFAULT nextval('public.galaxy_galaxy_id_seq'::regclass);


--
-- Name: moon moon_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.moon ALTER COLUMN moon_id SET DEFAULT nextval('public.moon_moon_seq'::regclass);


--
-- Name: passer passer_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.passer ALTER COLUMN passer_id SET DEFAULT nextval('public.passer_passer_id_seq'::regclass);


--
-- Name: planet planet_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planet ALTER COLUMN planet_id SET DEFAULT nextval('public.planet_planet_id_seq'::regclass);


--
-- Name: star star_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star ALTER COLUMN star_id SET DEFAULT nextval('public.star_star_id_seq'::regclass);


--
-- Data for Name: galaxy; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.galaxy VALUES (2, 'Andromeda', 136310, 1234567865443654321.2, 'ANDROMEDA ISSA GALAXY-A - MARIO', false);
INSERT INTO public.galaxy VALUES (6, 'Black eye', 36310, 456567865443654321.2, 'bLACK EYE ISSA GALAXY-A - MARIO', false);
INSERT INTO public.galaxy VALUES (7, 'Milky way', 13610, 1234567890987654321.2, 'MILKY WAS ISSA GALAXY-A - MARIO', true);
INSERT INTO public.galaxy VALUES (8, 'Pinwheel', 1360, 1234567890987654445.2, 'Pinwheel ISSA GALAXY-A - MARIO', true);
INSERT INTO public.galaxy VALUES (9, 'Cartwheel', 51360, 1234567890987654115.2, 'Cartwheel ISSA GALAXY-A - MARIO', true);
INSERT INTO public.galaxy VALUES (10, 'Somberero', 571360, 1234567890987334115.2, 'Somberero ISSA GALAXY-A - MARIO', false);
INSERT INTO public.galaxy VALUES (11, 'Cigar', 51360, 123456750327334115.2, 'Cigar ISSA GALAXY-A - MARIO', false);


--
-- Data for Name: moon; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.moon VALUES (1, 'Charon', 493, 234323434343.4, 'messenger', true, 9);
INSERT INTO public.moon VALUES (2, 'Moon', 493, 2343234343.4, 'Boring name', true, 1);
INSERT INTO public.moon VALUES (3, 'Phobos', 493, 2343234343.4, NULL, true, 4);
INSERT INTO public.moon VALUES (4, 'Deimoss', 493, 2343234343.4, NULL, true, 4);
INSERT INTO public.moon VALUES (5, 'Europa', 493, 2343234343.4, NULL, true, 5);
INSERT INTO public.moon VALUES (6, 'Io', 493, 2343234343.4, NULL, true, 5);
INSERT INTO public.moon VALUES (7, 'Ganymede', 493, 2343234343.4, NULL, true, 5);
INSERT INTO public.moon VALUES (8, 'Callisto', 493, 2343234343.4, NULL, true, 5);
INSERT INTO public.moon VALUES (9, 'Thebe', 493, 2343234343.4, NULL, true, 5);
INSERT INTO public.moon VALUES (10, 'Metis', 493, 2343234343.4, NULL, true, 5);
INSERT INTO public.moon VALUES (11, 'Kallichore', 493, 2343234343.4, NULL, true, 5);
INSERT INTO public.moon VALUES (12, 'Autonoe', 493, 2343234343.4, NULL, true, 5);
INSERT INTO public.moon VALUES (13, 'Europie', 493, 2343234343.4, NULL, true, 5);
INSERT INTO public.moon VALUES (14, 'Elara', 493, 2343234343.4, NULL, false, 5);
INSERT INTO public.moon VALUES (15, 'Thyone', 493, 2343234343.4, NULL, false, 5);
INSERT INTO public.moon VALUES (16, 'Iapetus', 493, 2343234343.4, NULL, false, 6);
INSERT INTO public.moon VALUES (17, 'Titan', 493, 2343234343.4, NULL, true, 6);
INSERT INTO public.moon VALUES (18, 'Hyperion', 493, 2343234343.4, NULL, false, 6);
INSERT INTO public.moon VALUES (19, 'Oberon', 493, 234323544343.4, NULL, false, 7);
INSERT INTO public.moon VALUES (20, 'Umbrel', 493, 234323544343.4, NULL, false, 7);
INSERT INTO public.moon VALUES (21, 'Puck', 493, 234323544343.4, NULL, false, 7);


--
-- Data for Name: passer; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.passer VALUES (1, 3, 'random');
INSERT INTO public.passer VALUES (2, 7, 'randomer');
INSERT INTO public.passer VALUES (3, 6, 'randomest');


--
-- Data for Name: planet; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.planet VALUES (1, 'earth', 6000, 0.0, 'Blue green bahl', true, 1);
INSERT INTO public.planet VALUES (2, 'mercury', 6000, 0.0, 'metal', true, 1);
INSERT INTO public.planet VALUES (3, 'venus', 6000, 0.0, 'women are from here', true, 1);
INSERT INTO public.planet VALUES (4, 'Mars', 6000, 0.0, 'WARRRRRRRRRRRRRRRRRRRRRRRR', true, 1);
INSERT INTO public.planet VALUES (5, 'Jupiter', 6000, 0.0, 'Giant', true, 1);
INSERT INTO public.planet VALUES (6, 'Saturn', 6000, 0.0, 'No time to waste time', true, 1);
INSERT INTO public.planet VALUES (7, 'Uranus', 6000, 0.0, ';)', true, 1);
INSERT INTO public.planet VALUES (8, 'Neptune', 12000, 234566.0, 'Water', true, 1);
INSERT INTO public.planet VALUES (9, 'Pluto', 120, 24566.0, 'I was demoted :(', true, 1);
INSERT INTO public.planet VALUES (10, 'Proxima Centauri b', 121222, 245666.0, 'Never heard pf me, right?', true, 4);
INSERT INTO public.planet VALUES (11, 'Proxima Centauri d', 121222, 245666.0, 'Never heard of me too, right?', true, 4);
INSERT INTO public.planet VALUES (12, 'Haumea', 121222, 245666.0, 'Charon', true, 1);
INSERT INTO public.planet VALUES (13, 'Makemake', 121222, 2450666.0, 'Double', true, 1);


--
-- Data for Name: star; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.star VALUES (1, 'Sun', 9000, 384000.0, 'yellow, yellow, yelloooooooooooooooooooooooow', true, 7);
INSERT INTO public.star VALUES (2, 'Alpha Centauri', 9000, 384000.0, 'Three in one', true, 7);
INSERT INTO public.star VALUES (3, 'Beta Centauri', 9000, 384000.0, 'I am better ;)', true, 7);
INSERT INTO public.star VALUES (4, 'Proxima centauri', 34000, 2354129860544321654.5, 'I am close :)', true, 7);
INSERT INTO public.star VALUES (5, 'titawin', 3000, 23541298605421654.5, NULL, false, 2);
INSERT INTO public.star VALUES (6, 'Adhil', 3000, 23541298605421654.5, NULL, false, 2);
INSERT INTO public.star VALUES (7, 'Almac', 3000, 23541298605421654.5, NULL, false, 2);
INSERT INTO public.star VALUES (8, 'Mirach', 3000, 23541298605421654.5, NULL, false, 2);


--
-- Name: galaxy_galaxy_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.galaxy_galaxy_id_seq', 11, true);


--
-- Name: moon_moon_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.moon_moon_seq', 21, true);


--
-- Name: passer_passer_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.passer_passer_id_seq', 3, true);


--
-- Name: planet_planet_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.planet_planet_id_seq', 13, true);


--
-- Name: star_star_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.star_star_id_seq', 8, true);


--
-- Name: galaxy galaxy_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.galaxy
    ADD CONSTRAINT galaxy_pkey PRIMARY KEY (galaxy_id);


--
-- Name: moon moon_name_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.moon
    ADD CONSTRAINT moon_name_key UNIQUE (name);


--
-- Name: moon moon_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.moon
    ADD CONSTRAINT moon_pkey PRIMARY KEY (moon_id);


--
-- Name: galaxy name; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.galaxy
    ADD CONSTRAINT name UNIQUE (name);


--
-- Name: passer passer_name_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.passer
    ADD CONSTRAINT passer_name_key UNIQUE (name);


--
-- Name: passer passer_passer_star_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.passer
    ADD CONSTRAINT passer_passer_star_key UNIQUE (passer_star);


--
-- Name: passer passer_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.passer
    ADD CONSTRAINT passer_pkey PRIMARY KEY (passer_id);


--
-- Name: planet planet_name_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planet
    ADD CONSTRAINT planet_name_key UNIQUE (name);


--
-- Name: planet planet_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planet
    ADD CONSTRAINT planet_pkey PRIMARY KEY (planet_id);


--
-- Name: star star_name_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star
    ADD CONSTRAINT star_name_key UNIQUE (name);


--
-- Name: star star_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star
    ADD CONSTRAINT star_pkey PRIMARY KEY (star_id);


--
-- Name: moon moon_star_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.moon
    ADD CONSTRAINT moon_star_id_fkey FOREIGN KEY (planet_id) REFERENCES public.planet(planet_id);


--
-- Name: planet planet_star_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planet
    ADD CONSTRAINT planet_star_id_fkey FOREIGN KEY (star_id) REFERENCES public.star(star_id);


--
-- Name: star star_parent_galaxy_fkey; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star
    ADD CONSTRAINT star_parent_galaxy_fkey FOREIGN KEY (galaxy_id) REFERENCES public.galaxy(galaxy_id);


--
-- PostgreSQL database dump complete
--

