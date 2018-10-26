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
-- Name: orders; Type: TABLE; Schema: public; Owner: hduser
--

CREATE TABLE orders (
    id integer NOT NULL,
    date date,
    amount numeric,
    customer_id integer
);


ALTER TABLE orders OWNER TO hduser;

--
-- Data for Name: orders; Type: TABLE DATA; Schema: public; Owner: hduser
--

COPY orders (id, date, amount, customer_id) FROM stdin;
1	2018-05-04	50000	3
2	2018-03-19	90000	1
3	2018-06-01	40000	2
4	2018-08-01	540000	4
5	2018-10-17	740000	2
6	2018-01-04	80000	1
7	2018-07-04	999000	3
8	2018-02-25	44000	4
9	2018-04-25	723000	4
10	2018-12-08	723000	2
\.


--
-- Name: orders orders_pkey; Type: CONSTRAINT; Schema: public; Owner: hduser
--

ALTER TABLE ONLY orders
    ADD CONSTRAINT orders_pkey PRIMARY KEY (id);


--
-- PostgreSQL database dump complete
--

