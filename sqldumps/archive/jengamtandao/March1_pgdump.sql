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
-- Name: auth_group; Type: TABLE; Schema: public; Owner: jmuser
--

CREATE TABLE auth_group (
    id integer NOT NULL,
    name character varying(80) NOT NULL
);


ALTER TABLE auth_group OWNER TO jmuser;

--
-- Name: auth_group_id_seq; Type: SEQUENCE; Schema: public; Owner: jmuser
--

CREATE SEQUENCE auth_group_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE auth_group_id_seq OWNER TO jmuser;

--
-- Name: auth_group_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: jmuser
--

ALTER SEQUENCE auth_group_id_seq OWNED BY auth_group.id;


--
-- Name: auth_group_permissions; Type: TABLE; Schema: public; Owner: jmuser
--

CREATE TABLE auth_group_permissions (
    id integer NOT NULL,
    group_id integer NOT NULL,
    permission_id integer NOT NULL
);


ALTER TABLE auth_group_permissions OWNER TO jmuser;

--
-- Name: auth_group_permissions_id_seq; Type: SEQUENCE; Schema: public; Owner: jmuser
--

CREATE SEQUENCE auth_group_permissions_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE auth_group_permissions_id_seq OWNER TO jmuser;

--
-- Name: auth_group_permissions_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: jmuser
--

ALTER SEQUENCE auth_group_permissions_id_seq OWNED BY auth_group_permissions.id;


--
-- Name: auth_permission; Type: TABLE; Schema: public; Owner: jmuser
--

CREATE TABLE auth_permission (
    id integer NOT NULL,
    name character varying(255) NOT NULL,
    content_type_id integer NOT NULL,
    codename character varying(100) NOT NULL
);


ALTER TABLE auth_permission OWNER TO jmuser;

--
-- Name: auth_permission_id_seq; Type: SEQUENCE; Schema: public; Owner: jmuser
--

CREATE SEQUENCE auth_permission_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE auth_permission_id_seq OWNER TO jmuser;

--
-- Name: auth_permission_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: jmuser
--

ALTER SEQUENCE auth_permission_id_seq OWNED BY auth_permission.id;


--
-- Name: auth_user; Type: TABLE; Schema: public; Owner: jmuser
--

CREATE TABLE auth_user (
    id integer NOT NULL,
    password character varying(128) NOT NULL,
    last_login timestamp with time zone,
    is_superuser boolean NOT NULL,
    username character varying(150) NOT NULL,
    first_name character varying(30) NOT NULL,
    last_name character varying(30) NOT NULL,
    email character varying(254) NOT NULL,
    is_staff boolean NOT NULL,
    is_active boolean NOT NULL,
    date_joined timestamp with time zone NOT NULL
);


ALTER TABLE auth_user OWNER TO jmuser;

--
-- Name: auth_user_groups; Type: TABLE; Schema: public; Owner: jmuser
--

CREATE TABLE auth_user_groups (
    id integer NOT NULL,
    user_id integer NOT NULL,
    group_id integer NOT NULL
);


ALTER TABLE auth_user_groups OWNER TO jmuser;

--
-- Name: auth_user_groups_id_seq; Type: SEQUENCE; Schema: public; Owner: jmuser
--

CREATE SEQUENCE auth_user_groups_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE auth_user_groups_id_seq OWNER TO jmuser;

--
-- Name: auth_user_groups_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: jmuser
--

ALTER SEQUENCE auth_user_groups_id_seq OWNED BY auth_user_groups.id;


--
-- Name: auth_user_id_seq; Type: SEQUENCE; Schema: public; Owner: jmuser
--

CREATE SEQUENCE auth_user_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE auth_user_id_seq OWNER TO jmuser;

--
-- Name: auth_user_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: jmuser
--

ALTER SEQUENCE auth_user_id_seq OWNED BY auth_user.id;


--
-- Name: auth_user_user_permissions; Type: TABLE; Schema: public; Owner: jmuser
--

CREATE TABLE auth_user_user_permissions (
    id integer NOT NULL,
    user_id integer NOT NULL,
    permission_id integer NOT NULL
);


ALTER TABLE auth_user_user_permissions OWNER TO jmuser;

--
-- Name: auth_user_user_permissions_id_seq; Type: SEQUENCE; Schema: public; Owner: jmuser
--

CREATE SEQUENCE auth_user_user_permissions_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE auth_user_user_permissions_id_seq OWNER TO jmuser;

--
-- Name: auth_user_user_permissions_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: jmuser
--

ALTER SEQUENCE auth_user_user_permissions_id_seq OWNED BY auth_user_user_permissions.id;


--
-- Name: django_admin_log; Type: TABLE; Schema: public; Owner: jmuser
--

CREATE TABLE django_admin_log (
    id integer NOT NULL,
    action_time timestamp with time zone NOT NULL,
    object_id text,
    object_repr character varying(200) NOT NULL,
    action_flag smallint NOT NULL,
    change_message text NOT NULL,
    content_type_id integer,
    user_id integer NOT NULL,
    CONSTRAINT django_admin_log_action_flag_check CHECK ((action_flag >= 0))
);


ALTER TABLE django_admin_log OWNER TO jmuser;

--
-- Name: django_admin_log_id_seq; Type: SEQUENCE; Schema: public; Owner: jmuser
--

CREATE SEQUENCE django_admin_log_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE django_admin_log_id_seq OWNER TO jmuser;

--
-- Name: django_admin_log_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: jmuser
--

ALTER SEQUENCE django_admin_log_id_seq OWNED BY django_admin_log.id;


--
-- Name: django_content_type; Type: TABLE; Schema: public; Owner: jmuser
--

CREATE TABLE django_content_type (
    id integer NOT NULL,
    app_label character varying(100) NOT NULL,
    model character varying(100) NOT NULL
);


ALTER TABLE django_content_type OWNER TO jmuser;

--
-- Name: django_content_type_id_seq; Type: SEQUENCE; Schema: public; Owner: jmuser
--

CREATE SEQUENCE django_content_type_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE django_content_type_id_seq OWNER TO jmuser;

--
-- Name: django_content_type_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: jmuser
--

ALTER SEQUENCE django_content_type_id_seq OWNED BY django_content_type.id;


--
-- Name: django_migrations; Type: TABLE; Schema: public; Owner: jmuser
--

CREATE TABLE django_migrations (
    id integer NOT NULL,
    app character varying(255) NOT NULL,
    name character varying(255) NOT NULL,
    applied timestamp with time zone NOT NULL
);


ALTER TABLE django_migrations OWNER TO jmuser;

--
-- Name: django_migrations_id_seq; Type: SEQUENCE; Schema: public; Owner: jmuser
--

CREATE SEQUENCE django_migrations_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE django_migrations_id_seq OWNER TO jmuser;

--
-- Name: django_migrations_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: jmuser
--

ALTER SEQUENCE django_migrations_id_seq OWNED BY django_migrations.id;


--
-- Name: django_session; Type: TABLE; Schema: public; Owner: jmuser
--

CREATE TABLE django_session (
    session_key character varying(40) NOT NULL,
    session_data text NOT NULL,
    expire_date timestamp with time zone NOT NULL
);


ALTER TABLE django_session OWNER TO jmuser;

--
-- Name: main_accesswhitelist; Type: TABLE; Schema: public; Owner: jmuser
--

CREATE TABLE main_accesswhitelist (
    id integer NOT NULL,
    form integer NOT NULL,
    stream character varying(1) NOT NULL
);


ALTER TABLE main_accesswhitelist OWNER TO jmuser;

--
-- Name: main_accesswhitelist_id_seq; Type: SEQUENCE; Schema: public; Owner: jmuser
--

CREATE SEQUENCE main_accesswhitelist_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE main_accesswhitelist_id_seq OWNER TO jmuser;

--
-- Name: main_accesswhitelist_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: jmuser
--

ALTER SEQUENCE main_accesswhitelist_id_seq OWNED BY main_accesswhitelist.id;


--
-- Name: main_problem; Type: TABLE; Schema: public; Owner: jmuser
--

CREATE TABLE main_problem (
    id integer NOT NULL,
    name character varying(100) NOT NULL,
    goal_code text NOT NULL,
    initial_code text NOT NULL,
    level integer NOT NULL
);


ALTER TABLE main_problem OWNER TO jmuser;

--
-- Name: main_problem_id_seq; Type: SEQUENCE; Schema: public; Owner: jmuser
--

CREATE SEQUENCE main_problem_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE main_problem_id_seq OWNER TO jmuser;

--
-- Name: main_problem_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: jmuser
--

ALTER SEQUENCE main_problem_id_seq OWNED BY main_problem.id;


--
-- Name: main_progress; Type: TABLE; Schema: public; Owner: jmuser
--

CREATE TABLE main_progress (
    id integer NOT NULL,
    latest_submission text NOT NULL,
    started_dtstamp timestamp with time zone NOT NULL,
    passed_dtstamp timestamp with time zone,
    problem_id_id integer NOT NULL,
    student_id_id integer NOT NULL,
    passed boolean NOT NULL
);


ALTER TABLE main_progress OWNER TO jmuser;

--
-- Name: main_progress_id_seq; Type: SEQUENCE; Schema: public; Owner: jmuser
--

CREATE SEQUENCE main_progress_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE main_progress_id_seq OWNER TO jmuser;

--
-- Name: main_progress_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: jmuser
--

ALTER SEQUENCE main_progress_id_seq OWNED BY main_progress.id;


--
-- Name: main_student; Type: TABLE; Schema: public; Owner: jmuser
--

CREATE TABLE main_student (
    id integer NOT NULL,
    name character varying(50) NOT NULL,
    form integer NOT NULL,
    gender character varying(1) NOT NULL,
    total_pass_percent integer NOT NULL,
    stream character varying(1) NOT NULL,
    total_first_solves_in_stream integer NOT NULL,
    bonus_first_solves_in_stream integer NOT NULL,
    bonus_pass_percent integer NOT NULL,
    motivation_index integer NOT NULL
);


ALTER TABLE main_student OWNER TO jmuser;

--
-- Name: main_student_id_seq; Type: SEQUENCE; Schema: public; Owner: jmuser
--

CREATE SEQUENCE main_student_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE main_student_id_seq OWNER TO jmuser;

--
-- Name: main_student_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: jmuser
--

ALTER SEQUENCE main_student_id_seq OWNED BY main_student.id;


--
-- Name: auth_group id; Type: DEFAULT; Schema: public; Owner: jmuser
--

ALTER TABLE ONLY auth_group ALTER COLUMN id SET DEFAULT nextval('auth_group_id_seq'::regclass);


--
-- Name: auth_group_permissions id; Type: DEFAULT; Schema: public; Owner: jmuser
--

ALTER TABLE ONLY auth_group_permissions ALTER COLUMN id SET DEFAULT nextval('auth_group_permissions_id_seq'::regclass);


--
-- Name: auth_permission id; Type: DEFAULT; Schema: public; Owner: jmuser
--

ALTER TABLE ONLY auth_permission ALTER COLUMN id SET DEFAULT nextval('auth_permission_id_seq'::regclass);


--
-- Name: auth_user id; Type: DEFAULT; Schema: public; Owner: jmuser
--

ALTER TABLE ONLY auth_user ALTER COLUMN id SET DEFAULT nextval('auth_user_id_seq'::regclass);


--
-- Name: auth_user_groups id; Type: DEFAULT; Schema: public; Owner: jmuser
--

ALTER TABLE ONLY auth_user_groups ALTER COLUMN id SET DEFAULT nextval('auth_user_groups_id_seq'::regclass);


--
-- Name: auth_user_user_permissions id; Type: DEFAULT; Schema: public; Owner: jmuser
--

ALTER TABLE ONLY auth_user_user_permissions ALTER COLUMN id SET DEFAULT nextval('auth_user_user_permissions_id_seq'::regclass);


--
-- Name: django_admin_log id; Type: DEFAULT; Schema: public; Owner: jmuser
--

ALTER TABLE ONLY django_admin_log ALTER COLUMN id SET DEFAULT nextval('django_admin_log_id_seq'::regclass);


--
-- Name: django_content_type id; Type: DEFAULT; Schema: public; Owner: jmuser
--

ALTER TABLE ONLY django_content_type ALTER COLUMN id SET DEFAULT nextval('django_content_type_id_seq'::regclass);


--
-- Name: django_migrations id; Type: DEFAULT; Schema: public; Owner: jmuser
--

ALTER TABLE ONLY django_migrations ALTER COLUMN id SET DEFAULT nextval('django_migrations_id_seq'::regclass);


--
-- Name: main_accesswhitelist id; Type: DEFAULT; Schema: public; Owner: jmuser
--

ALTER TABLE ONLY main_accesswhitelist ALTER COLUMN id SET DEFAULT nextval('main_accesswhitelist_id_seq'::regclass);


--
-- Name: main_problem id; Type: DEFAULT; Schema: public; Owner: jmuser
--

ALTER TABLE ONLY main_problem ALTER COLUMN id SET DEFAULT nextval('main_problem_id_seq'::regclass);


--
-- Name: main_progress id; Type: DEFAULT; Schema: public; Owner: jmuser
--

ALTER TABLE ONLY main_progress ALTER COLUMN id SET DEFAULT nextval('main_progress_id_seq'::regclass);


--
-- Name: main_student id; Type: DEFAULT; Schema: public; Owner: jmuser
--

ALTER TABLE ONLY main_student ALTER COLUMN id SET DEFAULT nextval('main_student_id_seq'::regclass);


--
-- Data for Name: auth_group; Type: TABLE DATA; Schema: public; Owner: jmuser
--

COPY auth_group (id, name) FROM stdin;
\.


--
-- Name: auth_group_id_seq; Type: SEQUENCE SET; Schema: public; Owner: jmuser
--

SELECT pg_catalog.setval('auth_group_id_seq', 1, false);


--
-- Data for Name: auth_group_permissions; Type: TABLE DATA; Schema: public; Owner: jmuser
--

COPY auth_group_permissions (id, group_id, permission_id) FROM stdin;
\.


--
-- Name: auth_group_permissions_id_seq; Type: SEQUENCE SET; Schema: public; Owner: jmuser
--

SELECT pg_catalog.setval('auth_group_permissions_id_seq', 1, false);


--
-- Data for Name: auth_permission; Type: TABLE DATA; Schema: public; Owner: jmuser
--

COPY auth_permission (id, name, content_type_id, codename) FROM stdin;
1	Can add log entry	1	add_logentry
2	Can change log entry	1	change_logentry
3	Can delete log entry	1	delete_logentry
4	Can add group	2	add_group
5	Can change group	2	change_group
6	Can delete group	2	delete_group
7	Can add permission	3	add_permission
8	Can change permission	3	change_permission
9	Can delete permission	3	delete_permission
10	Can add user	4	add_user
11	Can change user	4	change_user
12	Can delete user	4	delete_user
13	Can add content type	5	add_contenttype
14	Can change content type	5	change_contenttype
15	Can delete content type	5	delete_contenttype
16	Can add session	6	add_session
17	Can change session	6	change_session
18	Can delete session	6	delete_session
19	Can add client	7	add_client
20	Can change client	7	change_client
21	Can delete client	7	delete_client
22	Can add student	8	add_student
23	Can change student	8	change_student
24	Can delete student	8	delete_student
25	Can add problem	9	add_problem
26	Can change problem	9	change_problem
27	Can delete problem	9	delete_problem
28	Can add progress	10	add_progress
29	Can change progress	10	change_progress
30	Can delete progress	10	delete_progress
31	Can add access whitelist	11	add_accesswhitelist
32	Can change access whitelist	11	change_accesswhitelist
33	Can delete access whitelist	11	delete_accesswhitelist
\.


--
-- Name: auth_permission_id_seq; Type: SEQUENCE SET; Schema: public; Owner: jmuser
--

SELECT pg_catalog.setval('auth_permission_id_seq', 33, true);


--
-- Data for Name: auth_user; Type: TABLE DATA; Schema: public; Owner: jmuser
--

COPY auth_user (id, password, last_login, is_superuser, username, first_name, last_name, email, is_staff, is_active, date_joined) FROM stdin;
1	pbkdf2_sha256$36000$NZKcp4KqRAHR$eKJjoWLRzzNtdQX1YcA6C9sBGg4UQGa46yAs+Fwmsfo=	2018-02-27 11:59:48.407176+00	t	mquinn				t	t	2017-09-26 09:33:15.428252+00
\.


--
-- Data for Name: auth_user_groups; Type: TABLE DATA; Schema: public; Owner: jmuser
--

COPY auth_user_groups (id, user_id, group_id) FROM stdin;
\.


--
-- Name: auth_user_groups_id_seq; Type: SEQUENCE SET; Schema: public; Owner: jmuser
--

SELECT pg_catalog.setval('auth_user_groups_id_seq', 1, false);


--
-- Name: auth_user_id_seq; Type: SEQUENCE SET; Schema: public; Owner: jmuser
--

SELECT pg_catalog.setval('auth_user_id_seq', 2, true);


--
-- Data for Name: auth_user_user_permissions; Type: TABLE DATA; Schema: public; Owner: jmuser
--

COPY auth_user_user_permissions (id, user_id, permission_id) FROM stdin;
\.


--
-- Name: auth_user_user_permissions_id_seq; Type: SEQUENCE SET; Schema: public; Owner: jmuser
--

SELECT pg_catalog.setval('auth_user_user_permissions_id_seq', 1, false);


--
-- Data for Name: django_admin_log; Type: TABLE DATA; Schema: public; Owner: jmuser
--

COPY django_admin_log (id, action_time, object_id, object_repr, action_flag, change_message, content_type_id, user_id) FROM stdin;
1	2017-09-26 10:03:10.078211+00	1	Student object	1	[{"added": {}}]	8	1
2	2017-09-26 10:03:22.40773+00	2	Student object	1	[{"added": {}}]	8	1
3	2017-09-26 10:03:27.923931+00	3	Student object	1	[{"added": {}}]	8	1
4	2017-09-26 10:13:18.769726+00	4	Student object	1	[{"added": {}}]	8	1
5	2017-09-26 10:13:29.588019+00	5	Student object	1	[{"added": {}}]	8	1
6	2017-09-26 10:13:35.779644+00	6	Student object	1	[{"added": {}}]	8	1
7	2017-09-26 14:23:13.199409+00	6	Student object	2	[]	8	1
8	2017-09-26 14:23:32.304298+00	4	Student object	2	[{"changed": {"fields": ["gender"]}}]	8	1
9	2017-09-26 14:23:42.236605+00	2	Student object	2	[{"changed": {"fields": ["gender"]}}]	8	1
10	2017-09-26 14:23:50.914827+00	1	Student object	2	[{"changed": {"fields": ["gender"]}}]	8	1
11	2017-09-26 14:38:52.121568+00	1	Problem object	1	[{"added": {}}]	9	1
12	2017-09-26 14:44:01.059386+00	1	Problem object	2	[{"changed": {"fields": ["initial_code"]}}]	9	1
13	2017-09-26 15:16:47.463572+00	1	Problem object	2	[{"changed": {"fields": ["initial_code"]}}]	9	1
14	2017-09-26 15:32:19.395405+00	1	Problem object	2	[{"changed": {"fields": ["verify_code"]}}]	9	1
15	2017-09-26 15:33:53.191828+00	1	Problem object	2	[{"changed": {"fields": ["verify_code"]}}]	9	1
16	2017-09-26 15:38:16.72846+00	1	Problem object	2	[{"changed": {"fields": ["verify_code"]}}]	9	1
17	2017-09-26 15:38:32.755287+00	1	Problem object	2	[{"changed": {"fields": ["verify_code"]}}]	9	1
18	2017-09-26 15:43:42.631195+00	1	Problem object	2	[{"changed": {"fields": ["verify_code"]}}]	9	1
19	2017-09-26 15:44:11.104526+00	1	Problem object	2	[{"changed": {"fields": ["verify_code"]}}]	9	1
20	2017-09-26 15:50:16.679065+00	1	Problem object	2	[{"changed": {"fields": ["initial_code"]}}]	9	1
21	2017-09-26 15:54:38.86043+00	2	Problem object	1	[{"added": {}}]	9	1
22	2017-09-26 15:55:16.552596+00	2	Problem object	2	[{"changed": {"fields": ["verify_code"]}}]	9	1
23	2017-09-26 15:55:42.269341+00	1	Problem object	2	[{"changed": {"fields": ["verify_code"]}}]	9	1
24	2017-09-26 15:56:00.335193+00	1	Problem object	2	[{"changed": {"fields": ["verify_code"]}}]	9	1
25	2017-09-26 16:03:20.633061+00	2	Problem object	2	[{"changed": {"fields": ["initial_code", "verify_code"]}}]	9	1
26	2017-09-26 16:04:03.589737+00	2	Problem object	2	[{"changed": {"fields": ["verify_code"]}}]	9	1
27	2017-09-26 16:04:23.802581+00	2	Problem object	2	[{"changed": {"fields": ["verify_code"]}}]	9	1
28	2017-09-26 16:05:39.87811+00	2	Problem object	2	[]	9	1
29	2017-09-26 16:07:36.504966+00	2	Problem object	2	[]	9	1
30	2017-09-26 16:09:51.94413+00	2	Problem object	2	[]	9	1
31	2017-09-26 16:13:45.879747+00	3	Problem object	1	[{"added": {}}]	9	1
32	2017-09-26 16:13:50.714062+00	2	Problem object	2	[]	9	1
33	2017-09-26 16:15:58.03241+00	3	Problem object	2	[{"changed": {"fields": ["verify_code"]}}]	9	1
34	2017-09-26 16:16:22.893647+00	3	Problem object	2	[{"changed": {"fields": ["verify_code"]}}]	9	1
35	2017-09-26 16:16:40.449625+00	3	Problem object	2	[{"changed": {"fields": ["verify_code"]}}]	9	1
36	2017-09-26 16:16:54.58283+00	3	Problem object	2	[{"changed": {"fields": ["verify_code"]}}]	9	1
37	2017-09-26 16:18:07.16192+00	3	Problem object	2	[{"changed": {"fields": ["verify_code"]}}]	9	1
38	2017-09-26 17:24:08.691602+00	2	Progress object	1	[{"added": {}}]	10	1
39	2017-09-26 18:39:18.816194+00	2	Pythagorean Theorem	2	[{"changed": {"fields": ["verify_code"]}}]	9	1
40	2017-09-26 18:40:02.533108+00	2	Pythagorean Theorem	2	[{"changed": {"fields": ["verify_code"]}}]	9	1
41	2017-09-26 18:44:41.157463+00	2	Pythagorean Theorem	2	[{"changed": {"fields": ["verify_code"]}}]	9	1
42	2017-09-27 06:46:35.743929+00	2	P1 for Endesh Gogo	2	[{"changed": {"fields": ["latest_submission"]}}]	10	1
43	2017-09-27 06:47:41.264068+00	2	P1 for Endesh Gogo	2	[{"changed": {"fields": ["latest_submission"]}}]	10	1
44	2017-09-27 06:51:01.349268+00	2	P1 for Endesh Gogo	2	[{"changed": {"fields": ["latest_submission"]}}]	10	1
45	2017-09-27 07:37:06.977908+00	2	Pythagorean Theorem	2	[{"changed": {"fields": ["verify_code"]}}]	9	1
46	2017-09-27 07:39:14.841839+00	3	Guanine in DNA	2	[{"changed": {"fields": ["verify_code"]}}]	9	1
47	2017-09-27 11:28:20.789109+00	1	Nyerere Alikuwa Rais Lini?	2	[{"changed": {"fields": ["verify_code"]}}]	9	1
48	2017-09-27 13:10:59.449191+00	7	Calvin John	1	[{"added": {}}]	8	1
49	2017-09-27 13:11:13.254632+00	8	Godlisten John	1	[{"added": {}}]	8	1
50	2017-09-27 13:11:24.029946+00	9	Jackson Melkzedeck	1	[{"added": {}}]	8	1
51	2017-09-27 13:11:34.707269+00	10	Dorcus Ayubu	1	[{"added": {}}]	8	1
52	2017-09-27 13:11:45.736786+00	11	Frank Msuya	1	[{"added": {}}]	8	1
53	2017-09-27 13:11:56.056847+00	12	Ibrahim Ziberi	1	[{"added": {}}]	8	1
54	2017-09-27 13:12:04.015894+00	13	Christiner Christoph	1	[{"added": {}}]	8	1
55	2017-09-27 13:12:49.208065+00	13	Christiner Christopher	2	[{"changed": {"fields": ["name"]}}]	8	1
56	2017-09-27 13:12:58.9585+00	14	Maria Joseph	1	[{"added": {}}]	8	1
57	2017-09-27 13:13:06.382016+00	15	Christopher Bernard	1	[{"added": {}}]	8	1
58	2017-09-27 13:13:14.626824+00	16	Faraja James	1	[{"added": {}}]	8	1
59	2017-09-27 13:13:22.275216+00	17	Eliana Loseriano	1	[{"added": {}}]	8	1
60	2017-09-27 13:13:28.087158+00	18	Emmanuel Riziki	1	[{"added": {}}]	8	1
61	2017-09-27 13:13:35.588951+00	19	Sandra Samuel	1	[{"added": {}}]	8	1
62	2017-09-27 13:13:40.318978+00	20	Siphaeli Stephano	1	[{"added": {}}]	8	1
63	2017-09-27 13:13:47.380888+00	21	Josephat Kamara	1	[{"added": {}}]	8	1
64	2017-09-27 13:13:55.221944+00	22	Utandita Giabaso	1	[{"added": {}}]	8	1
65	2017-09-27 13:14:01.675706+00	23	Theresia Karoli	1	[{"added": {}}]	8	1
66	2017-09-27 13:14:07.355869+00	24	Fred Medard	1	[{"added": {}}]	8	1
67	2017-09-27 13:14:15.57315+00	25	Naha Mollel	1	[{"added": {}}]	8	1
68	2017-09-27 13:14:27.793929+00	26	John Timothe	1	[{"added": {}}]	8	1
69	2017-09-27 13:14:35.183158+00	27	Loishiye David	1	[{"added": {}}]	8	1
70	2017-09-27 13:14:41.45944+00	28	Loveness Michael	1	[{"added": {}}]	8	1
71	2017-09-27 13:14:47.270743+00	29	Stanley Samson	1	[{"added": {}}]	8	1
72	2017-09-27 13:14:53.643425+00	30	Benedict William	1	[{"added": {}}]	8	1
73	2017-09-27 13:15:00.474727+00	31	Elia Moses	1	[{"added": {}}]	8	1
74	2017-09-27 13:15:08.974361+00	32	Damiana Leckmock	1	[{"added": {}}]	8	1
75	2017-09-27 13:15:18.270678+00	33	Japhet Elisamia	1	[{"added": {}}]	8	1
76	2017-09-27 13:15:26.961731+00	34	Michael Elisamia	1	[{"added": {}}]	8	1
77	2017-09-27 13:15:34.278483+00	35	Julius	1	[{"added": {}}]	8	1
78	2017-09-27 13:15:42.873018+00	36	James Raphael	1	[{"added": {}}]	8	1
79	2017-09-27 13:15:49.271307+00	37	Ian Johnson	1	[{"added": {}}]	8	1
80	2017-09-27 13:15:58.548237+00	38	Hosiana Henry	1	[{"added": {}}]	8	1
81	2017-09-27 13:16:03.938869+00	39	Lembrice Samuel	1	[{"added": {}}]	8	1
82	2017-09-27 13:16:08.697235+00	40	Aubrian Francis	1	[{"added": {}}]	8	1
83	2017-09-27 13:16:13.221475+00	41	Asha Ibrahim	1	[{"added": {}}]	8	1
84	2017-09-27 13:16:17.911898+00	42	Ismail Msafiri	1	[{"added": {}}]	8	1
85	2017-09-27 13:16:25.874359+00	43	Anitha Wilbroad	1	[{"added": {}}]	8	1
86	2017-09-27 13:16:33.222144+00	44	Abdallah Shabani	1	[{"added": {}}]	8	1
87	2017-09-27 13:16:39.007355+00	45	Jackline Pendaeli	1	[{"added": {}}]	8	1
88	2017-09-27 13:16:48.867016+00	46	Upendo Godwin	1	[{"added": {}}]	8	1
89	2017-09-27 13:16:55.509243+00	47	Collins Boniface	1	[{"added": {}}]	8	1
90	2017-09-27 13:17:03.484132+00	48	Rose Jeremiah	1	[{"added": {}}]	8	1
91	2017-09-27 13:17:09.079858+00	49	Yvonne Elisha	1	[{"added": {}}]	8	1
92	2017-09-27 13:17:18.878053+00	50	John Jovitha	1	[{"added": {}}]	8	1
93	2017-09-27 13:17:25.388608+00	51	Neema Isata	1	[{"added": {}}]	8	1
94	2017-09-27 13:17:31.784233+00	52	Catherine Emanuel	1	[{"added": {}}]	8	1
95	2017-09-27 13:17:36.458596+00	53	Edwin Ehupendo	1	[{"added": {}}]	8	1
96	2017-09-27 13:17:44.35459+00	54	Anna Peter	1	[{"added": {}}]	8	1
97	2017-09-27 13:17:51.11615+00	55	Hezekiah Kidava	1	[{"added": {}}]	8	1
98	2017-09-27 13:17:56.279608+00	56	Meshack Mathato	1	[{"added": {}}]	8	1
99	2017-09-27 13:18:04.46357+00	57	Inocent Maganga	1	[{"added": {}}]	8	1
100	2017-09-27 13:18:09.314938+00	58	Lemaron Sironga	1	[{"added": {}}]	8	1
101	2017-09-27 13:18:15.100251+00	59	Joel Joseph	1	[{"added": {}}]	8	1
102	2017-09-27 13:18:24.461133+00	60	Victoria Thadeus	1	[{"added": {}}]	8	1
103	2017-09-27 13:18:29.181784+00	61	Nickson Tumsifu	1	[{"added": {}}]	8	1
104	2017-09-27 13:18:35.356137+00	62	Alfred Msemwa	1	[{"added": {}}]	8	1
105	2017-09-27 13:18:41.352225+00	63	Aurelia Gerald	1	[{"added": {}}]	8	1
106	2017-09-27 13:18:50.211489+00	64	Jonson Marko	1	[{"added": {}}]	8	1
107	2017-09-27 13:18:56.781518+00	65	Stephen David	1	[{"added": {}}]	8	1
108	2017-09-27 13:19:02.50414+00	66	Peter Hamisi	1	[{"added": {}}]	8	1
109	2017-09-27 13:19:16.43403+00	67	Veronica Bernard	1	[{"added": {}}]	8	1
110	2017-09-27 13:19:22.649015+00	68	Abdul Simon	1	[{"added": {}}]	8	1
111	2017-09-27 13:19:31.955298+00	69	Frank Paul	1	[{"added": {}}]	8	1
112	2017-09-27 13:19:37.435941+00	70	Neema Paulo	1	[{"added": {}}]	8	1
113	2017-09-27 13:19:45.901416+00	71	Dickson Paul	1	[{"added": {}}]	8	1
114	2017-09-27 13:19:50.764194+00	72	Jeyrine John	1	[{"added": {}}]	8	1
115	2017-09-27 13:19:59.536876+00	73	George Nyakangara	1	[{"added": {}}]	8	1
116	2017-09-27 13:20:04.606989+00	74	Frederick Macha	1	[{"added": {}}]	8	1
117	2017-09-27 13:20:09.7513+00	75	Magret Kafuru	1	[{"added": {}}]	8	1
118	2017-09-27 13:20:18.743417+00	76	Severin Dominick	1	[{"added": {}}]	8	1
119	2017-09-27 13:20:24.185008+00	77	Adiel Charles	1	[{"added": {}}]	8	1
120	2017-09-27 13:20:34.382908+00	78	Kelvin Herry	1	[{"added": {}}]	8	1
121	2017-09-27 13:20:43.40532+00	79	Josephat Nathanaeli	1	[{"added": {}}]	8	1
122	2017-09-27 13:20:48.160725+00	80	Esau Yohana	1	[{"added": {}}]	8	1
123	2017-09-27 13:20:53.870146+00	81	Magdalena Peter	1	[{"added": {}}]	8	1
124	2017-09-27 13:20:59.175997+00	82	Naomi Juma	1	[{"added": {}}]	8	1
125	2017-09-27 13:21:04.885922+00	83	Glory Peter	1	[{"added": {}}]	8	1
126	2017-09-27 13:21:10.684261+00	84	Frank Lazaro	1	[{"added": {}}]	8	1
127	2017-09-27 13:21:15.944832+00	85	Nipaely Nasieli	1	[{"added": {}}]	8	1
128	2017-09-27 13:21:22.086545+00	86	Hawa Juma	1	[{"added": {}}]	8	1
129	2017-09-27 13:21:33.575359+00	87	Naomi Stephano	1	[{"added": {}}]	8	1
130	2017-09-27 13:22:09.039943+00	88	Rehema Bahha	1	[{"added": {}}]	8	1
131	2017-09-27 13:22:23.893707+00	89	Fidelis Joakim	1	[{"added": {}}]	8	1
132	2017-09-27 13:22:34.647052+00	90	Saumu Kayanda	1	[{"added": {}}]	8	1
133	2017-09-27 13:22:43.650174+00	91	Niwaeli Nasiely	1	[{"added": {}}]	8	1
134	2017-09-27 13:22:48.854597+00	92	Lilian Peter	1	[{"added": {}}]	8	1
135	2017-09-27 13:22:56.42756+00	93	Zilpin Zakayo	1	[{"added": {}}]	8	1
136	2017-09-27 13:23:01.178797+00	94	Elizabeth Jacob	1	[{"added": {}}]	8	1
137	2017-09-27 13:23:08.237278+00	95	George Rashid	1	[{"added": {}}]	8	1
138	2017-09-27 13:23:12.957131+00	96	Tunukia Fredrick	1	[{"added": {}}]	8	1
139	2017-09-27 13:23:19.321823+00	97	Elizabeth Theophili	1	[{"added": {}}]	8	1
140	2017-09-27 13:23:26.15713+00	98	Irene Gabriel	1	[{"added": {}}]	8	1
141	2017-09-27 13:23:31.788268+00	99	Rodluck Raphael	1	[{"added": {}}]	8	1
142	2017-09-27 13:23:36.635162+00	99	Rodluck Raphael	2	[{"changed": {"fields": ["gender"]}}]	8	1
143	2017-09-27 13:23:47.899821+00	97	Elizabeth Theophili	2	[]	8	1
144	2017-09-27 13:23:57.471298+00	100	Ismaili Hassan	1	[{"added": {}}]	8	1
145	2017-09-27 13:24:03.354569+00	101	Philotea Gabriel	1	[{"added": {}}]	8	1
146	2017-09-27 13:24:08.737604+00	102	Glory Shedrack	1	[{"added": {}}]	8	1
147	2017-09-27 13:24:13.666643+00	103	Emmanuel Amos	1	[{"added": {}}]	8	1
148	2017-09-27 13:24:18.847695+00	104	Daniel Elibariki	1	[{"added": {}}]	8	1
149	2017-09-27 13:24:24.195667+00	105	Sebastian Nione	1	[{"added": {}}]	8	1
150	2017-09-27 13:24:30.254939+00	106	Albert Herman	1	[{"added": {}}]	8	1
151	2017-09-27 13:24:36.642471+00	107	Brian John	1	[{"added": {}}]	8	1
152	2017-09-27 13:24:44.705204+00	108	Ilhan Mahmoud	1	[{"added": {}}]	8	1
153	2017-09-27 13:24:49.269692+00	109	Ronaldo Hippolitus	1	[{"added": {}}]	8	1
154	2017-09-27 13:24:55.249077+00	110	Sudi Tamimu	1	[{"added": {}}]	8	1
155	2017-09-27 13:25:00.336062+00	111	Nasaba Abubakari	1	[{"added": {}}]	8	1
156	2017-09-27 13:25:04.945437+00	112	Roberto Carlos	1	[{"added": {}}]	8	1
157	2017-09-27 13:25:12.107692+00	113	Shantel David	1	[{"added": {}}]	8	1
158	2017-09-27 13:26:07.998072+00	113	Shantel David (Form 2, F)	2	[{"changed": {"fields": ["gender"]}}]	8	1
159	2017-09-27 13:26:36.579757+00	96	Tulukia Fredrick (Form 2, F)	2	[{"changed": {"fields": ["name"]}}]	8	1
160	2017-09-27 13:59:43.133678+00	2	Pythagorean Theorem	2	[{"changed": {"fields": ["html_desc"]}}]	9	1
161	2017-09-27 14:01:54.255124+00	2	Pythagorean Theorem	2	[{"changed": {"fields": ["html_desc"]}}]	9	1
162	2017-09-27 14:02:00.587898+00	2	Pythagorean Theorem	2	[]	9	1
163	2017-09-27 14:04:13.446374+00	2	Pythagorean Theorem	2	[{"changed": {"fields": ["html_desc"]}}]	9	1
164	2017-09-27 14:04:50.04747+00	2	Pythagorean Theorem	2	[{"changed": {"fields": ["html_desc"]}}]	9	1
165	2017-09-27 14:06:03.228367+00	2	Pythagorean Theorem	2	[{"changed": {"fields": ["html_desc"]}}]	9	1
166	2017-09-27 14:06:13.742905+00	2	Pythagorean Theorem	2	[{"changed": {"fields": ["html_desc"]}}]	9	1
167	2017-09-27 14:06:35.090039+00	2	Pythagorean Theorem	2	[{"changed": {"fields": ["html_desc"]}}]	9	1
168	2017-09-27 14:06:53.635366+00	2	Pythagorean Theorem	2	[{"changed": {"fields": ["html_desc"]}}]	9	1
169	2017-09-27 14:07:05.892082+00	2	Pythagorean Theorem	2	[{"changed": {"fields": ["html_desc"]}}]	9	1
170	2017-09-27 14:09:26.879107+00	2	Pythagorean Theorem	2	[{"changed": {"fields": ["verify_code"]}}]	9	1
171	2017-09-27 14:10:55.983603+00	2	Pythagorean Theorem	2	[{"changed": {"fields": ["verify_code"]}}]	9	1
172	2017-09-27 14:15:26.306815+00	1	Nyerere Alikuwa Rais Lini?	2	[{"changed": {"fields": ["html_desc"]}}]	9	1
173	2017-09-27 14:19:38.327111+00	1	Nyerere Alikuwa Rais Lini?	2	[{"changed": {"fields": ["html_desc"]}}]	9	1
174	2017-09-27 14:20:00.457805+00	1	Nyerere Alikuwa Rais Lini?	2	[{"changed": {"fields": ["html_desc"]}}]	9	1
175	2017-09-27 14:20:18.393453+00	1	Nyerere Alikuwa Rais Lini?	2	[{"changed": {"fields": ["html_desc"]}}]	9	1
176	2017-09-27 14:21:43.629892+00	1	Nyerere Alikuwa Rais Lini?	2	[{"changed": {"fields": ["verify_code"]}}]	9	1
177	2017-09-27 14:23:52.529326+00	2	Pythagorean Theorem	2	[{"changed": {"fields": ["html_desc"]}}]	9	1
178	2017-09-27 14:24:03.471254+00	2	Pythagorean Theorem	2	[{"changed": {"fields": ["html_desc"]}}]	9	1
179	2017-09-27 14:25:25.402749+00	3	Guanine in DNA	2	[{"changed": {"fields": ["verify_code"]}}]	9	1
180	2017-09-27 14:25:45.606923+00	1	Nyerere Alikuwa Rais Lini?	2	[{"changed": {"fields": ["verify_code"]}}]	9	1
181	2017-09-27 14:26:06.391944+00	3	Guanine in DNA	2	[{"changed": {"fields": ["verify_code"]}}]	9	1
182	2017-09-27 14:29:43.485319+00	3	Guanine in DNA	2	[{"changed": {"fields": ["html_desc"]}}]	9	1
183	2017-09-27 14:30:25.688633+00	3	Guanine in DNA	2	[{"changed": {"fields": ["html_desc"]}}]	9	1
184	2017-09-27 14:32:15.134768+00	3	Guanine in DNA	2	[{"changed": {"fields": ["html_desc"]}}]	9	1
185	2017-09-27 14:58:12.968937+00	4	Sum of Two Numbers	1	[{"added": {}}]	9	1
186	2017-09-27 14:59:52.956209+00	4	Sum of Two Numbers	2	[{"changed": {"fields": ["verify_code"]}}]	9	1
187	2017-09-27 15:04:57.978577+00	1	Nyerere Alikuwa Rais Lini?	2	[{"changed": {"fields": ["level"]}}]	9	1
188	2017-09-27 15:05:05.442068+00	2	Pythagorean Theorem	2	[{"changed": {"fields": ["level"]}}]	9	1
189	2017-09-27 15:05:10.122113+00	3	Guanine in DNA	2	[{"changed": {"fields": ["level"]}}]	9	1
190	2017-09-28 08:12:15.423384+00	5	Counting Numbers in a List	1	[{"added": {}}]	9	1
191	2017-09-28 08:14:35.459051+00	5	Counting Numbers in a List	2	[{"changed": {"fields": ["verify_code"]}}]	9	1
192	2017-09-28 08:34:13.507177+00	6	Odd and Even	1	[{"added": {}}]	9	1
193	2017-09-28 08:36:27.502198+00	6	Odd and Even	2	[{"changed": {"fields": ["verify_code"]}}]	9	1
194	2017-09-28 08:37:17.096163+00	6	Odd and Even	2	[{"changed": {"fields": ["verify_code"]}}]	9	1
195	2017-09-28 08:48:08.228001+00	3	Guanine in DNA	2	[{"changed": {"fields": ["level"]}}]	9	1
196	2017-09-28 08:48:15.155709+00	2	Pythagorean Theorem	2	[]	9	1
197	2017-09-28 08:48:20.193547+00	1	Nyerere Alikuwa Rais Lini?	2	[{"changed": {"fields": ["level"]}}]	9	1
198	2017-09-28 09:05:17.915347+00	7	Shule Iko Wapi?	1	[{"added": {}}]	9	1
199	2017-09-28 09:09:22.523127+00	7	Shule Iko Wapi?	2	[{"changed": {"fields": ["verify_code"]}}]	9	1
200	2017-09-28 09:09:57.37019+00	7	Shule Iko Wapi?	2	[{"changed": {"fields": ["level"]}}]	9	1
201	2017-09-28 09:11:36.855335+00	7	Shule Iko Wapi?	2	[{"changed": {"fields": ["initial_code"]}}]	9	1
202	2017-09-28 09:17:21.148081+00	7	Shule Iko Wapi?	2	[{"changed": {"fields": ["verify_code"]}}]	9	1
203	2017-09-28 09:17:42.118643+00	7	Shule Iko Wapi?	2	[{"changed": {"fields": ["verify_code"]}}]	9	1
204	2017-09-28 09:20:26.593273+00	7	Shule Iko Wapi?	2	[{"changed": {"fields": ["verify_code"]}}]	9	1
205	2017-09-28 09:20:50.740357+00	7	Shule Iko Wapi?	2	[{"changed": {"fields": ["verify_code"]}}]	9	1
206	2017-09-28 09:21:10.180739+00	7	Shule Iko Wapi?	2	[{"changed": {"fields": ["verify_code"]}}]	9	1
207	2017-09-28 09:48:16.196831+00	8	"School Senior Secondary Tumaini"	1	[{"added": {}}]	9	1
208	2017-09-28 09:49:31.578131+00	8	"School Senior Secondary Tumaini"	2	[{"changed": {"fields": ["html_desc"]}}]	9	1
209	2017-09-28 09:49:51.644304+00	8	"School Senior Secondary Tumaini"	2	[{"changed": {"fields": ["html_desc"]}}]	9	1
210	2017-09-28 09:52:48.204449+00	8	"School Senior Secondary Tumaini"	2	[{"changed": {"fields": ["verify_code"]}}]	9	1
211	2017-09-28 10:10:55.746592+00	9	Count to 10 (Level 1)	1	[{"added": {}}]	9	1
212	2017-09-28 10:18:49.023482+00	9	Count to 10 (Level 1)	2	[{"changed": {"fields": ["verify_code"]}}]	9	1
213	2017-09-28 10:19:44.958685+00	9	Count to 10 (Level 1)	2	[{"changed": {"fields": ["verify_code"]}}]	9	1
214	2017-09-28 10:20:06.938698+00	9	Count to 10 (Level 1)	2	[{"changed": {"fields": ["verify_code"]}}]	9	1
215	2017-09-28 10:20:56.969227+00	9	Count to 10 (Level 1)	2	[{"changed": {"fields": ["verify_code"]}}]	9	1
216	2017-09-28 11:19:25.602153+00	10	Meza Zingapi? (Level 1)	1	[{"added": {}}]	9	1
217	2017-09-28 11:20:25.504558+00	10	Meza Zingapi? (Level 1)	2	[{"changed": {"fields": ["verify_code"]}}]	9	1
218	2017-09-28 11:20:38.556249+00	10	Meza Zingapi? (Level 1)	2	[{"changed": {"fields": ["html_desc"]}}]	9	1
219	2017-09-29 06:06:47.465535+00	11	Sum Function (Level 1)	1	[{"added": {}}]	9	1
220	2017-09-29 06:08:53.398959+00	11	Sum Function (Level 1)	2	[{"changed": {"fields": ["verify_code"]}}]	9	1
221	2017-09-29 06:09:51.814416+00	11	Sum Function (Level 1)	2	[{"changed": {"fields": ["html_desc"]}}]	9	1
222	2017-09-29 06:10:01.785347+00	9	Count to 10 (Level 1)	2	[{"changed": {"fields": ["html_desc"]}}]	9	1
223	2017-09-29 06:10:15.06516+00	7	Shule Iko Wapi? (Level 1)	2	[{"changed": {"fields": ["html_desc"]}}]	9	1
224	2017-09-29 06:10:21.900061+00	6	Odd and Even (Level 1)	2	[{"changed": {"fields": ["html_desc"]}}]	9	1
225	2017-09-29 06:10:36.312147+00	4	Sum of Two Numbers (Level 1)	2	[{"changed": {"fields": ["html_desc"]}}]	9	1
226	2017-09-29 06:11:09.960337+00	11	Sum Function (Level 1)	2	[{"changed": {"fields": ["html_desc"]}}]	9	1
227	2017-09-29 06:11:19.406186+00	9	Count to 10 (Level 1)	2	[{"changed": {"fields": ["html_desc"]}}]	9	1
228	2017-09-29 06:11:28.43753+00	7	Shule Iko Wapi? (Level 1)	2	[{"changed": {"fields": ["html_desc"]}}]	9	1
229	2017-09-29 06:11:34.299622+00	6	Odd and Even (Level 1)	2	[{"changed": {"fields": ["html_desc"]}}]	9	1
230	2017-09-29 06:11:44.063699+00	4	Sum of Two Numbers (Level 1)	2	[{"changed": {"fields": ["html_desc"]}}]	9	1
231	2017-09-29 06:12:50.717143+00	11	Sum Function (Level 1)	2	[{"changed": {"fields": ["verify_code"]}}]	9	1
232	2017-10-02 08:14:52.274189+00	10	Meza Zingapi? (Level 1)	2	[{"changed": {"fields": ["initial_code"]}}]	9	1
233	2017-10-02 08:50:51.713388+00	10	Meza Ngapi? (Level 1)	2	[{"changed": {"fields": ["name"]}}]	9	1
234	2017-10-02 08:50:56.784414+00	10	Meza Ngapi? (Level 1)	2	[]	9	1
235	2017-10-02 09:28:43.390088+00	114	Matt (Form 1, M)	1	[{"added": {}}]	8	1
236	2017-10-02 09:37:56.159833+00	114	Matt (Form 1, M)	3		8	1
237	2017-10-02 12:45:49.079839+00	113	Shantel David (2B, F)	2	[{"changed": {"fields": ["stream"]}}]	8	1
238	2017-10-02 12:45:55.77601+00	112	Roberto Carlos (2B, M)	2	[{"changed": {"fields": ["stream"]}}]	8	1
239	2017-10-02 12:46:05.322206+00	111	Nasaba Abubakari (2B, M)	2	[{"changed": {"fields": ["stream"]}}]	8	1
240	2017-10-02 12:46:18.288438+00	110	Sudi Tamimu (2B, M)	2	[{"changed": {"fields": ["stream"]}}]	8	1
241	2017-10-02 12:46:27.405633+00	109	Ronaldo Hippolitus (2B, M)	2	[{"changed": {"fields": ["stream"]}}]	8	1
242	2017-10-02 12:46:32.858705+00	108	Ilhan Mahmoud (2B, F)	2	[{"changed": {"fields": ["stream"]}}]	8	1
243	2017-10-02 12:46:39.855322+00	108	Ilhan Mahmoud (2B, F)	2	[]	8	1
244	2017-10-02 12:47:08.933265+00	107	Brian John (2B, M)	2	[{"changed": {"fields": ["stream"]}}]	8	1
245	2017-10-02 12:47:15.718237+00	106	Albert Herman (2B, M)	2	[{"changed": {"fields": ["stream"]}}]	8	1
246	2017-10-02 12:47:23.388976+00	105	Sebastian Nione (2B, M)	2	[{"changed": {"fields": ["stream"]}}]	8	1
247	2017-10-02 12:47:39.411067+00	104	Daniel Elibariki (2B, M)	2	[{"changed": {"fields": ["stream"]}}]	8	1
248	2017-10-02 12:47:45.930847+00	103	Emmanuel Amos (2B, M)	2	[{"changed": {"fields": ["stream"]}}]	8	1
249	2017-10-02 12:47:51.111245+00	102	Glory Shedrack (2B, F)	2	[{"changed": {"fields": ["stream"]}}]	8	1
250	2017-10-02 12:48:01.820062+00	101	Philotea Gabriel (2B, F)	2	[{"changed": {"fields": ["stream"]}}]	8	1
251	2017-10-02 12:48:07.755659+00	100	Ismaili Hassan (2B, M)	2	[{"changed": {"fields": ["stream"]}}]	8	1
252	2017-10-02 12:48:14.074802+00	99	Rodluck Raphael (2B, M)	2	[{"changed": {"fields": ["stream"]}}]	8	1
253	2017-10-02 12:48:22.755665+00	98	Irene Gabriel (2B, F)	2	[{"changed": {"fields": ["stream"]}}]	8	1
254	2017-10-02 12:48:29.822941+00	97	Elizabeth Theophili (2B, F)	2	[{"changed": {"fields": ["stream"]}}]	8	1
255	2017-10-02 12:48:39.863979+00	96	Tulukia Fredrick (2B, F)	2	[{"changed": {"fields": ["stream"]}}]	8	1
256	2017-10-02 12:48:47.100248+00	95	George Rashid (2B, M)	2	[{"changed": {"fields": ["stream"]}}]	8	1
257	2017-10-02 12:48:55.858163+00	94	Elizabeth Jacob (2B, F)	2	[{"changed": {"fields": ["stream"]}}]	8	1
258	2017-10-02 12:49:02.057779+00	93	Zilpin Zakayo (2B, M)	2	[{"changed": {"fields": ["stream"]}}]	8	1
259	2017-10-02 12:49:08.534134+00	92	Lilian Peter (2B, F)	2	[{"changed": {"fields": ["stream"]}}]	8	1
260	2017-10-02 12:49:18.297889+00	91	Niwaeli Nasiely (2B, F)	2	[{"changed": {"fields": ["stream"]}}]	8	1
261	2017-10-02 12:49:25.638214+00	90	Saumu Kayanda (2B, F)	2	[{"changed": {"fields": ["stream"]}}]	8	1
262	2017-10-02 12:49:34.982365+00	89	Fidelis Joakim (2B, M)	2	[{"changed": {"fields": ["stream"]}}]	8	1
263	2017-10-02 12:50:19.046353+00	88	Rehema Bahha (1B, F)	2	[{"changed": {"fields": ["stream"]}}]	8	1
264	2017-10-02 12:50:46.515917+00	66	Peter Hamisi (1B, M)	2	[{"changed": {"fields": ["stream"]}}]	8	1
265	2017-10-02 12:51:17.160765+00	51	Neema Isata (1B, F)	2	[{"changed": {"fields": ["stream"]}}]	8	1
266	2017-10-02 12:51:21.771006+00	52	Catherine Emanuel (1B, F)	2	[{"changed": {"fields": ["stream"]}}]	8	1
267	2017-10-02 12:51:25.442598+00	53	Edwin Ehupendo (1B, M)	2	[{"changed": {"fields": ["stream"]}}]	8	1
268	2017-10-02 12:51:28.748505+00	54	Anna Peter (1B, F)	2	[{"changed": {"fields": ["stream"]}}]	8	1
269	2017-10-02 12:51:31.955968+00	55	Hezekiah Kidava (1B, M)	2	[{"changed": {"fields": ["stream"]}}]	8	1
270	2017-10-02 12:51:35.448714+00	56	Meshack Mathato (1B, M)	2	[{"changed": {"fields": ["stream"]}}]	8	1
271	2017-10-02 12:51:38.658344+00	57	Inocent Maganga (1B, M)	2	[{"changed": {"fields": ["stream"]}}]	8	1
272	2017-10-02 12:51:42.166102+00	58	Lemaron Sironga (1B, M)	2	[{"changed": {"fields": ["stream"]}}]	8	1
273	2017-10-02 12:51:46.102963+00	59	Joel Joseph (1B, M)	2	[{"changed": {"fields": ["stream"]}}]	8	1
274	2017-10-02 12:51:49.723375+00	60	Victoria Thadeus (1B, F)	2	[{"changed": {"fields": ["stream"]}}]	8	1
275	2017-10-02 12:51:53.889567+00	61	Nickson Tumsifu (1B, M)	2	[{"changed": {"fields": ["stream"]}}]	8	1
276	2017-10-02 12:51:58.937089+00	62	Alfred Msemwa (1B, M)	2	[{"changed": {"fields": ["stream"]}}]	8	1
277	2017-10-02 12:52:02.414301+00	63	Aurelia Gerald (1B, F)	2	[{"changed": {"fields": ["stream"]}}]	8	1
278	2017-10-02 12:52:06.162512+00	64	Jonson Marko (1B, M)	2	[{"changed": {"fields": ["stream"]}}]	8	1
279	2017-10-02 12:52:09.226+00	65	Stephen David (1B, M)	2	[{"changed": {"fields": ["stream"]}}]	8	1
280	2017-10-02 12:53:06.883562+00	36	James Raphael (1B, M)	2	[{"changed": {"fields": ["stream"]}}]	8	1
281	2017-10-02 12:53:10.706106+00	37	Ian Johnson (1B, M)	2	[{"changed": {"fields": ["stream"]}}]	8	1
282	2017-10-02 12:53:14.129895+00	38	Hosiana Henry (1B, F)	2	[{"changed": {"fields": ["stream"]}}]	8	1
283	2017-10-02 12:53:17.17026+00	39	Lembrice Samuel (1B, M)	2	[{"changed": {"fields": ["stream"]}}]	8	1
284	2017-10-02 12:53:20.264842+00	40	Aubrian Francis (1B, M)	2	[{"changed": {"fields": ["stream"]}}]	8	1
285	2017-10-02 12:53:24.006928+00	41	Asha Ibrahim (1B, F)	2	[{"changed": {"fields": ["stream"]}}]	8	1
286	2017-10-02 12:53:27.680935+00	42	Ismail Msafiri (1B, M)	2	[{"changed": {"fields": ["stream"]}}]	8	1
287	2017-10-02 12:53:30.895355+00	43	Anitha Wilbroad (1B, F)	2	[{"changed": {"fields": ["stream"]}}]	8	1
288	2017-10-02 12:53:34.042647+00	44	Abdallah Shabani (1B, M)	2	[{"changed": {"fields": ["stream"]}}]	8	1
289	2017-10-02 12:53:37.468713+00	45	Jackline Pendaeli (1B, F)	2	[{"changed": {"fields": ["stream"]}}]	8	1
290	2017-10-02 12:53:40.928824+00	46	Upendo Godwin (1B, F)	2	[{"changed": {"fields": ["stream"]}}]	8	1
291	2017-10-02 12:53:45.841976+00	47	Collins Boniface (1B, M)	2	[{"changed": {"fields": ["stream"]}}]	8	1
292	2017-10-02 12:53:49.244435+00	48	Rose Jeremiah (1B, F)	2	[{"changed": {"fields": ["stream"]}}]	8	1
293	2017-10-02 12:53:53.562687+00	49	Yvonne Elisha (1B, F)	2	[{"changed": {"fields": ["stream"]}}]	8	1
294	2017-10-02 12:53:57.16608+00	50	John Jovitha (1B, M)	2	[{"changed": {"fields": ["stream"]}}]	8	1
295	2017-10-02 14:27:01.148693+00	59	Joel Joseph (1A, M)	2	[{"changed": {"fields": ["stream"]}}]	8	1
296	2017-10-02 17:17:20.405412+00	524	P3 for Aubrian Francis (1B, M)	3		10	1
297	2017-10-02 17:17:20.415791+00	523	P2 for Aubrian Francis (1B, M)	3		10	1
298	2017-10-02 17:17:20.419434+00	522	P6 for Aubrian Francis (1B, M)	3		10	1
299	2017-10-02 17:17:20.421471+00	520	P11 for Aubrian Francis (1B, M)	3		10	1
300	2017-10-02 17:17:20.424633+00	517	P5 for Aubrian Francis (1B, M)	3		10	1
301	2017-10-02 17:17:20.426434+00	516	P4 for Aubrian Francis (1B, M)	3		10	1
302	2017-10-02 17:17:20.428329+00	515	P10 for Aubrian Francis (1B, M)	3		10	1
303	2017-10-02 17:17:20.43011+00	514	P9 for Aubrian Francis (1B, M)	3		10	1
304	2017-10-02 17:17:20.431828+00	513	P11 for Lemaron Sironga (1B, M)	3		10	1
305	2017-10-02 17:17:20.434131+00	511	P7 for Aubrian Francis (1B, M)	3		10	1
306	2017-10-02 17:17:20.435705+00	510	P8 for Aubrian Francis (1B, M)	3		10	1
307	2017-10-02 17:17:51.202643+00	496	P7 for Meshack Mathato (1B, M)	3		10	1
308	2017-10-02 17:17:51.207661+00	495	P10 for Meshack Mathato (1B, M)	3		10	1
309	2017-10-03 06:58:05.284523+00	115	Matt (1B, M)	1	[{"added": {}}]	8	1
310	2017-10-03 07:05:28.369666+00	115	Matt (1B, M)	3		8	1
311	2017-10-03 07:44:04.08084+00	116	Elizabeth Marcelly (1B, F)	1	[{"added": {}}]	8	1
312	2017-10-03 08:49:47.407602+00	113	Shantel David (2B, F)	3		8	1
313	2017-10-03 08:49:57.957722+00	117	Shantel David (2B, F)	1	[{"added": {}}]	8	1
314	2017-10-03 09:19:54.540516+00	91	Niwaeli Nasiely (2B, F)	3		8	1
315	2017-10-03 09:20:06.549618+00	118	Niwaeli Nasiely (2B, F)	1	[{"added": {}}]	8	1
316	2017-10-03 10:31:28.336622+00	82	Naomi Juma (2A, F)	3		8	1
317	2017-10-03 10:31:38.024574+00	119	Naomi Juma (2A, F)	1	[{"added": {}}]	8	1
318	2017-10-04 06:04:43.399734+00	1	1A	1	[{"added": {}}]	11	1
319	2017-10-04 06:05:48.798803+00	120	Matt (1A, M)	1	[{"added": {}}]	8	1
320	2017-10-04 06:22:36.381985+00	120	Matt (1A, M)	3		8	1
321	2017-10-04 06:51:47.577872+00	21	Josephat Kamara (1B, M)	2	[{"changed": {"fields": ["stream"]}}]	8	1
322	2017-10-04 07:57:31.786287+00	1	2A	2	[{"changed": {"fields": ["form"]}}]	11	1
323	2017-10-05 08:45:22.258708+00	1	1A	2	[{"changed": {"fields": ["form"]}}]	11	1
324	2017-10-05 10:01:05.763184+00	1	1B	2	[{"changed": {"fields": ["stream"]}}]	11	1
325	2017-10-05 11:13:21.311043+00	62	Alfred Msemwa (1B, M)	3		8	1
326	2017-10-06 04:46:20.564303+00	1	2A	2	[{"changed": {"fields": ["form", "stream"]}}]	11	1
327	2017-10-06 05:55:31.216352+00	1	2B	2	[{"changed": {"fields": ["stream"]}}]	11	1
328	2017-10-06 07:03:33.216088+00	2	fidelis	1	[{"added": {}}]	4	1
329	2017-10-06 07:05:26.826647+00	2	fidelis	3		4	1
330	2017-10-09 06:15:09.285426+00	1	1A	2	[{"changed": {"fields": ["form", "stream"]}}]	11	1
331	2017-10-10 06:58:16.57093+00	1	1B	2	[{"changed": {"fields": ["stream"]}}]	11	1
332	2017-10-10 07:11:56.544694+00	121	Matt (1B, M)	1	[{"added": {}}]	8	1
333	2017-10-10 07:26:31.477675+00	121	Matt (4B, M)	2	[{"changed": {"fields": ["form"]}}]	8	1
334	2017-10-10 07:26:48.461588+00	121	MQ (4B, M)	2	[{"changed": {"fields": ["name"]}}]	8	1
335	2017-10-10 08:51:25.719227+00	1	2B	2	[{"changed": {"fields": ["form"]}}]	11	1
336	2017-10-11 06:44:55.371956+00	1	3A	2	[{"changed": {"fields": ["form", "stream"]}}]	11	1
337	2017-10-11 06:46:59.418226+00	1	3B	2	[{"changed": {"fields": ["stream"]}}]	11	1
338	2017-10-11 06:47:45.062673+00	1	4B	2	[{"changed": {"fields": ["form"]}}]	11	1
339	2017-10-11 06:52:08.626693+00	1	1A	2	[{"changed": {"fields": ["form", "stream"]}}]	11	1
340	2017-10-11 07:53:22.834547+00	1	2A	2	[{"changed": {"fields": ["form"]}}]	11	1
341	2017-10-12 14:43:34.53952+00	30	Finding Prime Numbers (Level 9)	2	[{"changed": {"fields": ["verify_code"]}}]	9	1
342	2017-10-12 14:44:19.448067+00	2514	P30 for MQ (4B, M)	3		10	1
343	2017-10-12 14:44:44.778661+00	1	4B	2	[{"changed": {"fields": ["form", "stream"]}}]	11	1
344	2017-10-13 05:13:14.477488+00	1	2A	2	[{"changed": {"fields": ["form", "stream"]}}]	11	1
345	2017-10-13 06:27:57.882086+00	1	2B	2	[{"changed": {"fields": ["stream"]}}]	11	1
346	2017-10-13 07:36:15.176977+00	3029	P30 for Fidelis Joakim (2B, M)	2	[{"changed": {"fields": ["latest_submission", "passed_tests_percent"]}}]	10	1
347	2017-10-13 07:37:32.918553+00	3029	P30 for Fidelis Joakim (2B, M)	2	[{"changed": {"fields": ["passed_tests_percent"]}}]	10	1
348	2017-10-16 06:22:25.856573+00	1	1A	2	[{"changed": {"fields": ["form", "stream"]}}]	11	1
349	2017-10-16 09:59:51.881706+00	1	4B	2	[{"changed": {"fields": ["form", "stream"]}}]	11	1
350	2017-10-16 10:16:40.104086+00	1	1B	2	[{"changed": {"fields": ["form"]}}]	11	1
351	2017-10-17 10:13:34.056333+00	1	2B	2	[{"changed": {"fields": ["form"]}}]	11	1
352	2017-10-17 11:53:59.545939+00	3507	P34 for Ilhan Mahmoud (2B, F)	2	[{"changed": {"fields": ["latest_submission", "num_submissions"]}}]	10	1
353	2017-10-17 11:57:20.524152+00	3493	P36 for Ilhan Mahmoud (2B, F)	2	[{"changed": {"fields": ["latest_submission", "num_submissions"]}}]	10	1
354	2017-10-18 06:46:49.259692+00	1	1A	2	[{"changed": {"fields": ["form", "stream"]}}]	11	1
355	2017-10-18 07:53:06.245471+00	1	2A	2	[{"changed": {"fields": ["form"]}}]	11	1
356	2017-10-19 08:32:59.45348+00	1	1A	2	[{"changed": {"fields": ["form"]}}]	11	1
357	2017-10-19 11:50:33.611814+00	1	1B	2	[{"changed": {"fields": ["stream"]}}]	11	1
358	2017-10-24 10:18:23.791036+00	3	Nice Mollel (2A, F)	2	[{"changed": {"fields": ["bonus_first_solves_in_stream"]}}]	8	1
359	2017-10-24 10:18:45.848328+00	1	Godlove Kastuli (2A, M)	2	[{"changed": {"fields": ["bonus_pass_percent"]}}]	8	1
360	2017-10-24 10:19:23.60742+00	103	Emmanuel Amos (2B, M)	2	[{"changed": {"fields": ["bonus_first_solves_in_stream"]}}]	8	1
361	2017-10-30 06:37:00.992267+00	1	1A	2	[{"changed": {"fields": ["stream"]}}]	11	1
362	2017-10-31 07:28:45.593315+00	1	1B	2	[{"changed": {"fields": ["stream"]}}]	11	1
363	2017-10-31 12:02:03.721245+00	89	Fidelis Joakim (2B, M)	2	[{"changed": {"fields": ["bonus_first_solves_in_stream"]}}]	8	1
364	2017-10-31 12:02:13.401685+00	95	George Rashid (2B, M)	2	[{"changed": {"fields": ["bonus_first_solves_in_stream"]}}]	8	1
365	2017-11-01 07:21:20.368399+00	1	2A	2	[{"changed": {"fields": ["form", "stream"]}}]	11	1
366	2017-11-01 07:21:23.732348+00	1	1A	2	[{"changed": {"fields": ["form"]}}]	11	1
367	2017-11-01 12:11:59.929307+00	1	Godlove Kastuli (2A, M)	2	[{"changed": {"fields": ["bonus_first_solves_in_stream"]}}]	8	1
368	2017-11-03 06:19:10.207859+00	3	Nice Mollel (2A, F)	2	[{"changed": {"fields": ["bonus_pass_percent", "bonus_first_solves_in_stream"]}}]	8	1
369	2017-11-03 06:19:22.285308+00	1	Godlove Kastuli (2A, M)	2	[{"changed": {"fields": ["bonus_first_solves_in_stream"]}}]	8	1
370	2017-11-03 06:20:03.383881+00	38	Hosiana Henry (1B, F)	2	[{"changed": {"fields": ["bonus_first_solves_in_stream"]}}]	8	1
371	2017-11-03 06:20:12.101887+00	43	Anitha Wilbroad (1B, F)	2	[{"changed": {"fields": ["bonus_first_solves_in_stream"]}}]	8	1
372	2017-11-03 06:20:18.864614+00	36	James Raphael (1B, M)	2	[{"changed": {"fields": ["bonus_first_solves_in_stream"]}}]	8	1
373	2017-11-03 06:20:36.006924+00	17	Eliana Loseriano (1A, F)	2	[{"changed": {"fields": ["bonus_first_solves_in_stream"]}}]	8	1
374	2017-11-03 06:20:54.677886+00	24	Fred Medard (1A, M)	2	[{"changed": {"fields": ["bonus_first_solves_in_stream"]}}]	8	1
375	2017-11-03 06:21:07.11711+00	26	John Timothe (1A, M)	2	[{"changed": {"fields": ["bonus_first_solves_in_stream"]}}]	8	1
376	2017-11-06 06:15:48.642621+00	89	Fidelis Joakim (2B, M)	2	[{"changed": {"fields": ["bonus_first_solves_in_stream"]}}]	8	1
377	2017-11-06 06:16:09.633791+00	103	Emmanuel Amos (2B, M)	2	[{"changed": {"fields": ["bonus_pass_percent", "bonus_first_solves_in_stream"]}}]	8	1
378	2017-11-06 06:16:19.153279+00	100	Ismaili Hassan (2B, M)	2	[{"changed": {"fields": ["bonus_pass_percent", "bonus_first_solves_in_stream"]}}]	8	1
379	2017-11-06 06:16:26.942715+00	108	Ilhan Mahmoud (2B, F)	2	[{"changed": {"fields": ["bonus_first_solves_in_stream"]}}]	8	1
380	2017-11-07 07:37:56.542396+00	1	1B	2	[{"changed": {"fields": ["stream"]}}]	11	1
381	2017-11-08 07:21:47.960568+00	1	1A	2	[{"changed": {"fields": ["stream"]}}]	11	1
382	2017-11-09 07:52:44.110813+00	39	Bei Jumla (Level 14)	2	[{"changed": {"fields": ["html_desc"]}}]	9	1
383	2017-11-09 08:39:45.456121+00	4183	P39 for Salum Shafi (1A, M)	2	[{"changed": {"fields": ["latest_submission", "passed_tests_percent", "passed_dtstamp"]}}]	10	1
384	2017-11-09 08:40:17.493273+00	4183	P39 for Salum Shafi (1A, M)	2	[{"changed": {"fields": ["passed_dtstamp"]}}]	10	1
385	2017-11-09 10:46:39.59497+00	1	1C	2	[{"changed": {"fields": ["stream"]}}]	11	1
386	2017-11-09 10:50:02.92751+00	4183	P39 for Salum Shafi (1A, M)	2	[{"changed": {"fields": ["passed_dtstamp"]}}]	10	1
387	2017-11-09 10:50:56.464691+00	4183	P39 for Salum Shafi (1A, M)	2	[]	10	1
388	2017-11-09 10:52:22.234483+00	1	1B	2	[{"changed": {"fields": ["stream"]}}]	11	1
389	2017-11-13 06:09:13.641435+00	1	1A	2	[{"changed": {"fields": ["stream"]}}]	11	1
390	2017-11-13 07:44:09.607639+00	35	Julius Kamara (1A, M)	2	[{"changed": {"fields": ["name"]}}]	8	1
391	2017-11-14 07:32:03.659304+00	1	1B	2	[{"changed": {"fields": ["stream"]}}]	11	1
392	2017-11-14 08:24:16.41653+00	121	MQ (1B, M)	2	[{"changed": {"fields": ["form"]}}]	8	1
393	2017-11-14 08:24:24.136961+00	121	Test Student (1B, M)	2	[{"changed": {"fields": ["name"]}}]	8	1
394	2017-11-14 08:28:22.302204+00	41	Counting neno la 'na' ya Shairi (Level 16)	2	[{"changed": {"fields": ["level"]}}]	9	1
395	2017-11-14 08:31:12.693235+00	121	Test Student (4B, M)	2	[{"changed": {"fields": ["form"]}}]	8	1
396	2017-11-14 08:57:03.819091+00	122	Josephat Tango (4A, M)	1	[{"added": {}}]	8	1
397	2017-11-14 08:59:58.056796+00	1	4A	2	[{"changed": {"fields": ["form", "stream"]}}]	11	1
398	2017-11-15 06:22:25.021869+00	1	1A	2	[{"changed": {"fields": ["form"]}}]	11	1
399	2017-11-15 12:29:48.157545+00	1	4B	2	[{"changed": {"fields": ["form", "stream"]}}]	11	1
400	2017-11-15 12:34:07.027063+00	1	1A	2	[{"changed": {"fields": ["form", "stream"]}}]	11	1
401	2017-11-17 09:04:36.543001+00	121	Test Student (4B, M)	3		8	1
402	2017-11-17 09:05:01.966473+00	123	Test Student (4A, M)	1	[{"added": {}}]	8	1
403	2017-11-17 09:05:22.045102+00	123	A Student (4A, M)	2	[{"changed": {"fields": ["name"]}}]	8	1
404	2017-11-17 09:05:41.677079+00	1	4A	2	[{"changed": {"fields": ["form"]}}]	11	1
405	2017-12-01 13:46:47.627508+00	123	A Student (4A, M)	3		8	1
406	2017-12-01 13:47:02.527041+00	124	Matt Quinn (4A, M)	1	[{"added": {}}]	8	1
407	2018-02-24 05:55:07.229571+00	124	Matt Quinn (4A, M)	3		8	1
408	2018-02-24 05:55:07.23795+00	122	Josephat Tango (4A, M)	3		8	1
409	2018-02-24 06:03:13.107479+00	119	Naomi Juma (2A, F)	3		8	1
410	2018-02-24 06:03:13.111986+00	118	Niwaeli Nasiely (2B, F)	3		8	1
411	2018-02-24 06:03:13.114075+00	117	Shantel David (2B, F)	3		8	1
412	2018-02-24 06:03:13.116264+00	116	Elizabeth Marcelly (1B, F)	3		8	1
413	2018-02-24 06:03:13.118385+00	112	Roberto Carlos (2B, M)	3		8	1
414	2018-02-24 06:03:13.122442+00	111	Nasaba Abubakari (2B, M)	3		8	1
415	2018-02-24 06:03:13.124641+00	110	Sudi Tamimu (2B, M)	3		8	1
416	2018-02-24 06:03:13.126274+00	109	Ronaldo Hippolitus (2B, M)	3		8	1
417	2018-02-24 06:03:13.12796+00	108	Ilhan Mahmoud (2B, F)	3		8	1
418	2018-02-24 06:03:13.129862+00	107	Brian John (2B, M)	3		8	1
419	2018-02-24 06:03:13.131817+00	106	Albert Herman (2B, M)	3		8	1
420	2018-02-24 06:03:13.133504+00	105	Sebastian Nione (2B, M)	3		8	1
421	2018-02-24 06:03:13.135052+00	104	Daniel Elibariki (2B, M)	3		8	1
422	2018-02-24 06:03:13.136639+00	103	Emmanuel Amos (2B, M)	3		8	1
423	2018-02-24 06:03:13.138869+00	102	Glory Shedrack (2B, F)	3		8	1
424	2018-02-24 06:03:13.141154+00	101	Philotea Gabriel (2B, F)	3		8	1
425	2018-02-24 06:03:13.143208+00	100	Ismaili Hassan (2B, M)	3		8	1
426	2018-02-24 06:03:13.145756+00	99	Rodluck Raphael (2B, M)	3		8	1
427	2018-02-24 06:03:13.148114+00	98	Irene Gabriel (2B, F)	3		8	1
428	2018-02-24 06:03:13.15003+00	97	Elizabeth Theophili (2B, F)	3		8	1
429	2018-02-24 06:03:13.15143+00	96	Tulukia Fredrick (2B, F)	3		8	1
430	2018-02-24 06:03:13.15277+00	95	George Rashid (2B, M)	3		8	1
431	2018-02-24 06:03:13.154467+00	94	Elizabeth Jacob (2B, F)	3		8	1
432	2018-02-24 06:03:13.15588+00	93	Zilpin Zakayo (2B, M)	3		8	1
433	2018-02-24 06:03:13.15759+00	92	Lilian Peter (2B, F)	3		8	1
434	2018-02-24 06:03:13.159216+00	90	Saumu Kayanda (2B, F)	3		8	1
435	2018-02-24 06:03:13.161011+00	89	Fidelis Joakim (2B, M)	3		8	1
436	2018-02-24 06:03:13.162761+00	88	Rehema Bahha (1B, F)	3		8	1
437	2018-02-24 06:03:13.164364+00	87	Naomi Stephano (2A, F)	3		8	1
438	2018-02-24 06:03:13.165978+00	86	Hawa Juma (2A, F)	3		8	1
439	2018-02-24 06:03:13.167443+00	85	Nipaely Nasieli (2A, F)	3		8	1
440	2018-02-24 06:03:13.168957+00	84	Frank Lazaro (2A, M)	3		8	1
441	2018-02-24 06:03:13.1706+00	83	Glory Peter (2A, F)	3		8	1
442	2018-02-24 06:03:13.172704+00	81	Magdalena Peter (2A, F)	3		8	1
443	2018-02-24 06:03:13.174605+00	80	Esau Yohana (2A, M)	3		8	1
444	2018-02-24 06:03:13.176501+00	79	Josephat Nathanaeli (2A, M)	3		8	1
445	2018-02-24 06:03:13.180143+00	78	Kelvin Herry (2A, M)	3		8	1
446	2018-02-24 06:03:13.182942+00	77	Adiel Charles (2A, M)	3		8	1
447	2018-02-24 06:03:13.185306+00	76	Severin Dominick (2A, M)	3		8	1
448	2018-02-24 06:03:13.187898+00	75	Magret Kafuru (2A, F)	3		8	1
449	2018-02-24 06:03:13.190419+00	74	Frederick Macha (2A, M)	3		8	1
450	2018-02-24 06:03:13.192983+00	73	George Nyakangara (2A, M)	3		8	1
451	2018-02-24 06:03:13.19581+00	72	Jeyrine John (2A, F)	3		8	1
452	2018-02-24 06:03:13.198624+00	71	Dickson Paul (2A, M)	3		8	1
453	2018-02-24 06:03:13.200507+00	70	Neema Paulo (2A, F)	3		8	1
454	2018-02-24 06:03:13.202133+00	69	Frank Paul (2A, M)	3		8	1
455	2018-02-24 06:03:13.203776+00	68	Abdul Simon (2A, M)	3		8	1
456	2018-02-24 06:03:13.205391+00	67	Veronica Bernard (2A, F)	3		8	1
457	2018-02-24 06:03:55.988053+00	125	Glory Phanuel (2A, F)	1	[{"added": {}}]	8	1
458	2018-02-24 06:04:02.929436+00	66	Peter Hamisi (2B, M)	2	[{"changed": {"fields": ["form"]}}]	8	1
459	2018-02-24 06:04:07.425824+00	65	Stephen David (2B, M)	2	[{"changed": {"fields": ["form"]}}]	8	1
460	2018-02-24 06:04:11.451212+00	64	Jonson Marko (2B, M)	2	[{"changed": {"fields": ["form"]}}]	8	1
461	2018-02-24 06:04:21.271529+00	64	Jonson Marko (2B, M)	3		8	1
462	2018-02-24 06:04:31.648609+00	63	Aurelia Gerald (2B, F)	2	[{"changed": {"fields": ["form"]}}]	8	1
463	2018-02-24 06:04:35.570009+00	61	Nickson Tumsifu (2B, M)	2	[{"changed": {"fields": ["form"]}}]	8	1
464	2018-02-24 06:04:39.675406+00	60	Victoria Thadeus (2B, F)	2	[{"changed": {"fields": ["form"]}}]	8	1
465	2018-02-24 06:04:46.618562+00	59	Joel Joseph (2A, M)	2	[{"changed": {"fields": ["form"]}}]	8	1
466	2018-02-24 06:04:51.333117+00	58	Lemaron Sironga (2B, M)	2	[{"changed": {"fields": ["form"]}}]	8	1
467	2018-02-24 06:05:00.347844+00	57	Inocent Maganga (2B, M)	2	[{"changed": {"fields": ["form"]}}]	8	1
468	2018-02-24 06:05:05.391491+00	56	Meshack Mathato (2B, M)	2	[{"changed": {"fields": ["form"]}}]	8	1
469	2018-02-24 06:05:09.982738+00	55	Hezekiah Kidava (2B, M)	2	[{"changed": {"fields": ["form"]}}]	8	1
470	2018-02-24 06:05:14.363887+00	54	Anna Peter (2B, F)	2	[{"changed": {"fields": ["form"]}}]	8	1
471	2018-02-24 06:05:19.484119+00	53	Edwin Ehupendo (2B, M)	2	[{"changed": {"fields": ["form"]}}]	8	1
472	2018-02-24 06:05:24.142137+00	52	Catherine Emanuel (2B, F)	2	[{"changed": {"fields": ["form"]}}]	8	1
473	2018-02-24 06:05:30.954419+00	51	Neema Isata (2B, F)	2	[{"changed": {"fields": ["form"]}}]	8	1
474	2018-02-24 06:05:36.95356+00	50	John Jovitha (2B, M)	2	[{"changed": {"fields": ["form"]}}]	8	1
475	2018-02-24 06:05:42.079286+00	49	Yvonne Elisha (2B, F)	2	[{"changed": {"fields": ["form"]}}]	8	1
476	2018-02-24 06:05:50.218272+00	48	Rose Jeremiah (2B, F)	2	[{"changed": {"fields": ["form"]}}]	8	1
477	2018-02-24 06:05:55.975964+00	47	Collins Boniface (2B, M)	2	[{"changed": {"fields": ["form"]}}]	8	1
478	2018-02-24 06:06:04.034095+00	46	Upendo Godwin (2B, F)	2	[{"changed": {"fields": ["form"]}}]	8	1
479	2018-02-24 06:06:09.799533+00	45	Jackline Pendaeli (2B, F)	2	[{"changed": {"fields": ["form"]}}]	8	1
480	2018-02-24 06:06:17.80124+00	44	Abdallah Shabani (2B, M)	2	[{"changed": {"fields": ["form"]}}]	8	1
481	2018-02-24 06:06:22.945443+00	43	Anitha Wilbroad (2B, F)	2	[{"changed": {"fields": ["form"]}}]	8	1
482	2018-02-24 06:06:38.886562+00	3	Nice Mollel (2A, F)	3		8	1
483	2018-02-24 06:06:38.890152+00	2	Gabriel Damian (2A, M)	3		8	1
484	2018-02-24 06:06:38.8926+00	1	Godlove Kastuli (2A, M)	3		8	1
485	2018-02-24 06:26:28.766113+00	1	2A	2	[{"changed": {"fields": ["form"]}}]	11	1
486	2018-02-24 06:26:49.414624+00	1	2B	2	[{"changed": {"fields": ["stream"]}}]	11	1
487	2018-02-24 07:56:35.284908+00	43	Wasichana na Wavulana (Level 17)	3		9	1
488	2018-02-24 07:56:35.290154+00	41	Counting neno la 'na' ya Shairi (Level 16)	3		9	1
489	2018-02-24 07:56:35.292336+00	40	Counting Maneno ya Shairi (Level 15)	3		9	1
490	2018-02-24 07:56:35.294165+00	39	Bei Jumla (Level 14)	3		9	1
491	2018-02-24 07:56:35.295949+00	38	Counting Vowels in Names (Level 13)	3		9	1
492	2018-02-24 07:56:35.297911+00	37	Magnetic Force on a Moving Charged Particle (Level 11)	3		9	1
493	2018-02-24 07:56:35.299592+00	36	The Pressure Level of Light (Level 11)	3		9	1
494	2018-02-24 07:56:35.301125+00	35	The Intensity Level of Light (Level 11)	3		9	1
495	2018-02-24 07:56:35.302535+00	34	Vodacom and Halotel (Level 12)	3		9	1
496	2018-02-24 07:56:35.303863+00	33	Motion Equation in Physics (Level 11)	3		9	1
497	2018-02-24 07:56:35.305527+00	32	Alkali Metals (Level 10)	3		9	1
498	2018-02-24 07:56:35.307276+00	31	Noble Gases (Level 10)	3		9	1
499	2018-02-24 07:56:35.308822+00	30	Finding Prime Numbers (Level 9)	3		9	1
500	2018-02-24 07:56:35.310287+00	29	Celsius to Fahrenheit (Level 8)	3		9	1
501	2018-02-24 07:56:35.311899+00	28	Fahrenheit to Celsius (Level 8)	3		9	1
502	2018-02-24 07:56:35.313237+00	27	Uchaguzi 2015: Mkoa wa Darisalam (Level 7)	3		9	1
503	2018-02-24 07:56:35.31459+00	26	Counting Down using Recursion (Level 7)	3		9	1
504	2018-02-24 07:56:35.315921+00	25	Cube All Numbers in a List (Level 7)	3		9	1
505	2018-02-24 07:56:35.317406+00	24	Albamu ya Kwanza ya Lady Jay Dee (Level 7)	3		9	1
506	2018-02-24 07:56:35.31888+00	23	Quadratic Formula (Level 8)	3		9	1
507	2018-02-24 07:56:35.320372+00	22	Perimeter of a Triangle (Level 6)	3		9	1
508	2018-02-24 07:56:35.321681+00	21	Square All Numbers in a List (Level 6)	3		9	1
509	2018-02-24 07:56:35.323159+00	20	Perimeter of a Square (Level 6)	3		9	1
510	2018-02-24 07:56:35.32485+00	19	Area of a Triangle (Level 6)	3		9	1
511	2018-02-24 07:56:35.326195+00	18	Area of a Square (Level 6)	3		9	1
512	2018-02-24 07:56:35.327523+00	17	Heshima Iko? (Level 6)	3		9	1
513	2018-02-24 07:56:35.328969+00	16	Andika Software Kwa Calculator (Level 5)	3		9	1
514	2018-02-24 07:56:35.330491+00	14	East African Community (EAC) (Level 4)	3		9	1
515	2018-02-24 07:56:35.333783+00	13	Multiply Each Number in a List by 3 (Level 4)	3		9	1
516	2018-02-24 07:56:35.335261+00	12	Counting Down from 5 (Level 4)	3		9	1
517	2018-02-24 07:56:35.336641+00	11	Sum Function (Level 1)	3		9	1
518	2018-02-24 07:56:35.338142+00	10	Meza Ngapi? (Level 1)	3		9	1
519	2018-02-24 07:56:35.339712+00	9	Count to 10 (Level 1)	3		9	1
520	2018-02-24 07:56:35.341522+00	8	"School Senior Secondary Tumaini" (Level 1)	3		9	1
521	2018-02-24 07:56:35.343188+00	7	Shule Iko Wapi? (Level 1)	3		9	1
522	2018-02-24 07:56:35.344782+00	6	Odd and Even (Level 1)	3		9	1
523	2018-02-24 07:56:35.34619+00	5	Counting Numbers in a List (Level 1)	3		9	1
524	2018-02-24 07:56:35.347655+00	4	Sum of Two Numbers (Level 1)	3		9	1
525	2018-02-24 07:56:35.349209+00	3	Guanine in DNA (Level 3)	3		9	1
526	2018-02-24 07:56:35.350769+00	2	Pythagorean Theorem (Level 2)	3		9	1
527	2018-02-24 07:56:35.352305+00	1	Nyerere Alikuwa Rais Lini? (Level 3)	3		9	1
528	2018-02-24 07:56:57.284501+00	14	PLACEHOLDER PROBLEM (Level 1)	1	[{"added": {}}]	9	1
529	2018-02-24 11:52:14.153466+00	14	Orodha ya Maziwa Machache ya Tanzania (Level 1)	2	[{"changed": {"fields": ["name", "initial_code", "goal_code"]}}]	9	1
530	2018-02-24 11:55:09.692916+00	14	Orodha ya Maziwa Machache ya Tanzania (Level 1)	2	[{"changed": {"fields": ["goal_code"]}}]	9	1
531	2018-02-24 11:57:23.187833+00	14	Orodha ya Maziwa Machache ya Tanzania (Level 1)	2	[{"changed": {"fields": ["initial_code"]}}]	9	1
532	2018-02-24 11:58:08.629158+00	14	Orodha ya Maziwa Machache ya Tanzania (Level 1)	2	[{"changed": {"fields": ["initial_code"]}}]	9	1
533	2018-02-24 11:58:43.161105+00	14	Orodha ya Maziwa Machache ya Tanzania (Level 1)	2	[{"changed": {"fields": ["initial_code"]}}]	9	1
534	2018-02-24 12:02:30.170122+00	14	Orodha ya Maziwa Machache ya Tanzania (Level 1)	2	[{"changed": {"fields": ["initial_code"]}}]	9	1
535	2018-02-24 12:02:44.594422+00	14	Orodha ya Maziwa Machache ya Tanzania (Level 1)	2	[{"changed": {"fields": ["initial_code"]}}]	9	1
536	2018-02-24 12:02:52.060173+00	14	Orodha ya Maziwa Machache ya Tanzania (Level 1)	2	[{"changed": {"fields": ["initial_code"]}}]	9	1
537	2018-02-24 13:30:42.365211+00	4323	P14 for Abdallah Shabani (2B, M)	3		10	1
538	2018-02-24 13:30:42.373773+00	4322	P14 for Abdallah Shabani (2B, M)	3		10	1
539	2018-02-24 13:30:42.376491+00	4321	P14 for Abdallah Shabani (2B, M)	3		10	1
540	2018-02-24 13:30:42.379189+00	4320	P14 for Abdallah Shabani (2B, M)	3		10	1
541	2018-02-24 15:12:20.371985+00	4325	P14 for Anitha Wilbroad (2B, F)	3		10	1
542	2018-02-24 15:12:20.380208+00	4324	P14 for Abdallah Shabani (2B, M)	3		10	1
543	2018-02-24 15:17:14.249907+00	4326	P14 for Abdallah Shabani (2B, M)	3		10	1
544	2018-02-24 15:21:57.140254+00	1	2A	2	[{"changed": {"fields": ["stream"]}}]	11	1
545	2018-02-25 06:02:43.921138+00	14	Orodha ya Maziwa Machache ya Tanzania (Level 1)	2	[{"changed": {"fields": ["goal_code"]}}]	9	1
546	2018-02-25 06:03:19.50526+00	14	Orodha ya Maziwa Machache ya Tanzania (Level 1)	2	[{"changed": {"fields": ["goal_code"]}}]	9	1
547	2018-02-25 06:04:51.7547+00	10	Dorcus Ayubu (2A, F)	2	[{"changed": {"fields": ["bonus_pass_percent", "bonus_first_solves_in_stream"]}}]	8	1
548	2018-02-25 06:12:05.702848+00	15	TSSS Webpage (Level 1)	1	[{"added": {}}]	9	1
549	2018-02-25 06:12:13.39248+00	15	TSSS Webpage (Level 1)	2	[{"changed": {"fields": ["initial_code"]}}]	9	1
550	2018-02-25 06:12:23.000803+00	4334	P14 for Christiner Christopher (2A, F)	3		10	1
551	2018-02-25 06:12:23.005115+00	4333	P14 for Endesh Gogo (2A, F)	3		10	1
552	2018-02-25 06:12:23.008479+00	4332	P14 for Dorcus Ayubu (2A, F)	3		10	1
553	2018-02-25 06:12:23.011652+00	4331	P14 for Christopher Bernard (2A, M)	3		10	1
554	2018-02-25 06:12:23.01463+00	4330	P14 for Calvin John (2A, M)	3		10	1
555	2018-02-25 06:12:23.017804+00	4329	P14 for Asha Ibrahim (2B, F)	3		10	1
556	2018-02-25 06:12:23.019935+00	4328	P14 for Anitha Wilbroad (2B, F)	3		10	1
557	2018-02-25 06:12:23.022137+00	4327	P14 for Abdallah Shabani (2B, M)	3		10	1
558	2018-02-25 06:12:51.606968+00	10	Dorcus Ayubu (2A, F)	2	[{"changed": {"fields": ["bonus_pass_percent", "bonus_first_solves_in_stream", "total_pass_percent", "total_first_solves_in_stream"]}}]	8	1
559	2018-02-25 06:58:38.417874+00	16	Habari za Maziwa ya Tanzania (Level 2)	1	[{"added": {}}]	9	1
560	2018-02-25 07:06:13.324529+00	4338	P16 for Dorcus Ayubu (2A, F)	3		10	1
561	2018-02-25 07:06:13.329172+00	4337	P15 for Dorcus Ayubu (2A, F)	3		10	1
562	2018-02-25 07:06:13.332131+00	4336	P15 for Endesh Gogo (2A, F)	3		10	1
563	2018-02-25 07:06:13.334615+00	4335	P14 for Dorcus Ayubu (2A, F)	3		10	1
564	2018-02-25 07:06:59.749521+00	1	2B	2	[{"changed": {"fields": ["stream"]}}]	11	1
565	2018-02-25 07:16:14.852342+00	4343	P16 for Asha Ibrahim (2B, F)	3		10	1
566	2018-02-25 07:16:14.856672+00	4342	P14 for Asha Ibrahim (2B, F)	3		10	1
567	2018-02-25 07:16:14.858845+00	4341	P15 for Asha Ibrahim (2B, F)	3		10	1
568	2018-02-25 07:16:14.861016+00	4340	P14 for Anitha Wilbroad (2B, F)	3		10	1
569	2018-02-25 07:16:14.86545+00	4339	P14 for Abdallah Shabani (2B, M)	3		10	1
570	2018-02-26 11:06:39.527084+00	4350	P16 for Anitha Wilbroad (2B, F)	3		10	1
571	2018-02-26 11:06:39.542226+00	4349	P14 for Anna Peter (2B, F)	3		10	1
572	2018-02-26 11:06:39.548494+00	4348	P15 for Anna Peter (2B, F)	3		10	1
573	2018-02-26 11:06:39.551+00	4347	P14 for Anitha Wilbroad (2B, F)	3		10	1
574	2018-02-26 11:06:39.553744+00	4346	P15 for Abdallah Shabani (2B, M)	3		10	1
575	2018-02-26 11:06:39.555722+00	4345	P15 for Anitha Wilbroad (2B, F)	3		10	1
576	2018-02-26 11:06:39.558411+00	4344	P14 for Abdallah Shabani (2B, M)	3		10	1
577	2018-02-27 11:16:37.848242+00	126	Elizabeth Marcelly (2B, F)	1	[{"added": {}}]	8	1
578	2018-02-28 11:02:51.038527+00	1	2A	2	[{"changed": {"fields": ["stream"]}}]	11	1
579	2018-02-28 12:32:25.580753+00	1	2B	2	[{"changed": {"fields": ["stream"]}}]	11	1
\.


--
-- Name: django_admin_log_id_seq; Type: SEQUENCE SET; Schema: public; Owner: jmuser
--

SELECT pg_catalog.setval('django_admin_log_id_seq', 579, true);


--
-- Data for Name: django_content_type; Type: TABLE DATA; Schema: public; Owner: jmuser
--

COPY django_content_type (id, app_label, model) FROM stdin;
1	admin	logentry
2	auth	group
3	auth	permission
4	auth	user
5	contenttypes	contenttype
6	sessions	session
7	main	client
8	main	student
9	main	problem
10	main	progress
11	main	accesswhitelist
\.


--
-- Name: django_content_type_id_seq; Type: SEQUENCE SET; Schema: public; Owner: jmuser
--

SELECT pg_catalog.setval('django_content_type_id_seq', 11, true);


--
-- Data for Name: django_migrations; Type: TABLE DATA; Schema: public; Owner: jmuser
--

COPY django_migrations (id, app, name, applied) FROM stdin;
1	contenttypes	0001_initial	2017-09-26 09:32:46.117374+00
2	auth	0001_initial	2017-09-26 09:32:46.21829+00
3	admin	0001_initial	2017-09-26 09:32:46.251906+00
4	admin	0002_logentry_remove_auto_add	2017-09-26 09:32:46.272187+00
5	contenttypes	0002_remove_content_type_name	2017-09-26 09:32:46.294777+00
6	auth	0002_alter_permission_name_max_length	2017-09-26 09:32:46.303478+00
7	auth	0003_alter_user_email_max_length	2017-09-26 09:32:46.316588+00
8	auth	0004_alter_user_username_opts	2017-09-26 09:32:46.331249+00
9	auth	0005_alter_user_last_login_null	2017-09-26 09:32:46.360369+00
10	auth	0006_require_contenttypes_0002	2017-09-26 09:32:46.36316+00
11	auth	0007_alter_validators_add_error_messages	2017-09-26 09:32:46.373944+00
12	auth	0008_alter_user_username_max_length	2017-09-26 09:32:46.389363+00
13	main	0001_initial	2017-09-26 09:32:46.397384+00
14	main	0002_client_password	2017-09-26 09:32:46.408355+00
15	sessions	0001_initial	2017-09-26 09:32:46.4223+00
16	main	0003_auto_20170926_1002	2017-09-26 10:02:09.020533+00
17	main	0004_student_gender	2017-09-26 14:20:59.825059+00
18	main	0005_problem	2017-09-26 14:35:47.014785+00
19	main	0006_progress	2017-09-26 17:11:57.569047+00
20	main	0007_auto_20170926_1721	2017-09-26 17:21:43.832185+00
21	main	0008_auto_20170926_1722	2017-09-26 17:22:36.567128+00
22	main	0009_auto_20170926_1723	2017-09-26 17:23:48.67523+00
23	main	0010_remove_progress_problem_seqnum	2017-09-27 07:56:01.146438+00
24	main	0011_auto_20170927_1007	2017-09-27 10:07:21.37726+00
25	main	0012_auto_20170927_1312	2017-09-27 13:12:41.832926+00
26	main	0013_problem_level	2017-09-27 15:04:48.396596+00
27	main	0014_auto_20171002_1244	2017-10-02 12:44:30.491946+00
28	main	0015_accesswhitelist	2017-10-04 05:59:40.542151+00
29	main	0016_auto_20171023_1249	2017-10-24 10:16:45.073363+00
30	main	0017_auto_20180224_1151	2018-02-24 11:51:19.419571+00
31	main	0018_auto_20180224_1309	2018-02-24 13:09:21.747025+00
32	main	0019_auto_20180224_1316	2018-02-24 13:16:50.485268+00
33	main	0020_student_motivation_index	2018-03-01 08:16:01.906093+00
\.


--
-- Name: django_migrations_id_seq; Type: SEQUENCE SET; Schema: public; Owner: jmuser
--

SELECT pg_catalog.setval('django_migrations_id_seq', 33, true);


--
-- Data for Name: django_session; Type: TABLE DATA; Schema: public; Owner: jmuser
--

COPY django_session (session_key, session_data, expire_date) FROM stdin;
2oamirho3dvttkcg7aeuftu7rxei7iu8	OGNkNTBkM2VkNGIxOTM2ODI2NGQ0Y2Q0YTQ5MzI5NTkzZThjMTI0NTp7Il9hdXRoX3VzZXJfYmFja2VuZCI6ImRqYW5nby5jb250cmliLmF1dGguYmFja2VuZHMuTW9kZWxCYWNrZW5kIiwiX2F1dGhfdXNlcl9pZCI6IjEiLCJfYXV0aF91c2VyX2hhc2giOiJhNDExM2Y1MDc2ZDM4Y2Q3N2M4MzA3M2Q0YTQxMjI0NDQ5YjNiYzBmIn0=	2017-10-16 09:28:26.412842+00
c4zhr8d54kzvd3c9nr0w2c7o8rz82sk5	ZmQ3M2ZhZmQ3NDI4OGQwYWJkNWJjMmYzZTVkNDg2NTM1MmIyZjc1Mzp7Il9hdXRoX3VzZXJfaGFzaCI6ImE0MTEzZjUwNzZkMzhjZDc3YzgzMDczZDRhNDEyMjQ0NDliM2JjMGYiLCJfYXV0aF91c2VyX2lkIjoiMSIsIl9hdXRoX3VzZXJfYmFja2VuZCI6ImRqYW5nby5jb250cmliLmF1dGguYmFja2VuZHMuTW9kZWxCYWNrZW5kIn0=	2017-11-15 12:11:18.947867+00
g7edh3v4mvld1hrgjy8qkbprecm2b6nw	MGUzZTJkZWI3OGQ2MmNhNmVmMGY2YjYzYTk3MTQ2ZDU3NjFmYzNlMjp7Il9hdXRoX3VzZXJfaGFzaCI6ImE0MTEzZjUwNzZkMzhjZDc3YzgzMDczZDRhNDEyMjQ0NDliM2JjMGYiLCJfYXV0aF91c2VyX2JhY2tlbmQiOiJkamFuZ28uY29udHJpYi5hdXRoLmJhY2tlbmRzLk1vZGVsQmFja2VuZCIsIl9hdXRoX3VzZXJfaWQiOiIxIn0=	2017-12-01 09:03:28.147265+00
5ddaid98pummv1itvuf6etcnnohplusn	ZmQ3M2ZhZmQ3NDI4OGQwYWJkNWJjMmYzZTVkNDg2NTM1MmIyZjc1Mzp7Il9hdXRoX3VzZXJfaGFzaCI6ImE0MTEzZjUwNzZkMzhjZDc3YzgzMDczZDRhNDEyMjQ0NDliM2JjMGYiLCJfYXV0aF91c2VyX2lkIjoiMSIsIl9hdXRoX3VzZXJfYmFja2VuZCI6ImRqYW5nby5jb250cmliLmF1dGguYmFja2VuZHMuTW9kZWxCYWNrZW5kIn0=	2017-12-15 13:46:28.406818+00
pacb42abfuq2818gj0j0289x3u96s4k3	ZGU4OWFiODU5ZDRhNzk0YWNmMzRiZWVlNTllZmYxMDMxMzQ2NGE2NTp7Il9hdXRoX3VzZXJfaWQiOiIxIiwiX2F1dGhfdXNlcl9oYXNoIjoiYTQxMTNmNTA3NmQzOGNkNzdjODMwNzNkNGE0MTIyNDQ0OWIzYmMwZiIsIl9hdXRoX3VzZXJfYmFja2VuZCI6ImRqYW5nby5jb250cmliLmF1dGguYmFja2VuZHMuTW9kZWxCYWNrZW5kIn0=	2018-03-10 05:54:41.927609+00
xf1905uvzguk0jcg2j3z4mhjygybuk3o	ZmQ3M2ZhZmQ3NDI4OGQwYWJkNWJjMmYzZTVkNDg2NTM1MmIyZjc1Mzp7Il9hdXRoX3VzZXJfaGFzaCI6ImE0MTEzZjUwNzZkMzhjZDc3YzgzMDczZDRhNDEyMjQ0NDliM2JjMGYiLCJfYXV0aF91c2VyX2lkIjoiMSIsIl9hdXRoX3VzZXJfYmFja2VuZCI6ImRqYW5nby5jb250cmliLmF1dGguYmFja2VuZHMuTW9kZWxCYWNrZW5kIn0=	2018-03-13 11:59:48.412495+00
\.


--
-- Data for Name: main_accesswhitelist; Type: TABLE DATA; Schema: public; Owner: jmuser
--

COPY main_accesswhitelist (id, form, stream) FROM stdin;
1	2	B
\.


--
-- Name: main_accesswhitelist_id_seq; Type: SEQUENCE SET; Schema: public; Owner: jmuser
--

SELECT pg_catalog.setval('main_accesswhitelist_id_seq', 1, true);


--
-- Data for Name: main_problem; Type: TABLE DATA; Schema: public; Owner: jmuser
--

COPY main_problem (id, name, goal_code, initial_code, level) FROM stdin;
17	Tembo	<!doctype html>\r\n<html>\r\n  <head>\r\n    <title></title>\r\n    <style>\r\n        img, nav {\r\n            margin: 20px auto;\r\n            display: block;\r\n            text-align: center;\r\n        }\r\n    </style>\r\n  </head>\r\n  <body>\r\n    <h1><center>Tembo</center></h1>\r\n    <img src="/static/main/images/tembo.gif"/>\r\n    <nav>\r\n    <button>Home</button>\r\n    <button>What do they eat?</button>\r\n    <button>Where do they live?</button>\r\n    <button>Photos</button>\r\n    </nav>\r\n    <center>\r\n        This website is about elephants. Click the buttons above to learn more.\r\n    </center>\r\n  </body>\r\n</html>	<!doctype html>\r\n<html>\r\n  <head>\r\n    <title></title>\r\n  </head>\r\n  <body>\r\n    <!-- Elephants: /static/main/images/tembo.gif -->\r\n    \r\n  </body>\r\n</html>	3
18	Ramani ya Zambia na Tanzania	<!doctype html>\r\n<html>\r\n  <head>\r\n    <title></title>\r\n    <style>\r\n        #zambia {\r\n            float: left;\r\n        }\r\n        #tz {\r\n            float: right;\r\n        }\r\n    </style>\r\n  </head>\r\n  <body>\r\n    <h1><center>Ramani</center></h1>\r\n    <hr/>\r\n    <p>Kule Afrika Mashariki, Zambia iko upande wa kushoto, na Tanzania iko upande wa kulia, karibu na Bahari ya Hindi.</p>\r\n    <img id="zambia" src="/static/main/images/zambiamap.png"/>\r\n    <img id="tz" src="/static/main/images/tzmap.png"/>\r\n  </body>\r\n</html>	<!doctype html>\r\n<html>\r\n  <head>\r\n    <title></title>\r\n  </head>\r\n  <body>\r\n    <!-- Zambia map: /static/main/images/zambiamap.png -->\r\n    <!-- Tanzania map: /static/main/images/tzmap.png -->\r\n  </body>\r\n</html>	3
19	Uchaguzi 2015	<!doctype html>\r\n<html>\r\n  <head>\r\n    <title></title>\r\n    <style>\r\n        body {\r\n            background-color: lightgreen;\r\n            color: darkblue;\r\n        }\r\n    </style>\r\n  </head>\r\n  <body>\r\n    <h1>Uchaguzi 2015</h1>\r\n    <img src="/static/main/images/tzflag.gif"/>\r\n    <img src="/static/main/images/tzsymbol.png"/>\r\n    <br/>\r\n    <label>Full Name: </label>\r\n    <input/>\r\n    <br/>\r\n    <label>Date of Birth</label>\r\n    <input/>\r\n    <br/>\r\n    <label>E-ID Number</label>\r\n    <input/>\r\n    <br/>\r\n    <br/>\r\n    <label>For whom do you wish to vote?</label>\r\n    <br/>\r\n    <input type="radio" name="vote"/>Anna Elisha Mghwira\r\n    <br/>\r\n    <input type="radio" name="vote"/>John Magufuli\r\n    <br/>\r\n    <input type="radio" name="vote"/>Edward Lowassa\r\n    <br/><br/>\r\n    <button>Submit Your Vote</button>\r\n  </body>\r\n</html>	<!doctype html>\r\n<html>\r\n  <head>\r\n    <title></title>\r\n  </head>\r\n  <body>\r\n    <!-- TZ flag: /static/main/images/tzflag.gif -->\r\n    <!-- TZ emblem: /static/main/images/tzsymbol.png -->\r\n  </body>\r\n</html>	4
14	Orodha ya Maziwa Machache ya Tanzania	<!doctype html>\r\n<html>\r\n  <head>\r\n    <title></title>\r\n    <style>\r\n        body {\r\n            background-color: darkblue;\r\n            color: white;\r\n        }\r\n    </style>\r\n  </head>\r\n  <body>\r\n    <h1>Maziwa ya Tanzania</h1>\r\n    <h3>Orodha ya maziwa machache ya Tanzania inatolewa kama ifuatavyo:</h3>\r\n    <ol>\r\n        <li>Ziwa Victoria</li>\r\n        <li>Ziwa Tanganyika</li>\r\n        <li>Ziwa Nyasa</li>\r\n        <li>Ziwa Rukwa</li>\r\n        <li>Ziwa Eyasi</li>\r\n        <li>Ziwa Natron</li>\r\n        <li>Ziwa Manyara</li>\r\n        <li>Ziwa Burigi</li>\r\n        <li>Ziwa Balangida</li>\r\n        <li>Ziwa Jipe</li>\r\n    </ol>\r\n  </body>\r\n</html>	<!doctype html>\r\n<html>\r\n  <head>\r\n    <title></title>\r\n  </head>\r\n  <body>\r\n  \r\n  </body>\r\n</html>	1
15	TSSS Webpage	<!doctype html>\r\n<html>\r\n  <head>\r\n    <title></title>\r\n    <style>\r\n        body {\r\n            background-color: yellow;\r\n            color: blue;\r\n        }\r\n    </style>\r\n  </head>\r\n  <body>\r\n    <h1>Tumaini Senior Secondary School</h1>\r\n    <ul>\r\n        <li>Iko Makuyuni.</li>\r\n        <li>Kuna wanafunzi mia moja sabini kule.</li>\r\n        <li>Wanafunzi wanatokea sehemu nyingi za Tanzania.</li>\r\n    </ul>\r\n    <h2>Sasa shule hii inazo Forms:</h2>\r\n    <ol>\r\n        <li>Form 1</li>\r\n        <li>Form 2</li>\r\n        <li>Form 3</li>\r\n    </ol>\r\n    Wataongeza Form 4 mwaka ujayo.\r\n  </body>\r\n</html>	<!doctype html>\r\n<html>\r\n  <head>\r\n    <title></title>\r\n  </head>\r\n  <body>\r\n  \r\n  </body>\r\n</html>	1
16	Habari za Maziwa ya Tanzania	<!doctype html>\r\n<html>\r\n  <head>\r\n    <title></title>\r\n    <style>\r\n        table { background-color: cyan; }\r\n        h1 { text-align : center; }\r\n    </style>\r\n  </head>\r\n  <body>\r\n    <h1>Habari za Maziwa ya Tanzania</h1>\r\n    <table>\r\n        <tr>\r\n            <th>Jina</th>\r\n            <th>Picha</th>\r\n            <th>Eneo</th>\r\n        </tr>\r\n        <tr>\r\n            <td>Ziwa Victoria</td>\r\n            <td><img src="/static/main/images/ziwa_victoria.jpg"/></td>\r\n            <td>68,800 km<sup>2</sup></td>\r\n        </tr>\r\n        <tr>\r\n            <td>Ziwa Tanganyika</td>\r\n            <td><img src="/static/main/images/ziwa_tanganyika.jpg"/></td>\r\n            <td>32,900 km<sup>2</sup></td>\r\n        </tr>\r\n        <tr>\r\n            <td>Ziwa Nyasa</td>\r\n            <td><img src="/static/main/images/ziwa_nyasa.jpg"/></td>\r\n            <td>29,600 km<sup>2</sup></td>\r\n        </tr>\r\n        <tr>\r\n            <td>Ziwa Rukwa</td>\r\n            <td><img src="/static/main/images/ziwa_rukwa.png"/></td>\r\n            <td>5,760 km<sup>2</sup></td>\r\n        </tr>\r\n        <tr>\r\n            <td>Ziwa Eyasi</td>\r\n            <td><img src="/static/main/images/ziwa_eyasi.jpg"/></td>\r\n            <td>1,050 km<sup>2</sup></td>\r\n        </tr>\r\n    </table>\r\n  </body>\r\n</html>	<!doctype html>\r\n<html>\r\n  <head>\r\n    <title></title>\r\n  </head>\r\n  <body>\r\n    <!-- Use these image paths to complete the challenge: -->\r\n    <!-- Lake Victoria:      /static/main/images/ziwa_victoria.jpg -->\r\n    <!-- Lake Tanganyika:    /static/main/images/ziwa_tanganyika.jpg -->\r\n    <!-- Lake Nyasa:         /static/main/images/ziwa_nyasa.jpg -->\r\n    <!-- Lake Rukwa:         /static/main/images/ziwa_rukwa.png -->\r\n    <!-- Lake Eyasi:         /static/main/images/ziwa_eyasi.jpg -->\r\n    \r\n    \r\n    \r\n  </body>\r\n</html>	2
\.


--
-- Name: main_problem_id_seq; Type: SEQUENCE SET; Schema: public; Owner: jmuser
--

SELECT pg_catalog.setval('main_problem_id_seq', 16, true);


--
-- Data for Name: main_progress; Type: TABLE DATA; Schema: public; Owner: jmuser
--

COPY main_progress (id, latest_submission, started_dtstamp, passed_dtstamp, problem_id_id, student_id_id, passed) FROM stdin;
4366	<!doctype html>\n<html>\n  <head>\n      <style>\n      body{\n          color:white;\n                  background-color:darkblue}\n      </style>\n    <title></title>\n  </head>\n  <body>\n <h1>Maziwa ya  Tanzania</h1>\n <h2>Orodha ya maziwa machache ya Tanzania inatolewa kama ifuatavyo</h2>\n <ol>\n     <li>Ziwa Victoria</li>\n     <li>Ziwa Tanganyika</li>\n     <li>Ziwa Nyasa</li>\n     <li>Ziwa Rukwa</li>\n     <li>Ziwa Eyasi</li>\n     <li>Ziwa Manyara</li>\n     <li>Ziwa Burigi</li>\n     <li>Ziwa Balangida</li>\n     <li>Ziwa Jipe</li>\n </ol>\n  </body>\n</html>	2018-02-27 10:55:42.864541+00	2018-02-28 12:49:45.954926+00	14	58	t
4381	<!doctype html>\n<html>\n  <head>\n    <title></title>\n    <style>\n        body{color:white;}\n        body{background-color:darkblue;}\n    </style>\n  </head>\n  <body>\n  <h1>Maziwa ya Tanzania</h1>\n  <h3>Orodha ya maziwa machache ya Tanzania inatolewa kama ifuatavyo:</h3>\n  <ol><li>Ziwa Victoria</li>\n  <li>Ziwa Tanganyika</li>\n  <li>Ziwa Nyasa </li>\n  <li>Ziwa Rukwa</li>\n  <li>Ziwa Eyasi</li>\n  <li>Ziwa Natron</li>\n  <li>Ziwa Manyara</li>\n  <li>Ziwa Burigi</li>\n  <li>Ziwa Balangida</li>\n  <li>Ziwa Jipe</li>\n  </ol>\n  </body>\n</html>	2018-02-27 11:19:33.744104+00	2018-02-27 11:33:22.307631+00	14	40	t
4460	<!doctype html>\n<html>\n  <head>\n    <title></title>\n  </head>\n  <body>\n  <h1>Maziwa ya Tanzania</h1>\n  <h3>Orodha ya maziwa machache ya Tanzania inatolewa kama ifuatavyo</h3>\n  <ol>\n  <li>Ziwa Victoria</li> \n  <li>Ziwa Tanganyika</li>\n  <li>Ziwa Nyasa</li>\n  <li>Ziwa Rukwa</li>\n  <li>Ziwa Eyasi</li>\n  </ol>\n  </body>\n</html>	2018-02-28 11:55:07.949082+00	\N	14	27	f
4372	<!doctype html>\n<html>\n  <head>\n    <title></title>\n  </head>\n  <body>\n  <h1>Maziwa ya Tanzania</h1>\n  <ol>\n<h2>Orodha ya maziwa ya</h2>	2018-02-27 10:58:01.259638+00	\N	14	41	f
4377		2018-02-27 11:15:13.342841+00	\N	15	60	f
4397	<!doctype html>\n<html>\n  <head>\n    <title></title>\n    <h1>MAZIWA YA TANZANIA</h1>\n    <h2>Orodha ya maziwa machache ya Tanzania inayotolewa kama ifuatayo:</h2>\n \n  \n  <style>\n      body {background-color:darkblue;\n      color:white;\n      }\n  </style>\n  <ol>\n      <li>ziwa Victoria</li>\n      <li>ziwa Tanganyika</li>\n      <li>ziwa Nyasa</li>\n      <li>ziwa Rukwa</li>\n      <li>ziwa Eyasi</li>\n      <li>ziwa Natron</li>\n      <li>ziwa Manyara</li>\n      <li>ziwa Burigi</li>\n      <li>ziwa Balangida</li>\n      <li>ziwa Jipe</li>\n  </ol>\n  </body>\n</html>	2018-02-27 11:35:25.44063+00	\N	14	46	f
4363	<!doctype html>\n<html>\n  <head>\n    <title></title>\n    <style>\n        body {background-color:yellow;\n        color:blue;\n    </style>\n    <ol>\n    \n    \n    <h1>Tumaini senior secondary school</h1>\n    <li>Iko Makuyuni.</li>\n    <li>Kuna wanafunzi mia moja na sabini kule.</li>\n    <li>Wanafunzi wanatokea sehemu nyingi za Tanzania.\n    <h1>sasa shule hii inazo Forms:</h1>\n     <li>form1</li>\n     <li>form2</li>        \n     <li>form3</li>\n     </ol>\n     Watongeza Form 4 mwaka ujao.\n\n \n  \n  \n  \n  </body>\n</html>	2018-02-27 10:55:36.813783+00	\N	15	51	f
4369	<!doctype html>\n<html>\n  <head>\n    <title></title>\n    back ground color-:yellow\n  </head>\n  \n  <body>\n  <h1>Tumaini  Senior Secondary School</h1>\n     <li>Iko Makuyuni.</li>\n     <li>Kuna wanafunzi mia moja sabini kule.</li>\n     <li>Wanafunzi wanatokea sehemu nyingi za Tanzania.</li>\n     <ol>\n     <h1></h>Sasa shule hii inazo forms:</h1>\n     <li>Form 1</li></li>\n     <li>Form 2</li>\n     <li>Form 3</li>\n   \n     </ol>Wataongeza Form four mwaka ujao\n   \n</html>	2018-02-27 10:56:10.12694+00	\N	15	45	f
4384	<!doctype html>\n<html>\n  <head>\n    <title></title>\n    <style>\n    body{color:blue;\n    background-color:yellow;\n        \n    </style>\n  </head>\n  <body>\n  <h1>Tumaini Senior Secondary School</h1>\n  <li>Iko makuyuni.</li>\n  <li>Kuna Wanafunzi Mia Moja Sabini Kule.</li>\n  <li>Wanafunzi Wanatokea Sehemu Nyingi Za  Tanzania.</li>\n  <h2>Sasa shule hii inazo Forms:</h2>\n  <ol>\n   <li>Form 1</li>   \n    <li>Form 2</li>\n    <li>Form 3</li>\n  </ol>\n  Wataongeza Form 4 mwaka ujayo.\n  </body>\n</html>	2018-02-27 11:21:00.129719+00	2018-02-27 11:33:39.136414+00	15	66	t
4373	<!doctype html>\n<html>\n  <head>\n    <title></title>\n    <style>\n    body{color:Blue;\n        background-color:yellow;\n    }\n    </style>\n  </head>\n  <body>\n  <h1>Tumaini Senior Secondary School</h1>\n  <li>Iko makuyuni.</li>\n  <li>Kuna wanafunzi mia moja sabini kule.</li>\n  <li>Wanafunzi wana tokea sehemu yingi Tanzania.</li>\n  <h2>Saa shule hii inazo Forms:</h2>\n  <ol>\n      <li>Form 1</li>\n      <li>Form 2</li>\n      <li>Form 3</li>\n      </ol>\n      Wataongeza Form 4 mwaka ujayo\n  </body>\n</html>	2018-02-27 11:00:48.504707+00	2018-02-27 11:20:03.728964+00	15	37	t
4368	<!doctype html>\n<html>\n  <head>\n    <title></title>\n    <style>\n    body{background-color:yellow;\n    color:blue;\n    }    \n</style>\n</head>\n  <body>\n  <h1>Tumaini senior secondary school</h1>\n  <li>iko Makuyuni</li>\n  <li>Kuna wanafunzi mia moja sabini kule.</li>\n  <li>wanafunzi wanatokea sehemu njingi za Tanzania.</li>\n  <h2>Sasa shule hii inazo Forms:</h2>\n  <ol>\n    <li>Form 1</li>  \n      <li>Form 2</li>\n      <li>Form 3</li>\n  </ol>\n  wataongeza Form 4 mwaka ujayo.\n  </body>\n</html>	2018-02-27 10:56:05.250225+00	2018-02-27 11:27:58.432891+00	15	47	t
4387	<!doctype html>\n<html>\n  <head>\n    <title></title>\n    body{\n    colour:yellow;\n    }\n    \n  </head>\n  <body>\n  \n  </body>\n</html>	2018-02-27 11:27:37.294549+00	\N	15	61	f
4383	<!doctype html>\n<html>\n  <head>\n    <title></title>\n    <style>\n        body{color:white;\n        background-color:darkblue;}\n    </style>\n  </head>\n  <body>\n      <h1>Maziwa ya Tanzania</h1>\n      <h2>orodha maziwa machache ya Tanzania inatolewa kama ifuatavyo</h2>\n      <ol>\n      <li>Ziwa Victoria</li>\n      <li>Ziwa Tanganyika</li>\n      <li>Ziwa Nyasa</li>\n      <li>Ziwa Rukwa</li>\n      <li>Ziwa Eyasi</li>\n      <li>Ziwa Natron</li>\n      <li>Ziwa Manyara</li>\n      <li>Ziwa Burigi</li>\n      <li>Ziwa Balandiga</li>\n      <li>Ziwa Jipe</li>\n  </ol>    \n  </body>\n</html>	2018-02-27 11:20:03.904691+00	2018-02-27 11:40:27.66988+00	14	37	t
4401		2018-02-27 11:40:27.845437+00	\N	16	37	f
4399		2018-02-27 11:37:29.109524+00	\N	16	42	f
4370	<!doctype html>\n<html>\n  <head>\n    <title></title>\n    <style>\n    body{ color:blue;}\n        body{background-color:yellow;}\n    </style>\n  </head>\n  <body>\n  <h1>Tumaini Senior Secondary School</h1>\n  <li>iko Makuyuni.</li>\n  <li>Kuna wanafunzi mia moja sabini kule.</li>\n  <li>Wanafunzi wanatokeea sehemu nyingi za Tanzania.</li>\n  <h2>Sasa shule hii inazo Forms:</h2>\n  <ol><li>Form 1</li>\n  <li>Form 2</li>\n  <li>Form 3</li></ol>\nWataongeza Form 4 mwaka ujao. </body>\n</html>	2018-02-27 10:56:27.019024+00	2018-02-27 11:19:33.568334+00	15	40	t
4451	<!doctype html>\n<html>\n  <head>\n    <title></title>\n    <style>\n    body{background-color:yellow;\n         color:blue\n    }\n</style>\n  </head>\n  <body>\n      <h1>Tumaini Senior Secondary School</h1>\n      <li>Iko Makuyuni</li>\n      <li>Kuna Wanafunzi mia moja sabini kule</li>\n      <li>Wanafunzi wanatokea sehemu nyingi za Tanzania. </li>\n      <h2>Sasa Shule hii inazo Form:</h2>\n      <ol>\n          <li>Form 1</li>\n          <li>Form 2</li>\n          <li>Form 3</li>\n   </ol>\n   Wataongeza form 4 mwaka ujayo.\n    </body>\n</html>	2018-02-28 11:45:07.068164+00	2018-02-28 12:01:33.826364+00	15	15	t
4353	<!doctype html>\n<html>\n  <head>\n      <style>\n        h1{\n          color:blue;  \n        }\n        body{\n            background-color:yellow;\n            color:blue;\n        }\n      </style>\n    <title></title>\n  </head>\n  <body>\n <h1>Tumaini Senior Secondary School</h1>\n    <li>Iko Makuyuni.</li>\n    <li>Kuna wanafunzi mia moja sabini kule.</li>\n    <li>Wanafunzi wanatokea sehemu nyingi za Tanzania</li>\n <h2>Sasa shule hii inazo Forms:</h2>\n <ol>\n <li>Form 1</li> \n <li>Form 2</li>\n <li>Form 3</li>\n </ol>\n Wataongeza form 4 mwaka ujayo\n  </body>\n</html>	2018-02-27 10:54:43.953262+00	2018-02-27 11:14:04.198827+00	15	44	t
4352	<!doctype html>\n<html>\n  <head>\n    <title></title>\n    <style>\n        body{\n        color:blue;\n        }\n       body {\n        background-color:yellow;\n        }\n    </style>\n  </head>\n  <body>\n  <h1>Tumaini Senior Secondary School</h1>\n  <li>Iko Makuyuni</li>\n  <li>Kuna wanafunzi mia moja kule</li>\n  <li>Wanafunzi wanatokea sehemu nyingi za Tanzania</li>\n  <h2>Sasa shule hii inazo Forms:</h2>\n  <ol>\n      <li>Form 1</li>\n      <li>Form 2</li>\n      <li>Form 3</li>\n  </ol>\n  Wataongeza Form 4 mwaka ujao.\n  </body>\n</html>	2018-02-27 10:54:40.945223+00	2018-02-27 11:17:07.304734+00	15	36	t
4359	<!doctype html>\n<html>\n  <head>\n      \n    <title></title>\n    <style>\n     body{\n        background-color:darkblue;\n        color:white;\n     }\n     </style>\n    </head>\n  <body>\n  <h1>Maziwa ya Tanzania</h1>\n  <h3><b>Orodha ya maziwa machache ya Tanzania inatolewa kama ifuatavyo:</b></h3>\n  <ol>\n  <li>Ziwa Victoria</li>\n  <li>Ziwa Tanganyika</li>\n  <li>ziwa Nyasa</li>\n  <li>Ziwa Rukwa</li>\n  <li>Ziwa Eyasi</li>\n  <li>Ziwa Natron</li>\n  <li>Ziwa Manyara</li>\n  <li>Ziwa Burigi</li>\n  <li>Ziwa Balangida</li>\n  <li>Ziwa Jipe</li>\n</ol>\n </body>\n</html>	2018-02-27 10:55:07.397936+00	2018-02-27 11:27:45.359439+00	14	42	t
4365	<!doctype html>\n<html>\n  <head>\n    <title></title>\n    <style>\n       body{color:blue;}\n       body{background-color:yellow;}\n    </style>\n  </head>\n  <body>\n  <h1>Tumaini Senior Secondary School </h1>\n     <li>Iko Makuyuni.</li>\n     <li>Kuna wanafunzi mia moja sabini kule.</li>\n     <li>Wanafunzi wanatokea sehemu nyingi za Tanzania.</li>\n     <h2>Sasa shule hii ina Forms:</h2>\n     <ol>\n         <li>Form 1</li>\n         <li>Form 2</li>\n         <li>Form 3</li>\n     </ol>\n     wataongeza Form 4 ujao.\n  </body>\n</html>	2018-02-27 10:55:38.268261+00	2018-02-27 11:19:45.820144+00	15	53	t
4357	<!doctype html>\n<html>\n  <head>\n    <title></title>\n  </head>\n  <body> \n  <h1>\nMaziwa ya Tanzania\n   </h1>   \n<ol></ol>Orodha ya maziwa maziwa machache ya Tanzania inatolewa kama ifuatavyo:</ol> \n           <ol></ol>\n     <li>1.Ziwa Victoria</li>\n     <li>2.Ziwa Tanganyika</li>\n     <li>3.Ziwa Nyasa</li>\n     <li>4.Ziwa Rukwa</li>\n     <li>5.Ziwa Eyasi</li>\n     <li>6.Ziwa Natron</li>\n     <li>7.Ziwa Manyara</li>\n     <li>8.Ziwa Burigi</li>\n     <li>9.Ziwa Balangida</li>\n     <li>10.Ziwa Jipe</li>	2018-02-27 10:54:59.298941+00	\N	14	52	f
4354	<!doctype html>\n<html>\n  <head>\n    <title></title>\n    <style>\n       body{color:White;\n        background-color:blue;}\n        \n    </style>\n    \n    \n    \n  </head>\n  <body>\n  <h1>Maziwa ya Tanzania  </h1>\n  <h2>orodha yamaziwa machache ya Tanzania inatolewa kama ifuatavyo;</h2>\n      <ol\n      <li>\n    <li></li>Ziwa Tanganyka</\n     <li>Ziwa Nyasa</li>\n      <li>.Ziwa Rukwa</li>\n      <li>Ziwa Eyasi</li>\n      <li>Ziwa Natron</li>\n      <li>Ziwa Manyara</li>\n      <li>Ziwa Burigi</li>\n<li>Ziwa Balangida</li>\n    <li>Ziwa Jipe</li>  \n      \n      </ol>\n      \n      \n  </body>\n</html>	2018-02-27 10:54:53.571029+00	\N	14	39	f
4362	<!doctype html>\n<html>\n  <head>\n    <title></title>\n    <style>\n        \n        body{\n            \n            background-color:darkblue;\n            color:White;\n        }\n    </style>\n  </head>\n  <body>\n      <h1>Maziwa ya Tanzania</h1>\n      <b>Orodha ya maziwa machache ya Tanzania inatolewa kama ifuatavyo</b>\n      <ol>\n          <li>Ziwa Victoria</li>\n          <li>Ziwa Tanganyika</li>\n          <li>Ziwa Nyasa</li>\n          <li>Ziwa Rukwa</li>\n          <li>Ziwa Eyasi</li>\n          <li>Ziwa Natron</li>\n          <li>Ziwa Manyara</li>\n          <li>Ziwa Burigi</li>\n          <li>Ziwa Balagida</li>\n          <li>Ziwa Jipe</li>\n         \n          \n      </ol>\n  \n  </body>\n</html>	2018-02-27 10:55:21.290927+00	2018-02-27 11:19:13.555199+00	14	38	t
4418	<!doctype html>\n<html>\n  <head>\n   <style>   \n    body{\n        color:white;\n    background-color:darkblue;\n    }\n    </style>  \n    <title></title>\n  </head>\n  <body>\n    <h1>Maziwa ya Tanzania</h1>\n    <h3>Orodha ya maziwa machache ya Tanzania inatolewa kama ifuatavyo:</h3>\n     <ol>\n  <li>Ziwa Victoria</li>\n  <li>Ziwa Tanganyika</li>\n  <li>Ziwa Nyasa</li>\n  <li>Ziwa Rukwa</li>\n  <li>Ziwa Eyasi</li>\n  <li>Ziwa Natron</li>\n  <li>Ziwa Manyara</li>\n  <li>Ziwa Burigi</li>\n  <li>Ziwa Balangida</li>\n  <li>Ziwa Jipe</li>\n  </ol>\n  </body>\n</html>	2018-02-28 11:08:41.092489+00	2018-02-28 11:34:41.117651+00	14	5	t
4462	<!doctype html>\n<html>\n  <head>\n  <style>\n  </style>\n    <title></title>\n  </head>\n  <body>\n  \n  </body>\n</html>	2018-02-28 11:56:36.133194+00	\N	15	25	f
4396	<!doctype html>\n<html>\n  <head>\n    <title></title>\n    </head>\n    <body>\n    <style>\n      body{  \n      background:darkblue;  \n      color:white;\n      }\n    </style>\n    <h1>Maziwa ya Tanzania</h1>\n    <h2>Orodha ya maziwa machache ya Tanzania inatolewe kama ifuatavyo:</h2>\n           <ol>\n     <li>Ziwa Victoria</li>   \n     <li>Ziwa Tanganyika</li>\n     <li>Ziwa Nyasa</li>\n     <li>Ziwa Rukwa</li>\n     <li>Ziwa Eyasi</li>\n     <li>Ziwa Natron</li>\n     <li>Ziwa Manyara</li>\n     <li>Ziwa Birigi</li>\n     <li>Ziwa Balangida</li>\n     <li>Ziwa Jipe</li>\n     </ol>\n     </body>\n</html>	2018-02-27 11:33:56.419837+00	2018-02-28 13:01:25.468391+00	14	49	t
4380	<!doctype html>\n<html>\n  <head>\n    <title></title>\n    <style>\n        body{\n            background-color:Yellow;\n            color:Blue;\n        }\n        \n    </style>\n  </head>\n  <body>\n      <h1>Tumaini Senior Secondary School</h1>\n      <li>Iko Makuyuni</li>\n      <li>Kuna wanafunzi mia moja sabini kule</li>\n      <li>Wanafunzi wanatokea sehemu nyingi za  Tanzania</li>\n      <h2>Sasa shule hii inazo Forms:</h2>\n      <ol>\n          <li>Form 1</li>\n          <li>Form 2  </li>\n          <li>Form 3</li>\n      </ol>\n           wataongeza form 4 mwaka ujayo\n  \n  </body>\n</html>	2018-02-27 11:19:13.733126+00	2018-02-27 11:30:34.927891+00	15	38	t
4360	<!doctype html>\n<html>\n  <head>\n      \n      \n    <title></title>\n    \n     \n     \n     \n    \n    <style>\n     body{\n         color:Blue;\n         Background-color:Yellow;\n     }   \n        \n        \n        \n    </style>\n  </head>\n  <body>\n      <h1>Tumaini Senior Secondary School</h1>\n <li>Iko Makuyuni.</li>\n <li>Kuna wanafunzi mia moja sabini kule.</li>\n <li>Wanafunzi wanatokea sehemu nyingi za Tanzania.</li>\n \n \n <h2>Sasa Shule hii inazo Forms:</h2>\n \n <ol>\n     <li>Form 1</li>\n     <li>Form 2</li>\n     <li>Form 3</li>\n </ol>\n \n Wataongeza Form 4 mwaka ujayo\n  \n  </body>\n</html>	2018-02-27 10:55:16.917541+00	2018-02-27 11:26:01.997058+00	15	43	t
4355	<!doctype html>\n<html>\n  <head>\n    <title></title>\n    <style>\n    body{color:white;\n        background-color:darkblue;}\n    </style>\n  </head>\n  <body>\n  <h1>Maziwa Ya Tanzania</h1>\n  <h2>Orodha ya maziwa machache Tanzania</h2>\n  <ol>\n   <li>Ziwa Victoria</li>\n   <li>Ziwa Tanganyika</li>\n   <li>Ziwa Nyasa</li>\n   <li>Ziwa Rukwa</li>\n   <li>Ziwa Eyasi</li>\n   <li>Ziwa Natron</li>\n   <li>Ziwa Manyara</li>\n   <li>Ziwa Burigi</li>\n   <li>Ziwa Balangida</li>\n   <li>Ziwa Jipe</li>\n      </ol>\n  </body>\n</html>	2018-02-27 10:54:57.316169+00	2018-02-27 11:20:59.952704+00	14	66	t
4358	<!doctype html>\n<html>\n  <head>\n    <title></title>\n    <style>\n        body{color:blue;\n        background-color:yellow;\n    </style>\n\n    <head>\n     <body>\n        \n    \n         \n         <h1>Tumaini senior secondary school</h1>\n  <LI>Iko makuyuni.</LI>\n  <li>Kuna wanafunzi mia moja sabini kule.</li>\n  <li>Wanafunzi wanatokea sehemu nyingi za Tanzania.</li>\n  <h2>Sasa shule hii inazo forms:</h2>\n  <ol>\n      <li>Form 1</li>\n      <li>Form 2</li>\n      <li>Form 3</li>\n     </body>\n</html>	2018-02-27 10:55:01.5491+00	\N	15	65	f
4378	<!doctype html>\n<html>\n  <head>\n    <title></title>\n    <style>\n    body{\n    color:white;\n        }\n        body{\n            background-color:darkblue;\n        }\n    </style>\n  </head>\n  <body>\n  <h1>Maziwa ya Tanzania</h1>\n  <h3>Orodha ya maziwa machache ya Tanzania inatolewa kama ifuatavyo:</h3>\n  <ol>\n      <li>Ziwa Victoria</li>\n      <li>Ziwa Tanganyika</li>\n      <li>Ziwa Nyasa</li>\n      <li>Ziwa Rukwa</li>\n      <li>Ziwa Eyasi</li>\n      <li>Ziwa Natron</li>\n      <li>Ziwa Manyara</li>\n      <li>Ziwa Burigi</li>\n      <li>Ziwa Balangida</li>\n      <li>Ziwa Jipe</li>\n  </ol>\n  </body>\n</html>	2018-02-27 11:17:07.482734+00	2018-02-27 11:31:39.312872+00	14	36	t
4379	<!doctype html>\n<html>\n  <head>\n    <title></title>\n  </head>\n  <body>\n  Maziwa yaTanzania\n    </h1>\n    <ol>Orodha ya maziwa machache ya Tanzania inatolewa kama ifuatavyo;</ol>\n     <li>1.Ziwa Victoria</li>\n     <li>2.Ziwa Tanganyika</li>\n     <li>3.Ziwa Nyasa</li>\n     <li>4.Ziwa Rukwa</li>\n     <li>5.Ziwa Eyasi</li>\n     <li>6.Ziwa Natron</li>\n     <li>7.Ziwa Manyara</li>\n     <li>8.Ziwa Buringi</li>\n     <li>9.Ziwa Balangida</li>\n     <li>10.Ziwa Jipe</li>	2018-02-27 11:17:11.594393+00	\N	14	126	f
4394	<!doctype html>\n<html>\n  <head>\n    <title></title>\n    <table>\n<tr><th></th></tr>  \n        </table>\n  </head>\n  <body>\n      <h1>Habari za Maziwa ya Tanzania</h1>\n    <!-- Use these image paths to complete the challenge: -->\n    <!-- Lake Victoria:      /static/main/images/ziwa_victoria.jpg -->\n    <!-- Lake Tanganyika:    /static/main/images/ziwa_tanganyika.jpg -->\n    <!-- Lake Nyasa:         /static/main/images/ziwa_nyasa.jpg -->\n    <!-- Lake Rukwa:         /static/main/images/ziwa_rukwa.png -->\n    <!-- Lake Eyasi:         /static/main/images/ziwa_eyasi.jpg -->\n    \n    \n    \n  </body>\n</html>	2018-02-27 11:33:22.48404+00	\N	16	40	f
4398	<!doctype html>\n<html>\n  <head>\n    <title></title> \n    <style>\n        body {\n        background-color:darkblue:\n        \n        }\n    </style>\n  </head>\n  <body>\n  <h1>Maziwa ya Tanzania</h1>\n  <hi>orodha ya maziwa machache ya Tanzania inatolewa kama ifuatavyo:</hi>\n  <ol>\n  <li>Ziwa Victoria</li>\n  <li>Ziwa Tanganyika</li>\n  <li>Ziwa Nyasa</li>\n  <li>Ziwa Rukwa</li>\n  <li>Ziwa Eyasi</li>\n  <li>Ziwa Natron</li>\n  <li>Ziwa Manyara</li>\n  <li>Ziwa Burigi</li>\n  <li>Ziwa Balangida</li>\n  <li>Ziwa Jipe</li>\n  </ol>\n   </body>\n   </html>\n	2018-02-27 11:37:03.839521+00	\N	14	54	f
4376	<!doctype html>\n<html>\n  <head>\n      <style>\n      body{\n          color:white;\n       background-color:darkblue;   \n      }    \n          \n      </style>\n    <title></title>\n  </head>\n  <body>\n  <h1>Maziwa ya Tanzania</h1>\n  <h3>Orodha ya maziwa machache ya Tanzania inayolewa kama ifuatavyo:</h3>\n  <ol>\n   <li>Ziwa Victoria</li>   \n   <li>Ziwa Tanganyika</li> \n   <li>Ziwa Nyasa</li>\n   <li>Ziwa Rukwa</li>\n   <li>Ziwa Eyasi</li>\n   <li>Ziwa Natron</li>\n   <li>Ziwa Manyara</li>\n   <li>Ziwa Burigi</li>\n   <Li>Ziwa Bulangida</Li>\n   <li>Ziwa Jipe</li>\n  </ol>\n  </body>\n</html>	2018-02-27 11:14:04.43001+00	2018-02-27 11:27:19.639033+00	14	44	t
4375	<!doctype html>\n<html>\n  <head>\n    <title></title>\n    <style>\n     body{\n         color:blue;\n         background-color:yellow;\n     }   \n     </style>\n     <h1>Tumaini Senior Secondary School</h1>\n    <li>Iko Makuyuni</li>\n    <li>Kuna wanafunzi mia moja sabini kule</li>\n    <li>Wanafunzi wanatotokea sehemu nyingi za Tanzania</li>\n    \n    <h2>Sasa shule hii inazo Forms</h2>\n    <ol>\n        <li>Form 1</li>\n        <li>Form 2</li>\n        <li>Form 3</li>\n    </ol>\n\n  Wataongeza Form 4 mwaka ujao\n \n  \n  </body>\n</html>	2018-02-27 11:01:16.096046+00	2018-02-27 11:33:56.235618+00	15	49	t
4367	<!doctype html>\n<html>\n  <head>\n    <title></title>\n    <style>\n    body{\n        background-color:yellow;\n        color:blue;\n    }\n        \n        \n    </style>\n      \n  </head>\n  <body>\n  <h1>Tumaini Senior Secondary School</h1>\n  \n  <ol>\n  <li>Iko Makuyuni</li>\n  <li>Kuna wanafunzi mia moja sabini kule</li>\n  <li>Wanafunzi wanatokea sehemu nyingi za Tanzania</li>\n  </ol>\n  <ol>\n      <h2>Sasa shule hii inazo Forms:</h2>\n      \n      <li>Form 1</li>\n      <li>Form 2</li>\n      <li>Form 3</li>\n      </ol>\nWataongeza form 4 mwaka ujayo\n      </body>\n  </html>	2018-02-27 10:55:56.035556+00	2018-02-27 11:37:03.660604+00	15	54	t
4382	<!doctype html>\n<html>\n  <head>\n    <title></title>\n    <style>\n        body{color:white;}\n        body{background-color:darkblue;}\n    </style>\n  </head>\n  <body>\n  <h1>Maziwa ya Tanzania</h1>\n  <h2>orodha ya maziwa machache ya Tanzania inatolewa kama ifuatavyo:</h2>\n  <ol>\n      <li>Ziwa Victoria</li>\n      <li>Ziwa Tanganyika</li> \n      <li>Ziwa Nyasa</li>\n      <li>Ziwa Rukwa</li>\n      <li>Ziwa Eyasi</li>\n      <li>Ziwa Natron</li>\n      <li>Ziwa Manyara</li>\n      <li>Ziwa Burigi</li>\n      <li>Ziwa Balangida</li>\n      <li>Ziwa Jipe</li>\n  </ol>\n  </body>\n</html>	2018-02-27 11:19:46.085254+00	2018-02-27 11:33:09.708607+00	14	53	t
4463	<!doctype html>\n<html>\n  <head>\n    <title></title>\n    \n    \n    \n    \n    </head>\n   \n  \n  <body>\n  <h1>Tumaini Senior Secondary School</h1>\n  <li>Iko Makuyuni.</li>\n  <li>kuna wanafunzi mia moja sabini kule.</li>\n  <li>wanafunzi wanatokea sehemu nyingi za Tanzania</li>\n  </body>\n</html>	2018-02-28 11:56:47.836831+00	\N	15	34	f
4361	<!doctype html>\n<html>\n  <head>\n    <title></title>\n    </head>\n    <body>\n    <style>\n       body{ \n        color:white;\n        background-color:Darkblue;\n       }\n    </style>\n    <h1>Maziwa ya Tanzania</h1>\n    <h3>Orodha ya maziwa machache Tanzania inatolewa kama ifuatavyo:</h3>\n    <ol>\n    <li>Ziwa Victoria</li>\n    <li>Ziwa Tanganyika</li>\n    <li>Ziwa Nyasa</li>\n    <li>Ziwa Rukwa</li>\n    <li>Ziwa Eyasi</li>\n    <li>Ziwa Natron</li>\n    <li>Ziwa Manyara</li>\n    <li>Ziwa Burigi</li>\n    <li>Ziwa Balangida</li>\n    <li>Ziwa Jipe</li>\n    </ol>\n  </body>\n</html>	2018-02-27 10:55:20.623517+00	2018-02-27 11:32:40.399718+00	14	48	t
4356	<!doctype html>\n<html>\n  <head>\n      <h1>Maziwa ya Tanzania</h1>\n      <h2>Orodha ya maziwa machache ya Tanzania inatolewa kama ifuatavyo:</h2>\n       <title></title>\n  \n       \n  <style>\n      body {background-color:darkblue;\n     color:white;\n      }\n      </style>\n      <ol>\n          <li>ziwa victoria</li>\n          <li>ziwa Tanganyika</li>\n          <li>ziwa Nyasa</li>\n          <LI>ziwa Rukwa</LI>\n          <li>ziwa Eyasi</li>\n          <li>ziwa Natron</li>\n          <li>ziwa Manyara</li>\n          <li>ziwa Burigi</li>\n          <li>ziwa Balangida</li>\n          <li>ziwa Jipe</li>\n          </ol>\n          </body>\n</html>	2018-02-27 10:54:58.540307+00	\N	14	63	f
4364	<!doctype html>\n<html>\n  <head>\n    <title></title>\n    <style>\n    body{\n    color:blue;    \n    background-color:yellow;   \n    }  \n    </style>\n    <h1>Tumaini Senior Secondary School</h1>\n    <li>Iko Makuyuni.</li>\n    <li>Kuna wanafunzi mia moja na sabini kule.</li>\n    <li>Wanafunzi wanatokea sehemu nyingi za Tanzania.</li>\n    <h1>sasa shule hii inazo Forms:</h1>\n    <ol>\n    <li>Form 1</li>    \n    <li>Form 2</li>   \n    <li>Form 3</li>    \n    </ol>\n\n  wataongeza Form 4 mwaka ujayo  \n    \n    \n    \n  \n  \n  </body>\n</html>	2018-02-27 10:55:37.686966+00	2018-02-27 11:35:25.224393+00	15	46	t
4389	<!doctype html>\n<html>\n  <head>\n    <title></title>\n    <style>\n    body{background-color: Darkblue;\n     color:white; \n    }\n    \n        \n        \n    </style>\n    \n  </head>\n  <body>\n  <h1>Maziwa ya Tanzania </h1>\n  <h3>Orodha ya maziwa machache ya Tanzania inatolewa kama ifuatavyo:</h3>\n  <ol>\n    <li>Ziwa victoria</li>\n    <li>Ziwa Tanganyika</li>\n    <li>Ziwa Nyasa</li>  \n     <li>Ziwa Rukwa</li> \n     <li>Ziwa Eyasi</li>\n     <li>Ziwa Natron</li>\n     <li>Ziwa Manyara</li>\n     <li>Ziwa Burigi</li>\n     <li>Ziwa Balangida</li>\n     <li>Ziwa Jipe</li>\n  </ol>\n  </body>\n</html>	2018-02-27 11:27:58.607316+00	2018-02-27 11:40:03.271863+00	14	47	t
4385	<!doctype html>\n<html>\n  <head>\n    <title></title>\n    <style>\n    body {\n    background-color:  darkblue; \n    color: white;\n    }  \n        \n    </style>\n  </head>\n  <body> \n      \n  <h1>Maziwa ya Tanzania</h1>\n \n  <h2>Orodha ya maziwa machache ya Tanzania inatolewa kama ifuatavyo:</h2>\n  \n  \n  <ol>\n   <li>Ziwa Victoria</li>   \n    <li>Ziwa Tanganyika</li>  \n    <li>Ziwa Nyasa</li>  \n     <li>Ziwa Rukwa</li>\n     <li>Ziwa Eyasi</li>\n     <li>Ziwa Natron</li>\n     <li>Ziwa Manyara</li>\n     <li>Ziwa Burigi</li>\n     <li>Ziwa Balangida</li>\n     <LI>Ziwa Jipe</LI>\n     \n     \n  </ol>\n  </body>\n</html>	2018-02-27 11:26:02.179043+00	2018-02-28 12:47:00.982142+00	14	43	t
4388	<!doctype html>\n<html>\n  <head>\n      \n      \n    <title></title>\n    <style>\n        body{\n            background-color:yellow;\n            color:blue;\n        }\n    </style>\n  </head>\n  <body>\n  <h1>Tumaini Senior Secondary School</h1>\n  <li>iko Makuyuni</li>\n  <li>Kuna wanafunzi mia moja na sabini kule </li>\n  <li>Wanafunzi wanatokea sehemu nyingi za Tanzania</li>\n  <h2>Sasa shule hii inazo Forms:</h2>\n  <ol>\n   <li>Form 1</li> \n   <li>Form 2</li>\n   <li>Form 3</li>\n  </ol>\n  Wataongeza Form 4 mwaka ujao\n  </body>\n</html>	2018-02-27 11:27:45.533438+00	2018-02-27 11:37:28.928679+00	15	42	t
4371	<!doctype html>\n<html>\n  <head>\n    <title></title>\n    \n  </head>\n  <body>\n    <style>\n        body{\n            background-color:blue;\n            color:white;\n   \n    </style>  \n    <h1>Maziwa ya Tanzania</h1>\n    <ol>\n  <ol>orodha ya maziwa machache inatolewa kama ifuatayo</ol>\n  <oo>\n  <li>ziwa victoria</li>\n  <li>ziwa tanganyika</li>\n  <li>ziwa nyasa</li>\n  <li>ziwa rukwa</li>\n  <li>ziwa eyasi</li>\n  <li>ziwa natron</li>\n  <li>ziwa manyara </li>\n  <li>ziwa Buriki</li>\n  <li>ziwa Balangida</li>\n  <li>Ziwa Tupe</li>\n</body>\n</html>	2018-02-27 10:56:58.806884+00	\N	14	57	f
4413	<!doctype html>\n<html>\n  <head>\n    <title></title>\n    <style>\n        body{\n            background-color:yellow;\n            color:blue\n        }\n    </style>\n  </head>\n  <body>\n  <h1>Tumaini Senior Secondary School</h1>\n  <ul>\n      <li>Iko Makuyuni.</li>\n      <li>Kuna wanafunzi mia moja sabini kule.</li>\n      <li>Wanafunzi wanatokea sehemu nyingi za Tanzania.</li>\n  </ul>\n  <h2>Sasa shule hii inazo Forms:</h2>\n  <ol>\n      <li>Form 1</li>\n      <li>Form 2</li>\n      <li>Form 3</li>\n  </ol>\n  Wataongeza Form 4 mwaka ujayo.\n  </body>\n</html>	2018-02-28 11:08:20.856458+00	2018-02-28 11:29:52.551498+00	15	7	t
4464	<!doctype html>\n<html>\n  <head>\n    <title></title>\n    <style>\n        body{\n       background-color:darkblue;\n       color:white;\n        }\n    </style>\n  </head>\n  <body>\n  <h1>Maziwa Ya Tanzania</h1>\n  <h2>Orodha ya maziwa machache ya Tanzania inatolewa kama ifuatavyo:</h2>\n  <ol>\n  <li>Ziwa Victoria</li>\n  <li>Ziwa Tanganyika</li>\n  <li>Ziwa Nyasa</li>\n  <li>Ziwa Rukwa</li>\n  <li>Ziwa Eyasi</li>\n  <li>Ziwa Natron</li>\n  <li>Ziwa Manyara</li>\n  <li>Ziwa Burigi</li>\n  <li>Ziwa Balangida</li>\n  <li>Ziwa Jipe</li>\n  </ol>\n  </body>\n</html>	2018-02-28 12:00:43.97938+00	2018-02-28 12:21:11.437834+00	14	35	t
4410	<!doctype html>\n<html>\n  <head>\n    <title></title>\n  \n  <style>\n      body{background-color:darkblue;\n      color:white\n      }\n  </style>\n  </head>\n  <body>\n<h1>  Maziwa ya Tanzania</h1>\n<h3>Orodha ya maziwa machache ya Tanzania inatolewa kama ifuatavyo:</h3>\n\n<ol>\n<li>Ziwa Victoria</li>\n<li>Ziwa Tanganyika</li>\n<li>Ziwa Nyasa</li>\n<li>Ziwa Rukwa</li>\n<li>Ziwa Eyasi</li>\n<li>Ziwa Natron</li>\n<li>Ziwa Manyara</li>\n<li>Ziwa Burigi</li>\n<li>Ziwa Balangida</li>\n<li>Ziwa Jipe</li>\n\n\n</ol>\n  </body>\n</html>	2018-02-28 11:08:12.729486+00	2018-02-28 11:45:06.884907+00	14	15	t
4411	<!doctype html>\n<html>\n  <head>\n    <title></title> \n    <style>\n  body{\n      background-color:yellow;\n     color:blue;}\n         </style>\n    \n  </head>\n  <body>\n      <h1>Tumaini Senior Secondary School</h1>\n      <ul>\n  <li>Iko Makuyuni</li>\n  <li>kuna wanafunzi mia moja sabini</li>\n  <li>wanafunzi wanatokea sehemu nyingi Tanzania</li>\n  </ul>\n  <h2>Sasa shule hii inazo Forms:</h2>\n  <ol>\n      <li>Form one</li>\n      <li>Form two</li>\n      <li>Form three</li>\n      </ol>\n      <pi>Wataongeza Form four mwaka ujayo.</pi>\n      </body>\n</html>	2018-02-28 11:08:13.575695+00	2018-02-28 11:31:10.250111+00	15	16	t
4409	<!doctype html>\n<html>\n  <head>\n    <title></title>\n    <style>\n     body{\n         background-color:darkblue;\n         color:white;\n     }   \n        \n    </style>\n  </head>\n  <body>\n  <h1>Maziwa ya Tanzania</h1>\n <h3>Orodha ya maziwa machache ya Tanzania inatolewa kama ifuatavyo:</h3 >\n <ol>\n     <li>Ziwa victoria</li>\n     <li>Ziwa Tanganyika</li>\n     <li>Ziwa Nyasa</li>\n     <li>Ziwa Rukwa</li>\n     <li>Ziwa Eyasi</li>\n     <li>Ziwa Natron</li>\n     <li>Ziwa Manyara</li>\n     <li>Ziwa Burigi</li>\n     <li>Ziwa Balangida</li>\n     <li>Ziwa Jipe</li>\n     </ol>\n</body>\n</html>	2018-02-28 11:07:53.561882+00	2018-02-28 11:50:45.966029+00	14	23	t
4405	<!doctype html>\n<html>\n  <head>\n    <title></title>\n<style>\n    body{\n        background-color:Yellow;\n    color:blue;        \n}\n</style>    \n  </head>\n  <body>\n<h1>Tumaini Senor Secondary School</h1>\n<ul>\n<li>iko Makuyuni</li>    \n<li>kuna wanafunzi mia moja sabini kule</li>\n<li>wanafunzi wanatoka sehemu nyingi tanzania</li>\n</ul>\n<h1>Sasa shule hii inazo form </h1>\n<ol>\n<li>form 1</li> \n<li>Form 2</li>\n<li>Form 3</li>\n</ol>\nWataongeza Form 4 mwaka ujao\n  </body>\n</html>	2018-02-28 11:05:03.958948+00	2018-02-28 11:38:16.767377+00	15	22	t
4433	<!doctype html>\n<html>\n  <head>\n    <title></title>\n    <style>\n      body{\n        background-color:yellow;\n        color:blue;\n      }\n    </style>\n  </head>\n  <body>\n  <h1>Tumaini Senior Secondary School</h1>\n  <ul>\n      <li>Iko Makuyuni</li>\n      <li>Kuna wanafunzi mia moja sabini kule</li>\n      <li>Wanafunzi wanaotokea sehemu nyingi za Tanzania</li>\n  </ul>\n  <h2>Sasa shule hii inazo Forms:</h2>\n<ol>\n    <li>Form 1</li>\n    <li>Form 2</li>\n    <li>Form 3</li>\n</ol>\n<p>Wataongeza Form 4 mwaka ujayo.</p>\n  </body>\n</html>	2018-02-28 11:20:44.073352+00	2018-02-28 11:27:25.12919+00	15	24	t
4414	<!doctype html>\n<html>\n  <head>\n    <title></title>\n    <style>\n    body{\n    background-color: darkblue;\n    color:white;\n    </style>\n  </head>\n  <body>\n     <h1> Maziwa ya Tanzania</h1>\n     <h3>orodha ya maziwa machache ya Tanzania inatolewa kama ifuatavyo:</h3>\n     <ol>\n      <li>Ziwa Victoria</li>\n  <li>Ziwa Tanganyika</li>\n  <li>Ziwa Nyasa</li>\n  <li>Ziwa Rukwa</li>\n  <li>Ziwa Eyasi</li>\n  <li>Ziwa Natron</li>\n  <li>Ziwa Manyara</li>\n  <li>Ziwa Burigi</li>\n  <li>Ziwa Balangida</li>\n  <li>Ziwa Jipe</li>\n  </ol>\n  </body>\n</html>	2018-02-28 11:08:21.29248+00	2018-02-28 11:28:26.293412+00	14	10	t
4404	<!doctype html>\n<html>\n  <head>\n    <title></title>\n    <style>\n        body{\n        background:yellow;\n        color:blue\n    </style>\n    \n  </head>\n  \n  <body>\n      <h1>Tumaini Senior Secondary School</h1>\n     <ul>\n     <li>Iko Makuyuni</li>\n     <li>Kuna wanafunzi mia moja sabini kule.</li>\n    <li> Wanafunzi wanaotokea  sehemu nyingi za Tanzania</li>\n  </ul>\n  <h2>Sasa shule hii inazo Form:</h2>\n  <ol>\n  <li>Form 1</li>\n  <li>Form 2</li>\n  <li>Form 3</li>\n  </ol>\n  <p>Wataongeza Form 4 mwaka ujayo</p>\n  </body>\n</html>	2018-02-28 11:04:15.412903+00	2018-02-28 11:30:15.71209+00	15	4	t
4407	<!doctype html>\n<html>\n  <head>\n    <style>\n        body{background:yellow;\n            color:blue;\n        }\n    </style>\n    <title></title>\n  </head>\n  \n  <body>\n      <h1>Tumaini senior secondary school </h1>\n      <ul>\n          <li>iko makuyuni\n          <li>Kuna wanafunzi mia moja sabini kule</li>\n          <li>wanafunzi wanatokea sehemu nyingi Tanzani</li>\n          </ul>\n          <h2>Sasa shule hii inazo form</h2>\n          \n          \n            <ol>\n                <li>Form 1</li>\n            <li>Form 2</li>\n            <li>Form 3</li>\n            \n    \n            </ol>\n              \n          <p>Wataongeza form 4 mwaka ujayo.</p>\n      \n  \n  </body>\n \n</html>	2018-02-28 11:05:35.084981+00	2018-02-28 11:32:48.451245+00	15	11	t
4427	<!doctype html>\n<html>\n  <head>\n    <title></title>\n    <style>\n       body{\n           background:darkblue;\n           color:white;\n       } \n    </style>\n  </head>\n  <body>\n      <h1>Maziwa ya Tanzania</h1>\n  <h3>Orodha ya maziwa machache ya Tanzania inatolewa kama ifuatavyo:</h3>\n  <ol>\n      <li>Ziwa Victoria</li>\n      <li>Ziwa Tanganyika</li>\n      <li>Ziwa Nyasa</li>\n      <li>Ziwa Rukwa</li>\n      <li>Ziwa Eyasi</li>\n      <li>Ziwa Natron</li>\n      <li>Ziwa Manyara</li>\n      <li>Ziwa Burigi</li>\n      <li>Ziwa Balangida</li>\n      <li>Ziwa Jipe</li>\n  </ol>\n  </body>\n</html>	2018-02-28 11:10:02.367301+00	2018-02-28 11:35:57.373891+00	14	13	t
4438	<!doctype html>\n<html>\n  <head>\n    <title></title>\n    <style>\n        body{\n            background-color:darkblue;\n            color:white\n        }\n    </style>\n  </head>\n  <body>\n  <h1>Maziwa ya Tanzania</h1>\n  <h3>Orodha ya maziwa machache ya Tanzania inatolewa kama ifuatavyo;</h3>\n<ol>\n    <li>Ziwa Victoria</li>\n    <li>Ziwa Tanganyika</li>\n    <li>Ziwa Nyasa</li>\n    <li>Ziwa Rukwa</li>\n    <li>Ziwa Eyasi</li>\n    <li>Ziwa Natron</li>\n    <li>Ziwa Manyara</li>\n    <li>Ziwa Burigi</li>\n    <li>Ziwa Balangida</li>\n    <li>Ziwa Jipe</li>\n</ol>  \n  </body>\n</html>	2018-02-28 11:29:52.805187+00	2018-02-28 11:42:05.003684+00	14	7	t
4412	<!doctype html>\n<html>\n  <head>\n    <title></title>\n  \n  <style>\n     body{background-color:yellow;\n      color:blue\n     }\n  </style>\n  </head>\n  <body>\n  <h1>Tumaini Senior Secondary School</h1>\n  <li>Iko Makuyuni</li>\n  <li>Kuna wanafunzimia moja sabini kule</li>\n  <li>Wanafunzi wanatokea sehemu nyingi za Tanzania</li>\n<h2>Sasa shule inazo Form:</h2>\n  <ol>\n      <li>Form 1</li>\n      <li>Form 2</li>\n      <li>Form 3</li>\n  </ol>\n  wataongeza Form 4 mwaka ujao\n   </body>\n</html>	2018-02-28 11:08:18.508187+00	2018-02-28 11:52:37.362708+00	15	9	t
4441	<!doctype html>\n<html>\n  <head>\n      <style>\n          body{background:darkblue;\n          color:white;}\n      </style>\n    <title></title>\n  </head>\n  <body>\n      <h1>Maziwa ya Tanzania</h1>\n      <h3>Orodha ya maziwa machache ya Tanzanai yanayotolewa kama ifuatayo</h3>\n      <ol>\n        \n         <li>Ziwa Victoria</li>\n         <li>Ziwa Tanganyika</li>\n         <li>Ziwa Nyasa</li>\n         <li>Ziwa Rukwa</li>\n         <li>Ziwa Eyasi</li>\n         <li>Ziwa Natron</li>\n         <li>Ziwa Manyara</li>\n         <li>Ziwa Birigi</li>\n         <li>Ziwa Blangida</li>\n         <li>Ziwa Jipe</li>\n         \n          \n      </ol>\n  \n  </body>\n</html>	2018-02-28 11:32:48.790224+00	2018-02-28 11:45:36.180365+00	14	11	t
4454	<!doctype html>\n<html>\n  <head>\n      <title></title>\n    <style>\n    body{\n     background-color:darkblue; \n     color:white;\n    }\n    </style>\n  </head>\n  <body>\n  <h1>Maziwa ya Tanzania</h1>\n <h2> orodha ya maziwa machache ya Tanzania inatolewa kama ifuatavyo</h2>\n  <ol>\n      <li>Ziwa Victoria</li>\n      <li>Ziwa Tanganyika</li>\n      <li>Ziwa Nyasa</li>\n      <li>Ziwa Rukwa</li>\n      <li>Ziwa Eyasi</li>\n      <li>Ziwa Natron</li>\n      <li>Ziwa Manyara</li>\n      <li>Ziwa Baringo</li>\n      <li>Ziwa Jipe</li>\n      </ol>\n  </body>\n</html>	2018-02-28 11:48:15.463261+00	2018-02-28 12:20:48.587173+00	14	28	t
4420	<!doctype html>\n<html>\n  <head>\n    <title></title>\n    <style>\n       body{ background:darkblue;\n       color:white;\n    }\n    \n    \n    </style>\n  </head>\n  <body><h1>Maziwa ya Tanzania</h1>\n  <h3>Orodha ya maziwa machache ya Tanzania inatolewa kama ifuatavyo</h3>\n  <ol><li>Ziwa Victoria</li>\n  <li>Ziwa Tanganyika</li>\n  <li>Ziwa Nyasa</li>\n  <li>Ziwa Rukwa</li>\n   <li>Ziwa Eyasi</li>\n   <li>Ziwa Natron</li>\n   <li>Ziwa Manyara</li>\n   <li>Ziwa Burigi</li>\n   <li>Ziwa Balangida</li>\n   <li>Ziwa Jipe</li>\n      </ol>\n  </body>\n</html>	2018-02-28 11:08:53.781532+00	2018-02-28 11:44:48.200085+00	14	12	t
4424	<!doctype html>\n<html>\n  <head>\n     <style>\n     body{\n         background-color:darkblue;\n         color:white;\n     }\n     </style>\n    <title></title>\n  </head>\n  <body>\n  <h1>Maziwa ya Tanzania</h1>\n  <h3>Orodha ya maziwa machache ya Tanzania inatolewa kama ifuatavyo:</h3>\n  <ol>\n      <li>Ziwa Victoria</li>\n      <li>Ziwa Tanganyika</li>\n      <li>Ziwa nyasa</li>\n      <li>Ziwa Rukwa</li>\n      <li>Ziwa Eyasi</li>\n      <li>Ziwa Natron</li>\n      <li>Ziwa Manyara</li>\n      <li>Ziwa Biringi</li>\n      <li>Ziwa Balangida</li>\n      <li>Ziwa Jipe</li>\n      </ol>\n  </body>\n</html>	2018-02-28 11:09:13.279773+00	2018-02-28 11:27:55.123871+00	14	6	t
4442	<!doctype html>\n<html>\n  <head>\n   <style>   \n    body{  \n    color:blue; \n     background-color:yellow;\n    }\n    </style>\n    <title></title>\n  </head>\n  <body>\n  <h1>Tumaini Senior Secondary School</h1>\n  <li>Iko Makuyuni.</li>\n  <li>Kuna wanafunzi mia moja sabini kule.</li>\n  <li>Wanafunzi wanatokea sehemu nyingi za Tanzania.</li>\n  \n  <h2>Sasa shule hii ina Forms:</h2>\n  <ol>\n  <li>Form 1</li>\n  <li>Form 2</li>\n  <li>Form 3</li>\n  </ol>\n  \n  Wataongeza Form 4 mwaka ujayo.\n  </body>\n</html>	2018-02-28 11:34:41.296493+00	2018-02-28 11:51:15.72933+00	15	5	t
4425		2018-02-28 11:09:26.657609+00	\N	14	20	f
4406	<!doctype html>\n<html>\n  <head>\n    <title></title>\n    <style>body{background-color:darkblue;color:white;}</style>\n  </head>\n  <body>\n  <H1>Maziwa ya Tanzania</H1><h2>Orodha ya maziwa machache ya Tanzania inatolewa   kama ifuatavyo:</h2> <ol><li>Ziwa Victoria</li><li>Ziwa Tanganyika</li><li>Ziwa Nyasa</li><li>Ziwa Rukwa</li><li>Ziwa Eyasi</li><li>Ziwa Natron</li><li>Ziwa Manyara</li><li>Ziwa Burigi</li><li>Ziwa Balangida</li><li>Ziwa jipe</li></ol>\n  </body>\n</html>	2018-02-28 11:05:27.942151+00	2018-02-28 11:55:23.754848+00	14	59	t
4439	<!doctype html>\n<html>\n  <head>\n    <title></title>\n    <style>\n        body{\n            background-color:darkblue;\n            color:white;\n        }\n    </style>\n  </head>\n  <body>\n      <h1>Maziwa Tanzania</h1>\n      <h3>Orodha ya maziwa machache ya Tanzania inatolewa kama ifuatavyo:</h3>\n      <ol>\n      <li>Ziwa Victoria</li>\n      <li>Ziwa Tangnyika</li>\n      <li>Ziwa Nyasa</li>\n      <li>Ziwa Rukwa</li>\n      <li> Ziwa Eyasi</li>\n      <li>Ziwa Natron</li>\n      <li>Ziwa Manyara </li>\n      <li>Ziwa Burigi</li>\n      <li>Ziwa Balangida</li>\n      <li>Ziwa Jipe</li>\n      </ol>\n  \n  </body>\n</html>	2018-02-28 11:30:15.93213+00	2018-02-28 11:41:04.13458+00	14	4	t
4465	<!doctype html>\n<html>\n  <head>\n      <title></title>\n      <style>\n      body{\n      background-color:darkblue;\n      color:white;\n      }\n    </style>\n  </head>\n  <body>\n  <h1>Maziwa ya Tanzania</h1>\n  <h3>Orodha ya maziwa machache ya Tanzania inatolewa kama ifuatavyo</h3>\n  <ol>\n      <li>Ziwa victoria </li>\n      <li>Ziwa Tanganyika</li>\n      <li>Ziwa Nyasa</li>\n      <li>Ziwa Rukwa</li>\n      <li>Ziwa Eyasi</li>\n      <li>Ziwa Natron</li>\n     <li>Ziwa Manyara</li>\n     <li>Ziwa Burugi</li>\n     <li>Ziwa Balangida</li>\n     <li>Ziwa Jipe</li>\n  </ol>\n  </body>\n</html>	2018-02-28 12:01:04.351361+00	2018-02-28 12:16:01.734605+00	14	18	t
4402	<!doctype html>\n<html>\n  <head>\n    <title></title>\n <style>\n      body{\n          background-color:darkblue;\n          color:white;\n      }\n  </style>\n </head>\n  <body>\n        <h1>Maziwa ya Tanzania</h1>\n    <div id="page">\n    <h3><p><b>Orotha ya Maziwa machache ya Tanzania intolewa kama ifuatavyo:</b></p></h3>\n        <ol>\n            <li> Ziwa Victoria</li>\n            <li>Ziwa Tanganyika</li>\n            <li>Ziwa Nyasa</li>\n            <li>Ziwa Rukwa</li>\n            <li>Ziwa Eyasi</li>\n            <li>Ziwa Natron</li>\n            <li>Ziwa Manyara</li>\n            <li>Ziwa Burigi</li>\n            <li>Ziwa Balangida</li>\n            <li>Ziwa Jipe</li>\n    </ol>\n</div>\n</body>\n</html>	2018-02-28 11:03:29.021369+00	2018-02-28 11:20:43.864473+00	14	24	t
4416	<!doctype html>\n<html>\n  <head>\n    <title></title>\n    <style>\n        body{\n            background-color:darkblue;\n            color:white;\n        }\n    </style>\n  </head>\n  <body>\n  <h1>Maziwa ya Tanzania</h1>\n  <h3>Orodha ya maziwa machache ya Tanzania inatolewa kama ifuatavyo:</h3>\n  <ol>\n      <li>Ziwa Victoria</li>\n      <li>Ziwa Tanganyika</li>\n      <li>Ziwa Nyasa</li>\n      <li>Ziwa Rukwa</li>\n      <li>Ziwa Eyasi</li>\n      <li>Ziwa Natron</li>\n      <li>Ziwa Manyara</li>\n      <li>Ziwa Burigi</li>\n      <li>Ziwa Balangida</li>\n      <li>Ziwa Jipe</li>\n  </ol>\n  \n  </body>\n</html>	2018-02-28 11:08:38.332054+00	2018-02-28 11:26:45.894124+00	14	19	t
4430	<!doctype html>\n<html>\n  <head>\n    <title></title>\n    <style>\n        body{\n            background:darkblue;\n            color:white;\n            \n        }\n    </style>\n  </head>\n  <body>\n      <h1>Maziwa ya Tanzania</h1>\n  <h3>Orodha ya maziwa machache inatolewa kama ifuatavyo:</h3>\n  <ol>\n      <li>Ziwa Victoria</li>\n      <li>Ziwa Tanganyika</li>\n      <li>Ziwa Nyasa</li>\n      <li>Ziwa Rukwa</li>\n      <li>Ziwa Eyasi</li>\n      <li>Ziwa Natron</li>\n      <li>Ziwa Manyara</li>\n      <li>Ziwa Burigi</li>\n      <li>Ziwa Balangida</li>\n      <li>Ziwa Jipe</li>\n     </ol>\n\n  \n  </body>\n</html>	2018-02-28 11:11:01.701776+00	2018-02-28 11:36:12.587198+00	14	125	t
4461	<!doctype html>\n<html>\n  <head>\n    <title></title>\n    <style>body{background-color:yellow;color:blue}</style>\n  </head>\n  <body>\n  <h1>Tumaini Senior Secondary School</h1><li>Iko Makuyuni</li><li>Kuna   wanafunzi mia sabini kule</li><li>Wanafunzi wanatokea sehemu nyingi za Tanzania</li><h2>Sasa shule hii inazo  Form:</h2><ol><li>Form 1</li><li>Form 2</li><li>Form 3</li></ol>\n                                            Wataongeza Form 4 Mwaka ujayo.\n  </body>\n</html>	2018-02-28 11:55:24.008881+00	2018-02-28 12:21:32.067189+00	15	59	t
4428	<!doctype html>\n<html>\n  <head>\n      <style>\n      body{\n      background-color:yellow;\n       color:blue;\n         }\n      </style>\n    <title></title>\n  </head>\n  <body>\n  <h1>Tumaini Senior Secondary  School</h1>\n  <li>iko makuyuni</li>\n  <li>kuna wanafunzi mia moja sabini kule</li>\n  <li>wanafunzi wanatokea sehemu nyingi za tanzania</li>\n  <h2>Sasa shule hii inazo Forms </h2>\n  <ol>\n  <li>form 1</li>\n  <li>form 2</li>\n  <li>form 3</li>\n  </ol>\n  <p>wataongeza form 4 mwaka ujao</p>\n  </body>\n</html>	2018-02-28 11:10:35.841568+00	2018-02-28 12:00:43.78567+00	15	35	t
4417	<!doctype html>\n<html>\n  <head>\n    <title>\n        <style>\n            body{\n                background:darkblue;\n                color:white;\n            }\n        </style>\n    </title>\n    \n  </head>\n  <body>\n      <h1>Maziwa ya Tanzania</h1>\n      Orodha ya maziwa machache ya Tanzania inatolewa kama ifuatavyo:\n     <ol>\n         <li>Ziwa Victoria</li>\n         <li>Ziwa Tanganyika</li>\n         <li>Ziwa Nyasa</li>\n         <li>Ziwa Rukwa</li>\n         <li>Ziwa Eyasi</li>\n         <li>Ziwa Natron</li>\n         <li>Ziwa Manyara</li>\n         <li>Ziwa Burigi</li>\n         <li>Ziwa Balangida</li>\n         <li>Ziwa Jipe</li>\n     </ol>\n  </body>\n</html>	2018-02-28 11:08:39.52146+00	\N	14	29	f
4431	<!doctype html>\n<html>\n  <head>\n    <title></title>\n    <style>\n       body{\n        background:yellow;\n        color:blue;\n    }\n    </style>\n  </head>\n  <body>\n      <h1>Tumaini Senior Secondary School:</h1>\n       <ul>\n           <li>Iko Makuyuni</li>\n           <li>Kuna wanafunzi mia moja sabini kule</li>\n           <li>Wanafunzi wanatokea sehemu nyingi za Tanzania</li>\n           </ul>\n<h2>Sasa shule hii inazo Forms</h2>\n            <ol>\n                <li>Form 1</li>\n                <li>Form 2</li>\n                <li>Form 3</li>\n           \n           </ol>\n          <p>Wataongeza Form 4 mwaka ujayo</p> \n           \n \n  </body>\n</html>	2018-02-28 11:11:16.893045+00	2018-02-28 12:04:33.948601+00	15	32	t
4456	<!doctype html>\n<html>\n  <head>\n    <title></title>\n    <style>\n     body{\n         background-color:yellow;\n         color:blue;\n     }   \n        \n    </style>\n  </head>\n  <body>\n  <h1>Tumaini Senior Secondary School</h1>\n  <ul>\n      <li>Iko Makuykni</li>\n      <li>Kuna wanafunzi mia moja sabini kule</li>\n      <Li>Wanafunzi wanatokea sehemu  nyingi ya Tanzania</Li>\n<h2>\n  </ul>\n  </body>\n</html>	2018-02-28 11:50:46.144024+00	\N	15	23	f
4434	<!doctype html>\n<html>\n  <head>\n    <title></title>\n    <style>\n        body{\n            background-color:yellow;\n            color:blue;\n        }\n    </style>\n  </head>\n  <body>\n    <h1>Tumaini Senior Secondary School</h1>\n    <ul>\n        <li>Iko Makuyuni.</li>\n        <li>Kuna wanafunzi mia moja sabini kule.</li>\n        <li>Wanafunzi wanatokea sehemu nyingi za Tanzania.</li>\n        </ul>\n  <h2>Sasa shule hii inazo Forms:</h2>\n     <ol>\n         <li>Form 1</li>\n         <li>Form 2</li>\n         <li>Form 3</li>\n     </ol>\n     <p>Wataongeza Form 4 mwaka ujayo.</p>\n        \n  \n  </body>\n</html>	2018-02-28 11:26:46.07012+00	2018-02-28 11:39:19.476226+00	15	19	t
4419	<!doctype html>\n<html>\n  <head>\n    <title></title>\n  \n  <style>\n   body{background-color:yellow;\n   color:blue\n       \n   }   \n  </style>\n  </head>\n  <body>\n  <h1>Tumaini senior secondary school</h1>\n  <li>Iko makuyuni.</li>\n  <li>Kuna wanfunzi mia moja sabini kule.</li>\n  <li>Wanafunzi wanatokea sehemu njingi za Tanzania.</li>\n  <h1>Sasa shule hii inazo Forms:</h1>\n  <ol>\n  <li>Form 1</li>\n  <li>Form 2</li>\n  <li>Form 3</li>\n  </ol>\n      Wataongeza Form 4 mwaka ujao.\n      </body>\n</html>	2018-02-28 11:08:41.848994+00	2018-02-28 11:55:07.772091+00	15	27	t
4421	<!doctype html>\n<html>\n  <head>\n   <style>  \n   body {background: darkblue;\n      \n      color:white;}\n      \n      </style>\n    <title></title>\n  </head>\n  <body>\n     <h1>MAZIWA YA TANZANIA</h1>\n     Orodha ya maziwa machache ya Tanzania inatolewa kama ifuatavyo:\n    <ol>\n <li>Ziwa Victoria</li>\n <li>Ziwa  Tanganyika</li>\n <li>Ziwa Nyasa</li>\n <li>Ziwa Rukwa</li>\n <li>Ziwa Eyasi</li>\n <li>Ziwa Natron</li>\n <li>Ziwa Manyara</li>\n  <li>Ziwa Burigi</li>\n  <li>Ziwa Balangida</li>\n  <li>Ziwa Jipe</li>\n  </ol>\n  </body>\n</html>	2018-02-28 11:08:53.959217+00	2018-02-28 11:46:21.392501+00	14	17	t
4408	<!doctype html>\n<html>\n  <head>\n      <style>\n      body{\n          color:blue;\n         background-color:yellow;\n      }\n      </style>\n    <title></title>\n  </head>\n  <body>\n  <h1>Tumaini Senior Secondary School</h1>\n  <lo>\n <li> Ikomakuyuni</li>\n <li> kuna wanafunzi miamoja sabini kule</li>\n <li> wanafunzi wana tokea sehemu nyingi Tanzania</li>\n <h2>sasa shule hii ina Forms</h2>\n  </lo>\n  <ol>\n<li>Form 1</li>\n<li>Form 2</li>\n<li>Form 3</li>\n</ol>\n<p>watakuwa na Form 4 mwaka ujao</p>\n  </body>\n</html>	2018-02-28 11:06:16.468389+00	2018-02-28 12:01:04.172959+00	15	18	t
4466		2018-02-28 12:01:34.801114+00	\N	16	15	f
4445	<!doctype html>\n<html>\n  <head>\n    <title></title>\n    <style>\n    body{\n            background-color:darkblue;\n            color:white\n        }\n    </style>\n  </head>\n  <body>\n <h1>Maziwa ya Tanzania</h1> \n <h2>Orodha ya maziwa machache Tanzania inatolewa kama ifuatavyo:</h2>\n <ol>\n<li>Ziwa Victoria</li> \n<li>Ziwa Tanganyika</li>\n<li>Ziwa Nyasa</li>\n<li>Ziwa Rukwa</li>\n<li>Ziwa Eyasi</li>\n<li>Ziwa Natron</li>\n<li>Ziwa Manyara</li>\n<li>Ziwa Burigi</li>\n<li>Ziwa Baringo</li>\n<li>Ziwa Jipe</li>\n </ol>\n  </body>\n</html>	2018-02-28 11:38:17.125966+00	2018-02-28 12:07:18.235666+00	14	22	t
4422	<!doctype html>\n<html>\n  <head>\n    <title></title>\n    <style>\n    body{           \n        background-color:yellow;\n     color:blue;\n    }\n    </style>\n  </head>\n  <body>\n<h1>Tumaini Senior Secondary School</h1>\n<ul>\n<li>Iko Makuyuni</li>\n<li>Kuna wanafunzi mia moja sabini kule</li>\n<li>Wanafunzi wanatokea sehemu nyingi za Tanzania</li>\n</ul>\n<h2>Sasa shule hii inazo Forms</h2>\n<ol>\n    <li>form1</li>\n    <li>form2</li>\n    <li>form3</li>\n    </ol>\n    <p>Wataongeza form4 mwaka ujao</p>\n  </body>\n</html>	2018-02-28 11:09:10.873085+00	2018-02-28 11:48:15.286933+00	15	28	t
4440	<!doctype html>\n<html>\n  <head>\n    <title></title>\n    <style>\n        body{\n       background-color:darkblue;\n       color:white;\n        }\n    </style>\n  </head>\n  <body>\n  <h1>Maziwa ya Tanzania</h1>\n  <h3>Orodha ya maziwa machache ya Tanzania inatolewa kama ifuatavyo:</h3>\n  <ol>\n  <li>Ziwa victoria</li>\n  <li>Ziwa Tanganyika</li>\n  <li>Ziwa Nyasa</li>\n  <li>Ziwa Rukwa</li>\n  <li>Ziwa Eyasi</li>\n  <li>Ziwa Natron</li>\n  <li>Ziwa Manyara</li>\n  <li>Ziwa Birigi</li>\n  <li>Ziwa Balangida</li>\n  <li>Ziwa Jipe</li>\n  </ol>\n  </body>\n</html>	2018-02-28 11:31:10.432439+00	2018-02-28 11:51:45.935102+00	14	16	t
4415	<!doctype html>\n<html>\n  <head>\n    <title></title><style>\n    body{background:darkblue;\n    color:white;}\n    </style>\n \n  </head>\n  <body>\n  <h1>Maziwa ya Tanzania</h1>Orodha ya Maziwa machache ya Tanzania inatolewa kama ifuatavyo:\n<ol><li>Ziwa victoria</li><li>Ziwa tanganyika</li><li>Ziwa nyasa</li><li>Ziwa rukwa</li><li>Ziwa Eyasi</li><li>Ziwa Natron</li><li>Ziwa Manyara</li><li>Ziwa Burigi</li><li>Ziwa Balangida</li><li>Ziwa Jipe</li></ol>\n\n     </body>\n</html>	2018-02-28 11:08:33.42608+00	2018-02-28 12:11:53.864948+00	14	31	t
4459	<!doctype html>\n<html>\n  <head>\n    <title></title>\n  </head>\n  <body>\n <h1>Maziwa ya Tanzania</h1> \n <h3>Orodha ya Maz</h3>\n  </body>\n</html>	2018-02-28 11:52:37.551958+00	\N	14	9	f
4436	<!doctype html>\n<html>\n  <head>\n    <title></title>\n    <style>\n        body{\n            background-color:yellow;\n            color:blue;\n        }\n    </style>\n  </head>\n  <body>\n  <h1>Tumaini Senior Secondary School</h1>\n  <ul>\n  <li>Iko Makuyuni.</li>\n  <li>Kuna wanafunzi mia moja sabini kule.</li>\n  <li> Wanafunzi wanatokea sehemu nyingi za Tanzania.</li>\n  </ul>\n  <h2>Sasa shule hii inazo Forms:</h2>\n  <ol>\n      <li>Form 1</li>\n      <li>Form 2</li>\n      <li>Form 3</li>\n     </ol>\n    <p>Wataongeza form four mwaka ujao.</p>\n  \n  \n  </body>\n</html>	2018-02-28 11:27:55.296343+00	2018-02-28 11:42:20.240072+00	15	6	t
4448		2018-02-28 11:42:05.184092+00	\N	16	7	f
4467	<!doctype html>\n<html>\n  <head>\n    <title></title>\n    <style>\n        body{\n            background-color:darkblue;\n            color:white;\n        }\n    </style>\n  </head>\n  <body>\n      <h1>Maziwa ya Tanzania</h1>\n    <h2> Orodha ya maziwa machache ya Tanzania inatolewa kama ifuatavyoa:</h2>\n      <ol>\n          <li>Ziwa Victoria</li>\n          <li>Ziwa Tanganyika</li>\n          <li>Ziwa Nyasa</li>\n          <li>Ziwa Rukwa</li>\n          <li>Ziwa Eyasi</li>\n          <li>Ziwa Natron</li>\n          <li>Ziwa Manyara</li>\n          <li>Ziwa Burigi</li>\n          <li>Ziwa Balangida</li>\n          <li>Ziwa Jipe</li>\n      </ol>\n  </body>\n</html>	2018-02-28 12:02:27.328036+00	2018-02-28 12:20:30.041419+00	14	8	t
4437	<!doctype html>\n<html>\n  <head>\n    <title></title>\n    <style>\n    body{\n    background-color:yellow;\n    color:blue;\n    }\n    </style>\n  </head>\n  <body>\n <h1> Tumaini Senior Secondary School </h1>\n <ul>\n     <li>Iko Makuyuni.</li>\n     <li>Kuna wanafunzi mia moja sabini kule.</li>\n     <li>Wanafunzi wanatokea sehemu nyingi za Tanzania.</li>\n     </ul>\n<h2>Sasa shule hii inayo forms:</h2>\n<ol>\n    <li>Form 1</li>\n    <li>Form 2</li>\n    <li>Form 3</li>\n    </ol>\n<p>Wataongeza Form 4 mwaka ujao.</p>\n  </body>\n</html>	2018-02-28 11:28:26.469096+00	2018-02-28 11:48:32.083616+00	15	10	t
4432	<!doctype html>\n<html>\n  \n    <title></title>\n    <style>\n        body{\n            background-color:Yellow;\n            color:blue;\n        }\n    </style>\n \n  \n      <h1>Tumaini Senior Secondary School </h1>\n      <ul>\n          <li>Iko Makuyuni.</li>\n          <li>Kuna wanafunzi mia moja sabini kule.</li>\n          <li>Wanafunzi wanatokea sehemu nyingi za Tanzania.</li>\n          </ul>\n <h2>Sasa shule hii inazo Forms:</h2>\n          <ol>\n         <li>Form 1</li>\n         <li>Form 2</li>\n         <li>Form 3</li> \n         </ol>\n         <p>Wataongeza form 4 mwaka ujao.</p> \n  </body>\n</html>	2018-02-28 11:17:27.834289+00	2018-02-28 12:02:27.151153+00	15	8	t
4444	<!doctype html>\n<html>\n  <head>\n    <title></title>\n    <style>\n        body{\n            background:yellow;\n            color:blue;\n        }\n    </style>\n  </head>\n  <body>\n      <h1>Tumaini Senior Secondary School:</h1>\n      <ul>\n          <li>Iko Makuyuni.</li>\n          <li>Kuna wanafunzi mia moja sabini kule.</li>\n          <li>Wanafunzi wanatokea sehemu nyingi za Tanzania.</li>\n          </ul>\n<h2>Sasa shule hii inazo Forms:</h2>\n          <ol>\n              <li>Form 1</li>\n              <li>Form 2</li>\n              <li>Form 3</li>\n              </ol>\n              \n              \n    <p>Wataongeza Form 4 mwaka ujayo.</p>\n              \n              \n          \n      \n  \n  </body>\n</html>	2018-02-28 11:36:12.774023+00	2018-02-28 12:05:56.616606+00	15	125	t
4395	<!doctype html>\n<html>\n  <head>\n    <title></title>\n  </head>\n  <body>\n    <h1>Habari za Maziwa ya Tanzania</h1>\n    <table>\n        <tr>\n        <th>Jina</th>\n        <th>Picha</th>\n        <th>Eneo</th>\n        </tr>\n        <tr>\n            <td>Ziwa Victoria</td>\n            <td><img src="/static/main/images/ziwa_victoria.jpg"/></td>\n            <td>68,800km<sup>2</sup></td>\n            </tr>\n            <tr>\n            <td>Ziwa Tanganyika</td>    \n            <td><img scr="/static/main/images/ziwa_tanganyika.jpg"/></td>   \n            </tr>\n    </table>\n    <!-- Lake Victoria:      /static/main/images/ziwa_victoria.jpg -->\n    <!-- Lake Tanganyika:   /static/main/images/ziwa_tanganyika.jpg -->\n    <!-- Lake Nyasa:         /static/main/images/ziwa_nyasa.jpg -->\n    <!-- Lake Rukwa:        /static/main/images/ziwa_rukwa.png -->\n    <!-- Lake Eyasi:        /static/main/images/ziwa_eyasi.jpg -->\n    \n    \n    \n  </body>\n</html>	2018-02-27 11:33:39.313559+00	\N	16	66	f
4479	<!doctype html>\n<html>\n  <head>\n    <title></title>\n  </head>\n  <body>\n    <!-- Use these image paths to complete the challenge: -->\n    <!-- Lake Victoria:      /static/main/images/ziwa_victoria.jpg -->\n    <!-- Lake Tanganyika:    /static/main/images/ziwa_tanganyika.jpg -->\n    <!-- Lake Nyasa:         /static/main/images/ziwa_nyasa.jpg -->\n    <!-- Lake Rukwa:         /static/main/images/ziwa_rukwa.png -->\n    <!-- Lake Eyasi:         /static/main/images/ziwa_eyasi.jpg -->\n    \n    \n    \n  </body>\n</html>	2018-02-28 12:21:32.342951+00	\N	16	59	f
4472	<!doctype html>\n<html>\n  <head>\n    <title></title>\n  </head>\n  <body>\n    <!-- Use these image paths to complete the challenge: -->\n    <!-- Lake Victoria:      /static/main/images/ziwa_victoria.jpg -->\n    <!-- Lake Tanganyika:    /static/main/images/ziwa_tanganyika.jpg -->\n    <!-- Lake Nyasa:         /static/main/images/ziwa_nyasa.jpg -->\n    <!-- Lake Rukwa:         /static/main/images/ziwa_rukwa.png -->\n    <!-- Lake Eyasi:         /static/main/images/ziwa_eyasi.jpg -->\n    <table>\n        <h1>Habari za maziwa ya Tanzania</h1>\n        <tr><th>Jina</th><th>picha</th><th>Eneo</th></tr>\n        <td>ziwa</td>\n        <td><img scrc="/static/main/</td>\n    </table>\n    \n    \n  </body>\n</html>	2018-02-28 12:07:18.412952+00	\N	16	22	f
4435	<!doctype html>\n<html>\n  <head>\n    <title></title>\n<style>\n    table{\n        background-color:aqua;\n    }\n    h1{\n        text-align:center;\n    }\n</style>\n  </head>\n  <body>\n  <h1>Habari za Maziwa Tanzania</h1>\n     <table>\n     <tr><th>Jina</th><th>Picha</th><th>Eneo</th></tr>\n      <tr>\n      <td>Ziwa Victoria</td>\n      <td><img src="/static/main/images/ziwa_victoria.jpg"/></td>\n      <td>68,800km<sup>2</sup></td>\n      </tr>\n      <tr>\n      <td>Ziwa Tanganyika</td>\n      <td><img src="/static/main/images/ziwa_tanganyika.jpg"/></td>\n      <td>32,900km<sup>2</sup></td>\n      </tr>\n      <tr>\n      <td>Lake Nyasa</td>\n      <td><img src="/static/main/images/ziwa_nyasa.jpg"/></td>\n      <td>29,600km<sup>2</sup></td>\n      </tr>\n      <tr>\n      <td>Lake Rukwa</td>\n      <td><img src="/static/main/images/ziwa_rukwa.png"/></td>\n      <td>5,760km<sup>2</sup></td>\n      </tr>\n      <tr>\n      <td>Lake Eyasi</td>\n      <td><img src="/static/main/images/ziwa_eyasi.jpg"/></td>\n      <td>1,050km<sup>2</sup></td>\n      </tr>\n    </table>\n  </body>\n</html>	2018-02-28 11:27:25.506535+00	2018-02-28 12:04:45.874508+00	16	24	t
4452	<!doctype html>\n<html>\n  <head>\n      <style>\n          background:color:aqua;\n         \n      </style>\n    <title></title>\n  </head>\n  <body>\n    <!-- Use these image paths to complete the challenge: -->\n    <!-- Lake Victoria:      /static/main/images/ziwa_victoria.jpg -->\n    <!-- Lake Tanganyika:    /static/main/images/ziwa_tanganyika.jpg -->\n    <!-- Lake Nyasa:         /static/main/images/ziwa_nyasa.jpg -->\n    <!-- Lake Rukwa:         /static/main/images/ziwa_rukwa.png -->\n    <!-- Lake Eyasi:         /static/main/images/ziwa_eyasi.jpg -->\n    <h1>Habari ya maziwa</h1>\n    <table><tr><th>Jina</th>\n    <th>Picha</th>\n    <th>Eneo</th>\n    </tr>\n    <tr>\n    <td>Ziwa Victoria</td>\n    <td><img src="/static/main/images/ziwa_victoria.jpg"/></td>\n    <td>32,9000km<sup>2</sup></td>\n    <tr><td>Ziwa Tanganyika</td>\n    <td><img src="/static/main/images/ziwa_tanganyika.jpg"</td>\n    <td>32,900km<sup>2</sup></td>\n    <tr><td>Ziwa nyasa</td>\n    <td><img src="/static/main/images/ziwa_nyasa.jpg"</td>\n    <td>29,600km<sup>2</sup></td>\n    <tr><td>Ziwa Rukwa</td>\n    <td><img src="/static/main/images/ziwa_rukwa.png"</td>\n    <td>5,760km<sup>2</sup></td>\n    \n    </table>\n    \n    \n    \n  </body>\n</html>	2018-02-28 11:45:36.357208+00	\N	16	11	f
4351	<!doctype html>\n<html>\n  <head>\n    <title></title>\n<style>\n</style>\n</head>\n <body>\n <li>iko makuyuni</li>\n <li>kuna wanafunzi mia moja sabini kule</li>\n <li>wanafunzi wanatokea sehemu mbalimbali za Tanzania</li>\n<h2>sasa shule hii ina forms</h2>\n <ol>\n     \n </ol>\n </body>\n</html>	2018-02-27 10:52:42.435455+00	\N	15	56	f
4443	<!doctype html>\n<html>\n  <head>\n    <title></title>\n    <style>\n        body{\n            background:yellow;\n            color:blue;\n        }\n    </style>\n  </head>\n  <body>\n  <h1>Tumaini Senior Secondary School</h1>\n  <ul>\n      <li>Iko Makuyuni.</li>\n      <li>Kuna wanafunzi mia moja sabini kule.</li>\n      <li>Wanafunzi wanatokea sehemu nyingi za Tanzania.</li>\n      </ul>\n<h2>Sasa shule hii inazo Forms:</h2>\n\n      <ol>\n          <li>Form 1</li>\n          <li>Form 2</li>\n          <li>Form 3</li>\n          </ol>\n          \n <p>Wataongeza Form 4 mwaka ujayo.</p>\n   </body>\n</html>	2018-02-28 11:35:57.550196+00	2018-02-28 12:05:47.534028+00	15	13	t
4426	<!doctype html>\n<html>\n  <head>\n    <title></title>\n    <style>\n    body{\n    background-color:darkblue;\n    color:white;\n    }\n    </style>\n    </head>\n    <body>\n <h1>Maziwa ya Tanzania</h1>\n <h3>orodha ya maziwa machache ya Tanzania yanatolewa kama ifuatayo</h3>\n <ol>\n   <li>Ziwa Victoria</li>\n   <li>Ziwa Tanganyika</li>\n   <li>Ziwa Nyasa</li>\n   <li>Ziwa Rukwa</li>\n   <li>Ziwa Eyasi</li>\n   <li>Ziwa Natron</li>\n   <li>Ziwa Manyara</li>\n   <li>Ziwa Burigi</li>\n   <li>Ziwa Balangida</li>\n   <li>Ziwa Jipe</li>\n   </ol>\n  </body>\n  </html>	2018-02-28 11:09:41.681619+00	2018-02-28 11:56:35.957003+00	14	25	t
4449	<!doctype html>\n<html>\n  <head>\n    <title></title>\n    <style>\n    body{\n        background-color:aqua;\n    }\n        h1{\n            text-align;center}\n        }\n\n        \n    \n    </style>\n  </head>\n  <body>\n    <!-- Use these image paths to complete the challenge: -->\n    <!-- Lake Victoria:      /static/main/images/ziwa_victoria.jpg -->\n    <!-- Lake Tanganyika:    /static/main/images/ziwa_tanganyika.jpg -->\n    <!-- Lake Nyasa:         /static/main/images/ziwa_nyasa.jpg -->\n    <!-- Lake Rukwa:         /static/main/images/ziwa_rukwa.png -->\n    <!-- Lake Eyasi:         /static/main/images/ziwa_eyasi.jpg -->\n    <table>\n        <h1>Habari ya Maziwa Tanzania</h1>\n        <tr><th>Jina</th><th>Picha</th><th>Eneo</th></tr>\n        <tr>\n        <td>Ziwa Victoria</td>\n        <td><img src="/static/main/images/ziwa_victoria.jpg"/></td>\n        <td>68,800 km<sup>2</sup></td>\n        </tr>\n        <tr>\n        <td>Ziwa Tanganyika</td>\n        <td><img src="/static/main/images/ziwa_tanganyika.jpg"/></td>\n        <td>32,900km<sup>2</sup></td>\n        </tr>\n        <tr>\n        <td>Ziwa Nyasa</td>\n        <td><img src="/static/main/images/ziwa_nyasa.jpg"/></td>\n        <td>29,600km<sup>2</sup></td>\n        </tr>\n        <tr>\n        <td>Ziwa Rukwa</td>\n        <td><img src="/static/main/images/ziwa_rukwa.png"/></td>\n        <td>5,760km<sup>2</sup></td>\n        </tr>\n        <tr>\n        <td>Ziwa Eyasi</td>\n        <td><img src="/static/main/images/ziwa_eyasi.jpg"/></td>\n        <td>1,050km<sup>2</sup></td>\n        </tr>\n    </table>\n    \n    \n  </body>\n</html>	2018-02-28 11:42:20.418179+00	\N	16	6	f
4429	<!doctype html>\n<html>\n  <head>\n    <title></title><style>\n    body{background:darkblue;\n      color:white;\n    }\n     </style>\n    \n  </head>\n  <body><h1>maziwa ya Tanzania</h1>\n  \n  <h3>Orodha ya Maziwa machache ya Tanzania inatolewa kama ifuatavyo</h3>\n<ol><li>ziwa victoria</li>\n<li>Ziwa Tanganyika</li>\n<li>Ziwa Nyasa</li>\n<li>Ziwa Rukwa</li>\n<li>Ziwa Eyasi</li>\n<li>Ziwa Natron</li>\n<li>Ziwa Manyara</li>\n<li>Ziwa Burigi</li>\n<li>Ziwa    Balangida</li>\n<li>Ziwa Jipe</li>\n    </ol> \n \n <h1></h1>\n  </body>\n</html>	2018-02-28 11:10:50.574395+00	2018-02-28 11:56:47.661803+00	14	34	t
4453	<!doctype html>\n<html>\n  <head>\n      <style>\n          body{ background:yellow;\n          color:blue;}\n      </style>\n    <title></title>\n  </head>\n  <body>\n     <h1>Tumaini Senior Secondary School</h1>\n     <ul>\n  <li>Iko Makuyuni.</li>\n  <li>Ina wanafunzi mia moja sabini kule.</li>\n  <li>Wanafunzi wanatokea sehemu nyingi za Tanzania.</li>\n  </ul>\n  <h2>Sasa shule hii inazo Forms:</h2>\n  <ol>\n  <li>Form 1</li>\n  <li>Form 2</li>\n  <li>Form 3</li>\n  </ol>\n <p> Wataongeza Form 4  mwaka ujayo.</p>\n    </body>\n</html>	2018-02-28 11:46:21.569642+00	2018-02-28 12:05:18.322484+00	15	17	t
4423	<!doctype html>\n<html>\n  <head>\n    <title></title>\n\n\n  </head>\n  <body>\n <li>Maziwa ya Tanzania<hi>\n     Orodha ya maziwa machache ya Tanzania inatolewa kama ifuatayo:\n     <ol>\n     <li>Ziwa Victoria</li>\n     <li>Ziwa Tanganyika</li>\n     <li>Ziwa Nyasa</li>\n     <li>Ziwa Rukwa</li>\n     <li>Ziwa Eyasi</li>\n     <li>Ziwa Natron</li>\n     <li>Ziwa Manyara</li>\n     <li>Ziwa Burigi</li>\n     <li>Ziwa Balangida</li>\n     <li>Ziwa Jipe</li>\n     <ol>\n     \n    \n  </body>\n</html	2018-02-28 11:09:11.055797+00	\N	14	33	f
4468	<!doctype html>\n<html>\n  <head>\n    <title></title>\n    <style>\n     body{\n     background:darkblue;\n       color:white;\n     }\n    </style>\n  </head>\n  <body>\n      <h1>Maziwa ya Tanzania</h1>\n      <h2>Orodha ya maziwa machache ya Tanzania inatolewa kama ifuatayo</h2>\n      <ol>\n          <li>Ziwa Victoria</li>\n          <li>Ziwa Tanganyika</li>\n          <li>Ziwa Nyasa</li>\n          <li>Ziwa Rukwa</li>\n          <Li>Ziwa Eyasi</Li>\n          <li>Ziwa Natron</li>\n          <li>Ziwa Manyara</li>\n          <li>Ziwa Burigi</li>\n          <li>Ziwa Balangida</li>\n          <li>Ziwa Jipe</li>\n          </ol>\n  \n  </body>\n</html>	2018-02-28 12:04:34.126828+00	2018-02-28 12:22:58.697309+00	14	32	t
4457	<!doctype html>\n<html>\n  <head>\n    <title></title>\n  </head>\n  <body>\n  <h1>Habari za Maziwa ya Tanzania</h1>\n  \n  \n  \n  \n  \n    <!-- Use these image paths to complete the challenge: -->\n    <!-- Lake Victoria:      /static/main/images/ziwa_victoria.jpg -->\n    <!-- Lake Tanganyika:    /static/main/images/ziwa_tanganyika.jpg -->\n    <!-- Lake Nyasa:         /static/main/images/ziwa_nyasa.jpg -->\n    <!-- Lake Rukwa:         /static/main/images/ziwa_rukwa.png -->\n    <!-- Lake Eyasi:         /static/main/images/ziwa_eyasi.jpg -->\n<table>    \n <tr>   \n   <td>Ziwa_Victoria</td>\n   <td>img =src/main/images/ziwa_victoria.jpg"</td>\n   <td>68,800km</td>\n   \n   <tr></tr>\n   \n   \n   \n   \n   \n   \n   \n   \n   \n   \n   \n   \n  </body>\n</html>	2018-02-28 11:51:15.989416+00	\N	16	5	f
4471	<!doctype html>\n<html>\n  <head>\n    <title></title>\n  </head>\n  <body>\n    <!-- Use these image paths to complete the challenge: -->\n    <!-- Lake Victoria:      /static/main/images/ziwa_victoria.jpg -->\n    <!-- Lake Tanganyika:    /static/main/images/ziwa_tanganyika.jpg -->\n    <!-- Lake Nyasa:         /static/main/images/ziwa_nyasa.jpg -->\n    <!-- Lake Rukwa:         /static/main/images/ziwa_rukwa.png -->\n    <!-- Lake Eyasi:         /static/main/images/ziwa_eyasi.jpg -->\n    <h1>Habari za Maziwa ya Tanzania</h1>\n    <table><tr><th>Jina</th>\n        <th>Picha</th>\n        <th>Eneo</th>\n            \n        </tr>\n    </table>\n    \n    \n    \n  </body>\n</html>	2018-02-28 12:05:56.793914+00	\N	16	125	f
4446	<!doctype html>\n<html>\n  <head>\n    <title></title>\n    <style>\n        body{\n            background-color:aqua;\n        }\n            h1{\n                text-align;center\n            }\n    </style>\n  </head>\n  <body>\n    <!-- Use these image paths to complete the challenge: -->\n    <!-- Lake Victoria:      /static/main/images/ziwa_victoria.jpg -->\n    <!-- Lake Tanganyika:    /static/main/images/ziwa_tanganyika.jpg -->\n    <!-- Lake Nyasa:         /static/main/images/ziwa_nyasa.jpg -->\n    <!-- Lake Rukwa:         /static/main/images/ziwa_rukwa.png -->\n    <!-- Lake Eyasi:         /static/main/images/ziwa_eyasi.jpg -->\n    <table>\n        <h1>Habari za Maziwa ya Tanzania</h1>\n        <tr><th>Jina</th><th>Picha</th><th>Eneo</th>\n        </tr>\n        \n        <td>Ziwa Victoria</td>\n        <td><img src="/static/main/images/ziwa_victoria.jpg"/></td>\n        <td>68,800 km<sup>2</sup></td>\n        </tr>\n        <tr>\n        <td>Ziwa Tanganyika</td>\n        <td><img src="/static/main/images/ziwa_tanganyika.jpg"></td>\n        <td>32,900km<sup>2</sup></td>\n        </tr>\n        <tr></tr>\n        <td>Ziwa Nyasa</td>\n        <td><img src="/static/main/images/ziwa_nyasa.jpg"/></td>\n        <td>29,600km<sup>2</sup></td>\n        </tr>\n        <td>Ziwa Rukwa</td>\n        <td><img src="/static/main/images/ziwa_rukwa.png"/></td>\n        <td>5,760km<sup>2</sup></td>\n        </tr>\n        <td>Ziwa Eyasi</td>\n        <td><img src="/static/main/images/ziwa_eyasi.jpg"/></td>\n        <td>1,050km<sup>2</sup></td>\n        \n    </table>\n    \n    \n  </body>\n</html>	2018-02-28 11:39:19.654622+00	\N	16	19	f
4473	<!doctype html>\n<html>\n  <head>\n    <title></title><style>\n  body{background:yellow;\n  color:blue;}\n  }\n  </style>\n  </head>\n  <body>\n      <h1>Tumaini Senior Secondary school</h1>\n      </body>\n</html>	2018-02-28 12:11:54.0411+00	\N	15	31	f
4403	<!doctype html>\n<html>\n  <head>\n  <style>\n  body{\n   background:yellow;   \n   color:blue;\n  }\n  </style>\n    <title></title>\n  </head>\n  <body>\n   <h1>Tumaini Senior Secondary School</h1>\n   <ul>\n   <li>Iko makuyuni.</li>\n   <li>Kuna wanafunzi mia moja sabini kule.</li>\n   <li>Wanafunzi wanatokea sehemu nyingi za tanzania.</li>\n   </ul>\n   <h2>Sasa shule hii ina forms:</h2>\n   <ol>\n       <li>Form 1</li>\n       <li>Form 2</li>\n       <li>Form 3</li>\n    </ol>\n    <p>Wataongeza Form 4 mwaka ujayo</p>\n  </body>\n</html>	2018-02-28 11:04:06.751967+00	2018-02-28 12:13:03.317636+00	15	14	t
4470	<!doctype html>\n<html>\n  <head>\n    <title></title>\n  </head>\n  <body>\n    <!-- Use these image paths to complete the challenge: -->\n    <!-- Lake Victoria:      /static/main/images/ziwa_victoria.jpg -->\n    <!-- Lake Tanganyika:    /static/main/images/ziwa_tanganyika.jpg -->\n    <!-- Lake Nyasa:         /static/main/images/ziwa_nyasa.jpg -->\n    <!-- Lake Rukwa:         /static/main/images/ziwa_rukwa.png -->\n    <!-- Lake Eyasi:         /static/main/images/ziwa_eyasi.jpg -->\n    <h1>Habari za Maziwa ya Tanzania</h1>\n    <table><tr><th>Jina</th>\n    <th>Picha</th>\n    <th>Eneo</th>\n    </tr>\n    <tr>\n    <td>Ziwa Victoria</td>\n    <td><img src="/static/main/</td>\n    </tr>\n    </table>\n    \n    \n  </body>\n</html>	2018-02-28 12:05:47.71193+00	\N	16	13	f
4476	<!doctype html>\n<html>\n  <head>\n    <title></title>\n  </head>\n  <body>\n    <!-- Use these image paths to complete the challenge: -->\n    <!-- Lake Victoria:      /static/main/images/ziwa_victoria.jpg -->\n    <!-- Lake Tanganyika:    /static/main/images/ziwa_tanganyika.jpg -->\n    <!-- Lake Nyasa:         /static/main/images/ziwa_nyasa.jpg -->\n    <!-- Lake Rukwa:         /static/main/images/ziwa_rukwa.png -->\n    <!-- Lake Eyasi:         /static/main/images/ziwa_eyasi.jpg -->\n    \n    \n    \n  </body>\n</html>	2018-02-28 12:20:30.219042+00	\N	16	8	f
4481	<!doctype html>\n<html>\n  <head>\n    <title></title>\n    \n  </head>\n  <body>\n    <!-- Use these image paths to complete the challenge: -->\n    <!-- Lake Victoria:      /static/main/images/ziwa_victoria.jpg -->\n    <!-- Lake Tanganyika:    /static/main/images/ziwa_tanganyika.jpg -->\n    <!-- Lake Nyasa:         /static/main/images/ziwa_nyasa.jpg -->\n    <!-- Lake Rukwa:         /static/main/images/ziwa_rukwa.png -->\n    <!-- Lake Eyasi:         /static/main/images/ziwa_eyasi.jpg -->\n    <h1>Habari za Maziwa ya Tanzania</h1>\n    <table>\n    <th>jina</th><th>picha</th><th>Eneo</th>\n    \n    \n    \n    \n    \n    \n    \n    \n    \n    </table>\n    \n    \n  </body>\n</html>	2018-02-28 12:47:01.158196+00	\N	16	43	f
4447	<!doctype html>\n<html>\n  <head>\n    <title></title>\n    <style>\n    table{\n    background-color:aqua;\n    }\n    h1{\n        text-align:center;\n    }\n    </style>\n  </head>\n  <body>\n      <h1><css>Habari za maziwa Tanzania</css></h1>\n      <table>\n<tr><th>Jina</th><th>Picha</th><th>Eneo</th></tr>\n<tr>\n      <td>Ziwa Victoria</td>\n      <td><img src="/static/main/images/ziwa_victoria.jpg"></td>\n      <td>68,800km<sup>2</sup></td>\n      </tr>\n      <tr>\n      <td>Ziwa Tanganyika</td>\n      <td><img src="/static/main/images/ziwa_tanganyika.jpg"></td>\n      <td>32,900km<sup>2</sup></td>\n      </tr>\n    <tr>\n        <td>Ziwa Nyasa</td>\n        <td><img src="/static/main/images/ziwa_nyasa.jpg"></td>\n        <td>29,600km<sup>2</sup></td>\n        </tr>\n          <tr>\n          <tr>\n        <td>Ziwa Rukwa</td>  \n        <td><img src="/static/main/images/ziwa_rukwa.png"></td>\n        <td>5,760km<sup>2</sup></td>\n        </tr>\n        <tr>\n            <td>Ziwa Eyasi</td>\n            <td><img src="/static/main/images/ziwa_eyasi.jpg"></td>\n            <td>1,050km<sup>2</sup></td>\n         </tr>\n      \n    <!-- Use these image paths to complete the challenge: -->\n    <!-- Lake Victoria:      /static/main/images/ziwa_victoria.jpg -->\n    <!-- Lake Tanganyika:    /static/main/images/ziwa_tanganyika.jpg -->\n    <!-- Lake Nyasa:         /static/main/images/ziwa_nyasa.jpg -->\n    <!-- Lake Rukwa:         /static/main/images/ziwa_rukwa.png -->\n    <!-- Lake Eyasi:         /static/main/images/ziwa_eyasi.jpg -->\n    \n    </table>\n    \n  </body>\n</html>	2018-02-28 11:41:04.371883+00	2018-02-28 12:22:46.448951+00	16	4	t
4469	<!doctype html>\n<html>\n  <head>\n      <style>\n          body{background:aquarieme;\n          color:colourless;}\n      </style>\n      \n    <title></title>\n  </head>\n  <body>\n     <h1>Habari Za Maziwa Ya Tanzania</h1>\n     <table>\n         <tr><th>jing</th><th>picha</th><th>eneo</th></tr>\n         <tr>\n             <td>Ziwa Victoria </td>\n             <td><ing src ="/static/main/images/Ziwa_ Victoria. jpg "><td>\n             \n             \n             \n             \n         </tr>\n         \n         \n         \n     </table>\n    <!-- Use these image paths to complete the challenge: -->\n    <!-- Lake Victoria:      /static/main/images/ziwa_victoria.jpg -->\n    <!-- Lake Tanganyika:    /static/main/images/ziwa_tanganyika.jpg -->\n    <!-- Lake Nyasa:         /static/main/images/ziwa_nyasa.jpg -->\n    <!-- Lake Rukwa:         /static/main/images/ziwa_rukwa.png -->\n    <!-- Lake Eyasi:         /static/main/images/ziwa_eyasi.jpg -->\n    \n    \n    \n  </body>\n</html>	2018-02-28 12:05:18.500505+00	\N	16	17	f
4474	<!doctype html>\n<html>\n  <head>\n    <title></title>\n    <styie>\n    <h1>Maziwa ya Tanzania</h1>\n    <h3>Orodha ya maziwa machache ya Tanzania inatolewa kama ifuatayo</h3>\n    <ol/>\n    <li>Ziwa Victoria</li>\n    <li>Ziwa Tanganyika</li>\n    <li>Ziaw Nyasa</li>\n    <li>Ziwa Rukwa</li>\n    <li>Ziwa Eyasi</li>\n    \n  </head>\n  <body>\n  \n  </body>\n</html>	2018-02-28 12:13:03.500247+00	\N	14	14	f
4393	<!doctype html>\n<html>\n  <head>\n    <title></title>\n  </head>\n  <body>\n      <h1>Habari ya maziwa Tanzania</h1>\n      <table>\n        <tr><th>Jina</th><th>Picha</th><th>Eneo</th></tr> \n        <tr>\n          <td>Ziwa victoria</td>  \n          <td>img=scr="/static/main</td>  \n            \n            \n            \n            \n            \n            \n            \n            \n            \n            \n        </tr>\n\n        \n        \n      </table>\n    <!-- Use these image paths to complete the challenge: -->\n    <!-- Lake Victoria:   /static/main/images/ziwa_victoria.jpg -->\n    <!-- Lake Tanganyika:    /static/main/images/ziwa_tanganyika.jpg -->\n    <!-- Lake Nyasa:         /static/main/images/ziwa_nyasa.jpg -->\n    <!-- Lake Rukwa:         /static/main/images/ziwa_rukwa.png -->\n    <!-- Lake Eyasi:         /static/main/images/ziwa_eyasi.jpg -->\n    \n    \n    \n  </body>\n</html>	2018-02-27 11:33:09.88866+00	\N	16	53	f
4482	<!doctype html>\n<html>\n  <head>\n    <title></title>\n  </head>\n  <body>\n  <h1>TUMAINI SENIOR SECONDARY SCHOOL</h1>\n  <li>Iko makuyuni</li>\n  <li>kuna wanafunzi mia moja sabini kule</li>\n  <li>wanafunzi wanatokea sehemu nyingi za Tanzania</li>\n  </body>\n  <ol>\n  <h2>Sasa shule hii inazo forms:</h2> \n  <ol>\n      <li>Form 1</li>\n      <li>Form 2</li>\n      <li>Form 3</li>\n  </ol>\n  Wataongeza Form 4 mwaka ujao.\n  </ol>\n</html>	2018-02-28 12:49:46.135959+00	\N	15	58	f
4400	<!doctype html>\n<html>\n  <head>\n    <title></title>\n    body{background-color:aqua;}\n    \n    \n  </head>\n  <body>\n      <h1>Habari za maziwa ya Tanzania</h1>\n      <table>\n         <th>jina</th><th>picha</th><th>Eneo</th>\n         <tr><td>ziwa victoria</td>\n         <td>img=scr="/static/main/images/ziwa_victoria.jpg"></td>\n         <td>68,800km<sup>2</sup></td>\n     </tr>    \n             \n             \n             \n             \n             \n      </table>\n   <!-- Use these image paths to complete the challenge: -->\n    <!-- Lake Victoria:      /static/main/images/ziwa_victoria.jpg -->\n    <!-- Lake Tanganyika:    /static/main/images/ziwa_tanganyika.jpg -->\n    <!-- Lake Nyasa:         /static/main/images/ziwa_nyasa.jpg -->\n    <!-- Lake Rukwa:         /static/main/images/ziwa_rukwa.png -->\n    <!-- Lake Eyasi:         /static/main/images/ziwa_eyasi.jpg -->\n    \n    \n    \n  </body>\n</html>	2018-02-27 11:40:03.452919+00	\N	16	47	f
4475	<!doctype html>\n<html>\n  <head>\n    <title></title>\n  </head>\n  <body>\n      <h1>Habari za Maziwa ya Tanzania</h1>\n      <table>\n          <tr><th>jina</th><th>picha<th></th>eneo</tr>\n      </table>\n    <!-- Use these image paths to complete the challenge: -->\n    <!-- Lake Victoria:      /static/main/images/ziwa_victoria.jpg -->\n    <!-- Lake Tanganyika:    /static/main/images/ziwa_tanganyika.jpg -->\n    <!-- Lake Nyasa:         /static/main/images/ziwa_nyasa.jpg -->\n    <!-- Lake Rukwa:         /static/main/images/ziwa_rukwa.png -->\n    <!-- Lake Eyasi:         /static/main/images/ziwa_eyasi.jpg -->\n    \n    \n    \n  </body>\n</html>	2018-02-28 12:16:01.913868+00	\N	16	18	f
4480	<!doctype html>\n<html>\n  <head>\n    <title></title>\n  </head>\n  <body>\n    <!-- Use these image paths to complete the challenge: -->\n    <!-- Lake Victoria:      /static/main/images/ziwa_victoria.jpg -->\n    <!-- Lake Tanganyika:    /static/main/images/ziwa_tanganyika.jpg -->\n    <!-- Lake Nyasa:         /static/main/images/ziwa_nyasa.jpg -->\n    <!-- Lake Rukwa:         /static/main/images/ziwa_rukwa.png -->\n    <!-- Lake Eyasi:         /static/main/images/ziwa_eyasi.jpg -->\n    \n    \n    \n  </body>\n</html>	2018-02-28 12:22:58.877866+00	\N	16	32	f
4477	<!doctype html>\n<html>\n  <head>\n    <title></title>\n  </head>\n  <body>\n    <!-- Use these image paths to complete the challenge: -->\n    <!-- Lake Victoria:      /static/main/images/ziwa_victoria.jpg -->\n    <!-- Lake Tanganyika:    /static/main/images/ziwa_tanganyika.jpg -->\n    <!-- Lake Nyasa:         /static/main/images/ziwa_nyasa.jpg -->\n    <!-- Lake Rukwa:         /static/main/images/ziwa_rukwa.png -->\n    <!-- Lake Eyasi:         /static/main/images/ziwa_eyasi.jpg -->\n    <table>\n        <h1>Habari za maziwa ya Tanzania</h1>\n        <tr><th>Jina</th><th>picha</th><th>Eneo</th>\n    \n    \n  </body>\n</html>	2018-02-28 12:20:48.768414+00	\N	16	28	f
4458	<!doctype html>\n<html>\n  <head>\n    <title></title>\n  </head>\n  <body>\n      <h1>Habari ya maziwa Tanzania</h1>\n      \n    <!-- Use these image paths to complete the challenge: -->\n    <!-- Lake Victoria:      /static/main/images/ziwa_victoria.jpg -->\n    <!-- Lake Tanganyika:    /static/main/images/ziwa_tanganyika.jpg -->\n    <!-- Lake Nyasa:         /static/main/images/ziwa_nyasa.jpg -->\n    <!-- Lake Rukwa:         /static/main/images/ziwa_rukwa.png -->\n    <!-- Lake Eyasi:         /static/main/images/ziwa_eyasi.jpg -->\n    <Table>\n  <tr><th>Jina</th><th>Picha</th><th>Eneo</th></tr>\n  <tr>\n  <td>Ziwa  Victoria</td>\n  <td><img scr="/static/main/images/ziwa_victoria.jpg"/></td>\n      <td>68,800km<sup>2</sup></td> \n      </tr>\n      <tr>\n      <td>Ziwa  Tanganyika</td>\n      <td><img scr="/static/main/images/ziwa_tanganyika.jpg"/></td>\n      <td>32,900<sup>2</sup></td>\n     </tr>\n     <tr>\n     <td>Ziwa Nyasa</td>\n     <td><img scr="/</td>\n         \n         \n     </tr>\n    </Table>\n    \n    \n  </body>\n</html>	2018-02-28 11:52:12.824871+00	\N	16	16	f
4392	<!doctype html>\n<html>\n  <head>\n    <title></title>\n    <style>\n    body{\n    background-color:yellow;   \n    color: blue;   \n    }   \n    </style>\n    </head>\n    <body>\n    <h1>Tumaini senior secondary school</h1>\n    <ul>\n    <li>Iko Makuyuni.</li>\n    <lI>Kuna wanafunzi mia moja sabini kule.</lI>\n    <li>Wanafunzi wanatokea sehemu nyingi za Tanzania.</li>\n    </ul>\n    \n    <h2>Sasa shule hii inazo forms:</h2>\n    \n    <ol>\n    <li>Form 1</li>    \n    <li>Form 2</li>    \n    <li>Form 3</li>\n    </ol>\n  Wataongeza form 4 mwaka ujao\n  \n  \n  </body>\n</html>	2018-02-27 11:32:40.575061+00	2018-02-28 12:54:54.054079+00	15	48	t
4484	<!doctype html>\n<html>\n  <head>\n    <title></title>\n  </head>\n  <body>\n    <!-- Use these image paths to complete the challenge: -->\n    <!-- Lake Victoria:      /static/main/images/ziwa_victoria.jpg -->\n    <!-- Lake Tanganyika:    /static/main/images/ziwa_tanganyika.jpg -->\n    <!-- Lake Nyasa:         /static/main/images/ziwa_nyasa.jpg -->\n    <!-- Lake Rukwa:         /static/main/images/ziwa_rukwa.png -->\n    <!-- Lake Eyasi:         /static/main/images/ziwa_eyasi.jpg -->\n    \n    \n    \n  </body>\n</html>	2018-02-28 13:01:25.653171+00	\N	16	49	f
4391	<!doctype html>\n<html>\n  <head>\n    <title></title>\n    <style>\n    table{\n    background-color:aqua;\n    }\n    </style>\n  </head>\n  <body>\n      <h1>Habari za Maziwa ya Tanzania</h1>\n      <table>\n          <th>Jina</th>\n          <th>Picha</th>\n          <th>Eneo</th>\n          <tr>\n              <td>Ziwa Victoria</td>\n              <td><img src="/static/main/images/ziwa_victoria.jpg"/></td>\n              <td>68,800km<sup>2</sub></td>\n          </tr>\n          <tr>\n              <td>Ziwa Tanganyika </td>\n              <td><img src="/static/main/images/ziwa_tanganyika.jpg"/></td>\n              <td>32,900km<sup>2</sup></td>\n          </tr>\n          <tr>\n              <td>Ziwa Nyasa</td>\n              <td><img src="/static/main/images/ziwa_nyasa.jpg"</td>\n          </tr>\n          \n    <!-- Use these image paths to complete the challenge: -->\n    <!-- Lake Victoria:      /static/main/images/ziwa_victoria.jpg -->\n    <!-- Lake Tanganyika:    /static/main/images/ziwa_tanganyika.jpg -->\n    <!-- Lake Nyasa:         /static/main/images/ziwa_nyasa.jpg -->\n    <!-- Lake Rukwa:         /static/main/images/ziwa_rukwa.png -->\n    <!-- Lake Eyasi:         /static/main/images/ziwa_eyasi.jpg -->\n    \n    \n    </table>\n  </body>\n</html>	2018-02-27 11:31:39.491628+00	\N	16	36	f
4450	<!doctype html>\n<html>\n  <head>\n    <title></title><style>\n    body{background-color:yellow;\n    color:blue;\n    }\n    </style>\n    </head>\n  \n  \n  <body>\n      \n      <h1>Tumaini Senior Secondary School </h1>\n  <li>Iko Makuyuni.</li>\n  <li>Kuna wanafunzi mia moja sabini kule.</li>\n  <li>Wanafunzi wanatokea sehemu nyingi za Tanzania.</li>\n  \n  <h2>Sasa shule hii inazo Forms:</h2>\n  <ol><li>Form 1</li>\n  <li>Form 2</li>\n  <li>Form 3</li>\n      \n  </ol>\n  \n  Wataongeza Form 4 mwaka ujao\n  </body>\n</html>	2018-02-28 11:44:48.671893+00	\N	15	12	f
4390	<!doctype html>\n<html>\n  <head>\n    <title></title>\n    <style>\n    table{\n        background-color:aqua;\n    }\n    </style>\n  </head>\n  <body>\n      <h1>Habari za Maziwa ya Tanzania</h1>\n      <table>\n          <th>Jina</th><th>Picha</th><th>Eneo</th>\n          <tr>\n              <td>Ziwa Victoria</td>\n          <td><img src="/static/main/images/ziwa_victoria.jpg"/></td>\n          <td>68,800km<sup>2</sup></td>\n          </tr>\n          <tr>\n              <td>Ziwa Tanganyika</td>\n            <td><img src="/static/main/images/ziwa_tanganyika.jpg"/></td>\n            <td>32,900km <sup>2</sup></td>\n                        </tr>\n                        <tr>\n                            <td>Ziwa Nyasa</td>\n                            <td><img src="/static/main/images/ziwa_nyasa.jpg"</td>\n                            <td>29,600km <sup>2</sup></td>\n                            \n                        </tr>\n      </table>\n    <!-- Use these image paths to complete the challenge: -->\n    <!-- Lake Victoria:      /static/main/images/ziwa_victoria.jpg -->\n    <!-- Lake Tanganyika:    /static/main/images/ziwa_tanganyika.jpg -->\n    <!-- Lake Nyasa:         /static/main/images/ziwa_nyasa.jpg -->\n    <!-- Lake Rukwa:         /static/main/images/ziwa_rukwa.png -->\n    <!-- Lake Eyasi:         /static/main/images/ziwa_eyasi.jpg -->\n    \n    \n    \n  </body>\n</html>	2018-02-27 11:30:35.112584+00	\N	16	38	f
4483	<!doctype html>\n<html>\n  <head>\n      <style>\n       body{   \n      background-color:aqua;    \n       color:green;   \n       }\n          \n      </style>\n    <title></title>\n  </head>\n  <body>\n      <h1>Maziwa ya Tanzania</h1>\n      <table>\n          <th>Ziwa</th><th>picha</th><th>ukubwa</th>\n              \n              \n              \n              \n              \n              \n              \n          </tr>\n    <!-- Use these image paths to complete the challenge: -->\n    <!-- Lake Victoria:      /static/main/images/ziwa_victoria.jpg -->\n    <!-- Lake Tanganyika:    /static/main/images/ziwa_tanganyika.jpg -->\n    <!-- Lake Nyasa:         /static/main/images/ziwa_nyasa.jpg -->\n    <!-- Lake Rukwa:         /static/main/images/ziwa_rukwa.png -->\n    <!-- Lake Eyasi:         /static/main/images/ziwa_eyasi.jpg -->\n    \n    \n    \n  </body>\n</html>	2018-02-28 12:54:54.233119+00	\N	16	48	f
4478	<!doctype html>\n<html>\n  <head>\n    <title></title>\n  </head>\n  <body>\n    <!-- Use these image paths to complete the challenge: -->\n    <!-- Lake Victoria:      /static/main/images/ziwa_victoria.jpg -->\n    <!-- Lake Tanganyika:    /static/main/images/ziwa_tanganyika.jpg -->\n    <!-- Lake Nyasa:         /static/main/images/ziwa_nyasa.jpg -->\n    <!-- Lake Rukwa:         /static/main/images/ziwa_rukwa.png -->\n    <!-- Lake Eyasi:         /static/main/images/ziwa_eyasi.jpg -->\n    \n    \n    \n  </body>\n</html>	2018-02-28 12:21:11.617103+00	\N	16	35	f
4455	<!doctype html>\n<html>\n  <head>\n    <title></title>\n  </head>\n  <body>\n    <!-- Use these image paths to complete the challenge: -->\n    <!-- Lake Victoria:      /static/main/images/ziwa_victoria.jpg -->\n    <!-- Lake Tanganyika:    /static/main/images/ziwa_tanganyika.jpg -->\n    <!-- Lake Nyasa:         /static/main/images/ziwa_nyasa.jpg -->\n    <!-- Lake Rukwa:         /static/main/images/ziwa_rukwa.png -->\n    <!-- Lake Eyasi:         /static/main/images/ziwa_eyasi.jpg -->\n    <table>\n        <h1>Habari ya maziwa Tanzania</h1>\n        <tr><th>jina</th><th>picha</th><th>Eneo</th></tr>\n        <tr>\n        <td>Ziwa Victoria</td>\n        <td><img src="/static/main/images/Ziwa_Victoria.jpg"/></td>\n        <td>68,800 km<sup>2</sup></td>\n        </tr>\n        <tr>\n            <td>ziwa Tanganyika</td>\n            <td><imgsrc="/static/main/images/Ziwa_Tanganyika.jpg"/></td>\n        \n        </table>\n    \n    \n    \n  </body>\n</html>	2018-02-28 11:48:32.258408+00	\N	16	10	f
4374	<!doctype html>\n<html>\n  <head>\n    <title></title>\n    <style>\n        body{\n            color:blue;\n        }\n        body{\n            background-color:yellow;\n        }\n        \n    </style>\n  </head>\n  <body>\n     <h1>Tumaini senior secondary</h1>\n      <li>Iko makuyuni.</li>\n      <li>Kuna wanafunzi miamoja na sabini kule.</li>\n      <li>Wanafunzi wanaotokea sehemu nyingi za Tanzania.</li>\n      <h2>Sasa shule hii inazo forms</h2>\n      \n      \n      <li>1.Form1</li>\n      <li>2.Form2</li>\n      <li>3.Form3</li>\n      <li1>Wataongeza form 4 mwaka ujao</li>\n  </body>\n</html>	2018-02-27 11:01:09.39644+00	\N	15	50	f
4386	<!doctype html>\n<html>\n  <head>\n      <style>\n      table{\n          background-color:aqua;\n      }\n      </style>\n    <title></title>\n  </head>\n  <body>\n      <h1>Habari ya maziwa ya Tanzania</h1>\n      <table>\n     <th>Jina</th><th>Picha</th><th>Eneo</th>  \n    <tr>\n        <td>Ziwa Victoria</td>\n        <td><img src="/static/main/images/ziwa_victoria.jpg"/></td>\n        <td>68,800 km<sup>2</sup></td>\n    </tr>     \n    <tr>\n      <td>Ziwa Tanganyika</td>  \n       <td><img src="/static/main/images/ziwa_tanganyika.jpg"/></td>\n       <td>32,900km<sup>2</sup></td>\n    </tr>\n    <tr>\n    <td>Ziwa Nyasa</td>    \n     <td><img src="/static/main/images/ziwa_nyasa.jpg"/></td>   \n     <td>29,600km<sup>2</sup></td>   \n    </tr>\n    <tr>\n     <td>Ziwa Rukwa</td>   \n     <td><img src="/static/main/images/ziwa_rukwa.png"/></td>   \n     <td>5,760km<sup>2</sup></td>   \n    </tr>\n    <tr>\n     <td>ziwa eyasi</td>   \n     <td><img src="/static/main/images/ziwa_eyasi.jpg"</td>   \n     <td></td>   \n    </tr>\n         <!--   </table>\nUse these image paths to complete the challenge: -->\n    <!-- Lake Victoria:      /static/main/images/ziwa_victoria.jpg -->\n    <!-- Lake Tanganyika:    /static/main/images/ziwa_tanganyika.jpg -->\n    <!-- Lake Nyasa:         /static/main/images/ziwa_nyasa.jpg -->\n    <!-- Lake Rukwa:         /static/main/images/ziwa_rukwa.png -->\n    <!-- Lake Eyasi:         /static/main/images/ziwa_eyasi.jpg -->\n    \n    \n    \n  </body>\n</html>	2018-02-27 11:27:19.81405+00	\N	16	44	f
\.


--
-- Name: main_progress_id_seq; Type: SEQUENCE SET; Schema: public; Owner: jmuser
--

SELECT pg_catalog.setval('main_progress_id_seq', 4484, true);


--
-- Data for Name: main_student; Type: TABLE DATA; Schema: public; Owner: jmuser
--

COPY main_student (id, name, form, gender, total_pass_percent, stream, total_first_solves_in_stream, bonus_first_solves_in_stream, bonus_pass_percent, motivation_index) FROM stdin;
18	Emmanuel Riziki	2	M	200	A	0	0	0	36
30	Benedict William	2	M	0	A	0	0	0	0
21	Josephat Kamara	2	M	0	B	0	0	0	0
29	Stanley Samson	2	M	0	A	0	0	0	0
65	Stephen David	2	M	0	B	0	0	0	0
63	Aurelia Gerald	2	F	0	B	0	0	0	0
126	Elizabeth Marcelly	2	F	0	B	0	0	0	0
38	Hosiana Henry	2	F	200	B	1	0	0	9
40	Aubrian Francis	2	M	200	B	0	0	0	11
66	Peter Hamisi	2	M	200	B	1	0	0	11
42	Ismail Msafiri	2	M	200	B	0	0	0	17
37	Ian Johnson	2	M	200	B	0	0	0	15
7	Calvin John	2	M	200	A	0	0	0	11
16	Faraja James	2	F	200	A	1	0	0	19
25	Naha Mollel	2	F	100	A	0	0	0	17
15	Christopher Bernard	2	M	200	A	0	0	0	27
24	Fred Medard	2	M	300	A	3	0	0	3
125	Glory Phanuel	2	F	200	A	0	0	0	28
45	Jackline Pendaeli	2	F	0	B	0	0	0	0
60	Victoria Thadeus	2	F	0	B	0	0	0	0
33	Japhet Elisamia	2	M	0	A	0	0	0	0
22	Utandita Giabaso	2	F	200	A	0	0	0	25
26	John Timothe	2	M	0	A	0	0	0	0
31	Elia Moses	2	M	100	A	0	0	0	20
14	Maria Joseph	2	F	100	A	0	0	0	22
8	Godlisten John	2	M	200	A	0	0	0	39
28	Loveness Michael	2	F	200	A	0	0	0	32
35	Julius Kamara	2	M	200	A	0	0	0	38
59	Joel Joseph	2	M	200	A	0	0	0	39
4	Salum Shafi	2	M	300	A	0	0	0	13
19	Sandra Samuel	2	F	200	A	1	0	0	9
6	Endesh Gogo	2	F	200	A	0	0	0	11
12	Ibrahim Ziberi	2	M	100	A	0	0	0	10
53	Edwin Ehupendo	2	M	200	B	0	0	0	11
46	Upendo Godwin	2	F	100	B	0	0	0	11
54	Anna Peter	2	F	100	B	0	0	0	12
50	John Jovitha	2	M	0	B	0	0	0	0
47	Collins Boniface	2	M	200	B	0	0	0	16
11	Frank Msuya	2	M	200	A	0	0	0	17
32	Damiana Leckmock	2	F	200	A	0	0	0	43
10	Dorcus Ayubu	2	F	200	A	0	0	0	14
23	Theresia Karoli	2	F	100	A	0	0	0	14
5	Irene Emanuely	2	F	200	A	0	0	0	16
9	Jackson Melkzedeck	2	M	100	A	0	0	0	12
43	Anitha Wilbroad	2	F	200	B	1	0	0	17
58	Lemaron Sironga	2	M	100	B	0	0	0	12
27	Loishiye David	2	M	100	A	0	0	0	13
48	Rose Jeremiah	2	F	200	B	0	0	0	20
49	Yvonne Elisha	2	F	200	B	0	0	0	23
61	Nickson Tumsifu	2	M	0	B	0	0	0	0
56	Meshack Mathato	2	M	0	B	0	0	0	0
55	Hezekiah Kidava	2	M	0	B	0	0	0	0
34	Michael Elisamia	2	M	100	A	0	0	0	18
17	Eliana Loseriano	2	F	200	A	0	0	0	32
57	Inocent Maganga	2	M	0	B	0	0	0	0
51	Neema Isata	2	F	0	B	0	0	0	0
13	Christiner Christopher	2	F	200	A	0	0	0	26
20	Siphaeli Stephano	2	M	0	A	0	0	0	0
52	Catherine Emanuel	2	F	0	B	0	0	0	0
41	Asha Ibrahim	2	F	0	B	0	0	0	0
39	Lembrice Samuel	2	M	0	B	0	0	0	0
44	Abdallah Shabani	2	M	200	B	1	0	0	4
36	James Raphael	2	M	200	B	0	0	0	7
\.


--
-- Name: main_student_id_seq; Type: SEQUENCE SET; Schema: public; Owner: jmuser
--

SELECT pg_catalog.setval('main_student_id_seq', 126, true);


--
-- Name: auth_group auth_group_name_key; Type: CONSTRAINT; Schema: public; Owner: jmuser
--

ALTER TABLE ONLY auth_group
    ADD CONSTRAINT auth_group_name_key UNIQUE (name);


--
-- Name: auth_group_permissions auth_group_permissions_group_id_permission_id_0cd325b0_uniq; Type: CONSTRAINT; Schema: public; Owner: jmuser
--

ALTER TABLE ONLY auth_group_permissions
    ADD CONSTRAINT auth_group_permissions_group_id_permission_id_0cd325b0_uniq UNIQUE (group_id, permission_id);


--
-- Name: auth_group_permissions auth_group_permissions_pkey; Type: CONSTRAINT; Schema: public; Owner: jmuser
--

ALTER TABLE ONLY auth_group_permissions
    ADD CONSTRAINT auth_group_permissions_pkey PRIMARY KEY (id);


--
-- Name: auth_group auth_group_pkey; Type: CONSTRAINT; Schema: public; Owner: jmuser
--

ALTER TABLE ONLY auth_group
    ADD CONSTRAINT auth_group_pkey PRIMARY KEY (id);


--
-- Name: auth_permission auth_permission_content_type_id_codename_01ab375a_uniq; Type: CONSTRAINT; Schema: public; Owner: jmuser
--

ALTER TABLE ONLY auth_permission
    ADD CONSTRAINT auth_permission_content_type_id_codename_01ab375a_uniq UNIQUE (content_type_id, codename);


--
-- Name: auth_permission auth_permission_pkey; Type: CONSTRAINT; Schema: public; Owner: jmuser
--

ALTER TABLE ONLY auth_permission
    ADD CONSTRAINT auth_permission_pkey PRIMARY KEY (id);


--
-- Name: auth_user_groups auth_user_groups_pkey; Type: CONSTRAINT; Schema: public; Owner: jmuser
--

ALTER TABLE ONLY auth_user_groups
    ADD CONSTRAINT auth_user_groups_pkey PRIMARY KEY (id);


--
-- Name: auth_user_groups auth_user_groups_user_id_group_id_94350c0c_uniq; Type: CONSTRAINT; Schema: public; Owner: jmuser
--

ALTER TABLE ONLY auth_user_groups
    ADD CONSTRAINT auth_user_groups_user_id_group_id_94350c0c_uniq UNIQUE (user_id, group_id);


--
-- Name: auth_user auth_user_pkey; Type: CONSTRAINT; Schema: public; Owner: jmuser
--

ALTER TABLE ONLY auth_user
    ADD CONSTRAINT auth_user_pkey PRIMARY KEY (id);


--
-- Name: auth_user_user_permissions auth_user_user_permissions_pkey; Type: CONSTRAINT; Schema: public; Owner: jmuser
--

ALTER TABLE ONLY auth_user_user_permissions
    ADD CONSTRAINT auth_user_user_permissions_pkey PRIMARY KEY (id);


--
-- Name: auth_user_user_permissions auth_user_user_permissions_user_id_permission_id_14a6b632_uniq; Type: CONSTRAINT; Schema: public; Owner: jmuser
--

ALTER TABLE ONLY auth_user_user_permissions
    ADD CONSTRAINT auth_user_user_permissions_user_id_permission_id_14a6b632_uniq UNIQUE (user_id, permission_id);


--
-- Name: auth_user auth_user_username_key; Type: CONSTRAINT; Schema: public; Owner: jmuser
--

ALTER TABLE ONLY auth_user
    ADD CONSTRAINT auth_user_username_key UNIQUE (username);


--
-- Name: django_admin_log django_admin_log_pkey; Type: CONSTRAINT; Schema: public; Owner: jmuser
--

ALTER TABLE ONLY django_admin_log
    ADD CONSTRAINT django_admin_log_pkey PRIMARY KEY (id);


--
-- Name: django_content_type django_content_type_app_label_model_76bd3d3b_uniq; Type: CONSTRAINT; Schema: public; Owner: jmuser
--

ALTER TABLE ONLY django_content_type
    ADD CONSTRAINT django_content_type_app_label_model_76bd3d3b_uniq UNIQUE (app_label, model);


--
-- Name: django_content_type django_content_type_pkey; Type: CONSTRAINT; Schema: public; Owner: jmuser
--

ALTER TABLE ONLY django_content_type
    ADD CONSTRAINT django_content_type_pkey PRIMARY KEY (id);


--
-- Name: django_migrations django_migrations_pkey; Type: CONSTRAINT; Schema: public; Owner: jmuser
--

ALTER TABLE ONLY django_migrations
    ADD CONSTRAINT django_migrations_pkey PRIMARY KEY (id);


--
-- Name: django_session django_session_pkey; Type: CONSTRAINT; Schema: public; Owner: jmuser
--

ALTER TABLE ONLY django_session
    ADD CONSTRAINT django_session_pkey PRIMARY KEY (session_key);


--
-- Name: main_accesswhitelist main_accesswhitelist_pkey; Type: CONSTRAINT; Schema: public; Owner: jmuser
--

ALTER TABLE ONLY main_accesswhitelist
    ADD CONSTRAINT main_accesswhitelist_pkey PRIMARY KEY (id);


--
-- Name: main_problem main_problem_pkey; Type: CONSTRAINT; Schema: public; Owner: jmuser
--

ALTER TABLE ONLY main_problem
    ADD CONSTRAINT main_problem_pkey PRIMARY KEY (id);


--
-- Name: main_progress main_progress_pkey; Type: CONSTRAINT; Schema: public; Owner: jmuser
--

ALTER TABLE ONLY main_progress
    ADD CONSTRAINT main_progress_pkey PRIMARY KEY (id);


--
-- Name: main_student main_student_pkey; Type: CONSTRAINT; Schema: public; Owner: jmuser
--

ALTER TABLE ONLY main_student
    ADD CONSTRAINT main_student_pkey PRIMARY KEY (id);


--
-- Name: auth_group_name_a6ea08ec_like; Type: INDEX; Schema: public; Owner: jmuser
--

CREATE INDEX auth_group_name_a6ea08ec_like ON auth_group USING btree (name varchar_pattern_ops);


--
-- Name: auth_group_permissions_group_id_b120cbf9; Type: INDEX; Schema: public; Owner: jmuser
--

CREATE INDEX auth_group_permissions_group_id_b120cbf9 ON auth_group_permissions USING btree (group_id);


--
-- Name: auth_group_permissions_permission_id_84c5c92e; Type: INDEX; Schema: public; Owner: jmuser
--

CREATE INDEX auth_group_permissions_permission_id_84c5c92e ON auth_group_permissions USING btree (permission_id);


--
-- Name: auth_permission_content_type_id_2f476e4b; Type: INDEX; Schema: public; Owner: jmuser
--

CREATE INDEX auth_permission_content_type_id_2f476e4b ON auth_permission USING btree (content_type_id);


--
-- Name: auth_user_groups_group_id_97559544; Type: INDEX; Schema: public; Owner: jmuser
--

CREATE INDEX auth_user_groups_group_id_97559544 ON auth_user_groups USING btree (group_id);


--
-- Name: auth_user_groups_user_id_6a12ed8b; Type: INDEX; Schema: public; Owner: jmuser
--

CREATE INDEX auth_user_groups_user_id_6a12ed8b ON auth_user_groups USING btree (user_id);


--
-- Name: auth_user_user_permissions_permission_id_1fbb5f2c; Type: INDEX; Schema: public; Owner: jmuser
--

CREATE INDEX auth_user_user_permissions_permission_id_1fbb5f2c ON auth_user_user_permissions USING btree (permission_id);


--
-- Name: auth_user_user_permissions_user_id_a95ead1b; Type: INDEX; Schema: public; Owner: jmuser
--

CREATE INDEX auth_user_user_permissions_user_id_a95ead1b ON auth_user_user_permissions USING btree (user_id);


--
-- Name: auth_user_username_6821ab7c_like; Type: INDEX; Schema: public; Owner: jmuser
--

CREATE INDEX auth_user_username_6821ab7c_like ON auth_user USING btree (username varchar_pattern_ops);


--
-- Name: django_admin_log_content_type_id_c4bce8eb; Type: INDEX; Schema: public; Owner: jmuser
--

CREATE INDEX django_admin_log_content_type_id_c4bce8eb ON django_admin_log USING btree (content_type_id);


--
-- Name: django_admin_log_user_id_c564eba6; Type: INDEX; Schema: public; Owner: jmuser
--

CREATE INDEX django_admin_log_user_id_c564eba6 ON django_admin_log USING btree (user_id);


--
-- Name: django_session_expire_date_a5c62663; Type: INDEX; Schema: public; Owner: jmuser
--

CREATE INDEX django_session_expire_date_a5c62663 ON django_session USING btree (expire_date);


--
-- Name: django_session_session_key_c0390e0f_like; Type: INDEX; Schema: public; Owner: jmuser
--

CREATE INDEX django_session_session_key_c0390e0f_like ON django_session USING btree (session_key varchar_pattern_ops);


--
-- Name: main_progress_problem_id_id_bd0d0f11; Type: INDEX; Schema: public; Owner: jmuser
--

CREATE INDEX main_progress_problem_id_id_bd0d0f11 ON main_progress USING btree (problem_id_id);


--
-- Name: main_progress_student_id_id_17db4a34; Type: INDEX; Schema: public; Owner: jmuser
--

CREATE INDEX main_progress_student_id_id_17db4a34 ON main_progress USING btree (student_id_id);


--
-- Name: auth_group_permissions auth_group_permissio_permission_id_84c5c92e_fk_auth_perm; Type: FK CONSTRAINT; Schema: public; Owner: jmuser
--

ALTER TABLE ONLY auth_group_permissions
    ADD CONSTRAINT auth_group_permissio_permission_id_84c5c92e_fk_auth_perm FOREIGN KEY (permission_id) REFERENCES auth_permission(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: auth_group_permissions auth_group_permissions_group_id_b120cbf9_fk_auth_group_id; Type: FK CONSTRAINT; Schema: public; Owner: jmuser
--

ALTER TABLE ONLY auth_group_permissions
    ADD CONSTRAINT auth_group_permissions_group_id_b120cbf9_fk_auth_group_id FOREIGN KEY (group_id) REFERENCES auth_group(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: auth_permission auth_permission_content_type_id_2f476e4b_fk_django_co; Type: FK CONSTRAINT; Schema: public; Owner: jmuser
--

ALTER TABLE ONLY auth_permission
    ADD CONSTRAINT auth_permission_content_type_id_2f476e4b_fk_django_co FOREIGN KEY (content_type_id) REFERENCES django_content_type(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: auth_user_groups auth_user_groups_group_id_97559544_fk_auth_group_id; Type: FK CONSTRAINT; Schema: public; Owner: jmuser
--

ALTER TABLE ONLY auth_user_groups
    ADD CONSTRAINT auth_user_groups_group_id_97559544_fk_auth_group_id FOREIGN KEY (group_id) REFERENCES auth_group(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: auth_user_groups auth_user_groups_user_id_6a12ed8b_fk_auth_user_id; Type: FK CONSTRAINT; Schema: public; Owner: jmuser
--

ALTER TABLE ONLY auth_user_groups
    ADD CONSTRAINT auth_user_groups_user_id_6a12ed8b_fk_auth_user_id FOREIGN KEY (user_id) REFERENCES auth_user(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: auth_user_user_permissions auth_user_user_permi_permission_id_1fbb5f2c_fk_auth_perm; Type: FK CONSTRAINT; Schema: public; Owner: jmuser
--

ALTER TABLE ONLY auth_user_user_permissions
    ADD CONSTRAINT auth_user_user_permi_permission_id_1fbb5f2c_fk_auth_perm FOREIGN KEY (permission_id) REFERENCES auth_permission(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: auth_user_user_permissions auth_user_user_permissions_user_id_a95ead1b_fk_auth_user_id; Type: FK CONSTRAINT; Schema: public; Owner: jmuser
--

ALTER TABLE ONLY auth_user_user_permissions
    ADD CONSTRAINT auth_user_user_permissions_user_id_a95ead1b_fk_auth_user_id FOREIGN KEY (user_id) REFERENCES auth_user(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: django_admin_log django_admin_log_content_type_id_c4bce8eb_fk_django_co; Type: FK CONSTRAINT; Schema: public; Owner: jmuser
--

ALTER TABLE ONLY django_admin_log
    ADD CONSTRAINT django_admin_log_content_type_id_c4bce8eb_fk_django_co FOREIGN KEY (content_type_id) REFERENCES django_content_type(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: django_admin_log django_admin_log_user_id_c564eba6_fk_auth_user_id; Type: FK CONSTRAINT; Schema: public; Owner: jmuser
--

ALTER TABLE ONLY django_admin_log
    ADD CONSTRAINT django_admin_log_user_id_c564eba6_fk_auth_user_id FOREIGN KEY (user_id) REFERENCES auth_user(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: main_progress main_progress_problem_id_id_bd0d0f11_fk_main_problem_id; Type: FK CONSTRAINT; Schema: public; Owner: jmuser
--

ALTER TABLE ONLY main_progress
    ADD CONSTRAINT main_progress_problem_id_id_bd0d0f11_fk_main_problem_id FOREIGN KEY (problem_id_id) REFERENCES main_problem(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: main_progress main_progress_student_id_id_17db4a34_fk_main_student_id; Type: FK CONSTRAINT; Schema: public; Owner: jmuser
--

ALTER TABLE ONLY main_progress
    ADD CONSTRAINT main_progress_student_id_id_17db4a34_fk_main_student_id FOREIGN KEY (student_id_id) REFERENCES main_student(id) DEFERRABLE INITIALLY DEFERRED;


--
-- PostgreSQL database dump complete
--

