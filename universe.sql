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
-- Name: alien; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.alien (
    alien_id integer NOT NULL,
    name character varying(20) NOT NULL,
    color character varying(20) NOT NULL
);


ALTER TABLE public.alien OWNER TO freecodecamp;

--
-- Name: aliens_alien_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.aliens_alien_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.aliens_alien_id_seq OWNER TO freecodecamp;

--
-- Name: aliens_alien_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.aliens_alien_id_seq OWNED BY public.alien.alien_id;


--
-- Name: galaxy; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.galaxy (
    galaxy_id integer NOT NULL,
    name character varying(20) NOT NULL,
    raio_anos_luz numeric(5,3) NOT NULL,
    type character varying(20),
    age_in_billion integer
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
    name character varying(20) NOT NULL,
    raio_em_km integer,
    planet_id integer NOT NULL,
    color character varying(20)
);


ALTER TABLE public.moon OWNER TO freecodecamp;

--
-- Name: moon_moon_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.moon_moon_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.moon_moon_id_seq OWNER TO freecodecamp;

--
-- Name: moon_moon_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.moon_moon_id_seq OWNED BY public.moon.moon_id;


--
-- Name: planet; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.planet (
    planet_id integer NOT NULL,
    name character varying(20) NOT NULL,
    raio_em_km integer,
    ismidget boolean,
    ishabitable boolean,
    description text,
    star_id integer NOT NULL
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
    name character varying(20) NOT NULL,
    color character varying(20) NOT NULL,
    age_in_bilions integer,
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
-- Name: alien alien_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.alien ALTER COLUMN alien_id SET DEFAULT nextval('public.aliens_alien_id_seq'::regclass);


--
-- Name: galaxy galaxy_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.galaxy ALTER COLUMN galaxy_id SET DEFAULT nextval('public.galaxy_galaxy_id_seq'::regclass);


--
-- Name: moon moon_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.moon ALTER COLUMN moon_id SET DEFAULT nextval('public.moon_moon_id_seq'::regclass);


--
-- Name: planet planet_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planet ALTER COLUMN planet_id SET DEFAULT nextval('public.planet_planet_id_seq'::regclass);


--
-- Name: star star_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star ALTER COLUMN star_id SET DEFAULT nextval('public.star_star_id_seq'::regclass);


--
-- Data for Name: alien; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.alien VALUES (1, 'alien1', 'red');
INSERT INTO public.alien VALUES (2, 'alien2', 'blue');
INSERT INTO public.alien VALUES (3, 'alien3', 'green');


--
-- Data for Name: galaxy; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.galaxy VALUES (1, 'galaxy1', 23.000, 'type1', 232);
INSERT INTO public.galaxy VALUES (2, 'galaxy2', 32.000, 'type2', 323);
INSERT INTO public.galaxy VALUES (3, 'galaxy3', 11.000, 'type3', 123);
INSERT INTO public.galaxy VALUES (4, 'galaxy4', 12.000, 'type2', 11);
INSERT INTO public.galaxy VALUES (5, 'galaxy5', 12.000, 'type2', 11);
INSERT INTO public.galaxy VALUES (6, 'galaxy6', 32.000, 'type3', 111);


--
-- Data for Name: moon; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.moon VALUES (1, 'moon1', 12, 1, 'red');
INSERT INTO public.moon VALUES (2, 'moon2', 12, 2, 'red');
INSERT INTO public.moon VALUES (3, 'moon3', 12, 3, 'yellow');
INSERT INTO public.moon VALUES (4, 'moon4', 12, 4, 'red');
INSERT INTO public.moon VALUES (5, 'moon5', 12, 1, 'red');
INSERT INTO public.moon VALUES (6, 'moon6', 12, 2, 'green');
INSERT INTO public.moon VALUES (7, 'moon7', 12, 2, 'red');
INSERT INTO public.moon VALUES (8, 'moon8', 12, 3, 'yellow');
INSERT INTO public.moon VALUES (9, 'moon9', 12, 5, 'red');
INSERT INTO public.moon VALUES (10, 'moon10', 12, 1, 'green');
INSERT INTO public.moon VALUES (11, 'moon11', 12, 4, 'red');
INSERT INTO public.moon VALUES (12, 'moon12', 12, 7, 'red');
INSERT INTO public.moon VALUES (13, 'moon13', 12, 8, 'yellow');
INSERT INTO public.moon VALUES (14, 'moon14', 12, 1, 'red');
INSERT INTO public.moon VALUES (15, 'moon15', 12, 11, 'green');
INSERT INTO public.moon VALUES (16, 'moon16', 12, 12, 'red');
INSERT INTO public.moon VALUES (17, 'moon17', 12, 15, 'yellow');
INSERT INTO public.moon VALUES (18, 'moon18', 12, 11, 'red');
INSERT INTO public.moon VALUES (19, 'moon19', 12, 4, 'green');
INSERT INTO public.moon VALUES (20, 'moon20', 12, 11, 'red');


--
-- Data for Name: planet; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.planet VALUES (1, 'planet1', 23, true, false, 'this is a planet', 1);
INSERT INTO public.planet VALUES (2, 'planet2', 12, true, false, 'this is a planet', 2);
INSERT INTO public.planet VALUES (3, 'planet3', 2, true, false, 'this is a planet', 3);
INSERT INTO public.planet VALUES (4, 'planet4', 53, true, false, 'this is a planet', 2);
INSERT INTO public.planet VALUES (5, 'planet5', 13, true, false, 'this is a planet', 1);
INSERT INTO public.planet VALUES (6, 'planet6', 1, true, false, 'this is a planet', 3);
INSERT INTO public.planet VALUES (7, 'planet7', 43, true, false, 'this is a planet', 2);
INSERT INTO public.planet VALUES (8, 'planet8', 63, true, false, 'this is a planet', 1);
INSERT INTO public.planet VALUES (9, 'planet9', 3, true, false, 'this is a planet', 2);
INSERT INTO public.planet VALUES (10, 'planet10', 13, true, false, 'this is a planet', 3);
INSERT INTO public.planet VALUES (11, 'planet11', 83, true, false, 'this is a planet', 1);
INSERT INTO public.planet VALUES (12, 'planet12', 23, true, false, 'this is a planet', 2);
INSERT INTO public.planet VALUES (13, 'planet13', 28, true, false, 'this is a planet', 3);
INSERT INTO public.planet VALUES (14, 'planet14', 43, true, false, 'this is a planet', 2);
INSERT INTO public.planet VALUES (15, 'planet15', 93, true, false, 'this is a planet', 3);
INSERT INTO public.planet VALUES (16, 'planet16', 23, true, false, 'this is a planet', 1);
INSERT INTO public.planet VALUES (17, 'planet17', 33, true, false, 'this is a planet', 1);
INSERT INTO public.planet VALUES (18, 'planet18', 43, true, false, 'this is a planet', 2);
INSERT INTO public.planet VALUES (19, 'planet19', 23, true, false, 'this is a planet', 3);
INSERT INTO public.planet VALUES (20, 'planet20', 23, true, false, 'this is a planet', 1);


--
-- Data for Name: star; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.star VALUES (1, 'star1', 'red', 13, 1);
INSERT INTO public.star VALUES (2, 'star2', 'blue', 23, 1);
INSERT INTO public.star VALUES (3, 'star3', 'green', 32, 2);
INSERT INTO public.star VALUES (4, 'star4', 'red', 2, 1);
INSERT INTO public.star VALUES (5, 'star5', 'blue', 12, 3);
INSERT INTO public.star VALUES (6, 'star6', 'purple', 41, 1);


--
-- Name: aliens_alien_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.aliens_alien_id_seq', 3, true);


--
-- Name: galaxy_galaxy_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.galaxy_galaxy_id_seq', 6, true);


--
-- Name: moon_moon_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.moon_moon_id_seq', 20, true);


--
-- Name: planet_planet_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.planet_planet_id_seq', 20, true);


--
-- Name: star_star_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.star_star_id_seq', 6, true);


--
-- Name: alien aliens_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.alien
    ADD CONSTRAINT aliens_pkey PRIMARY KEY (alien_id);


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
-- Name: alien unique_alien_name; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.alien
    ADD CONSTRAINT unique_alien_name UNIQUE (name);


--
-- Name: galaxy unique_galaxy_name; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.galaxy
    ADD CONSTRAINT unique_galaxy_name UNIQUE (name);


--
-- Name: moon unique_moon_name; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.moon
    ADD CONSTRAINT unique_moon_name UNIQUE (name);


--
-- Name: planet unique_planet_name; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planet
    ADD CONSTRAINT unique_planet_name UNIQUE (name);


--
-- Name: star unique_star_name; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star
    ADD CONSTRAINT unique_star_name UNIQUE (name);


--
-- Name: moon fk_moon_planet; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.moon
    ADD CONSTRAINT fk_moon_planet FOREIGN KEY (planet_id) REFERENCES public.planet(planet_id);


--
-- Name: planet fk_planet_star; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planet
    ADD CONSTRAINT fk_planet_star FOREIGN KEY (star_id) REFERENCES public.star(star_id);


--
-- Name: star fk_star_galaxy; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star
    ADD CONSTRAINT fk_star_galaxy FOREIGN KEY (galaxy_id) REFERENCES public.galaxy(galaxy_id);


--
-- PostgreSQL database dump complete
--

