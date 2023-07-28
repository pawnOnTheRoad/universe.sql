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
-- Name: celestial_relation; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.celestial_relation (
    celestial_relation_id integer NOT NULL,
    galaxy_id integer NOT NULL,
    star_id integer NOT NULL,
    planet_id integer,
    name character varying(30)
);


ALTER TABLE public.celestial_relation OWNER TO freecodecamp;

--
-- Name: celestial_relation_relation_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.celestial_relation_relation_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.celestial_relation_relation_id_seq OWNER TO freecodecamp;

--
-- Name: celestial_relation_relation_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.celestial_relation_relation_id_seq OWNED BY public.celestial_relation.celestial_relation_id;


--
-- Name: galaxy; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.galaxy (
    galaxy_id integer NOT NULL,
    name character varying(30) NOT NULL,
    galaxy_types character varying(30),
    active boolean,
    age_in_millions_years integer
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
    planet_id integer,
    diameter_in_km integer,
    area_in_km2 integer
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
    name character varying(30) NOT NULL,
    planet_type character varying(30),
    age_in_millions_of_years numeric,
    description text,
    has_moon boolean,
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
    distance_from_earth_in_light_years numeric,
    galaxy_id integer,
    age_in_million_years integer
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
-- Name: celestial_relation celestial_relation_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.celestial_relation ALTER COLUMN celestial_relation_id SET DEFAULT nextval('public.celestial_relation_relation_id_
seq'::regclass);


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
-- Data for Name: celestial_relation; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.celestial_relation VALUES (1, 2, 1, 1, NULL);
INSERT INTO public.celestial_relation VALUES (2, 2, 1, 2, NULL);
INSERT INTO public.celestial_relation VALUES (3, 2, 1, 3, NULL);


--
-- Data for Name: galaxy; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.galaxy VALUES (1, 'Pinwheel', 'spiral', NULL, NULL);
INSERT INTO public.galaxy VALUES (3, 'Centaurus A', 'Elliptical', true, 12000);
INSERT INTO public.galaxy VALUES (4, 'Large Magellanic Cloud', 'Irregular', true, 3000);
INSERT INTO public.galaxy VALUES (5, 'Andromeda', 'Spiral', true, 10000);
INSERT INTO public.galaxy VALUES (6, 'Triangulum', 'Spiral', true, 8000);
INSERT INTO public.galaxy VALUES (2, 'Milky Way', 'spiral', false, 13000);


--
-- Data for Name: moon; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.moon VALUES (1, 'Moon', 3, 3474, 38000000);
INSERT INTO public.moon VALUES (2, 'Phobos', 4, 27, 2299);
INSERT INTO public.moon VALUES (3, 'Deimos', 4, 15, 565);
INSERT INTO public.moon VALUES (4, 'Ganymede', 5, 5268, 87000000);
INSERT INTO public.moon VALUES (5, 'Callisto', 5, 5268, 73000000);
INSERT INTO public.moon VALUES (6, 'Lo', 5, 3643, 41000000);
INSERT INTO public.moon VALUES (7, 'Europa', 5, 3122, 30000000);
INSERT INTO public.moon VALUES (8, 'Titan', 6, 5150, 83000000);
INSERT INTO public.moon VALUES (9, 'Enceladus', 6, 504, 801000);
INSERT INTO public.moon VALUES (10, 'Triton', 8, 2706, 23018000);
INSERT INTO public.moon VALUES (11, 'Rhea', 6, 1527, 7371000);
INSERT INTO public.moon VALUES (12, 'Dione', 6, 1123, 4800000);
INSERT INTO public.moon VALUES (13, 'Tethys', 6, 1066, 3600000);
INSERT INTO public.moon VALUES (14, 'Lapetus', 6, 1470, 14100000);
INSERT INTO public.moon VALUES (15, 'Miranda', 7, 472, 700000);
INSERT INTO public.moon VALUES (16, 'Ariel', 7, 1159, 6600000);
INSERT INTO public.moon VALUES (17, 'Umbriel', 7, 1169, 7400000);
INSERT INTO public.moon VALUES (18, 'Titania', 7, 1578, 8200000);
INSERT INTO public.moon VALUES (19, 'Oberon', 7, 1523, 7000000);
INSERT INTO public.moon VALUES (21, 'Charon', 9, 1212, 4580000);


--
-- Data for Name: planet; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.planet VALUES (1, 'Mercury', 'Terrestrial', 4500, 'Closest planet to the sun', false, 1);
INSERT INTO public.planet VALUES (2, 'VENUS', 'Terrestrial', 4503, 'The second planet from the Sun', false, 1);
INSERT INTO public.planet VALUES (3, 'Earth', 'Terrestrial', 4543, 'Our planet', true, 1);
INSERT INTO public.planet VALUES (4, 'Mars', 'Terrestrial', 4603, 'Known as the red planet', true, 1);
INSERT INTO public.planet VALUES (5, 'Jupiter', 'Gas giant', 4503, 'The largest planet in our solar system', true, 1);
INSERT INTO public.planet VALUES (6, 'Saturn', 'Gas giant', 4503, 'Famous for its ring system', true, 1);
INSERT INTO public.planet VALUES (7, 'Uranus', 'Ice giant', 4503, 'Has a unique tilted rotational axis', true, 1);
INSERT INTO public.planet VALUES (8, 'Neptune', 'Ice giant', 4503, 'Known for his brilliant blue color', true, 1);
INSERT INTO public.planet VALUES (9, 'Pluton', 'Dwarf planet', 4600, 'Is located in the Kuiper belt', true, 1);
INSERT INTO public.planet VALUES (10, 'Eris', 'Dwarf planet', 4503, 'Is larger than Pluto', true, 1);
INSERT INTO public.planet VALUES (11, 'Ceres', 'Dwarf planet', 4600, 'The largest object in the asteroid belt between Mars and Jupiter', 
false, 1);
INSERT INTO public.planet VALUES (12, 'Humea', 'Dwarf planet', 4503, 'Is located beyond Neptune', true, 1);


--
-- Data for Name: star; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.star VALUES (1, 'Sun', 0.00016057, 2, 4600);
INSERT INTO public.star VALUES (2, 'Sirius', 8.611, 2, 230);
INSERT INTO public.star VALUES (3, 'Alpheratz', 96.87, 5, 60);
INSERT INTO public.star VALUES (4, 'Pistol', 26.090, 2, 4003);
INSERT INTO public.star VALUES (5, 'Eta Carinae', 7502, 2, 3);
INSERT INTO public.star VALUES (6, 'VY Canis Majoris', 4892, 2, 8206);


--
-- Name: celestial_relation_relation_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.celestial_relation_relation_id_seq', 3, true);


--
-- Name: galaxy_galaxy_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.galaxy_galaxy_id_seq', 6, true);


--
-- Name: moon_moon_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.moon_moon_id_seq', 21, true);


--
-- Name: planet_planet_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.planet_planet_id_seq', 12, true);


--
-- Name: star_star_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.star_star_id_seq', 6, true);


--
-- Name: celestial_relation celestial_relation_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.celestial_relation
    ADD CONSTRAINT celestial_relation_pkey PRIMARY KEY (celestial_relation_id);


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
-- Name: star name_unique_constrains; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star
    ADD CONSTRAINT name_unique_constrains UNIQUE (name);


--
-- Name: galaxy name_unique_constraint; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.galaxy
    ADD CONSTRAINT name_unique_constraint UNIQUE (name);


--
-- Name: celestial_relation planet_id_unique; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.celestial_relation
    ADD CONSTRAINT planet_id_unique UNIQUE (planet_id);


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
-- Name: star star_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star
    ADD CONSTRAINT star_pkey PRIMARY KEY (star_id);


--
-- Name: celestial_relation celestial_relation_galaxy_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.celestial_relation
    ADD CONSTRAINT celestial_relation_galaxy_id_fkey FOREIGN KEY (galaxy_id) REFERENCES public.galaxy(galaxy_id);


--
-- Name: celestial_relation celestial_relation_planet_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.celestial_relation
    ADD CONSTRAINT celestial_relation_planet_id_fkey FOREIGN KEY (planet_id) REFERENCES public.planet(planet_id);


--
-- Name: celestial_relation celestial_relation_star_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.celestial_relation
    ADD CONSTRAINT celestial_relation_star_id_fkey FOREIGN KEY (star_id) REFERENCES public.star(star_id);


--
-- Name: star galaxy_id_fk; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star
    ADD CONSTRAINT galaxy_id_fk FOREIGN KEY (galaxy_id) REFERENCES public.galaxy(galaxy_id);


--
-- Name: moon moon_planet_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.moon
    ADD CONSTRAINT moon_planet_id_fkey FOREIGN KEY (planet_id) REFERENCES public.planet(planet_id);


--
-- Name: planet star_id_fk; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planet
    ADD CONSTRAINT star_id_fk FOREIGN KEY (star_id) REFERENCES public.star(star_id);


--
-- PostgreSQL database dump complete
--