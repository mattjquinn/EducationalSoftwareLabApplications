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
-- Name: wafanyabiashara; Type: TABLE; Schema: public; Owner: hduser
--

CREATE TABLE wafanyabiashara (
    id integer NOT NULL,
    name character varying(50),
    sex character(1),
    start_date date,
    business_id integer
);


ALTER TABLE wafanyabiashara OWNER TO hduser;

--
-- Data for Name: wafanyabiashara; Type: TABLE DATA; Schema: public; Owner: hduser
--

COPY wafanyabiashara (id, name, sex, start_date, business_id) FROM stdin;
1	Endesh	F	2017-04-25	3
2	Dorcus	F	2017-07-19	3
3	Fred	M	2018-01-01	2
4	Frank	M	2018-03-11	3
5	Anitha	F	2018-08-22	4
6	Hosiana	F	2016-02-05	4
7	Aubrien	M	2016-12-09	4
8	Upendo	F	2017-07-19	5
9	Yvonne	F	2015-04-01	2
10	James	M	2017-05-29	4
11	Meshack	M	2018-06-13	5
12	Christopher	M	2017-02-18	4
13	Jackson	M	2016-07-10	1
14	Edwin	M	2015-09-16	2
15	Aurelia	F	2014-03-20	6
16	Eliana	F	2017-10-30	6
17	Salum	M	2017-05-30	2
18	Sandra	F	2017-02-28	6
19	Irene	F	2016-02-28	4
20	Christiner	F	2015-03-01	3
21	Faraja	F	2015-03-11	5
22	Uta	F	2015-03-17	1
23	Abdallah	M	2017-05-11	3
\.


--
-- Name: wafanyabiashara wafanyabiashara_pkey; Type: CONSTRAINT; Schema: public; Owner: hduser
--

ALTER TABLE ONLY wafanyabiashara
    ADD CONSTRAINT wafanyabiashara_pkey PRIMARY KEY (id);


--
-- PostgreSQL database dump complete
--

