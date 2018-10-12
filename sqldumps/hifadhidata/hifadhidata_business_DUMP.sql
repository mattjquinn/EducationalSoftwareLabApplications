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
-- Name: business; Type: TABLE; Schema: public; Owner: hduser
--

CREATE TABLE business (
    id integer NOT NULL,
    name character varying(100),
    address character varying(300),
    city character varying(50),
    industry_type character varying(100),
    total_value integer,
    is_private boolean
);


ALTER TABLE business OWNER TO hduser;

--
-- Data for Name: business; Type: TABLE DATA; Schema: public; Owner: hduser
--

COPY business (id, name, address, city, industry_type, total_value, is_private) FROM stdin;
1	Nguo Safi Sana	888 Nyerere Road	Dar es Salaam	Fashion	800000000	t
2	Premium Web Design Agency	932 Medard Avenue	Mwanza	Technology	312000000	t
3	Tanzanite Exploration Co.	435 Enterprise Boulevard	Dodoma	Minerals	402000000	f
4	Viongozi Consulting	12032 Leadership Way	Dodoma	Consulting	755000000	f
5	Tumaini Automotive Co.	732 Faraja Road	Dar es Salaam	Automotive	900000000	t
6	Nchiyetu Aerospace, Inc.	4334 Rocketi Road	Tanga	Aerospace	544000000	t
\.


--
-- Name: business business_pkey; Type: CONSTRAINT; Schema: public; Owner: hduser
--

ALTER TABLE ONLY business
    ADD CONSTRAINT business_pkey PRIMARY KEY (id);


--
-- PostgreSQL database dump complete
--

