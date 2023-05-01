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
-- Name: city; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.city (
    city_id integer NOT NULL,
    population numeric,
    name character varying(30) NOT NULL
);


ALTER TABLE public.city OWNER TO freecodecamp;

--
-- Name: city_city_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.city_city_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.city_city_id_seq OWNER TO freecodecamp;

--
-- Name: city_city_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.city_city_id_seq OWNED BY public.city.city_id;


--
-- Name: galaxy; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.galaxy (
    galaxy_id integer NOT NULL,
    name character varying(30) NOT NULL,
    size_m_km integer,
    color text,
    has_life boolean
);


ALTER TABLE public.galaxy OWNER TO freecodecamp;

--
-- Name: galaxy_g_pkey_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.galaxy_g_pkey_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.galaxy_g_pkey_seq OWNER TO freecodecamp;

--
-- Name: galaxy_g_pkey_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.galaxy_g_pkey_seq OWNED BY public.galaxy.galaxy_id;


--
-- Name: moon; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.moon (
    moon_id integer NOT NULL,
    name character varying(30) NOT NULL,
    size_m_km integer,
    color text,
    has_life boolean,
    planet_id integer
);


ALTER TABLE public.moon OWNER TO freecodecamp;

--
-- Name: moon_m_pkey_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.moon_m_pkey_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.moon_m_pkey_seq OWNER TO freecodecamp;

--
-- Name: moon_m_pkey_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.moon_m_pkey_seq OWNED BY public.moon.moon_id;


--
-- Name: planet; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.planet (
    planet_id integer NOT NULL,
    name character varying(30) NOT NULL,
    size_m_km integer,
    color text,
    has_life boolean,
    star_id integer
);


ALTER TABLE public.planet OWNER TO freecodecamp;

--
-- Name: planet_p_pkey_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.planet_p_pkey_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.planet_p_pkey_seq OWNER TO freecodecamp;

--
-- Name: planet_p_pkey_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.planet_p_pkey_seq OWNED BY public.planet.planet_id;


--
-- Name: star; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.star (
    star_id integer NOT NULL,
    name character varying(30) NOT NULL,
    size_m_km integer,
    color text,
    has_life boolean,
    galaxy_id integer
);


ALTER TABLE public.star OWNER TO freecodecamp;

--
-- Name: star_s_pkey_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.star_s_pkey_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.star_s_pkey_seq OWNER TO freecodecamp;

--
-- Name: star_s_pkey_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.star_s_pkey_seq OWNED BY public.star.star_id;


--
-- Name: city city_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.city ALTER COLUMN city_id SET DEFAULT nextval('public.city_city_id_seq'::regclass);


--
-- Name: galaxy galaxy_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.galaxy ALTER COLUMN galaxy_id SET DEFAULT nextval('public.galaxy_g_pkey_seq'::regclass);


--
-- Name: moon moon_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.moon ALTER COLUMN moon_id SET DEFAULT nextval('public.moon_m_pkey_seq'::regclass);


--
-- Name: planet planet_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planet ALTER COLUMN planet_id SET DEFAULT nextval('public.planet_p_pkey_seq'::regclass);


--
-- Name: star star_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star ALTER COLUMN star_id SET DEFAULT nextval('public.star_s_pkey_seq'::regclass);


--
-- Data for Name: city; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.city VALUES (1, 10, 'City 1');
INSERT INTO public.city VALUES (2, 20, 'City 2');
INSERT INTO public.city VALUES (3, 30, 'City 3');


--
-- Data for Name: galaxy; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.galaxy VALUES (1, 'Galaxy 1', 100000, 'Black', true);
INSERT INTO public.galaxy VALUES (2, 'Galaxy 2', 200000, 'Black', false);
INSERT INTO public.galaxy VALUES (3, 'Galaxy 3', 3000000, 'Black', false);
INSERT INTO public.galaxy VALUES (4, 'Galaxy 4', 4000000, 'Blue', false);
INSERT INTO public.galaxy VALUES (5, 'Galaxy 5', 2000000, 'Black', true);
INSERT INTO public.galaxy VALUES (6, 'Galaxy 6', 40000000, 'Black', true);


--
-- Data for Name: moon; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.moon VALUES (1, 'Moon 1', 10, 'White', true, 1);
INSERT INTO public.moon VALUES (2, 'Moon 2', 20, 'White', false, 2);
INSERT INTO public.moon VALUES (3, 'Moon 3', 30, 'Black', false, 3);
INSERT INTO public.moon VALUES (4, 'Moon 4', 40, 'White', false, 4);
INSERT INTO public.moon VALUES (5, 'Moon 5', 20, 'White', true, 5);
INSERT INTO public.moon VALUES (6, 'Moon 6', 40, 'White', true, 6);
INSERT INTO public.moon VALUES (7, 'Moon 7', 10, 'White', true, 7);
INSERT INTO public.moon VALUES (8, 'Moon 8', 20, 'White', false, 8);
INSERT INTO public.moon VALUES (9, 'Moon 9', 30, 'Black', false, 9);
INSERT INTO public.moon VALUES (10, 'Moon 10', 40, 'White', false, 10);
INSERT INTO public.moon VALUES (11, 'Moon 11', 20, 'White', true, 11);
INSERT INTO public.moon VALUES (12, 'Moon 12', 40, 'White', true, 12);
INSERT INTO public.moon VALUES (13, 'Moon 13', 10, 'White', true, 1);
INSERT INTO public.moon VALUES (14, 'Moon 14', 20, 'White', false, 1);
INSERT INTO public.moon VALUES (15, 'Moon 15', 30, 'Black', false, 1);
INSERT INTO public.moon VALUES (16, 'Moon 16', 40, 'White', false, 1);
INSERT INTO public.moon VALUES (17, 'Moon 17', 20, 'White', true, 1);
INSERT INTO public.moon VALUES (18, 'Moon 18', 40, 'White', true, 1);
INSERT INTO public.moon VALUES (19, 'Moon 19', 10, 'White', true, 1);
INSERT INTO public.moon VALUES (20, 'Moon 20', 20, 'White', false, 1);
INSERT INTO public.moon VALUES (21, 'Moon 21', 30, 'Black', false, 1);
INSERT INTO public.moon VALUES (22, 'Moon 22', 40, 'White', false, 1);
INSERT INTO public.moon VALUES (23, 'Moon 23', 20, 'White', true, 1);
INSERT INTO public.moon VALUES (24, 'Moon 24', 40, 'White', true, 1);


--
-- Data for Name: planet; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.planet VALUES (1, 'Plent 1', 100, 'Brown', true, 1);
INSERT INTO public.planet VALUES (2, 'Planet 2', 200, 'Teal', false, 2);
INSERT INTO public.planet VALUES (3, 'Planet 3', 300, 'Brown', false, 3);
INSERT INTO public.planet VALUES (4, 'Planet 4', 400, 'Blue', false, 4);
INSERT INTO public.planet VALUES (5, 'Planet 5', 200, 'Blue', true, 5);
INSERT INTO public.planet VALUES (6, 'Planet 6', 400, 'Green', true, 6);
INSERT INTO public.planet VALUES (7, 'Planet 7', 100, 'Brown', true, 1);
INSERT INTO public.planet VALUES (8, 'Planet 8', 200, 'Teal', false, 1);
INSERT INTO public.planet VALUES (9, 'Planet 9', 300, 'Brown', false, 1);
INSERT INTO public.planet VALUES (10, 'Planet 10', 400, 'Blue', false, 1);
INSERT INTO public.planet VALUES (11, 'Planet 11', 200, 'Blue', true, 1);
INSERT INTO public.planet VALUES (12, 'Planet 12', 400, 'Green', true, 1);


--
-- Data for Name: star; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.star VALUES (1, 'Star 1', 1000, 'Yellow', true, 1);
INSERT INTO public.star VALUES (2, 'Star 2', 2000, 'Red', false, 2);
INSERT INTO public.star VALUES (3, 'Star 3', 3000, 'Green', false, 3);
INSERT INTO public.star VALUES (4, 'Star 4', 4000, 'Red', false, 4);
INSERT INTO public.star VALUES (5, 'Star 5', 2000, 'Blue', true, 5);
INSERT INTO public.star VALUES (6, 'Star 6', 4000, 'Orange', true, 6);


--
-- Name: city_city_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.city_city_id_seq', 3, true);


--
-- Name: galaxy_g_pkey_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.galaxy_g_pkey_seq', 6, true);


--
-- Name: moon_m_pkey_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.moon_m_pkey_seq', 24, true);


--
-- Name: planet_p_pkey_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.planet_p_pkey_seq', 12, true);


--
-- Name: star_s_pkey_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.star_s_pkey_seq', 7, true);


--
-- Name: city city_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.city
    ADD CONSTRAINT city_pkey PRIMARY KEY (city_id);


--
-- Name: galaxy galaxy_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.galaxy
    ADD CONSTRAINT galaxy_pkey PRIMARY KEY (galaxy_id);


--
-- Name: moon moon_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.moon
    ADD CONSTRAINT moon_pkey PRIMARY KEY (moon_id);


--
-- Name: city name_unq; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.city
    ADD CONSTRAINT name_unq UNIQUE (name, city_id);


--
-- Name: galaxy name_unq_galaxy; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.galaxy
    ADD CONSTRAINT name_unq_galaxy UNIQUE (name, galaxy_id);


--
-- Name: moon name_unq_moon; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.moon
    ADD CONSTRAINT name_unq_moon UNIQUE (name, moon_id);


--
-- Name: planet name_unq_planet; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planet
    ADD CONSTRAINT name_unq_planet UNIQUE (name, planet_id);


--
-- Name: star name_unq_star; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star
    ADD CONSTRAINT name_unq_star UNIQUE (name, star_id);


--
-- Name: planet planet_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planet
    ADD CONSTRAINT planet_pkey PRIMARY KEY (planet_id);


--
-- Name: star star_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star
    ADD CONSTRAINT star_pkey PRIMARY KEY (star_id);


--
-- Name: star fk_galaxy; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star
    ADD CONSTRAINT fk_galaxy FOREIGN KEY (galaxy_id) REFERENCES public.galaxy(galaxy_id);


--
-- Name: moon fk_planet; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.moon
    ADD CONSTRAINT fk_planet FOREIGN KEY (planet_id) REFERENCES public.planet(planet_id);


--
-- Name: planet fk_star; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planet
    ADD CONSTRAINT fk_star FOREIGN KEY (star_id) REFERENCES public.star(star_id);


--
-- PostgreSQL database dump complete
--

