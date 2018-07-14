--
-- PostgreSQL database dump
--

-- Dumped from database version 9.6.4
-- Dumped by pg_dump version 9.6.4

SET statement_timeout = 0;
SET lock_timeout = 0;
SET idle_in_transaction_session_timeout = 0;
SET client_encoding = 'UTF8';
SET standard_conforming_strings = on;
SET check_function_bodies = false;
SET client_min_messages = warning;
SET row_security = off;

--
-- Name: plpgsql; Type: EXTENSION; Schema: -; Owner: 
--

CREATE EXTENSION IF NOT EXISTS plpgsql WITH SCHEMA pg_catalog;


--
-- Name: EXTENSION plpgsql; Type: COMMENT; Schema: -; Owner: 
--

COMMENT ON EXTENSION plpgsql IS 'PL/pgSQL procedural language';


SET search_path = public, pg_catalog;

SET default_tablespace = '';

SET default_with_oids = false;

--
-- Name: sayari; Type: TABLE; Schema: public; Owner: hduser
--

CREATE TABLE sayari (
    name character(20),
    gravity double precision,
    has_rings boolean
);


ALTER TABLE sayari OWNER TO hduser;

--
-- Data for Name: sayari; Type: TABLE DATA; Schema: public; Owner: hduser
--

COPY sayari (name, gravity, has_rings) FROM stdin;
Earth               	9.80000000000000071	f
Venus               	8.90000000000000036	f
Mercury             	3.70000000000000018	f
Mars                	3.70000000000000018	f
Jupiter             	23.1000000000000014	t
Saturn              	9	t
Uranus              	8.69999999999999929	t
Neptune             	11	t
Pluto               	0.699999999999999956	f
\.


--
-- PostgreSQL database dump complete
--

