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

SET search_path = public, pg_catalog;

SET default_tablespace = '';

SET default_with_oids = false;

--
-- Name: wateja; Type: TABLE; Schema: public; Owner: hduser
--

CREATE TABLE wateja (
    id integer NOT NULL,
    name character varying(100),
    address character varying(300),
    city character varying(50),
    email character varying(100)
);


ALTER TABLE wateja OWNER TO hduser;

--
-- Data for Name: wateja; Type: TABLE DATA; Schema: public; Owner: hduser
--

COPY wateja (id, name, address, city, email) FROM stdin;
1	Fred	832 Uhuru Road	Dar es Salaam	fred@medard.com
2	Endesh	9013 Rais Street	Dodoma	endesh@gogo.com
3	Aubrien	340 Nyerere Lane	Karatu	aubrien@francis.com
4	Hosiana	129 Kiongozi Barabara	Arusha	hosiana@henry.com
\.


--
-- Name: wateja wateja_pkey; Type: CONSTRAINT; Schema: public; Owner: hduser
--

ALTER TABLE ONLY wateja
    ADD CONSTRAINT wateja_pkey PRIMARY KEY (id);


--
-- PostgreSQL database dump complete
--

