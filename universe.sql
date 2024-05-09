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
    galaxy_id integer NOT NULL,
    name character varying(50) NOT NULL,
    has_life boolean,
    age_in_millions_of_years numeric(6,1),
    size integer,
    distance_from_earth integer,
    description text
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
    name character varying(50) NOT NULL,
    status boolean,
    size integer NOT NULL,
    distance_from_earth integer,
    description text,
    planet_id integer
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
-- Name: more_info; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.more_info (
    more_info_id integer NOT NULL,
    name character varying(50) NOT NULL,
    star_id integer,
    planet_id integer,
    moon_id integer
);


ALTER TABLE public.more_info OWNER TO freecodecamp;

--
-- Name: more_info_more_info_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.more_info_more_info_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.more_info_more_info_id_seq OWNER TO freecodecamp;

--
-- Name: more_info_more_info_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.more_info_more_info_id_seq OWNED BY public.more_info.more_info_id;


--
-- Name: planet; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.planet (
    planet_id integer NOT NULL,
    name character varying(50) NOT NULL,
    status boolean,
    size integer,
    distance_from_earth integer,
    description text,
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
    has_life boolean,
    age_in_millions_of_years numeric(6,1),
    size integer,
    distance_from_earth integer,
    description text,
    galaxy_id integer
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

ALTER TABLE ONLY public.moon ALTER COLUMN moon_id SET DEFAULT nextval('public.moon_moon_id_seq'::regclass);


--
-- Name: more_info more_info_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.more_info ALTER COLUMN more_info_id SET DEFAULT nextval('public.more_info_more_info_id_seq'::regclass);


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

INSERT INTO public.galaxy VALUES (1, 'Milky Way Galaxy', false, 13600.0, 100000, NULL, 'The Milky Way is a barred spiral galaxy, containing a central bar-shaped structure composed of stars. It has four major spiral arms and is home to our solar system, including Earth.');
INSERT INTO public.galaxy VALUES (2, 'Andromeda Galaxy (M31)', false, 10000.0, 220000, 2537000, 'Andromeda is a spiral galaxy much like the Milky Way and is the nearest spiral galaxy to our own. It is approaching the Milky Way and is expected to collide with it in about 4 billion years.');
INSERT INTO public.galaxy VALUES (3, 'Triangulum Galaxy (M33)', false, 8000.0, 60000, 2730000, 'Also known as the Pinwheel Galaxy, Triangulum is a spiral galaxy located relatively close to the Milky Way and Andromeda galaxies.');
INSERT INTO public.galaxy VALUES (4, 'Whirlpool Galaxy (M51)', false, 500.0, 60000, 23000000, 'M51 is an interacting grand-design spiral galaxy located in the constellation Canes Venatici.');
INSERT INTO public.galaxy VALUES (5, 'Sombrero Galaxy (M104)', false, 8000.0, 50000, 28000000, 'The Sombrero Galaxy is an unbarred spiral galaxy located in the constellation Virgo.');
INSERT INTO public.galaxy VALUES (6, 'Large Magellanic Cloud (LMC)', false, 1500.0, 14000, 163000, 'The LMC is a satellite galaxy of the Milky Way and is one of the closest galaxies to ours. It is irregular in shape and is gravitationally bound to the Milky Way.');


--
-- Data for Name: moon; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.moon VALUES (1, 'Luna', true, 3475, 384400, 'Luna, commonly known as the Moon, is Earth''s only natural satellite.', 3);
INSERT INTO public.moon VALUES (2, 'Phobos', false, 22, 9378, 'Phobos is the larger and closer of the two natural satellites of Mars.', 4);
INSERT INTO public.moon VALUES (3, 'Deimos', false, 12, 23460, 'Deimos is the smaller and outermost of the two natural satellites of Mars.', 4);
INSERT INTO public.moon VALUES (4, 'Ganymede', true, 5268, 1070400, 'Ganymede is the largest moon of Jupiter and in the Solar System.', 5);
INSERT INTO public.moon VALUES (5, 'Callisto', false, 4821, 1882700, 'Callisto is the second-largest moon of Jupiter.', 5);
INSERT INTO public.moon VALUES (6, 'Europa', true, 3121, 671100, 'Europa is the smallest of the four Galilean moons orbiting Jupiter.', 5);
INSERT INTO public.moon VALUES (7, 'Io', false, 3643, 421800, 'Io is the innermost of the four Galilean moons of Jupiter.', 5);
INSERT INTO public.moon VALUES (8, 'Titan', true, 5150, 1257060, 'Titan is the largest moon of Saturn and the second-largest natural satellite in the Solar System.', 6);
INSERT INTO public.moon VALUES (9, 'Enceladus', true, 504, 238020, 'Enceladus is the sixth-largest moon of Saturn.', 6);
INSERT INTO public.moon VALUES (10, 'Mimas', false, 396, 185520, 'Mimas is a moon of Saturn and the smallest astronomical body that is known to be rounded in shape because of self-gravitation.', 6);
INSERT INTO public.moon VALUES (11, 'Triton', true, 2706, 354760, 'Triton is the largest natural satellite of Neptune.', 8);
INSERT INTO public.moon VALUES (12, 'Proteus', false, 424, 117647, 'Proteus is the second-largest moon of Neptune.', 8);
INSERT INTO public.moon VALUES (13, 'Charon', true, 1212, 19591, 'Charon is the largest of the five known natural satellites of Pluto.', 9);
INSERT INTO public.moon VALUES (14, 'Nix', false, 49, 44430, 'Nix is a natural satellite of Pluto.', 9);
INSERT INTO public.moon VALUES (15, 'Hydra', false, 55, 44490, 'Hydra is a natural satellite of Pluto.', 9);
INSERT INTO public.moon VALUES (16, 'Ariel', false, 1162, 191000, 'Ariel is the fourth-largest of the 27 known moons of Uranus.', 7);
INSERT INTO public.moon VALUES (17, 'Umbriel', false, 1169, 266000, 'Umbriel is the third-largest and second most-massive of the moons of Uranus.', 7);
INSERT INTO public.moon VALUES (18, 'Miranda', false, 471, 129000, 'Miranda is the smallest and innermost of Uranus''s five round satellites.', 7);
INSERT INTO public.moon VALUES (19, 'Dione', false, 1123, 377400, 'Dione is the fifteenth of Saturn''s 62 moons.', 6);
INSERT INTO public.moon VALUES (20, 'Hyperion', false, 270, 1481000, 'Hyperion is one of Saturn''s moons and is known for its irregular shape and chaotic rotation.', 6);


--
-- Data for Name: more_info; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.more_info VALUES (1, 'Sun additional data', 1, NULL, NULL);
INSERT INTO public.more_info VALUES (2, 'Earth additional data', 3, NULL, NULL);
INSERT INTO public.more_info VALUES (3, 'Luna additional data', 1, NULL, NULL);


--
-- Data for Name: planet; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.planet VALUES (1, 'Mercury', true, 4879, 9197, 'Mercury is the smallest and innermost planet in the Solar System.', 1);
INSERT INTO public.planet VALUES (2, 'Venus', false, 12104, 4140, 'Venus is the second planet from the Sun and is often referred to as Earth’s "sister planet".', 1);
INSERT INTO public.planet VALUES (3, 'Earth', true, 12742, 0, 'Earth is the third planet from the Sun and the only astronomical object known to harbor life.', 1);
INSERT INTO public.planet VALUES (4, 'Mars', false, 6779, 7834, 'Mars is the fourth planet from the Sun and is often called the "Red Planet" because of its reddish appearance.', 1);
INSERT INTO public.planet VALUES (5, 'Jupiter', false, 139822, 62873, 'Jupiter is the fifth planet from the Sun and the largest in the Solar System.', 1);
INSERT INTO public.planet VALUES (6, 'Saturn', false, 116464, 127500, 'Saturn is the sixth planet from the Sun and the second-largest in the Solar System, after Jupiter.', 1);
INSERT INTO public.planet VALUES (7, 'Uranus', false, 50724, 272395, 'Uranus is the seventh planet from the Sun.', 1);
INSERT INTO public.planet VALUES (8, 'Neptune', false, 49244, 435140, 'Neptune is the eighth and farthest known Solar planet.', 1);
INSERT INTO public.planet VALUES (9, 'Kepler-452b', true, 30874, 140, 'Kepler-452b is an exoplanet orbiting the Sun-like star Kepler-452.', 2);
INSERT INTO public.planet VALUES (10, 'Gliese 581c', true, 12104, 2016, 'Gliese 581c is an exoplanet orbiting the red dwarf star Gliese 581.', 3);
INSERT INTO public.planet VALUES (11, 'HD 189733b', false, 71000, 6, 'HD 189733b is an exoplanet located approximately 63 light-years away.', 4);
INSERT INTO public.planet VALUES (12, 'WASP-12b', false, 149500, 85, 'WASP-12b is a hot Jupiter exoplanet orbiting the star WASP-12.', 5);


--
-- Data for Name: star; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.star VALUES (1, 'Sun', true, 4500.0, 1, 0, 'The Sun is the star at the center of the Solar System.', 1);
INSERT INTO public.star VALUES (2, 'Alpha Centauri A', false, 6000.0, 1, 4, 'Alpha Centauri A is the primary component of the Alpha Centauri binary star system.', 1);
INSERT INTO public.star VALUES (3, 'Sirius', false, 250.0, 2, 9, 'Sirius is the brightest star in the night sky and is a binary star system.', 1);
INSERT INTO public.star VALUES (4, 'Betelgeuse', false, 8000.0, 700, 643, 'Betelgeuse is a red supergiant star in the constellation of Orion.', 1);
INSERT INTO public.star VALUES (5, 'Vega', false, 455.0, 2, 25, 'Vega is the brightest star in the constellation of Lyra.', 1);
INSERT INTO public.star VALUES (6, 'Proxima Centauri', false, 1200.0, 0, 4, 'Proxima Centauri is a red dwarf star and the closest known star to the Sun.', 1);


--
-- Name: galaxy_galaxy_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.galaxy_galaxy_id_seq', 6, true);


--
-- Name: moon_moon_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.moon_moon_id_seq', 20, true);


--
-- Name: more_info_more_info_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.more_info_more_info_id_seq', 3, true);


--
-- Name: planet_planet_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.planet_planet_id_seq', 12, true);


--
-- Name: star_star_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.star_star_id_seq', 6, true);


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
-- Name: more_info more_info_name_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.more_info
    ADD CONSTRAINT more_info_name_key UNIQUE (name);


--
-- Name: more_info more_info_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.more_info
    ADD CONSTRAINT more_info_pkey PRIMARY KEY (more_info_id);


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
-- Name: moon moon_planet_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.moon
    ADD CONSTRAINT moon_planet_id_fkey FOREIGN KEY (planet_id) REFERENCES public.planet(planet_id);


--
-- Name: more_info more_info_moon_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.more_info
    ADD CONSTRAINT more_info_moon_id_fkey FOREIGN KEY (moon_id) REFERENCES public.moon(moon_id);


--
-- Name: more_info more_info_planet_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.more_info
    ADD CONSTRAINT more_info_planet_id_fkey FOREIGN KEY (planet_id) REFERENCES public.planet(planet_id);


--
-- Name: more_info more_info_star_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.more_info
    ADD CONSTRAINT more_info_star_id_fkey FOREIGN KEY (star_id) REFERENCES public.star(star_id);


--
-- Name: planet planet_star_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planet
    ADD CONSTRAINT planet_star_id_fkey FOREIGN KEY (star_id) REFERENCES public.star(star_id);


--
-- Name: star star_galaxy_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star
    ADD CONSTRAINT star_galaxy_id_fkey FOREIGN KEY (galaxy_id) REFERENCES public.galaxy(galaxy_id);


--
-- PostgreSQL database dump complete
--

