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
-- Name: galaxy; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.galaxy (
    name character varying(30) NOT NULL,
    galaxy_id integer NOT NULL,
    number_of_planets integer NOT NULL,
    number_of_stars integer NOT NULL,
    radius_in_light_years numeric(8,1)
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
    name character varying(30) NOT NULL,
    planet_id integer NOT NULL,
    moon_id integer NOT NULL,
    color character varying(20) NOT NULL,
    state_id integer NOT NULL
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
-- Name: moon_planet_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.moon_planet_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.moon_planet_id_seq OWNER TO freecodecamp;

--
-- Name: moon_planet_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.moon_planet_id_seq OWNED BY public.moon.planet_id;


--
-- Name: moon_state_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.moon_state_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.moon_state_id_seq OWNER TO freecodecamp;

--
-- Name: moon_state_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.moon_state_id_seq OWNED BY public.moon.state_id;


--
-- Name: planet; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.planet (
    name character varying(30) NOT NULL,
    star_id integer NOT NULL,
    planet_id integer NOT NULL,
    color character varying(20) NOT NULL,
    state_id integer NOT NULL,
    life_traces_found boolean,
    can_humans_live_there boolean
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
-- Name: planet_star_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.planet_star_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.planet_star_id_seq OWNER TO freecodecamp;

--
-- Name: planet_star_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.planet_star_id_seq OWNED BY public.planet.star_id;


--
-- Name: planet_state_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.planet_state_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.planet_state_id_seq OWNER TO freecodecamp;

--
-- Name: planet_state_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.planet_state_id_seq OWNED BY public.planet.state_id;


--
-- Name: star; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.star (
    name character varying(30) NOT NULL,
    galaxy_id integer NOT NULL,
    star_id integer NOT NULL,
    color character varying(20) NOT NULL,
    state_id integer NOT NULL
);


ALTER TABLE public.star OWNER TO freecodecamp;

--
-- Name: star_galaxy_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.star_galaxy_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.star_galaxy_id_seq OWNER TO freecodecamp;

--
-- Name: star_galaxy_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.star_galaxy_id_seq OWNED BY public.star.galaxy_id;


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
-- Name: star_state_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.star_state_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.star_state_id_seq OWNER TO freecodecamp;

--
-- Name: star_state_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.star_state_id_seq OWNED BY public.star.state_id;


--
-- Name: state; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.state (
    name character varying(30) NOT NULL,
    state_id integer NOT NULL,
    description text
);


ALTER TABLE public.state OWNER TO freecodecamp;

--
-- Name: state_state_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.state_state_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.state_state_id_seq OWNER TO freecodecamp;

--
-- Name: state_state_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.state_state_id_seq OWNED BY public.state.state_id;


--
-- Name: galaxy galaxy_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.galaxy ALTER COLUMN galaxy_id SET DEFAULT nextval('public.galaxy_galaxy_id_seq'::regclass);


--
-- Name: moon planet_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.moon ALTER COLUMN planet_id SET DEFAULT nextval('public.moon_planet_id_seq'::regclass);


--
-- Name: moon moon_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.moon ALTER COLUMN moon_id SET DEFAULT nextval('public.moon_moon_id_seq'::regclass);


--
-- Name: moon state_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.moon ALTER COLUMN state_id SET DEFAULT nextval('public.moon_state_id_seq'::regclass);


--
-- Name: planet star_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planet ALTER COLUMN star_id SET DEFAULT nextval('public.planet_star_id_seq'::regclass);


--
-- Name: planet planet_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planet ALTER COLUMN planet_id SET DEFAULT nextval('public.planet_planet_id_seq'::regclass);


--
-- Name: planet state_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planet ALTER COLUMN state_id SET DEFAULT nextval('public.planet_state_id_seq'::regclass);


--
-- Name: star galaxy_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star ALTER COLUMN galaxy_id SET DEFAULT nextval('public.star_galaxy_id_seq'::regclass);


--
-- Name: star star_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star ALTER COLUMN star_id SET DEFAULT nextval('public.star_star_id_seq'::regclass);


--
-- Name: star state_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star ALTER COLUMN state_id SET DEFAULT nextval('public.star_state_id_seq'::regclass);


--
-- Name: state state_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.state ALTER COLUMN state_id SET DEFAULT nextval('public.state_state_id_seq'::regclass);


--
-- Data for Name: galaxy; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.galaxy VALUES ('Andromeda', 1, 10, 15, 220000.0);
INSERT INTO public.galaxy VALUES ('Milky Way', 2, 8, 12, 100000.0);
INSERT INTO public.galaxy VALUES ('Whirlpool', 3, 6, 10, 150000.0);
INSERT INTO public.galaxy VALUES ('Sombrero', 4, 12, 18, 130000.0);
INSERT INTO public.galaxy VALUES ('Triangulum', 5, 7, 9, 70000.0);
INSERT INTO public.galaxy VALUES ('Pinwheel', 6, 14, 20, 250000.0);
INSERT INTO public.galaxy VALUES ('Virgo', 7, 5, 7, 80000.0);
INSERT INTO public.galaxy VALUES ('Centaurus', 8, 6, 8, 60000.0);
INSERT INTO public.galaxy VALUES ('Cartwheel', 9, 3, 5, 95000.0);
INSERT INTO public.galaxy VALUES ('NGC 1300', 10, 4, 6, 120000.0);
INSERT INTO public.galaxy VALUES ('Messier 87', 11, 15, 20, 180000.0);
INSERT INTO public.galaxy VALUES ('NGC 224', 12, 13, 17, 150000.0);
INSERT INTO public.galaxy VALUES ('NGC 253', 13, 10, 12, 110000.0);
INSERT INTO public.galaxy VALUES ('NGC 5128', 14, 6, 8, 105000.0);
INSERT INTO public.galaxy VALUES ('NGC 6946', 15, 9, 14, 140000.0);
INSERT INTO public.galaxy VALUES ('NGC 4414', 16, 11, 14, 130000.0);
INSERT INTO public.galaxy VALUES ('NGC 5584', 17, 8, 10, 100000.0);
INSERT INTO public.galaxy VALUES ('NGC 3359', 18, 5, 7, 90000.0);
INSERT INTO public.galaxy VALUES ('NGC 4565', 19, 7, 9, 80000.0);
INSERT INTO public.galaxy VALUES ('NGC 2207', 20, 4, 6, 110000.0);


--
-- Data for Name: moon; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.moon VALUES ('Moon', 1, 1, 'White', 1);
INSERT INTO public.moon VALUES ('Phobos', 2, 2, 'Gray', 2);
INSERT INTO public.moon VALUES ('Deimos', 2, 3, 'Gray', 1);
INSERT INTO public.moon VALUES ('Titan', 3, 4, 'Yellow', 3);
INSERT INTO public.moon VALUES ('Ganymede', 4, 5, 'White', 2);
INSERT INTO public.moon VALUES ('Callisto', 5, 6, 'Gray', 1);
INSERT INTO public.moon VALUES ('Io', 6, 7, 'Brown', 3);
INSERT INTO public.moon VALUES ('Europa', 7, 8, 'White', 2);
INSERT INTO public.moon VALUES ('Triton', 8, 9, 'Blue', 1);
INSERT INTO public.moon VALUES ('Rhea', 9, 10, 'Gray', 3);
INSERT INTO public.moon VALUES ('Mimas', 10, 11, 'White', 1);
INSERT INTO public.moon VALUES ('Enceladus', 11, 12, 'White', 2);
INSERT INTO public.moon VALUES ('Miranda', 12, 13, 'Gray', 3);
INSERT INTO public.moon VALUES ('Ariel', 13, 14, 'Light Blue', 1);
INSERT INTO public.moon VALUES ('Umbriel', 14, 15, 'Light Blue', 2);
INSERT INTO public.moon VALUES ('Hyperion', 15, 16, 'Gray', 1);
INSERT INTO public.moon VALUES ('Phoebe', 16, 17, 'Gray', 2);
INSERT INTO public.moon VALUES ('Janus', 17, 18, 'Gray', 3);
INSERT INTO public.moon VALUES ('Pandora', 18, 19, 'Gray', 1);
INSERT INTO public.moon VALUES ('Titania', 19, 20, 'Light Blue', 2);


--
-- Data for Name: planet; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.planet VALUES ('Earth', 1, 1, 'Blue', 1, true, true);
INSERT INTO public.planet VALUES ('Mars', 2, 2, 'Red', 2, false, false);
INSERT INTO public.planet VALUES ('Venus', 3, 3, 'Yellow', 3, false, false);
INSERT INTO public.planet VALUES ('Jupiter', 4, 4, 'Orange', 1, false, false);
INSERT INTO public.planet VALUES ('Saturn', 5, 5, 'Yellow', 2, false, false);
INSERT INTO public.planet VALUES ('Mercury', 6, 6, 'Gray', 1, false, false);
INSERT INTO public.planet VALUES ('Neptune', 7, 7, 'Blue', 3, false, false);
INSERT INTO public.planet VALUES ('Uranus', 8, 8, 'Light Blue', 1, false, false);
INSERT INTO public.planet VALUES ('Pluto', 9, 9, 'Gray', 2, false, false);
INSERT INTO public.planet VALUES ('Io', 10, 10, 'Brown', 3, false, false);
INSERT INTO public.planet VALUES ('Europa', 11, 11, 'White', 1, true, true);
INSERT INTO public.planet VALUES ('Titan', 12, 12, 'Yellow', 2, true, false);
INSERT INTO public.planet VALUES ('Callisto', 13, 13, 'Gray', 1, false, false);
INSERT INTO public.planet VALUES ('Ganymede', 14, 14, 'White', 2, false, false);
INSERT INTO public.planet VALUES ('Enceladus', 15, 15, 'White', 1, true, false);
INSERT INTO public.planet VALUES ('Triton', 16, 16, 'Blue', 3, false, false);
INSERT INTO public.planet VALUES ('Charon', 17, 17, 'Gray', 2, false, false);
INSERT INTO public.planet VALUES ('Ceres', 18, 18, 'Gray', 1, false, false);
INSERT INTO public.planet VALUES ('Oberon', 19, 19, 'Light Blue', 2, false, false);
INSERT INTO public.planet VALUES ('Titania', 20, 20, 'Light Blue', 3, false, false);


--
-- Data for Name: star; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.star VALUES ('Alpha Centauri', 1, 1, 'Yellow', 1);
INSERT INTO public.star VALUES ('Betelgeuse', 2, 2, 'Red', 2);
INSERT INTO public.star VALUES ('Sirius', 3, 3, 'Blue', 1);
INSERT INTO public.star VALUES ('Proxima Centauri', 4, 4, 'Red', 3);
INSERT INTO public.star VALUES ('Sun', 2, 5, 'Yellow', 1);
INSERT INTO public.star VALUES ('Alpha Lyrae', 1, 6, 'Blue', 1);
INSERT INTO public.star VALUES ('Rigel', 5, 7, 'Blue', 2);
INSERT INTO public.star VALUES ('Polaris', 6, 8, 'White', 1);
INSERT INTO public.star VALUES ('Vega', 7, 9, 'Blue', 3);
INSERT INTO public.star VALUES ('Arcturus', 8, 10, 'Orange', 1);
INSERT INTO public.star VALUES ('Capella', 9, 11, 'Yellow', 2);
INSERT INTO public.star VALUES ('Aldebaran', 10, 12, 'Red', 3);
INSERT INTO public.star VALUES ('Altair', 11, 13, 'White', 1);
INSERT INTO public.star VALUES ('Antares', 12, 14, 'Red', 2);
INSERT INTO public.star VALUES ('Canopus', 13, 15, 'Yellow', 3);
INSERT INTO public.star VALUES ('Spica', 14, 16, 'Blue', 1);
INSERT INTO public.star VALUES ('Castor', 15, 17, 'White', 2);
INSERT INTO public.star VALUES ('Regulus', 16, 18, 'Blue', 1);
INSERT INTO public.star VALUES ('Sirius B', 17, 19, 'White', 3);
INSERT INTO public.star VALUES ('Beta Centauri', 18, 20, 'Yellow', 1);


--
-- Data for Name: state; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.state VALUES ('Stable', 1, 'This state indicates the object is stable and well-formed.');
INSERT INTO public.state VALUES ('Active', 2, 'This state indicates the object is undergoing changes, e.g., stars going through fusion.');
INSERT INTO public.state VALUES ('Inactive', 3, 'This state indicates the object is no longer active or in a dormant state.');


--
-- Name: galaxy_galaxy_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.galaxy_galaxy_id_seq', 20, true);


--
-- Name: moon_moon_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.moon_moon_id_seq', 20, true);


--
-- Name: moon_planet_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.moon_planet_id_seq', 1, false);


--
-- Name: moon_state_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.moon_state_id_seq', 1, false);


--
-- Name: planet_planet_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.planet_planet_id_seq', 20, true);


--
-- Name: planet_star_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.planet_star_id_seq', 1, false);


--
-- Name: planet_state_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.planet_state_id_seq', 1, false);


--
-- Name: star_galaxy_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.star_galaxy_id_seq', 1, false);


--
-- Name: star_star_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.star_star_id_seq', 20, true);


--
-- Name: star_state_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.star_state_id_seq', 1, false);


--
-- Name: state_state_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.state_state_id_seq', 3, true);


--
-- Name: galaxy galaxy_name_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.galaxy
    ADD CONSTRAINT galaxy_name_key UNIQUE (name);


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
-- Name: state state_name_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.state
    ADD CONSTRAINT state_name_key UNIQUE (name);


--
-- Name: state state_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.state
    ADD CONSTRAINT state_pkey PRIMARY KEY (state_id);


--
-- Name: moon moon_planet_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.moon
    ADD CONSTRAINT moon_planet_id_fkey FOREIGN KEY (planet_id) REFERENCES public.planet(planet_id);


--
-- Name: moon moon_state_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.moon
    ADD CONSTRAINT moon_state_id_fkey FOREIGN KEY (state_id) REFERENCES public.state(state_id);


--
-- Name: planet planet_star_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planet
    ADD CONSTRAINT planet_star_id_fkey FOREIGN KEY (star_id) REFERENCES public.star(star_id);


--
-- Name: planet planet_state_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planet
    ADD CONSTRAINT planet_state_id_fkey FOREIGN KEY (state_id) REFERENCES public.state(state_id);


--
-- Name: star star_galaxy_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star
    ADD CONSTRAINT star_galaxy_id_fkey FOREIGN KEY (galaxy_id) REFERENCES public.galaxy(galaxy_id);


--
-- Name: star star_state_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star
    ADD CONSTRAINT star_state_id_fkey FOREIGN KEY (state_id) REFERENCES public.state(state_id);


--
-- PostgreSQL database dump complete
--

