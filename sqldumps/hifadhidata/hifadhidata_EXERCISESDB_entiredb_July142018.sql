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
-- Name: tsss_necta_results_2017; Type: TABLE; Schema: public; Owner: hduser
--

CREATE TABLE tsss_necta_results_2017 (
    cno integer NOT NULL,
    name character varying(100),
    sex character(1),
    civ character(1),
    hist character(1),
    geo character(1),
    kiswahili character(1),
    english character(1),
    physics character(1),
    chem character(1),
    bio character(1),
    ict character(1),
    math character(1),
    points integer,
    division integer
);


ALTER TABLE tsss_necta_results_2017 OWNER TO hduser;

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
-- Data for Name: tsss_necta_results_2017; Type: TABLE DATA; Schema: public; Owner: hduser
--

COPY tsss_necta_results_2017 (cno, name, sex, civ, hist, geo, kiswahili, english, physics, chem, bio, ict, math, points, division) FROM stdin;
1	ELIZABETH JACOB SULLE	F	A	C	C	B	A	C	A	A	D	C	12	1
2	ELIZABETH THEOPHILI RAPHAEL	F	C	D	C	B	A	C	C	A	D	B	15	1
3	GLORY PETER METELE	F	A	C	B	B	A	C	C	A	C	C	13	1
4	GLORY SHEDRACK MWARABUI	F	A	B	B	B	A	C	A	A	C	B	10	1
5	HAWA JUMA RASHID	F	C	C	A	A	A	B	A	B	D	B	10	1
6	ILHAN MAHAMUDU SHILI	F	A	B	A	B	A	A	A	A	B	A	7	1
7	IRENE GABRIEL JOSEPH	F	B	D	C	C	A	C	C	C	D	D	18	2
8	JEYRINE JOHN SULEIMAN	F	A	C	B	B	A	C	B	A	D	B	11	1
9	LILIAN PETER METELE	F	B	B	B	A	A	B	B	A	C	B	11	1
10	MAGDALENA PETER DUWE	F	B	D	C	C	A	F	C	C	F	D	19	2
11	MAGRETH KAFURU JOSEPH	F	B	B	A	A	A	B	A	A	C	B	9	1
12	NAOMI JUMA ELISAMIA	F	C	C	B	B	A	C	A	A	C	A	11	1
13	NAOMI STEPHANO MZIRAY	F	D	F	D	D	B	F	D	C	F	D	25	3
14	NEEMA PAULO SHAURI	F	C	C	B	B	A	C	A	B	D	A	12	1
15	NIPAELY ISRAEL NASIELY	F	C	C	C	C	A	C	A	D	C	C	17	1
16	NICE MOLLEL LEMBRISE	F	A	C	A	B	A	B	A	A	C	A	8	1
17	NIWAELY NASIELY ISRAEL	F	A	C	B	B	A	C	B	B	C	B	12	1
18	PHILOTEA GABRIEL TLUWAY	F	C	A	B	A	A	B	B	A	C	B	10	1
19	SAUMU ABBAS KAYANDA	F	B	D	B	B	A	C	C	B	C	D	15	1
20	TUNUKIA FREDRICK OLESYAITI	F	B	C	A	B	A	D	C	C	C	C	15	1
21	VERONICA BERNARD FANUEL	F	B	B	B	A	A	C	A	A	D	B	10	1
22	ABDUL SIMON AMSI	M	C	C	C	B	A	C	B	C	C	C	17	1
23	ADIEL CHARLES GIDORI	M	D	B	C	C	A	C	B	B	D	D	16	1
24	ALBERT HERMAN JORRAM	M	B	C	A	C	A	C	C	A	D	C	14	1
25	BRIAN JOHN ADAYO	M	A	B	A	B	A	A	A	A	B	A	7	1
26	DANIEL ELIBARIKI LAISANGAI	M	A	C	B	B	A	C	B	B	C	C	13	1
27	DICKSON PAUL HHANDO	M	A	B	A	A	A	A	A	A	C	A	7	1
28	EMMANUEL AMOS DAWI	M	B	B	B	C	A	C	A	A	C	A	10	1
29	ESAU YOHANA TLUWAY	M	C	D	C	C	A	D	C	C	D	D	20	2
30	FIDELIS JOAKIM MAKIYA	M	A	A	A	B	A	A	A	A	C	A	7	1
31	FRANK LAZARO NNKO	M	C	D	C	D	A	D	D	C	F	F	22	3
32	FRANK PAULO LUCIANI	M	A	C	A	C	A	B	A	A	C	B	9	1
33	FREDRICK FELIX MACHA	M	A	C	B	B	A	C	B	A	C	A	10	1
34	GABRIEL DAMIAN GABRIEL	M	A	B	A	A	A	B	A	A	C	B	8	1
35	GEORGE NYAKANGARA MBOGO	M	B	C	B	C	A	C	B	B	C	C	15	1
36	GEORGE RASHID ELISAMIA	M	A	C	A	C	A	B	B	A	C	B	10	1
37	GODLOVE KASTULI SEBASTIAN	M	A	B	A	A	A	A	A	A	C	A	7	1
38	ISMAIL HASSAN RAMADHAN	M	B	C	A	C	A	B	A	A	C	A	9	1
39	JOSEPHAT NATHANIEL JOHN	M	B	C	B	C	A	C	A	B	C	D	14	1
40	KELVIN HERRY ALFRED	M	A	B	B	C	A	C	C	A	C	C	13	1
41	NASABA ABUBAKAR SULLE	M	B	B	C	C	A	C	A	A	C	B	12	1
42	ROBERTO CARLOS ANDREA	M	B	B	B	C	A	C	B	A	C	B	12	1
43	RODLUCK RAPHAEL ISRAEL	M	B	A	C	C	A	C	C	C	D	D	16	1
44	RONALDO HIPPOLITUS CYPRIAN	M	A	C	B	B	A	B	B	A	C	A	10	1
45	SEBASTIAN NIONE KAILI	M	A	A	A	B	A	A	A	A	C	A	7	1
46	SEVERIN DOMINICK TLUWAY	M	B	C	C	C	A	C	B	C	C	C	17	1
47	SUDI TAMIMU KIWALE	M	A	C	A	C	A	C	A	A	C	B	10	1
48	ZILPIN ZAKAYO SULLE	M	B	C	B	B	A	B	B	A	C	C	12	1
\.


--
-- Name: tsss_necta_results_2017 tsss_necta_results_2017_pkey; Type: CONSTRAINT; Schema: public; Owner: hduser
--

ALTER TABLE ONLY tsss_necta_results_2017
    ADD CONSTRAINT tsss_necta_results_2017_pkey PRIMARY KEY (cno);


--
-- PostgreSQL database dump complete
--

