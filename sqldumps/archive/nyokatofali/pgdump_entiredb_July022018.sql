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
-- Name: auth_group; Type: TABLE; Schema: public; Owner: ntuser
--

CREATE TABLE auth_group (
    id integer NOT NULL,
    name character varying(80) NOT NULL
);


ALTER TABLE auth_group OWNER TO ntuser;

--
-- Name: auth_group_id_seq; Type: SEQUENCE; Schema: public; Owner: ntuser
--

CREATE SEQUENCE auth_group_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE auth_group_id_seq OWNER TO ntuser;

--
-- Name: auth_group_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: ntuser
--

ALTER SEQUENCE auth_group_id_seq OWNED BY auth_group.id;


--
-- Name: auth_group_permissions; Type: TABLE; Schema: public; Owner: ntuser
--

CREATE TABLE auth_group_permissions (
    id integer NOT NULL,
    group_id integer NOT NULL,
    permission_id integer NOT NULL
);


ALTER TABLE auth_group_permissions OWNER TO ntuser;

--
-- Name: auth_group_permissions_id_seq; Type: SEQUENCE; Schema: public; Owner: ntuser
--

CREATE SEQUENCE auth_group_permissions_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE auth_group_permissions_id_seq OWNER TO ntuser;

--
-- Name: auth_group_permissions_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: ntuser
--

ALTER SEQUENCE auth_group_permissions_id_seq OWNED BY auth_group_permissions.id;


--
-- Name: auth_permission; Type: TABLE; Schema: public; Owner: ntuser
--

CREATE TABLE auth_permission (
    id integer NOT NULL,
    name character varying(255) NOT NULL,
    content_type_id integer NOT NULL,
    codename character varying(100) NOT NULL
);


ALTER TABLE auth_permission OWNER TO ntuser;

--
-- Name: auth_permission_id_seq; Type: SEQUENCE; Schema: public; Owner: ntuser
--

CREATE SEQUENCE auth_permission_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE auth_permission_id_seq OWNER TO ntuser;

--
-- Name: auth_permission_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: ntuser
--

ALTER SEQUENCE auth_permission_id_seq OWNED BY auth_permission.id;


--
-- Name: auth_user; Type: TABLE; Schema: public; Owner: ntuser
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


ALTER TABLE auth_user OWNER TO ntuser;

--
-- Name: auth_user_groups; Type: TABLE; Schema: public; Owner: ntuser
--

CREATE TABLE auth_user_groups (
    id integer NOT NULL,
    user_id integer NOT NULL,
    group_id integer NOT NULL
);


ALTER TABLE auth_user_groups OWNER TO ntuser;

--
-- Name: auth_user_groups_id_seq; Type: SEQUENCE; Schema: public; Owner: ntuser
--

CREATE SEQUENCE auth_user_groups_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE auth_user_groups_id_seq OWNER TO ntuser;

--
-- Name: auth_user_groups_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: ntuser
--

ALTER SEQUENCE auth_user_groups_id_seq OWNED BY auth_user_groups.id;


--
-- Name: auth_user_id_seq; Type: SEQUENCE; Schema: public; Owner: ntuser
--

CREATE SEQUENCE auth_user_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE auth_user_id_seq OWNER TO ntuser;

--
-- Name: auth_user_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: ntuser
--

ALTER SEQUENCE auth_user_id_seq OWNED BY auth_user.id;


--
-- Name: auth_user_user_permissions; Type: TABLE; Schema: public; Owner: ntuser
--

CREATE TABLE auth_user_user_permissions (
    id integer NOT NULL,
    user_id integer NOT NULL,
    permission_id integer NOT NULL
);


ALTER TABLE auth_user_user_permissions OWNER TO ntuser;

--
-- Name: auth_user_user_permissions_id_seq; Type: SEQUENCE; Schema: public; Owner: ntuser
--

CREATE SEQUENCE auth_user_user_permissions_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE auth_user_user_permissions_id_seq OWNER TO ntuser;

--
-- Name: auth_user_user_permissions_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: ntuser
--

ALTER SEQUENCE auth_user_user_permissions_id_seq OWNED BY auth_user_user_permissions.id;


--
-- Name: django_admin_log; Type: TABLE; Schema: public; Owner: ntuser
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


ALTER TABLE django_admin_log OWNER TO ntuser;

--
-- Name: django_admin_log_id_seq; Type: SEQUENCE; Schema: public; Owner: ntuser
--

CREATE SEQUENCE django_admin_log_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE django_admin_log_id_seq OWNER TO ntuser;

--
-- Name: django_admin_log_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: ntuser
--

ALTER SEQUENCE django_admin_log_id_seq OWNED BY django_admin_log.id;


--
-- Name: django_content_type; Type: TABLE; Schema: public; Owner: ntuser
--

CREATE TABLE django_content_type (
    id integer NOT NULL,
    app_label character varying(100) NOT NULL,
    model character varying(100) NOT NULL
);


ALTER TABLE django_content_type OWNER TO ntuser;

--
-- Name: django_content_type_id_seq; Type: SEQUENCE; Schema: public; Owner: ntuser
--

CREATE SEQUENCE django_content_type_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE django_content_type_id_seq OWNER TO ntuser;

--
-- Name: django_content_type_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: ntuser
--

ALTER SEQUENCE django_content_type_id_seq OWNED BY django_content_type.id;


--
-- Name: django_migrations; Type: TABLE; Schema: public; Owner: ntuser
--

CREATE TABLE django_migrations (
    id integer NOT NULL,
    app character varying(255) NOT NULL,
    name character varying(255) NOT NULL,
    applied timestamp with time zone NOT NULL
);


ALTER TABLE django_migrations OWNER TO ntuser;

--
-- Name: django_migrations_id_seq; Type: SEQUENCE; Schema: public; Owner: ntuser
--

CREATE SEQUENCE django_migrations_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE django_migrations_id_seq OWNER TO ntuser;

--
-- Name: django_migrations_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: ntuser
--

ALTER SEQUENCE django_migrations_id_seq OWNED BY django_migrations.id;


--
-- Name: django_session; Type: TABLE; Schema: public; Owner: ntuser
--

CREATE TABLE django_session (
    session_key character varying(40) NOT NULL,
    session_data text NOT NULL,
    expire_date timestamp with time zone NOT NULL
);


ALTER TABLE django_session OWNER TO ntuser;

--
-- Name: main_accesswhitelist; Type: TABLE; Schema: public; Owner: ntuser
--

CREATE TABLE main_accesswhitelist (
    id integer NOT NULL,
    form integer NOT NULL,
    stream character varying(1) NOT NULL
);


ALTER TABLE main_accesswhitelist OWNER TO ntuser;

--
-- Name: main_accesswhitelist_id_seq; Type: SEQUENCE; Schema: public; Owner: ntuser
--

CREATE SEQUENCE main_accesswhitelist_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE main_accesswhitelist_id_seq OWNER TO ntuser;

--
-- Name: main_accesswhitelist_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: ntuser
--

ALTER SEQUENCE main_accesswhitelist_id_seq OWNED BY main_accesswhitelist.id;


--
-- Name: main_problem; Type: TABLE; Schema: public; Owner: ntuser
--

CREATE TABLE main_problem (
    id integer NOT NULL,
    name character varying(100) NOT NULL,
    html_desc text NOT NULL,
    initial_code text NOT NULL,
    verify_code text NOT NULL,
    level integer NOT NULL
);


ALTER TABLE main_problem OWNER TO ntuser;

--
-- Name: main_problem_id_seq; Type: SEQUENCE; Schema: public; Owner: ntuser
--

CREATE SEQUENCE main_problem_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE main_problem_id_seq OWNER TO ntuser;

--
-- Name: main_problem_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: ntuser
--

ALTER SEQUENCE main_problem_id_seq OWNED BY main_problem.id;


--
-- Name: main_progress; Type: TABLE; Schema: public; Owner: ntuser
--

CREATE TABLE main_progress (
    id integer NOT NULL,
    latest_submission text NOT NULL,
    num_submissions integer NOT NULL,
    passed_tests_percent integer NOT NULL,
    started_dtstamp timestamp with time zone NOT NULL,
    passed_dtstamp timestamp with time zone,
    problem_id_id integer NOT NULL,
    student_id_id integer NOT NULL
);


ALTER TABLE main_progress OWNER TO ntuser;

--
-- Name: main_progress_id_seq; Type: SEQUENCE; Schema: public; Owner: ntuser
--

CREATE SEQUENCE main_progress_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE main_progress_id_seq OWNER TO ntuser;

--
-- Name: main_progress_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: ntuser
--

ALTER SEQUENCE main_progress_id_seq OWNED BY main_progress.id;


--
-- Name: main_student; Type: TABLE; Schema: public; Owner: ntuser
--

CREATE TABLE main_student (
    id integer NOT NULL,
    name character varying(50) NOT NULL,
    form integer NOT NULL,
    gender character varying(1) NOT NULL,
    total_pass_percent integer NOT NULL,
    total_submissions integer NOT NULL,
    stream character varying(1) NOT NULL,
    total_first_solves_in_stream integer NOT NULL,
    bonus_first_solves_in_stream integer NOT NULL,
    bonus_pass_percent integer NOT NULL
);


ALTER TABLE main_student OWNER TO ntuser;

--
-- Name: main_student_id_seq; Type: SEQUENCE; Schema: public; Owner: ntuser
--

CREATE SEQUENCE main_student_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE main_student_id_seq OWNER TO ntuser;

--
-- Name: main_student_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: ntuser
--

ALTER SEQUENCE main_student_id_seq OWNED BY main_student.id;


--
-- Name: auth_group id; Type: DEFAULT; Schema: public; Owner: ntuser
--

ALTER TABLE ONLY auth_group ALTER COLUMN id SET DEFAULT nextval('auth_group_id_seq'::regclass);


--
-- Name: auth_group_permissions id; Type: DEFAULT; Schema: public; Owner: ntuser
--

ALTER TABLE ONLY auth_group_permissions ALTER COLUMN id SET DEFAULT nextval('auth_group_permissions_id_seq'::regclass);


--
-- Name: auth_permission id; Type: DEFAULT; Schema: public; Owner: ntuser
--

ALTER TABLE ONLY auth_permission ALTER COLUMN id SET DEFAULT nextval('auth_permission_id_seq'::regclass);


--
-- Name: auth_user id; Type: DEFAULT; Schema: public; Owner: ntuser
--

ALTER TABLE ONLY auth_user ALTER COLUMN id SET DEFAULT nextval('auth_user_id_seq'::regclass);


--
-- Name: auth_user_groups id; Type: DEFAULT; Schema: public; Owner: ntuser
--

ALTER TABLE ONLY auth_user_groups ALTER COLUMN id SET DEFAULT nextval('auth_user_groups_id_seq'::regclass);


--
-- Name: auth_user_user_permissions id; Type: DEFAULT; Schema: public; Owner: ntuser
--

ALTER TABLE ONLY auth_user_user_permissions ALTER COLUMN id SET DEFAULT nextval('auth_user_user_permissions_id_seq'::regclass);


--
-- Name: django_admin_log id; Type: DEFAULT; Schema: public; Owner: ntuser
--

ALTER TABLE ONLY django_admin_log ALTER COLUMN id SET DEFAULT nextval('django_admin_log_id_seq'::regclass);


--
-- Name: django_content_type id; Type: DEFAULT; Schema: public; Owner: ntuser
--

ALTER TABLE ONLY django_content_type ALTER COLUMN id SET DEFAULT nextval('django_content_type_id_seq'::regclass);


--
-- Name: django_migrations id; Type: DEFAULT; Schema: public; Owner: ntuser
--

ALTER TABLE ONLY django_migrations ALTER COLUMN id SET DEFAULT nextval('django_migrations_id_seq'::regclass);


--
-- Name: main_accesswhitelist id; Type: DEFAULT; Schema: public; Owner: ntuser
--

ALTER TABLE ONLY main_accesswhitelist ALTER COLUMN id SET DEFAULT nextval('main_accesswhitelist_id_seq'::regclass);


--
-- Name: main_problem id; Type: DEFAULT; Schema: public; Owner: ntuser
--

ALTER TABLE ONLY main_problem ALTER COLUMN id SET DEFAULT nextval('main_problem_id_seq'::regclass);


--
-- Name: main_progress id; Type: DEFAULT; Schema: public; Owner: ntuser
--

ALTER TABLE ONLY main_progress ALTER COLUMN id SET DEFAULT nextval('main_progress_id_seq'::regclass);


--
-- Name: main_student id; Type: DEFAULT; Schema: public; Owner: ntuser
--

ALTER TABLE ONLY main_student ALTER COLUMN id SET DEFAULT nextval('main_student_id_seq'::regclass);


--
-- Data for Name: auth_group; Type: TABLE DATA; Schema: public; Owner: ntuser
--

COPY auth_group (id, name) FROM stdin;
\.


--
-- Name: auth_group_id_seq; Type: SEQUENCE SET; Schema: public; Owner: ntuser
--

SELECT pg_catalog.setval('auth_group_id_seq', 1, false);


--
-- Data for Name: auth_group_permissions; Type: TABLE DATA; Schema: public; Owner: ntuser
--

COPY auth_group_permissions (id, group_id, permission_id) FROM stdin;
\.


--
-- Name: auth_group_permissions_id_seq; Type: SEQUENCE SET; Schema: public; Owner: ntuser
--

SELECT pg_catalog.setval('auth_group_permissions_id_seq', 1, false);


--
-- Data for Name: auth_permission; Type: TABLE DATA; Schema: public; Owner: ntuser
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
-- Name: auth_permission_id_seq; Type: SEQUENCE SET; Schema: public; Owner: ntuser
--

SELECT pg_catalog.setval('auth_permission_id_seq', 33, true);


--
-- Data for Name: auth_user; Type: TABLE DATA; Schema: public; Owner: ntuser
--

COPY auth_user (id, password, last_login, is_superuser, username, first_name, last_name, email, is_staff, is_active, date_joined) FROM stdin;
1	pbkdf2_sha256$36000$NZKcp4KqRAHR$eKJjoWLRzzNtdQX1YcA6C9sBGg4UQGa46yAs+Fwmsfo=	2018-07-02 13:10:09.389357+00	t	mquinn				t	t	2017-09-26 09:33:15.428252+00
\.


--
-- Data for Name: auth_user_groups; Type: TABLE DATA; Schema: public; Owner: ntuser
--

COPY auth_user_groups (id, user_id, group_id) FROM stdin;
\.


--
-- Name: auth_user_groups_id_seq; Type: SEQUENCE SET; Schema: public; Owner: ntuser
--

SELECT pg_catalog.setval('auth_user_groups_id_seq', 1, false);


--
-- Name: auth_user_id_seq; Type: SEQUENCE SET; Schema: public; Owner: ntuser
--

SELECT pg_catalog.setval('auth_user_id_seq', 2, true);


--
-- Data for Name: auth_user_user_permissions; Type: TABLE DATA; Schema: public; Owner: ntuser
--

COPY auth_user_user_permissions (id, user_id, permission_id) FROM stdin;
\.


--
-- Name: auth_user_user_permissions_id_seq; Type: SEQUENCE SET; Schema: public; Owner: ntuser
--

SELECT pg_catalog.setval('auth_user_user_permissions_id_seq', 1, false);


--
-- Data for Name: django_admin_log; Type: TABLE DATA; Schema: public; Owner: ntuser
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
401	2018-05-07 08:04:15.165935+00	1	2A	2	[{"changed": {"fields": ["form"]}}]	11	1
402	2018-07-02 13:10:48.08817+00	122	Josephat Tango (4A, M)	3		8	1
403	2018-07-02 13:10:48.806712+00	121	Test Student (4B, M)	3		8	1
404	2018-07-02 13:10:48.812948+00	119	Naomi Juma (2A, F)	3		8	1
405	2018-07-02 13:10:48.817617+00	118	Niwaeli Nasiely (2B, F)	3		8	1
406	2018-07-02 13:10:48.822046+00	117	Shantel David (2B, F)	3		8	1
407	2018-07-02 13:10:48.826526+00	116	Elizabeth Marcelly (1B, F)	3		8	1
408	2018-07-02 13:10:48.830014+00	112	Roberto Carlos (2B, M)	3		8	1
409	2018-07-02 13:10:48.835982+00	111	Nasaba Abubakari (2B, M)	3		8	1
410	2018-07-02 13:10:48.839195+00	110	Sudi Tamimu (2B, M)	3		8	1
411	2018-07-02 13:10:48.844081+00	109	Ronaldo Hippolitus (2B, M)	3		8	1
412	2018-07-02 13:10:48.848184+00	108	Ilhan Mahmoud (2B, F)	3		8	1
413	2018-07-02 13:10:48.851728+00	107	Brian John (2B, M)	3		8	1
414	2018-07-02 13:10:48.855228+00	106	Albert Herman (2B, M)	3		8	1
415	2018-07-02 13:10:48.858352+00	105	Sebastian Nione (2B, M)	3		8	1
416	2018-07-02 13:10:48.860549+00	104	Daniel Elibariki (2B, M)	3		8	1
417	2018-07-02 13:10:48.863083+00	103	Emmanuel Amos (2B, M)	3		8	1
418	2018-07-02 13:10:48.865301+00	102	Glory Shedrack (2B, F)	3		8	1
419	2018-07-02 13:10:48.867055+00	101	Philotea Gabriel (2B, F)	3		8	1
420	2018-07-02 13:10:48.869161+00	100	Ismaili Hassan (2B, M)	3		8	1
421	2018-07-02 13:10:48.871838+00	99	Rodluck Raphael (2B, M)	3		8	1
422	2018-07-02 13:10:48.873944+00	98	Irene Gabriel (2B, F)	3		8	1
423	2018-07-02 13:10:48.876158+00	97	Elizabeth Theophili (2B, F)	3		8	1
424	2018-07-02 13:10:48.878008+00	96	Tulukia Fredrick (2B, F)	3		8	1
425	2018-07-02 13:10:48.879982+00	95	George Rashid (2B, M)	3		8	1
426	2018-07-02 13:10:48.882113+00	94	Elizabeth Jacob (2B, F)	3		8	1
427	2018-07-02 13:10:48.884107+00	93	Zilpin Zakayo (2B, M)	3		8	1
428	2018-07-02 13:10:48.886108+00	92	Lilian Peter (2B, F)	3		8	1
429	2018-07-02 13:10:48.88833+00	90	Saumu Kayanda (2B, F)	3		8	1
430	2018-07-02 13:10:48.89025+00	89	Fidelis Joakim (2B, M)	3		8	1
431	2018-07-02 13:10:48.892308+00	88	Rehema Bahha (1B, F)	3		8	1
432	2018-07-02 13:10:48.894457+00	87	Naomi Stephano (2A, F)	3		8	1
433	2018-07-02 13:10:48.897011+00	86	Hawa Juma (2A, F)	3		8	1
434	2018-07-02 13:10:48.899724+00	85	Nipaely Nasieli (2A, F)	3		8	1
435	2018-07-02 13:10:48.901906+00	84	Frank Lazaro (2A, M)	3		8	1
436	2018-07-02 13:10:48.90398+00	83	Glory Peter (2A, F)	3		8	1
437	2018-07-02 13:10:48.906059+00	81	Magdalena Peter (2A, F)	3		8	1
438	2018-07-02 13:10:48.908274+00	80	Esau Yohana (2A, M)	3		8	1
439	2018-07-02 13:10:48.910191+00	79	Josephat Nathanaeli (2A, M)	3		8	1
440	2018-07-02 13:10:48.912174+00	78	Kelvin Herry (2A, M)	3		8	1
441	2018-07-02 13:10:48.914219+00	77	Adiel Charles (2A, M)	3		8	1
442	2018-07-02 13:10:48.91626+00	76	Severin Dominick (2A, M)	3		8	1
443	2018-07-02 13:10:48.918223+00	75	Magret Kafuru (2A, F)	3		8	1
444	2018-07-02 13:10:48.920199+00	74	Frederick Macha (2A, M)	3		8	1
445	2018-07-02 13:10:48.922156+00	73	George Nyakangara (2A, M)	3		8	1
446	2018-07-02 13:10:48.92431+00	72	Jeyrine John (2A, F)	3		8	1
447	2018-07-02 13:10:48.92645+00	71	Dickson Paul (2A, M)	3		8	1
448	2018-07-02 13:10:48.928618+00	70	Neema Paulo (2A, F)	3		8	1
449	2018-07-02 13:10:48.931234+00	69	Frank Paul (2A, M)	3		8	1
450	2018-07-02 13:10:48.933832+00	68	Abdul Simon (2A, M)	3		8	1
451	2018-07-02 13:10:48.93605+00	67	Veronica Bernard (2A, F)	3		8	1
452	2018-07-02 13:10:48.937855+00	66	Peter Hamisi (1B, M)	3		8	1
453	2018-07-02 13:10:48.939896+00	65	Stephen David (1B, M)	3		8	1
454	2018-07-02 13:10:48.941969+00	64	Jonson Marko (1B, M)	3		8	1
455	2018-07-02 13:10:48.944041+00	63	Aurelia Gerald (1B, F)	3		8	1
456	2018-07-02 13:10:48.946255+00	61	Nickson Tumsifu (1B, M)	3		8	1
457	2018-07-02 13:10:48.948289+00	60	Victoria Thadeus (1B, F)	3		8	1
458	2018-07-02 13:10:48.950201+00	59	Joel Joseph (1A, M)	3		8	1
459	2018-07-02 13:10:48.952218+00	58	Lemaron Sironga (1B, M)	3		8	1
460	2018-07-02 13:10:48.954255+00	57	Inocent Maganga (1B, M)	3		8	1
461	2018-07-02 13:10:48.956459+00	56	Meshack Mathato (1B, M)	3		8	1
462	2018-07-02 13:10:48.958281+00	55	Hezekiah Kidava (1B, M)	3		8	1
463	2018-07-02 13:10:48.960293+00	54	Anna Peter (1B, F)	3		8	1
464	2018-07-02 13:10:48.963293+00	53	Edwin Ehupendo (1B, M)	3		8	1
465	2018-07-02 13:10:48.965408+00	52	Catherine Emanuel (1B, F)	3		8	1
466	2018-07-02 13:10:48.967439+00	51	Neema Isata (1B, F)	3		8	1
467	2018-07-02 13:10:48.969436+00	50	John Jovitha (1B, M)	3		8	1
468	2018-07-02 13:10:48.97219+00	49	Yvonne Elisha (1B, F)	3		8	1
469	2018-07-02 13:10:48.974217+00	48	Rose Jeremiah (1B, F)	3		8	1
470	2018-07-02 13:10:48.976239+00	47	Collins Boniface (1B, M)	3		8	1
471	2018-07-02 13:10:48.978193+00	46	Upendo Godwin (1B, F)	3		8	1
472	2018-07-02 13:10:48.980228+00	45	Jackline Pendaeli (1B, F)	3		8	1
473	2018-07-02 13:10:48.98213+00	44	Abdallah Shabani (1B, M)	3		8	1
474	2018-07-02 13:10:48.984106+00	43	Anitha Wilbroad (1B, F)	3		8	1
475	2018-07-02 13:10:48.98607+00	42	Ismail Msafiri (1B, M)	3		8	1
476	2018-07-02 13:10:48.988232+00	41	Asha Ibrahim (1B, F)	3		8	1
477	2018-07-02 13:10:48.99028+00	40	Aubrian Francis (1B, M)	3		8	1
478	2018-07-02 13:10:48.992285+00	39	Lembrice Samuel (1B, M)	3		8	1
479	2018-07-02 13:10:48.994291+00	38	Hosiana Henry (1B, F)	3		8	1
480	2018-07-02 13:10:48.996421+00	37	Ian Johnson (1B, M)	3		8	1
481	2018-07-02 13:10:48.999002+00	36	James Raphael (1B, M)	3		8	1
482	2018-07-02 13:10:49.000969+00	35	Julius Kamara (1A, M)	3		8	1
483	2018-07-02 13:10:49.002386+00	34	Michael Elisamia (1A, M)	3		8	1
484	2018-07-02 13:10:49.004343+00	33	Japhet Elisamia (1A, M)	3		8	1
485	2018-07-02 13:10:49.007683+00	32	Damiana Leckmock (1A, F)	3		8	1
486	2018-07-02 13:10:49.009735+00	31	Elia Moses (1A, M)	3		8	1
487	2018-07-02 13:10:49.011779+00	30	Benedict William (1A, M)	3		8	1
488	2018-07-02 13:10:49.013859+00	29	Stanley Samson (1A, M)	3		8	1
489	2018-07-02 13:10:49.015914+00	28	Loveness Michael (1A, F)	3		8	1
490	2018-07-02 13:10:49.018357+00	27	Loishiye David (1A, M)	3		8	1
491	2018-07-02 13:10:49.020685+00	26	John Timothe (1A, M)	3		8	1
492	2018-07-02 13:10:49.022746+00	25	Naha Mollel (1A, F)	3		8	1
493	2018-07-02 13:10:49.024882+00	24	Fred Medard (1A, M)	3		8	1
494	2018-07-02 13:10:49.02721+00	23	Theresia Karoli (1A, F)	3		8	1
495	2018-07-02 13:10:49.029612+00	22	Utandita Giabaso (1A, F)	3		8	1
496	2018-07-02 13:10:49.031807+00	21	Josephat Kamara (1B, M)	3		8	1
497	2018-07-02 13:10:49.033882+00	20	Siphaeli Stephano (1A, M)	3		8	1
498	2018-07-02 13:10:49.035902+00	19	Sandra Samuel (1A, F)	3		8	1
499	2018-07-02 13:10:49.038087+00	18	Emmanuel Riziki (1A, M)	3		8	1
500	2018-07-02 13:10:49.04009+00	17	Eliana Loseriano (1A, F)	3		8	1
501	2018-07-02 13:10:49.042047+00	16	Faraja James (1A, F)	3		8	1
502	2018-07-02 13:11:54.455025+00	15	Christopher Bernard (1A, M)	3		8	1
503	2018-07-02 13:11:54.463002+00	14	Maria Joseph (1A, F)	3		8	1
504	2018-07-02 13:11:54.466596+00	13	Christiner Christopher (1A, F)	3		8	1
505	2018-07-02 13:11:54.470247+00	12	Ibrahim Ziberi (1A, M)	3		8	1
506	2018-07-02 13:11:54.474972+00	11	Frank Msuya (1A, M)	3		8	1
507	2018-07-02 13:11:54.479168+00	10	Dorcus Ayubu (1A, F)	3		8	1
508	2018-07-02 13:11:54.484413+00	9	Jackson Melkzedeck (1A, M)	3		8	1
509	2018-07-02 13:11:54.489756+00	8	Godlisten John (1A, M)	3		8	1
510	2018-07-02 13:11:54.494515+00	7	Calvin John (1A, M)	3		8	1
511	2018-07-02 13:11:54.498525+00	6	Endesh Gogo (1A, F)	3		8	1
512	2018-07-02 13:11:54.503629+00	5	Irene Emanuely (1A, F)	3		8	1
513	2018-07-02 13:11:54.506044+00	4	Salum Shafi (1A, M)	3		8	1
514	2018-07-02 13:11:54.508482+00	3	Nice Mollel (2A, F)	3		8	1
515	2018-07-02 13:11:54.510423+00	2	Gabriel Damian (2A, M)	3		8	1
516	2018-07-02 13:11:54.51276+00	1	Godlove Kastuli (2A, M)	3		8	1
517	2018-07-02 13:13:34.303662+00	123	Emmanuel Samwel (1A, M)	1	[{"added": {}}]	8	1
518	2018-07-02 13:13:47.142062+00	124	Patrick Ayub (1A, M)	1	[{"added": {}}]	8	1
519	2018-07-02 13:14:00.150989+00	125	Kelvin Joseph (1A, M)	1	[{"added": {}}]	8	1
520	2018-07-02 13:14:12.93775+00	126	Justin Julius (1A, M)	1	[{"added": {}}]	8	1
521	2018-07-02 13:14:24.744833+00	127	Pascal Vincent (1A, M)	1	[{"added": {}}]	8	1
522	2018-07-02 13:14:43.238703+00	128	Godlisten John (1A, M)	1	[{"added": {}}]	8	1
523	2018-07-02 13:14:57.894898+00	129	Loveness Jacob (1A, F)	1	[{"added": {}}]	8	1
524	2018-07-02 13:15:07.983305+00	130	Upendo Thomas (1A, F)	1	[{"added": {}}]	8	1
525	2018-07-02 13:15:18.893993+00	131	Collinsia Eullin (1A, F)	1	[{"added": {}}]	8	1
526	2018-07-02 13:15:30.249225+00	132	Abdul Mohamed (1A, F)	1	[{"added": {}}]	8	1
527	2018-07-02 13:15:53.870972+00	133	Brision John (1A, M)	1	[{"added": {}}]	8	1
528	2018-07-02 13:16:05.69958+00	132	Abdul Mohamed (1A, M)	2	[{"changed": {"fields": ["gender"]}}]	8	1
529	2018-07-02 13:16:26.535448+00	134	Upendo Ginyanyi (1A, F)	1	[{"added": {}}]	8	1
530	2018-07-02 13:16:43.634036+00	135	Anastazia Petro (1A, F)	1	[{"added": {}}]	8	1
531	2018-07-02 13:16:56.391005+00	136	Beatrice Hamisi (1A, F)	1	[{"added": {}}]	8	1
532	2018-07-02 13:17:15.219188+00	137	Silvia Nemence (1A, F)	1	[{"added": {}}]	8	1
533	2018-07-02 13:17:30.35738+00	138	Neema George (1A, F)	1	[{"added": {}}]	8	1
534	2018-07-02 13:17:46.573044+00	139	Anifa Swalehe (1A, F)	1	[{"added": {}}]	8	1
535	2018-07-02 13:18:05.505655+00	140	Shazmina Eliabish (1A, F)	1	[{"added": {}}]	8	1
536	2018-07-02 13:18:21.148438+00	141	Chrispina Lashayo (1A, F)	1	[{"added": {}}]	8	1
537	2018-07-02 13:18:48.407299+00	142	Kornelia Marco (1A, F)	1	[{"added": {}}]	8	1
538	2018-07-02 13:19:03.885262+00	143	Aman Amos (1A, M)	1	[{"added": {}}]	8	1
539	2018-07-02 13:20:14.788097+00	144	Hancy Christopher (1A, M)	1	[{"added": {}}]	8	1
540	2018-07-02 13:20:31.792824+00	145	Scholastica Hhando (1A, F)	1	[{"added": {}}]	8	1
541	2018-07-02 13:20:47.850064+00	146	Husna Mohamed (1A, F)	1	[{"added": {}}]	8	1
542	2018-07-02 13:21:11.856803+00	147	Alphonce John (1A, F)	1	[{"added": {}}]	8	1
543	2018-07-02 13:21:30.106994+00	148	John Orestus (1A, M)	1	[{"added": {}}]	8	1
544	2018-07-02 13:21:36.933102+00	147	Alphonce John (1A, M)	2	[{"changed": {"fields": ["gender"]}}]	8	1
545	2018-07-02 13:21:50.514372+00	149	Baraka Awaki (1A, M)	1	[{"added": {}}]	8	1
546	2018-07-02 13:22:05.867955+00	150	Geofrey Josia (1A, M)	1	[{"added": {}}]	8	1
547	2018-07-02 13:22:21.607725+00	151	Fadhil Yusuph (1A, M)	1	[{"added": {}}]	8	1
548	2018-07-02 13:22:32.47063+00	152	Samuel Michael (1A, M)	1	[{"added": {}}]	8	1
549	2018-07-02 13:22:58.113296+00	153	Shukuru Nyerere (1A, F)	1	[{"added": {}}]	8	1
550	2018-07-02 13:23:10.678828+00	154	Lule John (1A, F)	1	[{"added": {}}]	8	1
551	2018-07-02 13:26:45.347664+00	154	Lule John (1A, F)	3		8	1
552	2018-07-02 13:28:38.761715+00	155	Ibrahim John (1B, M)	1	[{"added": {}}]	8	1
553	2018-07-02 13:29:16.565147+00	156	Jackline Joseph (1B, F)	1	[{"added": {}}]	8	1
554	2018-07-02 13:29:29.130587+00	157	Irene Elias (1B, F)	1	[{"added": {}}]	8	1
555	2018-07-02 13:29:41.921663+00	158	Abdul-Aziz Lema (1B, M)	1	[{"added": {}}]	8	1
556	2018-07-02 13:30:09.652125+00	159	Halima Ernest (1B, F)	1	[{"added": {}}]	8	1
557	2018-07-02 13:30:30.726843+00	160	Renatha Emanuel (1B, F)	1	[{"added": {}}]	8	1
558	2018-07-02 13:30:40.73614+00	161	Naomi Peter (1B, F)	1	[{"added": {}}]	8	1
559	2018-07-02 13:30:52.334466+00	162	Maria Peter (1B, F)	1	[{"added": {}}]	8	1
560	2018-07-02 13:31:08.522574+00	163	Wema Julius (1B, F)	1	[{"added": {}}]	8	1
561	2018-07-02 13:31:23.615933+00	164	Jackline Agustino (1B, F)	1	[{"added": {}}]	8	1
562	2018-07-02 13:31:41.093378+00	165	Rita Daniel (1B, F)	1	[{"added": {}}]	8	1
563	2018-07-02 13:32:01.0426+00	166	Shadrack Lembrise (1B, M)	1	[{"added": {}}]	8	1
564	2018-07-02 13:32:17.631379+00	167	Ezra Edward (1B, M)	1	[{"added": {}}]	8	1
565	2018-07-02 13:32:36.278599+00	168	Miraji Hassan (1B, M)	1	[{"added": {}}]	8	1
566	2018-07-02 13:33:12.096339+00	169	Irene Simon (1B, F)	1	[{"added": {}}]	8	1
567	2018-07-02 13:33:25.26921+00	170	Johnson Dominick (1B, M)	1	[{"added": {}}]	8	1
568	2018-07-02 13:33:57.886383+00	171	Johnson Japhet (1B, M)	1	[{"added": {}}]	8	1
569	2018-07-02 13:34:29.331313+00	172	Lordrick Ayoub (1B, M)	1	[{"added": {}}]	8	1
570	2018-07-02 13:34:38.416951+00	173	Sara Nestory (1B, F)	1	[{"added": {}}]	8	1
571	2018-07-02 13:34:53.736746+00	174	Joseph Peter (1B, M)	1	[{"added": {}}]	8	1
572	2018-07-02 13:35:05.568727+00	175	Donald Damas (1B, M)	1	[{"added": {}}]	8	1
573	2018-07-02 13:35:15.37056+00	176	Nelson Frank (1B, M)	1	[{"added": {}}]	8	1
574	2018-07-02 13:35:24.190219+00	177	Mary Philipo (1B, F)	1	[{"added": {}}]	8	1
575	2018-07-02 13:35:32.385046+00	178	Happiness Henry (1B, F)	1	[{"added": {}}]	8	1
576	2018-07-02 13:35:43.548134+00	179	Loveness Kastuli (1B, F)	1	[{"added": {}}]	8	1
577	2018-07-02 13:35:51.568423+00	180	Esupat Martin (1B, F)	1	[{"added": {}}]	8	1
578	2018-07-02 13:36:02.139878+00	181	Caleb Meleji (1B, M)	1	[{"added": {}}]	8	1
579	2018-07-02 13:36:09.594022+00	182	Severiana Paul (1B, F)	1	[{"added": {}}]	8	1
580	2018-07-02 13:36:32.621541+00	183	Rogathe Fidelis (1B, M)	1	[{"added": {}}]	8	1
581	2018-07-02 13:36:42.370807+00	184	Kimolo Manyangu (1B, M)	1	[{"added": {}}]	8	1
582	2018-07-02 13:36:49.960822+00	185	Hezekia Kidava (1B, M)	1	[{"added": {}}]	8	1
\.


--
-- Name: django_admin_log_id_seq; Type: SEQUENCE SET; Schema: public; Owner: ntuser
--

SELECT pg_catalog.setval('django_admin_log_id_seq', 582, true);


--
-- Data for Name: django_content_type; Type: TABLE DATA; Schema: public; Owner: ntuser
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
-- Name: django_content_type_id_seq; Type: SEQUENCE SET; Schema: public; Owner: ntuser
--

SELECT pg_catalog.setval('django_content_type_id_seq', 11, true);


--
-- Data for Name: django_migrations; Type: TABLE DATA; Schema: public; Owner: ntuser
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
\.


--
-- Name: django_migrations_id_seq; Type: SEQUENCE SET; Schema: public; Owner: ntuser
--

SELECT pg_catalog.setval('django_migrations_id_seq', 29, true);


--
-- Data for Name: django_session; Type: TABLE DATA; Schema: public; Owner: ntuser
--

COPY django_session (session_key, session_data, expire_date) FROM stdin;
2oamirho3dvttkcg7aeuftu7rxei7iu8	OGNkNTBkM2VkNGIxOTM2ODI2NGQ0Y2Q0YTQ5MzI5NTkzZThjMTI0NTp7Il9hdXRoX3VzZXJfYmFja2VuZCI6ImRqYW5nby5jb250cmliLmF1dGguYmFja2VuZHMuTW9kZWxCYWNrZW5kIiwiX2F1dGhfdXNlcl9pZCI6IjEiLCJfYXV0aF91c2VyX2hhc2giOiJhNDExM2Y1MDc2ZDM4Y2Q3N2M4MzA3M2Q0YTQxMjI0NDQ5YjNiYzBmIn0=	2017-10-16 09:28:26.412842+00
pg6r7bz06q7j2koro5jeb3pzby0ev7hv	ZjBmM2U0Y2NjMmE2NzRhZWVlMjcwYjY1N2ZlMjIxMDE5ZGE0NDhjYTp7Il9hdXRoX3VzZXJfaWQiOiIxIiwiX2F1dGhfdXNlcl9iYWNrZW5kIjoiZGphbmdvLmNvbnRyaWIuYXV0aC5iYWNrZW5kcy5Nb2RlbEJhY2tlbmQiLCJfYXV0aF91c2VyX2hhc2giOiJhNDExM2Y1MDc2ZDM4Y2Q3N2M4MzA3M2Q0YTQxMjI0NDQ5YjNiYzBmIn0=	2018-05-21 08:04:07.64919+00
c4zhr8d54kzvd3c9nr0w2c7o8rz82sk5	ZmQ3M2ZhZmQ3NDI4OGQwYWJkNWJjMmYzZTVkNDg2NTM1MmIyZjc1Mzp7Il9hdXRoX3VzZXJfaGFzaCI6ImE0MTEzZjUwNzZkMzhjZDc3YzgzMDczZDRhNDEyMjQ0NDliM2JjMGYiLCJfYXV0aF91c2VyX2lkIjoiMSIsIl9hdXRoX3VzZXJfYmFja2VuZCI6ImRqYW5nby5jb250cmliLmF1dGguYmFja2VuZHMuTW9kZWxCYWNrZW5kIn0=	2017-11-15 12:11:18.947867+00
\.


--
-- Data for Name: main_accesswhitelist; Type: TABLE DATA; Schema: public; Owner: ntuser
--

COPY main_accesswhitelist (id, form, stream) FROM stdin;
1	2	A
\.


--
-- Name: main_accesswhitelist_id_seq; Type: SEQUENCE SET; Schema: public; Owner: ntuser
--

SELECT pg_catalog.setval('main_accesswhitelist_id_seq', 1, true);


--
-- Data for Name: main_problem; Type: TABLE DATA; Schema: public; Owner: ntuser
--

COPY main_problem (id, name, html_desc, initial_code, verify_code, level) FROM stdin;
2	Pythagorean Theorem	In math class, you learned that the Pythagorean Theorem is:\r\n\r\n$$a^2 + b^2 = c^2$$\r\n\r\nIf we want <i>c</i>, we should compute:\r\n\r\n$$c = \\sqrt{a^2 + b^2}$$\r\n\r\nBut the Python code in this challenge is wrong:\r\n\r\n$$c = \\sqrt{a^0 + b^4}$$\r\n\r\nFix the problems in the Python code to solve this challenge.	<block type="import" id="0Xcbk;}s)B;A4ZCA#HK_" x="23" y="-4">\r\n    <field name="libname">math</field>\r\n    <next>\r\n      <block type="def" id="wEqNdngHsF3,wAs!~`V.">\r\n        <field name="funcname">pythagorean_theorem</field>\r\n        <field name="funcargs">a, b</field>\r\n        <statement name="funcbody">\r\n          <block type="return" id="h0OL/%;rSGYx-7SXyykw">\r\n            <field name="expr">math.sqrt(a**0 + b**4)</field>\r\n          </block>\r\n        </statement>\r\n      </block>\r\n    </next>\r\n  </block>	print("=== Testing your program... =============================")\r\ntest = 1\r\ntests = [(7,24,25), (5,12,13), (55,48,73), (3,4,5), (15,8,17), (35,12,37)]\r\ndef verifier_result():\r\n    print('NT_VERIFIER_RESULTS:%d:%d' % (test-1, len(tests)))\r\n    import sys\r\n    sys.exit(0)\r\nfor triple in tests:\r\n    print("TEST %d) Does pythagorean_theorem(%d, %d) return %d?" % (test, triple[0], triple[1], triple[2]))\r\n    result = pythagorean_theorem(triple[0], triple[1])\r\n    if result == triple[2]:\r\n        print("\\t-> CORRECT")\r\n        test += 1\r\n    else:\r\n        print("\\t-> INCORRECT. Your code returns %s. Fix the problem and try again." % result)\r\n        verifier_result()\r\nprint("ALL TESTS PASSED.")\r\nverifier_result()	2
5	Counting Numbers in a List	In this challenge, you are given Python code that is supposed to count how many numbers are in a list. However, the code is wrong because it always returns 0. Fix the problem to solve this challenge.	<block type="def" id="GcO3J!8*60i8lcVgVHy+" x="21" y="32">\r\n    <field name="funcname">count_numbers</field>\r\n    <field name="funcargs">list</field>\r\n    <statement name="funcbody">\r\n      <block type="varstore" id="#aY4~-Qj2*Y@U`;C*chv">\r\n        <field name="1">count</field>\r\n        <field name="2">0</field>\r\n        <next>\r\n          <block type="for" id="{uJIL:Z#4MOu1Z|h2F`N">\r\n            <field name="item">number</field>\r\n            <field name="seq">list</field>\r\n            <statement name="stmts">\r\n              <block type="varplus" id="1U_-^bZ7/XL{nI-0^L?a">\r\n                <field name="lhs">count</field>\r\n                <field name="rhs">0</field>\r\n              </block>\r\n            </statement>\r\n            <next>\r\n              <block type="return" id="Z0]k3`Lf,WAkG^y+rzS?">\r\n                <field name="expr">count</field>\r\n              </block>\r\n            </next>\r\n          </block>\r\n        </next>\r\n      </block>\r\n    </statement>\r\n    <next>\r\n      <block type="varprint" id="i2?q)r54tvP?k.!tt/v*">\r\n        <field name="var">count_numbers([])</field>\r\n        <next>\r\n          <block type="varprint" id="E/uMU58]]1O4yApp_:_b">\r\n            <field name="var">count_numbers([0])</field>\r\n            <next>\r\n              <block type="varprint" id="z_c~V`WmoTBH9bMtY(G;">\r\n                <field name="var">count_numbers([1,2,3])</field>\r\n                <next>\r\n                  <block type="varprint" id="S7`9jt+HLZuQ0kZR,SCc">\r\n                    <field name="var">count_numbers([7,5,10,9,7,55])</field>\r\n                  </block>\r\n                </next>\r\n              </block>\r\n            </next>\r\n          </block>\r\n        </next>\r\n      </block>\r\n    </next>\r\n  </block>	print("=== Testing your program... =============================")\r\ntest = 1\r\ntests = [([], 0), ([0], 1), ([1,2,3], 3), ([7,5,10,9,7,55], 6)]\r\ndef verifier_results():\r\n    print('NT_VERIFIER_RESULTS:%d:%d' % (test-1, len(tests)))\r\n    import sys\r\n    sys.exit(0)\r\nfor tuple in tests:\r\n    print("TEST %d) Does count_numbers(%s) return %d?" % (test, tuple[0], tuple[1]))\r\n    result = count_numbers(tuple[0])\r\n    if result == tuple[1]:\r\n        print("\\t-> CORRECT")\r\n        test += 1\r\n    else:\r\n        print("\\t-> INCORRECT. Your code returns %s. Fix your mistake and try again." % result)\r\n        verifier_results()\r\nprint("ALL TESTS PASSED.")\r\nverifier_results()	1
3	Guanine in DNA	There are four bases in DNA: <b>G</b> (guanine), <b>C</b> (cytosine), <b>A</b> (adenine), and <b>T</b> (thymine). Here is a strand of DNA without guanine in it:\r\n\r\n$$'ATACCATAACCAAATTTTAA'$$\r\n\r\nAnd here is a strand of DNA with guanine in it:\r\n\r\n$$'AGGGGGTTATTACCCATACA'$$\r\n\r\nComplete the Python program so that it returns <i>True</i> if guanine is inside the DNA given to it. If there is no guanine inside the DNA, return <i>False</i>.	<block type="def" id="`Irgur8Q|lxOOLOdIK:i" x="-115" y="16">\r\n    <field name="funcname">guanine_iko</field>\r\n    <field name="funcargs">dna</field>\r\n    <statement name="funcbody">\r\n      <block type="for" id="E*`.ZX}zjM9BHPva@Ja*">\r\n        <field name="item">base</field>\r\n        <field name="seq">dna</field>\r\n        <statement name="stmts">\r\n          <block type="varprint" id="vy)x}JdL;`*pJXh|Mg0J">\r\n            <field name="var">base</field>\r\n          </block>\r\n        </statement>\r\n      </block>\r\n    </statement>\r\n  </block>	print("=== Testing your program... =============================")\r\ntest = 1\r\ntests = [('ACDCADCD', False), ('GGGGGGGG', True), ('AGCDACD', True), ('', False), ('AAAAAA', False)]\r\ndef verifier_results():\r\n    print('NT_VERIFIER_RESULTS:%d:%d' % (test-1, len(tests)))\r\n    import sys\r\n    sys.exit(0)\r\nfor tuple in tests:\r\n    print("TEST %d) Does guanine_iko('%s') return %s?" % (test, tuple[0], tuple[1]))\r\n    result = guanine_iko(tuple[0])\r\n    if result == tuple[1]:\r\n        print("\\t-> CORRECT")\r\n        test += 1\r\n    else:\r\n        print("\\t-> INCORRECT. Your code returns %s. Fix your mistake and try again." % result)\r\n        verifier_results()\r\nprint("ALL TESTS PASSED.")\r\nverifier_results()	3
1	Nyerere Alikuwa Rais Lini?	Julius Nyerere was president of Tanzania from 29 October 1964 to 5 November 1985. This Python code should return <i>True</i> if <i>mwaka</i> is 1964, 1965, 1966, ..., or 1985. Otherwise it should return <i>False</i>.\r\n\r\nIf you need to compare <i>mwaka</i> to a number, here are some examples:\r\n<ul>\r\n  <li><i>mwaka <= 1964</i> means "if mwaka is less than or equal to 1964"</li>\r\n  <li><i>mwaka < 1964</i> means "if mwaka is less than 1964"</li>\r\n  <li><i>mwaka >= 1964</i> means "if mwaka is greater than or equal to 1964"</li>\r\n  <li><i>mwaka > 1964</i> means "if mwaka is greater than 1964"</li>\r\n</ul>\r\n\r\nYou can also use <i>and</i> and <i>or</i> in Python:\r\n<ul>\r\n  <li><i>mwaka >= 1964 and mwaka <= 1985</i> means "if mwaka is greater than or equal to 1964 <b>and</b> mwaka is less than or equal to 1985"</li>\r\n    <li><i>mwaka >= 1964 or mwaka <= 1985</i> means "if mwaka is greater than or equal to 1964 <b>or</b> mwaka is less than or equal to 1985"</li>\r\n</ul>	<block type="def" id="TAMx+q;=6`ZA(NeWNu)Z" x="62" y="27">\r\n    <field name="funcname">nyerere_alikuwa_rais</field>\r\n    <field name="funcargs">mwaka</field>\r\n    <statement name="funcbody">\r\n      <block type="if" id="uPl[-k5!;px+OzT|5m*#">\r\n        <field name="expr">mwaka == 0</field>\r\n        <statement name="stmts">\r\n          <block type="return" id="Jh3F7y};iJ|p+@cBr@6n">\r\n            <field name="expr">True</field>\r\n          </block>\r\n        </statement>\r\n        <next>\r\n          <block type="else" id="6nvU|J}s1GJF+eR_qggz">\r\n            <statement name="DO">\r\n              <block type="return" id="hN5btF:qKB;+jL]xmzF{">\r\n                <field name="expr">False</field>\r\n              </block>\r\n            </statement>\r\n          </block>\r\n        </next>\r\n      </block>\r\n    </statement>\r\n  </block>	print("=== Testing your program... =============================")\r\ntest = 1\r\ntests = range(1960, 1991)\r\ndef verifier_results():\r\n    print('NT_VERIFIER_RESULTS:%d:%d' % (test-1, len(tests)))\r\n    import sys\r\n    sys.exit(0)\r\nfor year in tests:\r\n    answer = False\r\n    if year >= 1964 and year <= 1985:\r\n      answer = True\r\n    print("TEST %d) Does nyerere_alikuwa_rais(%d) return %s?" % (test, year, answer))\r\n    result = nyerere_alikuwa_rais(year)\r\n    if result == answer:\r\n        print("\\t-> CORRECT")\r\n        test += 1\r\n    else:\r\n        print("\\t-> INCORRECT. Your code returns %s. Fix your mistake and try again." % result)\r\n        verifier_results()\r\nprint("ALL TESTS PASSED.")\r\nverifier_results()	3
8	"School Senior Secondary Tumaini"	This Python program prints:\r\n\r\n$$School\\ Senior\\ Secondary\\ Tumaini$$\r\n\r\nChange the <i>name</i> variable so that the order of the words is correct. Your program should print:\r\n\r\n$$Tumaini\\ Senior\\ Secondary\\ School$$	<block type="varstore" id=",h~)CdKU?P.XHoepgcNL" x="-620" y="38">\r\n    <field name="1">first</field>\r\n    <field name="2">"Tumaini"</field>\r\n    <next>\r\n      <block type="varstore" id="Ut#yb[Il;%(u`/IuID8%">\r\n        <field name="1">second</field>\r\n        <field name="2">"Senior"</field>\r\n        <next>\r\n          <block type="varstore" id="]#zpbw`k!DVSTu=(?~Qt">\r\n            <field name="1">third</field>\r\n            <field name="2">"Secondary"</field>\r\n            <next>\r\n              <block type="varstore" id="JN=P9R4E_@Mc*byP+BEK">\r\n                <field name="1">fourth</field>\r\n                <field name="2">"School"</field>\r\n                <next>\r\n                  <block type="varstore" id="E0/==jg1(Uh1(uQq9MkS">\r\n                    <field name="1">name</field>\r\n                    <field name="2">"%s %s %s %s" % (fourth, second, third, first)</field>\r\n                    <next>\r\n                      <block type="varprint" id="gK6)g/P4m.-bk+yl7uPJ">\r\n                        <field name="var">name</field>\r\n                      </block>\r\n                    </next>\r\n                  </block>\r\n                </next>\r\n              </block>\r\n            </next>\r\n          </block>\r\n        </next>\r\n      </block>\r\n    </next>\r\n  </block>	print("=== Testing your program... =============================")\r\ntest = 1\r\ntests = [("first", first, "Tumaini"), ("second", second, "Senior"), ("third", third, "Secondary"), ("fourth", fourth, "School"), ("name", name, "Tumaini Senior Secondary School")]\r\ndef verifier_results():\r\n    print('NT_VERIFIER_RESULTS:%d:%d' % (test-1, len(tests)))\r\n    import sys\r\n    sys.exit(0)\r\nfor (varname, var, answer) in tests:\r\n    print("TEST %d) Is %s equal to '%s'?" % (test, varname, answer))\r\n    if var == answer:\r\n        print("\\t-> CORRECT")\r\n        test += 1\r\n    else:\r\n        print("\\t-> INCORRECT. %s is equal to '%s' . Fix your mistake and try again." % (varname, var))\r\n        verifier_results()\r\nprint("ALL TESTS PASSED.")\r\nverifier_results()	1
6	Odd and Even	In this challenge, you are given code that puts 5 inside the variable <i>n</i>, then displays whether <i>n</i> is odd and whether it is even.\r\n\r\n<br/><br/>\r\n\r\nChange the code so that <i>n</i> contains any even number, not an odd number.	<block type="varstore" id="xRLmA07lvm4%Gg!g.{(F" x="-222" y="28">\r\n    <field name="1">n</field>\r\n    <field name="2">5</field>\r\n    <next>\r\n      <block type="varprint" id="|E~!YrZ5.r7PXpnTk6c:">\r\n        <field name="var">"Is %d odd: %s" % (n, n % 2 == 1)</field>\r\n        <next>\r\n          <block type="varprint" id="PFVe*2}N6O[_7PWu}d=:">\r\n            <field name="var">"Is %d even: %s" % (n, n % 2 == 0)</field>\r\n          </block>\r\n        </next>\r\n      </block>\r\n    </next>\r\n  </block>	print("=== Testing your program... =============================")\r\ntest = 1\r\ntests = [True]\r\ndef verifier_results():\r\n    print('NT_VERIFIER_RESULTS:%d:%d' % (test-1, len(tests)))\r\n    import sys\r\n    sys.exit(0)\r\nfor answer in tests:\r\n    print("TEST %d) Is n even?" % test)\r\n    result = (n % 2 == 0)\r\n    if result == answer:\r\n        print("\\t-> CORRECT")\r\n        test += 1\r\n    else:\r\n        print("\\t-> INCORRECT. You put an odd number in n. Fix your mistake and try again.")\r\n        verifier_results()\r\nprint("ALL TESTS PASSED.")\r\nverifier_results()	1
7	Shule Iko Wapi?	This program first puts "Karatu" inside the variable <i>mahali</i>.Then it puts "TJS" inside the variable <i>shule</i>, kwa hiyo inasema "TJS iko Karatu."\r\n\r\n<br/><br/>\r\n\r\nChange the value of the <i>mahali</i> variable so that it prints "TSSS iko Makuyuni" instead.	<block type="varstore" id="=0p)}y/T},b2[uB.;6{`" x="-436" y="24">\r\n    <field name="1">mahali</field>\r\n    <field name="2">"Karatu"</field>\r\n    <next>\r\n      <block type="if" id="#!#%YElqI6Par-e+!JF2">\r\n        <field name="expr">mahali == "Karatu"</field>\r\n        <statement name="stmts">\r\n          <block type="varstore" id="2+bivTUv~sT:*gbfJ|U9">\r\n            <field name="1">shule</field>\r\n            <field name="2">"TJS"</field>\r\n          </block>\r\n        </statement>\r\n        <next>\r\n          <block type="elif" id="Z22_Fi}`*kNR:nrUdSDC">\r\n            <field name="expr">mahali == "Makuyuni"</field>\r\n            <statement name="stmts">\r\n              <block type="varstore" id="~.t_DNs=07i!.p,mnWpK">\r\n                <field name="1">shule</field>\r\n                <field name="2">"TSSS"</field>\r\n              </block>\r\n            </statement>\r\n            <next>\r\n              <block type="else" id="Lo#H:*tvL*)]X=zFziqK">\r\n                <statement name="DO">\r\n                  <block type="varstore" id="n_!st2SljSa{9O{^./;7">\r\n                    <field name="1">shule</field>\r\n                    <field name="2">"Shule nyingine"</field>\r\n                  </block>\r\n                </statement>\r\n                <next>\r\n                  <block type="varprint" id="[(i[%koKVrC?f:ys{sS?">\r\n                    <field name="var">"%s iko %s." % (shule, mahali)</field>\r\n                  </block>\r\n                </next>\r\n              </block>\r\n            </next>\r\n          </block>\r\n        </next>\r\n      </block>\r\n    </next>\r\n  </block>	print("=== Testing your program... =============================")\r\ntest = 1\r\ntests = [("mahali", mahali, "Makuyuni"), ("shule", shule, "TSSS")]\r\ndef verifier_results():\r\n    print('NT_VERIFIER_RESULTS:%d:%d' % (test-1, len(tests)))\r\n    import sys\r\n    sys.exit(0)\r\nfor (varname, var, answer) in tests:\r\n    print("TEST %d) Is %s equal to '%s'?" % (test, varname, answer))\r\n    if var == answer:\r\n        print("\\t-> CORRECT")\r\n        test += 1\r\n    else:\r\n        print("\\t-> INCORRECT. %s is equal to '%s' . Fix your mistake and try again." % (varname, var))\r\n        verifier_results()\r\nprint("ALL TESTS PASSED.")\r\nverifier_results()	1
9	Count to 10	This Python program counts to 5.\r\n\r\n<br/><br/>\r\n\r\nChange the program so that it counts to 10 instead.	<block type="varstore" id="#a@`o{o?}ZcP%xj?+I}w" x="88" y="61">\r\n    <field name="1">n</field>\r\n    <field name="2">1</field>\r\n    <next>\r\n      <block type="while" id="P1uOf?q.ovrbm.`n/|U%">\r\n        <field name="expr">n &lt;= 5</field>\r\n        <statement name="stmts">\r\n          <block type="varprint" id="ff`P4+ZJI0Z%M+4vyGw@">\r\n            <field name="var">n</field>\r\n            <next>\r\n              <block type="varplus" id="sVwC0?WX4S{opsA!O.DN">\r\n                <field name="lhs">n</field>\r\n                <field name="rhs">1</field>\r\n              </block>\r\n            </next>\r\n          </block>\r\n        </statement>\r\n      </block>\r\n    </next>\r\n  </block>	print("=== Testing your program... =============================")\r\ntest = 1\r\ntests = [("n", n, 11)]\r\ndef verifier_results():\r\n    print('NT_VERIFIER_RESULTS:%d:%d' % (test-1, len(tests)))\r\n    import sys\r\n    sys.exit(0)\r\nfor (varname, var, answer) in tests:\r\n    print("TEST %d) Did you count to %d?" % (test, answer-1))\r\n    if var == answer:\r\n        print("\\t-> CORRECT")\r\n        test += 1\r\n    else:\r\n        print("\\t-> INCORRECT. You counted to %d. Fix your mistake and try again." % (var-1))\r\n        verifier_results()\r\nprint("ALL TESTS PASSED.")\r\nverifier_results()	1
10	Meza Ngapi?	This Python program asks you a question. Answer the question correctly to complete this challenge.	<block type="varstore" id="WeW)x7u~l_7D(xO2v5la" x="59" y="71">\r\n    <field name="1">jibu</field>\r\n    <field name="2">int(input("Chumba cha kompyuta kina meza ngapi? "))</field>\r\n    <next>\r\n      <block type="if" id="#GGLZ@i?l,1UpeWKpZP`">\r\n        <field name="expr">jibu &lt; 6</field>\r\n        <statement name="stmts">\r\n          <block type="print" id="5`qNmp[xYyichAP[eg_[">\r\n            <field name="print">Ongeza.</field>\r\n          </block>\r\n        </statement>\r\n        <next>\r\n          <block type="elif" id="P!!D5ciA79,jN@95DpJ0">\r\n            <field name="expr">jibu &gt; 6</field>\r\n            <statement name="stmts">\r\n              <block type="print" id="!;SKWbHf:#jxYI=/79jo">\r\n                <field name="print">Punguza.</field>\r\n              </block>\r\n            </statement>\r\n            <next>\r\n              <block type="else" id="%0w@4~gGVobBaz=jA/{J">\r\n                <statement name="DO">\r\n                  <block type="print" id="2kM6k+IS]M%sfD*JS.5^">\r\n                    <field name="print">Ndiyo.</field>\r\n                  </block>\r\n                </statement>\r\n              </block>\r\n            </next>\r\n          </block>\r\n        </next>\r\n      </block>\r\n    </next>\r\n  </block>	print("=== Testing your program... =============================")\r\ntest = 1\r\ntests = [("jibu", jibu, 6)]\r\ndef verifier_results():\r\n    print('NT_VERIFIER_RESULTS:%d:%d' % (test-1, len(tests)))\r\n    import sys\r\n    sys.exit(0)\r\nfor (varname, var, answer) in tests:\r\n    print("TEST %d) Did you answer correctly?" % test)\r\n    if var == answer:\r\n        print("\\t-> CORRECT")\r\n        test += 1\r\n    else:\r\n        print("\\t-> INCORRECT. You answered %d. Try again." % var)\r\n        verifier_results()\r\nprint("ALL TESTS PASSED.")\r\nverifier_results()	1
14	East African Community (EAC)	The following six countries are in the East African Community (EAC):\r\n\r\n<ol>\r\n  <li>Tanzania</li>\r\n  <li>Uganda</li>\r\n  <li>Burundi</li>\r\n  <li>Kenya</li>\r\n  <li>Rwanda</li>\r\n  <li>South Sudan</li>\r\n</ol>\r\n\r\nThis code has a function called <i>is_in_eac</i> that takes a country and returns <i>True</i> if that country is in the EAC. If not, it returns <i>False</i>. But you can see that it is missing some countries. Add the missing countries in to pass this challenge.	<block type="def" id="Ka7b{N|-_;IvhROX!h?J" x="-441" y="29">\r\n    <field name="funcname">is_in_eac</field>\r\n    <field name="funcargs">nchi</field>\r\n    <statement name="funcbody">\r\n      <block type="if" id="HH/n8QU=(5)F4[xwHBFS">\r\n        <field name="expr">nchi in ['Tanzania', 'South Sudan', 'Burundi']</field>\r\n        <statement name="stmts">\r\n          <block type="return" id="a-JHR:dW,L}ytI=rX#uM">\r\n            <field name="expr">True</field>\r\n          </block>\r\n        </statement>\r\n        <next>\r\n          <block type="else" id="tJ?icn%/{NQ`=vDY^-wc">\r\n            <statement name="DO">\r\n              <block type="return" id="H%[-MCN)nwTE[jdO~b.C">\r\n                <field name="expr">False</field>\r\n              </block>\r\n            </statement>\r\n          </block>\r\n        </next>\r\n      </block>\r\n    </statement>\r\n    <next>\r\n      <block type="varprint" id="dbgU,|)1V?/w@=kpq^2J">\r\n        <field name="var">"Is Tanzania in EAC? %s" % is_in_eac('Tanzania')</field>\r\n        <next>\r\n          <block type="varprint" id="hs[K(/oW~PQqzQSi#jZW">\r\n            <field name="var">"Is South Sudan in EAC? %s" % is_in_eac('South Sudan')</field>\r\n            <next>\r\n              <block type="varprint" id="h=u`.K?U(:]p^667gI4X">\r\n                <field name="var">"Is Burundi in EAC? %s" % is_in_eac('Burundi')</field>\r\n                <next>\r\n                  <block type="varprint" id="LZW1n3wP1N*TO1Eo0+T*">\r\n                    <field name="var">"Is Kenya in EAC? %s" % is_in_eac('Kenya')</field>\r\n                    <next>\r\n                      <block type="varprint" id="3^3Nck~[mvGfCP/pRIdF">\r\n                        <field name="var">"Is Uganda in EAC? %s" % is_in_eac('Uganda')</field>\r\n                        <next>\r\n                          <block type="varprint" id="Z?lc1ER-VRf@u+pKdY1U">\r\n                            <field name="var">"Is Rwanda in EAC? %s" % is_in_eac('Rwanda')</field>\r\n                          </block>\r\n                        </next>\r\n                      </block>\r\n                    </next>\r\n                  </block>\r\n                </next>\r\n              </block>\r\n            </next>\r\n          </block>\r\n        </next>\r\n      </block>\r\n    </next>\r\n  </block>	print("=== Testing your program... =============================")\r\ntest = 1\r\ntests = [('Tanzania', True), ('South Sudan', True), ('Burundi', True), ('Uganda', True), ('Rwanda', True), ('Kenya', True), ('United States', False), ('Australia', False), ('Vietnam', False)]\r\ndef verifier_results():\r\n    print('NT_VERIFIER_RESULTS:%d:%d' % (test-1, len(tests)))\r\n    import sys\r\n    sys.exit(0)\r\nfor (s, answer) in tests:\r\n    print("TEST %d) Does is_in_eac('%s') return %s?" % (test, s, answer))\r\n    result = is_in_eac(s)\r\n    if result == answer:\r\n        print("\\t-> CORRECT")\r\n        test += 1\r\n    else:\r\n        print("\\t-> INCORRECT. Your code returns %s. Fix your mistake and try again." % result)\r\n        verifier_results()\r\nprint("ALL TESTS PASSED.")\r\nverifier_results()	4
4	Sum of Two Numbers	This Python program puts 5 in <i>a</i> and 8 in <i>b</i>. The sum of 5 and 8 is 13.\r\n\r\n<br/><br/>\r\n\r\nChange <i>a</i> and/or <i>b</i> so that <i>a + b</i> is equal to 24 instead of 13.	<block type="varstore" id="1:P*HYm|hXRm=cpRB9E;" x="41" y="27">\r\n    <field name="1">a</field>\r\n    <field name="2">5</field>\r\n    <next>\r\n      <block type="varprint" id="6}W9X,;@lXy1p[JG4m#g">\r\n        <field name="var">a</field>\r\n        <next>\r\n          <block type="varstore" id="HGB37-aOC?JegEk6`Ul?">\r\n            <field name="1">b</field>\r\n            <field name="2">8</field>\r\n            <next>\r\n              <block type="varprint" id="`6lS*hAWS[={Qp91ETQU">\r\n                <field name="var">b</field>\r\n                <next>\r\n                  <block type="varstore" id="Zs?I{g}cm#Q1J]~]iI,-">\r\n                    <field name="1">sum</field>\r\n                    <field name="2">a + b</field>\r\n                    <next>\r\n                      <block type="varprint" id="Ku=^]/#dg*pYr3AZ.z-t">\r\n                        <field name="var">sum</field>\r\n                      </block>\r\n                    </next>\r\n                  </block>\r\n                </next>\r\n              </block>\r\n            </next>\r\n          </block>\r\n        </next>\r\n      </block>\r\n    </next>\r\n  </block>	print("=== Testing your program... =============================")\r\ntest = 1\r\ntests = [24]\r\ndef verifier_results():\r\n    print('NT_VERIFIER_RESULTS:%d:%d' % (test-1, len(tests)))\r\n    import sys\r\n    sys.exit(0)\r\nfor sum in tests:\r\n    print("TEST %d) Does (a + b) sum to %s?" % (test, sum))\r\n    result = a + b\r\n    if result == sum:\r\n        print("\\t-> CORRECT")\r\n        test += 1\r\n    else:\r\n        print("\\t-> INCORRECT. Your code returns %s. Fix your mistake and try again." % result)\r\n        verifier_results()\r\nprint("ALL TESTS PASSED.")\r\nverifier_results()	1
11	Sum Function	This Python code has a function to calculate the sum of two numbers, but it always returns 0 no matter what numbers it's given.\r\n\r\n<br/><br/>\r\n\r\nFix the code so that it returns the correct sum for any two numbers.	<block type="def" id="buKm|`z#dn.^?[1H,/BB" x="28" y="14">\r\n    <field name="funcname">sum</field>\r\n    <field name="funcargs">a, b</field>\r\n    <statement name="funcbody">\r\n      <block type="return" id="[Fma8xw`TO!%OGq(7Hmp">\r\n        <field name="expr">0</field>\r\n      </block>\r\n    </statement>\r\n    <next>\r\n      <block type="varprint" id="ob^+GyBxzF9UO:wH0g#3">\r\n        <field name="var">"Sum of 0 and 0: %d" % sum(0, 0)</field>\r\n        <next>\r\n          <block type="varprint" id="/jF3_#)Y3qGG5FPdDyTr">\r\n            <field name="var">"Sum of 1 and 2: %d" % sum(1, 2)</field>\r\n            <next>\r\n              <block type="varprint" id="|+`;]r:Hg@/Sd.}(Q.rm">\r\n                <field name="var">"Sum of 4 and 5: %d" % sum(4, 5)</field>\r\n                <next>\r\n                  <block type="varprint" id="3E.tad%3}poR=(ZH`41b">\r\n                    <field name="var">"Sum of 100 and 8: %d" % sum(100, 8)</field>\r\n                  </block>\r\n                </next>\r\n              </block>\r\n            </next>\r\n          </block>\r\n        </next>\r\n      </block>\r\n    </next>\r\n  </block>	print("=== Testing your program... =============================")\r\ntest = 1\r\ntests = [(0,0,0), (1,2,3), (4,5,9), (100,8,108), (50,200,250), (7,-20,-13), (-4, -4, -8)]\r\ndef verifier_result():\r\n    print('NT_VERIFIER_RESULTS:%d:%d' % (test-1, len(tests)))\r\n    import sys\r\n    sys.exit(0)\r\nfor triple in tests:\r\n    print("TEST %d) Does sum(%d, %d) return %d?" % (test, triple[0], triple[1], triple[2]))\r\n    result = sum(triple[0], triple[1])\r\n    if result == triple[2]:\r\n        print("\\t-> CORRECT")\r\n        test += 1\r\n    else:\r\n        print("\\t-> INCORRECT. Your code returns %s. Fix the problem and try again." % result)\r\n        verifier_result()\r\nprint("ALL TESTS PASSED.")\r\nverifier_result()	1
12	Counting Down from 5	This program counts down from 10 to 1.\r\n\r\nChange the code so that it counts down from 5 to 1.	<block type="varstore" id=";b,:}%bFv8_g!bJ%Gjxi" x="-164" y="39">\r\n    <field name="1">n</field>\r\n    <field name="2">10</field>\r\n    <next>\r\n      <block type="varstore" id="B6gcS`bUu;=R@Nq@64,^" collapsed="true">\r\n        <field name="1">s</field>\r\n        <field name="2">n</field>\r\n        <next>\r\n          <block type="while" id="6o)FATp#jhC@)Uv2Q#f8">\r\n            <field name="expr">n &gt; 0</field>\r\n            <statement name="stmts">\r\n              <block type="varprint" id="Y(ttKXAgdR1VAkNbKK;a">\r\n                <field name="var">n</field>\r\n                <next>\r\n                  <block type="varstore" id="bktr-WU98C+UC1cJz}#C">\r\n                    <field name="1">n</field>\r\n                    <field name="2">n - 1</field>\r\n                  </block>\r\n                </next>\r\n              </block>\r\n            </statement>\r\n          </block>\r\n        </next>\r\n      </block>\r\n    </next>\r\n  </block>	print("=== Testing your program... =============================")\r\ntest = 1\r\ntests = [("n", n, 0), ("s", s, 5)]\r\ndef verifier_results():\r\n    print('NT_VERIFIER_RESULTS:%d:%d' % (test-1, len(tests)))\r\n    import sys\r\n    sys.exit(0)\r\nfor (varname, var, answer) in tests:\r\n    print("TEST %d) Is the variable %s equal to %d?" % (test, varname, answer))\r\n    if var == answer:\r\n        print("\\t-> CORRECT")\r\n        test += 1\r\n    else:\r\n        print("\\t-> INCORRECT. Your variable %s is equal to %d. Fix your mistake and try again." % (varname, var))\r\n        verifier_results()\r\nprint("ALL TESTS PASSED.")\r\nverifier_results()	4
13	Multiply Each Number in a List by 3	This code contains a function called <i>multiply_by_3</i> that takes a list and is supposed to multiply every number in that list by 3. For example,\r\n\r\n$$multiply\\_by\\_3([1, 2, 3])$$\r\n\r\nshould return:\r\n\r\n$$[3, 6, 9]$$\r\n\r\nBut there is a problem with this code. Fix the problem so that it really does multiply every number in a list by 3.	<block type="def" id="cspnn,EPu=G{m64KQU1K" x="-379" y="38">\r\n    <field name="funcname">multiply_list_by_3</field>\r\n    <field name="funcargs">list</field>\r\n    <statement name="funcbody">\r\n      <block type="varstore" id="q_x%4/O=SO.e)9;-Ol5^">\r\n        <field name="1">list_mpya</field>\r\n        <field name="2">[]</field>\r\n        <next>\r\n          <block type="for" id="el6wsl26Mwa(_C`K17gd">\r\n            <field name="item">n</field>\r\n            <field name="seq">list</field>\r\n            <statement name="stmts">\r\n              <block type="funcall" id="~0G)pdu5U,XcX/AFd3UC">\r\n                <field name="funcname">list_mpya.append</field>\r\n                <field name="funcargs">n * 1</field>\r\n              </block>\r\n            </statement>\r\n            <next>\r\n              <block type="return" id="LO5oI8makY7yS7Ji/EiE">\r\n                <field name="expr">list_mpya</field>\r\n              </block>\r\n            </next>\r\n          </block>\r\n        </next>\r\n      </block>\r\n    </statement>\r\n    <next>\r\n      <block type="varprint" id="DvWc3S[iUp.FCat^CWf9">\r\n        <field name="var">multiply_list_by_3([1,2,3])</field>\r\n        <next>\r\n          <block type="varprint" id="tw~S|=*AsDs%dr9hFp.D">\r\n            <field name="var">multiply_list_by_3([10,10,10])</field>\r\n            <next>\r\n              <block type="varprint" id="IPLzr|w2C50j`pXy00bK">\r\n                <field name="var">multiply_list_by_3([1,2,3,4,5,6,7,8,9])</field>\r\n              </block>\r\n            </next>\r\n          </block>\r\n        </next>\r\n      </block>\r\n    </next>\r\n  </block>	print("=== Testing your program... =============================")\r\ntest = 1\r\ntests = [([1,2,3], [3,6,9]), ([10,10,10], [30,30,30]), ([1,2,3,4,5,6,7,8,9], [3,6,9,12,15,18,21,24,27]), ([], []), ([0], [0]), ([5,10,10000], [15,30,30000]), ([-1, -2, -3], [-3, -6, -9]), ([-500], [-1500])]\r\ndef verifier_results():\r\n    print('NT_VERIFIER_RESULTS:%d:%d' % (test-1, len(tests)))\r\n    import sys\r\n    sys.exit(0)\r\nfor (l, answer) in tests:\r\n    print("TEST %d) Does multiply_list_by_3(%s) return %s?" % (test, l, answer))\r\n    result = multiply_list_by_3(l)\r\n    if result == answer:\r\n        print("\\t-> CORRECT")\r\n        test += 1\r\n    else:\r\n        print("\\t-> INCORRECT. Your code returns %s. Fix your mistake and try again." % result)\r\n        verifier_results()\r\nprint("ALL TESTS PASSED.")\r\nverifier_results()	4
16	Andika Software Kwa Calculator	In this challenge, you will write the software used in a basic calculator. A basic calculator takes two numbers and can do these four things:\r\n\r\n<ul>\r\n  <li>Addition</li>\r\n  <li>Subtraction</li>\r\n  <li>Multiplication</li>\r\n  <li>Division</li>\r\n</ul>\r\n\r\nTo win this challenge, you will need to add blocks to the <i>calculator</i> function:\r\n\r\n<ul>\r\n  <li>If <i>op</i> is equal to 'ADD', you should return the sum of <i>a</i> and <i>b</i>.</li>\r\n  <li>If <i>op</i> is equal to 'SUBTRACT', you should return the difference of <i>a</i> and <i>b</i>.</li>\r\n  <li>If <i>op</i> is equal to 'MULTIPLY', you should return the product of <i>a</i> and <i>b</i>.</li>\r\n  <li>If <i>op</i> is equal to 'DIVIDE', you should return the quotient of <i>a</i> and <i>b</i>.</li>\r\n</ul>	<block type="def" id="l4`7Gm/qR@cu{JPw({|G" x="-29" y="44">\r\n    <field name="funcname">calculator</field>\r\n    <field name="funcargs">a, b, op</field>\r\n    <next>\r\n      <block type="varprint" id="yl^!,adDW0q::Zj?yBAc">\r\n        <field name="var">calculator(5, 7, "ADD")</field>\r\n        <next>\r\n          <block type="varprint" id="=niC?T,I)`co]c=;SEYT">\r\n            <field name="var">calculator(8, 9, "SUBTRACT")</field>\r\n            <next>\r\n              <block type="varprint" id="0U:z;[+[|;USwM@+SfG0">\r\n                <field name="var">calculator(4, 3, "MULTIPLY")</field>\r\n                <next>\r\n                  <block type="varprint" id="PH!M8pk!jTFM)buP|l%9">\r\n                    <field name="var">calculator(100, 2, "DIVIDE")</field>\r\n                  </block>\r\n                </next>\r\n              </block>\r\n            </next>\r\n          </block>\r\n        </next>\r\n      </block>\r\n    </next>\r\n  </block>	print("=== Testing your program... =============================")\r\ntest = 1\r\ntests = [(5, 7, 'ADD', 12), (8, 9, 'SUBTRACT', -1), (4, 3, 'MULTIPLY', 12), (100, 2, 'DIVIDE', 50), (450, 8, 'ADD', 458), (100, 200, 'SUBTRACT', -100), (8, 8, 'MULTIPLY', 64), (2048, 4, 'DIVIDE', 512)]\r\ndef verifier_results():\r\n    print('NT_VERIFIER_RESULTS:%d:%d' % (test-1, len(tests)))\r\n    import sys\r\n    sys.exit(0)\r\nfor (a, b, op, answer) in tests:\r\n    print("TEST %d) Does calculator(%d, %d, '%s') return %d?" % (test, a, b, op, answer))\r\n    result = calculator(a, b, op)\r\n    if result == answer:\r\n        print("\\t-> CORRECT")\r\n        test += 1\r\n    else:\r\n        print("\\t-> INCORRECT. Your code returns %s. Fix your mistake and try again." % result)\r\n        verifier_results()\r\nprint("ALL TESTS PASSED.")\r\nverifier_results()	5
17	Heshima Iko?	The function <i>heshima_iko</i> takes a sentence and returns <i>True</i> if the sentence contains the word "shikamoo" or "Shikamoo". If the sentence doesn't contain "shikamoo" or "Shikamoo" it should return <i>False</i>.\r\n\r\n<br/><br/>\r\n\r\nFix the code so that it works correctly. You will need an <b>if</b> block, and you will need to check if each word is either "Shikamoo" (with a big "S") <b>or</b> "shikamoo" (with a small "s").	<block type="def" id=",p~cvS^e4?}2sX@`5Ez4" x="-274" y="47">\r\n    <field name="funcname">heshima_iko</field>\r\n    <field name="funcargs">sentensi</field>\r\n    <statement name="funcbody">\r\n      <block type="varstore" id="HUjGuIV+oK?3^OGq5v%w">\r\n        <field name="1">maneno</field>\r\n        <field name="2">sentensi.split(' ')</field>\r\n        <next>\r\n          <block type="for" id="j9)WwYO3cU}wgbB~qrx-">\r\n            <field name="item">neno</field>\r\n            <field name="seq">maneno</field>\r\n            <next>\r\n              <block type="return" id="H4PgE(hZZH(t5#@~A5,:">\r\n                <field name="expr">False</field>\r\n              </block>\r\n            </next>\r\n          </block>\r\n        </next>\r\n      </block>\r\n    </statement>\r\n    <next>\r\n      <block type="varprint" id="otUZgfmgzACn;G|l5NSD">\r\n        <field name="var">"Heshima? %s" % heshima_iko('Shikamoo mzee, habari za jioni?')</field>\r\n        <next>\r\n          <block type="varprint" id="4cR)a3CFDt,TA5D~YCHn">\r\n            <field name="var">"Heshima? %s" % heshima_iko('Mambo kaka.')</field>\r\n            <next>\r\n              <block type="varprint" id="H]PPQpg|R]H[O%GMb,Kf">\r\n                <field name="var">"Heshima? %s" % heshima_iko('Mwongo we.')</field>\r\n                <next>\r\n                  <block type="varprint" id=")_0hD:+{/0U].VTB@y*G">\r\n                    <field name="var">"Heshima? %s" % heshima_iko('Karibu bibi, shikamoo')</field>\r\n                    <next>\r\n                      <block type="varprint" id="gnY@h#[sO?BA`Z92~fJM">\r\n                        <field name="var">"Heshima? %s" % heshima_iko('Shikamoo kaka mkubwa.')</field>\r\n                      </block>\r\n                    </next>\r\n                  </block>\r\n                </next>\r\n              </block>\r\n            </next>\r\n          </block>\r\n        </next>\r\n      </block>\r\n    </next>\r\n  </block>	print("=== Testing your program... =============================")\r\ntest = 1\r\ntests = [('Shikamoo mzee, habari za jioni?', True), ('Mambo kaka.', False), ('Mwongo we.', False), ('Karibu bibi, shikamoo', True), ('Shikamoo kaka mkubwa.', True)]\r\ndef verifier_results():\r\n    print('NT_VERIFIER_RESULTS:%d:%d' % (test-1, len(tests)))\r\n    import sys\r\n    sys.exit(0)\r\nfor (s, answer) in tests:\r\n    print("TEST %d) Does heshima_iko('%s') return %s?" % (test, s, answer))\r\n    result = heshima_iko(s)\r\n    if result == answer:\r\n        print("\\t-> CORRECT")\r\n        test += 1\r\n    else:\r\n        print("\\t-> INCORRECT. Your code returns %s. Fix your mistake and try again." % result)\r\n        verifier_results()\r\nprint("ALL TESTS PASSED.")\r\nverifier_results()	6
18	Area of a Square	A square has four equal sides. Multiplying any two sides together gives the area of the square.\r\n\r\n<br/><br/>\r\n\r\nComplete the <i>area_square</i> function so that it correctly calculates the area of any square given to it.	<block type="def" id="m]ky_!Hb(sS(5:?kjo6F" x="69" y="34">\r\n    <field name="funcname">area_square</field>\r\n    <field name="funcargs">side1, side2, side3, side4</field>\r\n    <statement name="funcbody">\r\n      <block type="return" id="5P#J,EB+,0}O7z-LF9vB">\r\n        <field name="expr">0</field>\r\n      </block>\r\n    </statement>\r\n    <next>\r\n      <block type="varprint" id="81{%.jGrOXqE)zG5Q:or">\r\n        <field name="var">"Area: %d" % area_square(0, 0, 0, 0)</field>\r\n        <next>\r\n          <block type="varprint" id="N~}_(Wh7@o48fl6Ife^(">\r\n            <field name="var">"Area: %d" % area_square(4, 4, 4, 4)</field>\r\n            <next>\r\n              <block type="varprint" id="fFHj_iaE#H[Hecw[EJ*P">\r\n                <field name="var">"Area: %d" % area_square(10, 10, 10, 10)</field>\r\n                <next>\r\n                  <block type="varprint" id="Ny%WL,S4@[6?h6qo(p@1">\r\n                    <field name="var">"Area: %d" % area_square(8, 8, 8, 8)</field>\r\n                    <next>\r\n                      <block type="varprint" id="T[KY-dg}t:_0UgfIqhRI">\r\n                        <field name="var">"Area: %d" % area_square(1000, 1000, 1000, 1000)</field>\r\n                      </block>\r\n                    </next>\r\n                  </block>\r\n                </next>\r\n              </block>\r\n            </next>\r\n          </block>\r\n        </next>\r\n      </block>\r\n    </next>\r\n  </block>	print("=== Testing your program... =============================")\r\ntest = 1\r\ntests = [(0, 0), (4, 16), (10, 100), (8, 64), (1000, 1000000), (5, 25), (6, 36), (1, 1)]\r\ndef verifier_results():\r\n    print('NT_VERIFIER_RESULTS:%d:%d' % (test-1, len(tests)))\r\n    import sys\r\n    sys.exit(0)\r\nfor (l, answer) in tests:\r\n    print("TEST %d) Does area_square(%d,%d,%d,%d) return %d?" % (test, l, l, l, l, answer))\r\n    result = area_square(l, l, l, l)\r\n    if result == answer:\r\n        print("\\t-> CORRECT")\r\n        test += 1\r\n    else:\r\n        print("\\t-> INCORRECT. Your code returns %s. Fix your mistake and try again." % result)\r\n        verifier_results()\r\nprint("ALL TESTS PASSED.")\r\nverifier_results()	6
20	Perimeter of a Square	A square has four equal sides. The perimeter is calculated by adding all four sides together, or by multiplying one side by four.\r\n\r\n<br/><br/>\r\n\r\nChange this code so that it correctly returns the perimeter of any square given to it.	<block type="def" id="m]ky_!Hb(sS(5:?kjo6F" x="69" y="34">\r\n    <field name="funcname">perimeter_square</field>\r\n    <field name="funcargs">side1, side2, side3, side4</field>\r\n    <statement name="funcbody">\r\n      <block type="return" id="5P#J,EB+,0}O7z-LF9vB">\r\n        <field name="expr">0</field>\r\n      </block>\r\n    </statement>\r\n    <next>\r\n      <block type="varprint" id="81{%.jGrOXqE)zG5Q:or">\r\n        <field name="var">"Perimeter: %d" % perimeter_square(0, 0, 0, 0)</field>\r\n        <next>\r\n          <block type="varprint" id="N~}_(Wh7@o48fl6Ife^(">\r\n            <field name="var">"Perimeter: %d" % perimeter_square(4, 4, 4, 4)</field>\r\n            <next>\r\n              <block type="varprint" id="fFHj_iaE#H[Hecw[EJ*P">\r\n                <field name="var">"Perimeter: %d" % perimeter_square(10, 10, 10, 10)</field>\r\n                <next>\r\n                  <block type="varprint" id="Ny%WL,S4@[6?h6qo(p@1">\r\n                    <field name="var">"Perimeter: %d" % perimeter_square(8, 8, 8, 8)</field>\r\n                    <next>\r\n                      <block type="varprint" id="T[KY-dg}t:_0UgfIqhRI">\r\n                        <field name="var">"Perimeter: %d" % perimeter_square(1000, 1000, 1000, 1000)</field>\r\n                      </block>\r\n                    </next>\r\n                  </block>\r\n                </next>\r\n              </block>\r\n            </next>\r\n          </block>\r\n        </next>\r\n      </block>\r\n    </next>\r\n  </block>	print("=== Testing your program... =============================")\r\ntest = 1\r\ntests = [(0, 0), (4, 16), (10, 40), (8, 32), (1000, 4000), (5, 20), (6, 24), (1, 4)]\r\ndef verifier_results():\r\n    print('NT_VERIFIER_RESULTS:%d:%d' % (test-1, len(tests)))\r\n    import sys\r\n    sys.exit(0)\r\nfor (l, answer) in tests:\r\n    print("TEST %d) Does perimeter_square(%d,%d,%d,%d) return %d?" % (test, l, l, l, l, answer))\r\n    result = perimeter_square(l, l, l, l)\r\n    if result == answer:\r\n        print("\\t-> CORRECT")\r\n        test += 1\r\n    else:\r\n        print("\\t-> INCORRECT. Your code returns %s. Fix your mistake and try again." % result)\r\n        verifier_results()\r\nprint("ALL TESTS PASSED.")\r\nverifier_results()	6
21	Square All Numbers in a List	In this code, the function <i>square_all_numbers</i> is supposed to take a list of numbers and return a list containing the squares of those numbers. For example:\r\n\r\n$$square\\_all\\_numbers([1, 2, 3, 4, 5])$$\r\n\r\nshould return:\r\n\r\n$$[1, 4, 9, 16, 25]$$\r\n\r\nbut this code just gives us the original list back. Fix the problem to solve this challenge.	<block type="def" id="mfU|l0aB--mNehd8eE#P" x="69" y="83">\r\n    <field name="funcname">square_all_numbers</field>\r\n    <field name="funcargs">list</field>\r\n    <statement name="funcbody">\r\n      <block type="return" id="{Ie|i+XScsEMsTzD0*wX">\r\n        <field name="expr">[namba ** 1 for namba in list]</field>\r\n      </block>\r\n    </statement>\r\n    <next>\r\n      <block type="varprint" id="4XJfR{alFsq@]{j:kR)o">\r\n        <field name="var">"Squared: %s" % square_all_numbers([1, 1, 1])</field>\r\n        <next>\r\n          <block type="varprint" id="E6)7u^Jw=toZFn`X0)MR">\r\n            <field name="var">"Squared: %s" % square_all_numbers([1, 2, 3])</field>\r\n            <next>\r\n              <block type="varprint" id="B`d+_o[T5=Exj#JklV,b">\r\n                <field name="var">"Squared: %s" % square_all_numbers([1, 2, 3, 4, 5])</field>\r\n                <next>\r\n                  <block type="varprint" id="Z;:,Fsrq}%0BEvk(Upgc">\r\n                    <field name="var">"Squared: %s" % square_all_numbers([100, 98, 32, 24, 50, 75])</field>\r\n                  </block>\r\n                </next>\r\n              </block>\r\n            </next>\r\n          </block>\r\n        </next>\r\n      </block>\r\n    </next>\r\n  </block>	print("=== Testing your program... =============================")\r\ntest = 1\r\ntests = [([1,1,1], [1,1,1]), ([1,2,3], [1,4,9]), ([1,2,3,4,5], [1,4,9,16,25]), ([100, 98, 32, 24, 50, 75], [10000, 9604, 1024, 576, 2500, 5625])]\r\ndef verifier_results():\r\n    print('NT_VERIFIER_RESULTS:%d:%d' % (test-1, len(tests)))\r\n    import sys\r\n    sys.exit(0)\r\nfor (l, answer) in tests:\r\n    print("TEST %d) Does square_all_numbers(%s) return %s?" % (test, l, answer))\r\n    result = square_all_numbers(l)\r\n    if result == answer:\r\n        print("\\t-> CORRECT")\r\n        test += 1\r\n    else:\r\n        print("\\t-> INCORRECT. Your code returns %s. Fix your mistake and try again." % result)\r\n        verifier_results()\r\nprint("ALL TESTS PASSED.")\r\nverifier_results()	6
19	Area of a Triangle	The area of a triangle is calculated as:\r\n\r\n$$\\frac{1}{2} \\bullet base \\bullet height$$\r\n\r\nComplete the <i>area_triangle</i> function so that it correctly calculates the area of any triangle given to it.	<block type="def" id="m]ky_!Hb(sS(5:?kjo6F" x="69" y="34">\r\n    <field name="funcname">area_triangle</field>\r\n    <field name="funcargs">base, height</field>\r\n    <statement name="funcbody">\r\n      <block type="return" id="5P#J,EB+,0}O7z-LF9vB">\r\n        <field name="expr">0</field>\r\n      </block>\r\n    </statement>\r\n    <next>\r\n      <block type="varprint" id="81{%.jGrOXqE)zG5Q:or">\r\n        <field name="var">"Area: %d" % area_triangle(7, 24)</field>\r\n        <next>\r\n          <block type="varprint" id="N~}_(Wh7@o48fl6Ife^(">\r\n            <field name="var">"Area: %d" % area_triangle(5, 12)</field>\r\n            <next>\r\n              <block type="varprint" id="fFHj_iaE#H[Hecw[EJ*P">\r\n                <field name="var">"Area: %d" % area_triangle(55, 48)</field>\r\n                <next>\r\n                  <block type="varprint" id="Ny%WL,S4@[6?h6qo(p@1">\r\n                    <field name="var">"Area: %d" % area_triangle(45, 28)</field>\r\n                    <next>\r\n                      <block type="varprint" id="T[KY-dg}t:_0UgfIqhRI">\r\n                        <field name="var">"Area: %d" % area_triangle(39, 80)</field>\r\n                      </block>\r\n                    </next>\r\n                  </block>\r\n                </next>\r\n              </block>\r\n            </next>\r\n          </block>\r\n        </next>\r\n      </block>\r\n    </next>\r\n  </block>	print("=== Testing your program... =============================")\r\ntest = 1\r\ntests = [(7, 24, 84), (5, 12, 30), (55, 48, 1320), (45, 28, 630), (39, 80, 1560)]\r\ndef verifier_results():\r\n    print('NT_VERIFIER_RESULTS:%d:%d' % (test-1, len(tests)))\r\n    import sys\r\n    sys.exit(0)\r\nfor (b, h, answer) in tests:\r\n    print("TEST %d) Does area_triangle(%d,%d) return %d?" % (test, b, h, answer))\r\n    result = area_triangle(b, h)\r\n    if result == answer:\r\n        print("\\t-> CORRECT")\r\n        test += 1\r\n    else:\r\n        print("\\t-> INCORRECT. Your code returns %d. Fix your mistake and try again." % result)\r\n        verifier_results()\r\nprint("ALL TESTS PASSED.")\r\nverifier_results()	6
22	Perimeter of a Triangle	The perimeter of a triangle is calculated by adding all three sides of the triangle together.\r\n\r\n<br/><br/>\r\n\r\nChange the <i>perimeter_triangle</i> function to correctly calculate the perimeter of any triangle given to it.	<block type="def" id="m]ky_!Hb(sS(5:?kjo6F" x="69" y="34">\r\n    <field name="funcname">perimeter_triangle</field>\r\n    <field name="funcargs">side1, side2, side3</field>\r\n    <statement name="funcbody">\r\n      <block type="return" id="5P#J,EB+,0}O7z-LF9vB">\r\n        <field name="expr">0</field>\r\n      </block>\r\n    </statement>\r\n    <next>\r\n      <block type="varprint" id="81{%.jGrOXqE)zG5Q:or">\r\n        <field name="var">"Perimeter: %d" % perimeter_triangle(7, 24, 25)</field>\r\n        <next>\r\n          <block type="varprint" id="N~}_(Wh7@o48fl6Ife^(">\r\n            <field name="var">"Perimeter: %d" % perimeter_triangle(5, 12, 13)</field>\r\n            <next>\r\n              <block type="varprint" id="fFHj_iaE#H[Hecw[EJ*P">\r\n                <field name="var">"Perimeter: %d" % perimeter_triangle(55, 48, 73)</field>\r\n                <next>\r\n                  <block type="varprint" id="Ny%WL,S4@[6?h6qo(p@1">\r\n                    <field name="var">"Perimeter: %d" % perimeter_triangle(45, 28, 53)</field>\r\n                    <next>\r\n                      <block type="varprint" id="T[KY-dg}t:_0UgfIqhRI">\r\n                        <field name="var">"Perimeter: %d" % perimeter_triangle(39, 80, 89)</field>\r\n                      </block>\r\n                    </next>\r\n                  </block>\r\n                </next>\r\n              </block>\r\n            </next>\r\n          </block>\r\n        </next>\r\n      </block>\r\n    </next>\r\n  </block>	print("=== Testing your program... =============================")\r\ntest = 1\r\ntests = [(7, 24, 25, 56),  (5, 12, 13, 30), (55, 48, 73, 176), (45, 28, 53, 126), (39, 80, 89, 208)]\r\ndef verifier_results():\r\n    print('NT_VERIFIER_RESULTS:%d:%d' % (test-1, len(tests)))\r\n    import sys\r\n    sys.exit(0)\r\nfor (s1, s2, s3, answer) in tests:\r\n    print("TEST %d) Does perimeter_triangle(%d,%d,%d) return %d?" % (test, s1, s2, s3, answer))\r\n    result = perimeter_triangle(s1, s2, s3)\r\n    if result == answer:\r\n        print("\\t-> CORRECT")\r\n        test += 1\r\n    else:\r\n        print("\\t-> INCORRECT. Your code returns %s. Fix your mistake and try again." % result)\r\n        verifier_results()\r\nprint("ALL TESTS PASSED.")\r\nverifier_results()	6
24	Albamu ya Kwanza ya Lady Jay Dee	<i>Machozi</i> ni albamu ya kwanza ya Lady Jay Dee. Orodha ya nyimbo ni hivyo:\r\n\r\n<ol>\r\n<li>Machozi (remix)</li>\r\n<li>Nalia</li>\r\n<li>Penzi la milele</li>\r\n<li>Pumziko</li>\r\n<li>Waweza kwenda (Rajabu's mix)</li>\r\n<li>Nakupenda</li>\r\n<li>Nimekubali (akiwa na Ray C)</li>\r\n<li>Matatizo</li>\r\n<li>Tatiza</li>\r\n<li>Shida</li>\r\n<li>Umuhimu wako</li>\r\n<li>Waweza kwenda (JM mix)</li>\r\n</ol>\r\n\r\nBut this Python code returns the songs in the wrong order. Fix the code so that the songs are in the correct order. (<b>Hint</b>: In computer programming languages like Python, <b>ordering starts with the number 0.</b> So 'Machozi (remix)' should have the number 0, then 'Nalia' should have the number 1, and so on.)	<block type="def" id=",p~cvS^e4?}2sX@`5Ez4" x="-496" y="-34">\r\n    <field name="funcname">nyimbo_za_machozi</field>\r\n    <field name="funcargs"></field>\r\n    <statement name="funcbody">\r\n      <block type="varstore" id=";F[/ZBI/EC=.E;c|h|wf">\r\n        <field name="1">nyimbo</field>\r\n        <field name="2">['']*12</field>\r\n        <next>\r\n          <block type="varstore" id=",BXom;vew2*fIe..!rA:">\r\n            <field name="1">nyimbo[5]</field>\r\n            <field name="2">'Machozi (Remix)'</field>\r\n            <next>\r\n              <block type="varstore" id="{z:n2vFWYgmyQ`v6Kyu9">\r\n                <field name="1">nyimbo[3]</field>\r\n                <field name="2">'Nalia'</field>\r\n                <next>\r\n                  <block type="varstore" id="A#?|yUlS|O+Vct[MUhJu">\r\n                    <field name="1">nyimbo[4]</field>\r\n                    <field name="2">'Penzi la Milele'</field>\r\n                    <next>\r\n                      <block type="varstore" id="2+Hf#_XPIAZ;4P-dB.0=">\r\n                        <field name="1">nyimbo[11]</field>\r\n                        <field name="2">'Pumziko'</field>\r\n                        <next>\r\n                          <block type="varstore" id="ld0Lwp5m##@Y~/i8HtN^">\r\n                            <field name="1">nyimbo[2]</field>\r\n                            <field name="2">"Waweza kwenda (Rajabu's mix)"</field>\r\n                            <next>\r\n                              <block type="varstore" id="pH~#M?%IGEW)KJSfe/|;">\r\n                                <field name="1">nyimbo[1]</field>\r\n                                <field name="2">'Nakupenda'</field>\r\n                                <next>\r\n                                  <block type="varstore" id="^:.[Lrt.42Zq6EM2cj%.">\r\n                                    <field name="1">nyimbo[6]</field>\r\n                                    <field name="2">'Nimekubali (akiwa na Ray C)'</field>\r\n                                    <next>\r\n                                      <block type="varstore" id="WmPu16ievQlN;c5kUTeS">\r\n                                        <field name="1">nyimbo[0]</field>\r\n                                        <field name="2">'Matatizo'</field>\r\n                                        <next>\r\n                                          <block type="varstore" id="I=vlB=_Qif@w2+1kZi-f">\r\n                                            <field name="1">nyimbo[7]</field>\r\n                                            <field name="2">'Tatiza'</field>\r\n                                            <next>\r\n                                              <block type="varstore" id="]1VWcs8)P`pH}_xr?A#/">\r\n                                                <field name="1">nyimbo[10]</field>\r\n                                                <field name="2">'Shida'</field>\r\n                                                <next>\r\n                                                  <block type="varstore" id="0FGe+GwSr:@j849.;dHy">\r\n                                                    <field name="1">nyimbo[8]</field>\r\n                                                    <field name="2">'Umuhimu wako'</field>\r\n                                                    <next>\r\n                                                      <block type="varstore" id="5M^Xl~OP7%*fHncwOz}p">\r\n                                                        <field name="1">nyimbo[9]</field>\r\n                                                        <field name="2">'Waweza kwenda (JM mix)'</field>\r\n                                                        <next>\r\n                                                          <block type="return" id="ln/218qObs|J?h7/w8jZ">\r\n                                                            <field name="expr">nyimbo</field>\r\n                                                          </block>\r\n                                                        </next>\r\n                                                      </block>\r\n                                                    </next>\r\n                                                  </block>\r\n                                                </next>\r\n                                              </block>\r\n                                            </next>\r\n                                          </block>\r\n                                        </next>\r\n                                      </block>\r\n                                    </next>\r\n                                  </block>\r\n                                </next>\r\n                              </block>\r\n                            </next>\r\n                          </block>\r\n                        </next>\r\n                      </block>\r\n                    </next>\r\n                  </block>\r\n                </next>\r\n              </block>\r\n            </next>\r\n          </block>\r\n        </next>\r\n      </block>\r\n    </statement>\r\n    <next>\r\n      <block type="for" id="@CNwuzeRBDAqOHL.oTM4">\r\n        <field name="item">idx, nyimbo</field>\r\n        <field name="seq">enumerate(nyimbo_za_machozi())</field>\r\n        <statement name="stmts">\r\n          <block type="varprint" id="t3)OPAE-MGuwG7gg^N`G">\r\n            <field name="var">"%d) %s" % (idx, nyimbo)</field>\r\n          </block>\r\n        </statement>\r\n      </block>\r\n    </next>\r\n  </block>	print("=== Testing your program... =============================")\r\ntest = 1\r\ntests = [('Machozi (Remix)', 0), ('Nalia', 1), ('Penzi la Milele', 2), ('Pumziko', 3), ('Waweza kwenda (Rajabu\\'s mix)', 4), ('Nakupenda', 5), ('Nimekubali (akiwa na Ray C)', 6), ('Matatizo', 7), ('Tatiza', 8), ('Shida', 9), ('Umuhimu wako', 10), ('Waweza kwenda (JM mix)', 11)]\r\ndef verifier_results():\r\n    print('NT_VERIFIER_RESULTS:%d:%d' % (test-1, len(tests)))\r\n    import sys\r\n    sys.exit(0)\r\nalbum = nyimbo_za_machozi()\r\nfor (title, idx) in tests:\r\n    print("TEST %d) Is '%s' number %d in the album?" % (test, title, idx))\r\n    result = (album[idx] == title)\r\n    if result == True:\r\n        print("\\t-> CORRECT")\r\n        test += 1\r\n    else:\r\n        print("\\t-> INCORRECT. Your code says '%s' is number %d in the album. Fix your mistake and try again." % (album[idx], idx))\r\n        verifier_results()\r\nprint("ALL TESTS PASSED.")\r\nverifier_results()	7
25	Cube All Numbers in a List	In this Python code, the function <i>cube_all_numbers</i> is supposed to cube every number in the list given to it.\r\n\r\n<br/><br/>\r\n\r\nBut, it is incorrect. Change the code so that it correctly cubes all numbers.	<block type="def" id="mfU|l0aB--mNehd8eE#P" x="69" y="83">\r\n    <field name="funcname">cube_all_numbers</field>\r\n    <field name="funcargs">list</field>\r\n    <statement name="funcbody">\r\n      <block type="return" id="{Ie|i+XScsEMsTzD0*wX">\r\n        <field name="expr">[namba ** 1 for namba in list]</field>\r\n      </block>\r\n    </statement>\r\n    <next>\r\n      <block type="varprint" id="4XJfR{alFsq@]{j:kR)o">\r\n        <field name="var">"Cubed: %s" % cube_all_numbers([1, 1, 1])</field>\r\n        <next>\r\n          <block type="varprint" id="E6)7u^Jw=toZFn`X0)MR">\r\n            <field name="var">"Cubed: %s" % cube_all_numbers([1, 2, 3])</field>\r\n            <next>\r\n              <block type="varprint" id="B`d+_o[T5=Exj#JklV,b">\r\n                <field name="var">"Cubed: %s" % cube_all_numbers([1, 2, 3, 4, 5])</field>\r\n                <next>\r\n                  <block type="varprint" id="Z;:,Fsrq}%0BEvk(Upgc">\r\n                    <field name="var">"Cubed: %s" % cube_all_numbers([100, 98, 32, 24, 50, 75])</field>\r\n                  </block>\r\n                </next>\r\n              </block>\r\n            </next>\r\n          </block>\r\n        </next>\r\n      </block>\r\n    </next>\r\n  </block>	print("=== Testing your program... =============================")\r\ntest = 1\r\ntests = [([1,1,1], [1,1,1]), ([1,2,3], [1,8,27]), ([1,2,3,4,5], [1,8,27,64,125]), ([100, 98, 32, 24, 50, 75], [1000000, 941192, 32768, 13824, 125000, 421875])]\r\ndef verifier_results():\r\n    print('NT_VERIFIER_RESULTS:%d:%d' % (test-1, len(tests)))\r\n    import sys\r\n    sys.exit(0)\r\nfor (l, answer) in tests:\r\n    print("TEST %d) Does cube_all_numbers(%s) return %s?" % (test, l, answer))\r\n    result = cube_all_numbers(l)\r\n    if result == answer:\r\n        print("\\t-> CORRECT")\r\n        test += 1\r\n    else:\r\n        print("\\t-> INCORRECT. Your code returns %s. Fix your mistake and try again." % result)\r\n        verifier_results()\r\nprint("ALL TESTS PASSED.")\r\nverifier_results()	7
26	Counting Down using Recursion	The function <i>count_down</i> in this Python code is supposed to count down to 1 no matter what number you give it. But it never stops - it goes past 1 into the negative numbers.\r\n\r\n<br/><br/>\r\n\r\nThis code uses <b>recursion</b>, which means <b>it calls itself</b>. To make it stop, at the beginning of the function check: <b>if n is equal to 0, return 0.</b> Otherwise if n is not 0, we want to keep counting down until we get there.	<block type="def" id="`!P-kBpjvK=o,PwM,12/" x="75" y="52">\r\n    <field name="funcname">count_down</field>\r\n    <field name="funcargs">n</field>\r\n    <statement name="funcbody">\r\n      <block type="varprint" id="c%%mp4bsDk[l=*m7J?#s">\r\n        <field name="var">n</field>\r\n        <next>\r\n          <block type="return" id="ZRhE}-F3M%|svGQbs#uj">\r\n            <field name="expr">count_down(n - 1)</field>\r\n          </block>\r\n        </next>\r\n      </block>\r\n    </statement>\r\n    <next>\r\n      <block type="funcall" id="NtO..eq#5gDA5O]vc=QE">\r\n        <field name="funcname">count_down</field>\r\n        <field name="funcargs">10</field>\r\n      </block>\r\n    </next>\r\n  </block>	print("=== Testing your program... =============================")\r\ntests = ['_', '_']\r\ntest = 1\r\ndef verifier_results():\r\n    print('NT_VERIFIER_RESULTS:%d:%d' % (test-1, len(tests)))\r\n    import sys\r\n    sys.exit(0)\r\n\r\nimport inspect, re\r\nfn_lines = inspect.getsourcelines(count_down)[0]\r\nline1 = re.sub(r"\\s+", "", fn_lines[1], flags=re.UNICODE)\r\nline2 = re.sub(r"\\s+", "", fn_lines[2], flags=re.UNICODE)\r\n\r\nprint("TEST 1) Does the first line of the function check if n is equal to 0?")\r\nif line1 == 'ifn==0:' or line1 == 'if0==n:':\r\n  print("\\t-> CORRECT")\r\n  test += 1\r\nelse:\r\n  print("\\t-> INCORRECT. You have a problem with this line: '%s'. Fix your mistake and try again." % fn_lines[1])\r\n  verifier_results()\r\nprint("TEST 2) Does the second line of the function return 0?")\r\nif line2 == 'return0':\r\n  print("\\t-> CORRECT")\r\n  test += 1\r\nelse:\r\n  print("\\t-> INCORRECT. You have a problem with this line: '%s'. Fix your mistake and try again." % fn_lines[2])\r\n  verifier_results()\r\nprint("ALL TESTS PASSED.")\r\nverifier_results()	7
27	Uchaguzi 2015: Mkoa wa Darisalam	Wakati wa uchaguzi mkuu wa Tanzania mwaka 2015 mkoa huu wa Darisalam ulikuwa na majimbo ya uchaguzi yafuatayo:\r\n\r\n<table class="table">\r\n  <tr><td>Ilala</td><td>CCM</td></tr>\r\n  <tr><td>Kawe</td><td>Chadema</td></tr>\r\n  <tr><td>Kibamba</td><td>Chadema</td></tr>\r\n  <tr><td>Kigamboni</td><td>CCM</td></tr>\r\n  <tr><td>Kinondoni</td><td>CUF</td></tr>\r\n  <tr><td>Mbagala</td><td>CCM</td></tr>\r\n  <tr><td>Segerea</td><td>CCM</td></tr>\r\n  <tr><td>Temeke</td><td>CUF</td></tr>\r\n  <tr><td>Ubungo</td><td>Chadema</td></tr>\r\n  <tr><td>Ukonga</td><td>Chadema</td></tr>\r\n</table>\r\n\r\nComplete the function <i>wilaya_ya_dar_uchaguzi_2015</i> so that the <i>wilaya</i> variable correctly maps kila mkoa with the political party that represents it.	<block type="def" id="B:6tsISb(*pm|M)|oD+V" x="95" y="38">\r\n    <field name="funcname">wilaya_ya_dar_uchaguzi_2015</field>\r\n    <field name="funcargs"></field>\r\n    <statement name="funcbody">\r\n      <block type="varstore" id="jrlKlnCVQ([5GBxuEH]~">\r\n        <field name="1">wilaya</field>\r\n        <field name="2">{}</field>\r\n        <next>\r\n          <block type="varstore" id="m_}dq-t-_ireadvq!.Ep">\r\n            <field name="1">wilaya['Ilala']</field>\r\n            <field name="2">'?'</field>\r\n            <next>\r\n              <block type="varstore" id="[+A:iqH;cc]grO5WDg5@">\r\n                <field name="1">wilaya['Kawe']</field>\r\n                <field name="2">'?'</field>\r\n                <next>\r\n                  <block type="varstore" id="^APsbVmxL(O9X/k6EFB_">\r\n                    <field name="1">wilaya['Kibamba']</field>\r\n                    <field name="2">'?'</field>\r\n                    <next>\r\n                      <block type="varstore" id="O(A;9`SaCdiGd9kDesFz">\r\n                        <field name="1">wilaya['Kigamboni']</field>\r\n                        <field name="2">'?'</field>\r\n                        <next>\r\n                          <block type="varstore" id="se%W+;0!!}}BoD33r?2R">\r\n                            <field name="1">wilaya['Kinondoni']</field>\r\n                            <field name="2">'?'</field>\r\n                            <next>\r\n                              <block type="varstore" id="N116ep^M4u2A2EiV0g}T">\r\n                                <field name="1">wilaya['Mbagala']</field>\r\n                                <field name="2">'?'</field>\r\n                                <next>\r\n                                  <block type="varstore" id="-7+kKbMh)y89a6I7]9k2">\r\n                                    <field name="1">wilaya['Segerea']</field>\r\n                                    <field name="2">'?'</field>\r\n                                    <next>\r\n                                      <block type="varstore" id="A;q0BbtULhT4nc(cnE:R">\r\n                                        <field name="1">wilaya['Temeke']</field>\r\n                                        <field name="2">'?'</field>\r\n                                        <next>\r\n                                          <block type="varstore" id="!a+MlLSrj|rqPCZS:9tK">\r\n                                            <field name="1">wilaya['Ubungo']</field>\r\n                                            <field name="2">'?'</field>\r\n                                            <next>\r\n                                              <block type="varstore" id="9!h*-GFhSF6RN*@m.4F7">\r\n                                                <field name="1">wilaya['Ukonga']</field>\r\n                                                <field name="2">'?'</field>\r\n                                                <next>\r\n                                                  <block type="return" id="y*apH)gHF3L0C3V5H(|A">\r\n                                                    <field name="expr">wilaya</field>\r\n                                                  </block>\r\n                                                </next>\r\n                                              </block>\r\n                                            </next>\r\n                                          </block>\r\n                                        </next>\r\n                                      </block>\r\n                                    </next>\r\n                                  </block>\r\n                                </next>\r\n                              </block>\r\n                            </next>\r\n                          </block>\r\n                        </next>\r\n                      </block>\r\n                    </next>\r\n                  </block>\r\n                </next>\r\n              </block>\r\n            </next>\r\n          </block>\r\n        </next>\r\n      </block>\r\n    </statement>\r\n    <next>\r\n      <block type="varprint" id="c)R}R~v;6A;J;Sn5.VC?">\r\n        <field name="var">wilaya_ya_dar_uchaguzi_2015()</field>\r\n      </block>\r\n    </next>\r\n  </block>	print("=== Testing your program... =============================")\r\ntest = 1\r\ntests = [('Ilala', 'CCM'), ('Kawe', 'Chadema'), ('Kibamba', 'Chadema'), ('Kigamboni', 'CCM'), ('Kinondoni', 'CUF'), ('Mbagala', 'CCM'), ('Segerea', 'CCM'), ('Temeke', 'CUF'), ('Ubungo', 'Chadema'), ('Ukonga', 'Chadema'), ]\r\ndef verifier_results():\r\n    print('NT_VERIFIER_RESULTS:%d:%d' % (test-1, len(tests)))\r\n    import sys\r\n    sys.exit(0)\r\nwilaya = wilaya_ya_dar_uchaguzi_2015()\r\nfor (mkoa, party) in tests:\r\n    print("TEST %d) Is '%s' represented by '%s'?" % (test, mkoa, party))\r\n    result = (wilaya[mkoa] == party)\r\n    if result == True:\r\n        print("\\t-> CORRECT")\r\n        test += 1\r\n    else:\r\n        print("\\t-> INCORRECT. Your code says '%s' is represented by '%s'. Fix your mistake and try again." % (mkoa, wilaya[mkoa]))\r\n        verifier_results()\r\nprint("ALL TESTS PASSED.")\r\nverifier_results()	7
29	Celsius to Fahrenheit	The formula to convert a temperature in Celsius <i>T<sub>C</sub></i> to its Fahrenheit equivalent <i>T<sub>F</sub></i> is:\r\n\r\n$$T_F = T_C \\bullet \\frac{9}{5} + 32$$\r\n\r\nComplete the function <i>celsius_to_fahrenheit</i> so that it returns the Fahrenheit temperature equivalent to the <i>celsius</i> temperature given to it.	<block type="def" id="UyZK)MfHBy47Go--e}gm" x="93" y="50">\r\n    <field name="funcname">celsius_to_fahrenheit</field>\r\n    <field name="funcargs">celsius</field>\r\n    <next>\r\n      <block type="varprint" id=")@iUYBxa)h.nN0GzTF,y">\r\n        <field name="var">"Fahrenheit: %d" % celsius_to_fahrenheit(0)</field>\r\n        <next>\r\n          <block type="varprint" id="Rjz,Q(vTSQ2|C3M;g@;4">\r\n            <field name="var">"Fahrenheit: %d" % celsius_to_fahrenheit(-5)</field>\r\n            <next>\r\n              <block type="varprint" id="dSb:T*xm7GHYa#xjeW6V">\r\n                <field name="var">"Fahrenheit: %d" % celsius_to_fahrenheit(200)</field>\r\n                <next>\r\n                  <block type="varprint" id="=Jd-,]uHZ2F(-WPbtaH;">\r\n                    <field name="var">"Fahrenheit: %d" % celsius_to_fahrenheit(7)</field>\r\n                  </block>\r\n                </next>\r\n              </block>\r\n            </next>\r\n          </block>\r\n        </next>\r\n      </block>\r\n    </next>\r\n  </block>	print("=== Testing your program... =============================")\r\ntest = 1\r\ntests = [(0, 32.0), (-5, 23.0), (200, 392.0), (7, 44.6), (-40, -40.0), (-10, 14.0)]\r\ndef verifier_results():\r\n    print('NT_VERIFIER_RESULTS:%d:%d' % (test-1, len(tests)))\r\n    import sys\r\n    sys.exit(0)\r\nfor (tempc, answer) in tests:\r\n    print("TEST %d) Does celsius_to_fahrenheit(%d) return %s?" % (test, tempc, answer))\r\n    result = celsius_to_fahrenheit(tempc)\r\n    if ("%.2f" % result) == ("%.2f" % answer):\r\n        print("\\t-> CORRECT")\r\n        test += 1\r\n    else:\r\n        print("\\t-> INCORRECT. Your code returns %s. Fix your mistake and try again." % result)\r\n        verifier_results()\r\nprint("ALL TESTS PASSED.")\r\nverifier_results()	8
28	Fahrenheit to Celsius	The formula to convert a temperature in Fahrenheit <i>T<sub>F</sub></i> to its Celsius equivalent <i>T<sub>C</sub></i> is:\r\n\r\n$$T_C = (T_F - 32) \\bullet \\frac{5}{9}$$\r\n\r\nComplete the function <i>fahrenheit_to_celsius</i> so that it returns the Celsius temperature equivalent to the <i>fahrenheit</i> temperature given to it.	<block type="def" id="UyZK)MfHBy47Go--e}gm" x="93" y="50">\r\n    <field name="funcname">fahrenheit_to_celsius</field>\r\n    <field name="funcargs">fahrenheit</field>\r\n    <next>\r\n      <block type="varprint" id=")@iUYBxa)h.nN0GzTF,y">\r\n        <field name="var">"Celsius: %d" % fahrenheit_to_celsius(0)</field>\r\n        <next>\r\n          <block type="varprint" id="Rjz,Q(vTSQ2|C3M;g@;4">\r\n            <field name="var">"Celsius: %d" % fahrenheit_to_celsius(-459.67)</field>\r\n            <next>\r\n              <block type="varprint" id="dSb:T*xm7GHYa#xjeW6V">\r\n                <field name="var">"Celsius: %d" % fahrenheit_to_celsius(170)</field>\r\n                <next>\r\n                  <block type="varprint" id="=Jd-,]uHZ2F(-WPbtaH;">\r\n                    <field name="var">"Celsius: %d" % fahrenheit_to_celsius(1000)</field>\r\n                  </block>\r\n                </next>\r\n              </block>\r\n            </next>\r\n          </block>\r\n        </next>\r\n      </block>\r\n    </next>\r\n  </block>	print("=== Testing your program... =============================")\r\ntest = 1\r\ntests = [(0, -17.78), (-459.67, -273.15), (170, 76.67), (1000, 537.78), (90, 32.22), (-50, -45.56)]\r\ndef verifier_results():\r\n    print('NT_VERIFIER_RESULTS:%d:%d' % (test-1, len(tests)))\r\n    import sys\r\n    sys.exit(0)\r\nfor (tempf, answer) in tests:\r\n    print("TEST %d) Does fahrenheit_to_celsius(%d) return %s?" % (test, tempf, answer))\r\n    result = fahrenheit_to_celsius(tempf)\r\n    if ("%.2f" % result) == ("%.2f" % answer):\r\n        print("\\t-> CORRECT")\r\n        test += 1\r\n    else:\r\n        print("\\t-> INCORRECT. Your code returns %s. Fix your mistake and try again." % result)\r\n        verifier_results()\r\nprint("ALL TESTS PASSED.")\r\nverifier_results()	8
23	Quadratic Formula	The quadratic formula gives us the two roots of any quadratic equation. One root is calculated using:\r\n\r\n$${-b + \\sqrt{b^2-4ac} \\over 2a}$$\r\n\r\nand another root is calculated using:\r\n\r\n$${-b - \\sqrt{b^2-4ac} \\over 2a}$$\r\n\r\nFill in the <i>quadratic_formula</i> function so that it correctly calculates and returns both roots for any quadratic equation consisting of <i>a</i>, <i>b</i>, and <i>c</i>.	<block type="import" id="%)NI@v;!%Dd2WcM[W-QC" x="-169" y="28">\r\n    <field name="libname">math</field>\r\n    <next>\r\n      <block type="def" id="n:W5L~K|`VrLr-UF:#*a">\r\n        <field name="funcname">quadratic_formula</field>\r\n        <field name="funcargs">a, b, c</field>\r\n        <statement name="funcbody">\r\n          <block type="varstore" id=":[fz]#t(tlQP}q:FuTjS">\r\n            <field name="1">root1</field>\r\n            <field name="2">0</field>\r\n            <next>\r\n              <block type="varstore" id="j6^8g6^jzbl~g]OZIUoH">\r\n                <field name="1">root2</field>\r\n                <field name="2">0</field>\r\n                <next>\r\n                  <block type="return" id="R,Hln6OW3H[Ss?d}gTIY">\r\n                    <field name="expr">(root1, root2)</field>\r\n                  </block>\r\n                </next>\r\n              </block>\r\n            </next>\r\n          </block>\r\n        </statement>\r\n        <next>\r\n              <block type="varprint" id="8B%zP3KuRZ@e?~LUHooL">\r\n                <field name="var">quadratic_formula(1, 4, -21)</field>\r\n                <next>\r\n                  <block type="varprint" id="RKq`5:8sh:K[-}W?g*CQ">\r\n                    <field name="var">quadratic_formula(1, 3, -4)</field>\r\n                    <next>\r\n                      <block type="varprint" id="eMq?*n?-W6g;)+3xG|Wb">\r\n                        <field name="var">quadratic_formula(3, 6, -10)</field>\r\n                      </block>\r\n                    </next>\r\n                  </block>\r\n                </next>\r\n              </block>\r\n        </next>\r\n      </block>\r\n    </next>\r\n  </block>	print("=== Testing your program... =============================")\r\ntest = 1\r\ntests = [(1, 4, -21, 3.00, -7.00), (1, 3, -4, 1.00, -4.00), (3, 6, -10, -3.08, 1.08)]\r\ndef verifier_results():\r\n    print('NT_VERIFIER_RESULTS:%d:%d' % (test-1, len(tests)))\r\n    import sys\r\n    sys.exit(0)\r\nfor (a, b, c, r1, r2) in tests:\r\n    r1 = "%.2f" % r1\r\n    r2 = "%.2f" % r2\r\n    print("TEST %d) Does quadratic_formula(%d,%d,%d) return (%s, %s)?" % (test, a, b, c, r1, r2))\r\n    result = quadratic_formula(a, b, c)\r\n    result = ("%.2f" % result[0], "%.2f" % result[1])\r\n    if (result[0] == r1 and result[1] == r2) or (result[1] == r1 and result[0] == r2):\r\n        print("\\t-> CORRECT")\r\n        test += 1\r\n    else:\r\n        print("\\t-> INCORRECT. Your code returns (%s, %s). Fix your mistake and try again." % result)\r\n        verifier_results()\r\nprint("ALL TESTS PASSED.")\r\nverifier_results()	8
30	Finding Prime Numbers	A prime number is divisible only by 1 and itself. Here are all of the prime numbers less than 20:\r\n\r\n$$2, 3, 5, 7, 11, 13, 17, 19$$\r\n\r\nComplete the <i>is_prime</i> function so that it returns <i>True</i> if <i>namba</i> is prime and <i>False</i> if it is not.\r\n\r\n<br/><br/>\r\n\r\n<b>IMPORTANT:</b> If we want to divide two numbers <i>a</i> and <i>b</i>, we write <b>a / b</b> to get the quotient (example: 5 / 2 is equal to 2). But if we want <b>the remainder</b>, we write <b>a % b</b> (example: 5 % 2 is equal to 1). <b>If the remainder of <i>a % b</i> equals 0, <i>a</i> is divisible by <i>b</i>. If the remainder of <i>a % b</i> does not equal 0, <i>a</i> is not divisible by <i>b</i></b>. Use this to help you write an <b>if</b> block that checks <b>if namba is divisible by m.</b>	<block type="def" id="Gw2*|jG6H7Y5a1Ad.*Uw" x="63" y="23">\r\n    <field name="funcname">is_prime</field>\r\n    <field name="funcargs">namba</field>\r\n    <statement name="funcbody">\r\n      <block type="if" id="(W4D2,szhY~%!v5A_e%T">\r\n        <field name="expr">namba == 1</field>\r\n        <statement name="stmts">\r\n          <block type="return" id=";wgXBAJ=yXSgGNjk{X:D">\r\n            <field name="expr">False</field>\r\n          </block>\r\n        </statement>\r\n        <next>\r\n          <block type="for" id="6i]`yc^,UGZ|KyNEhNwG">\r\n            <field name="item">m</field>\r\n            <field name="seq">range(2, namba)</field>\r\n            <statement name="stmts">\r\n              <block type="if" id="eMsd[1:b#*%rbqnb`PuE">\r\n                <field name="expr"></field>\r\n                <statement name="stmts">\r\n                  <block type="return" id="fF?5uA)p{]/.lp)r)JF|">\r\n                    <field name="expr"></field>\r\n                  </block>\r\n                </statement>\r\n              </block>\r\n            </statement>\r\n            <next>\r\n              <block type="else" id="g`O23ZK%a%TKp;-%32=?">\r\n                <statement name="DO">\r\n                  <block type="return" id="LTDW8L-21BP!X7EpJU%k">\r\n                    <field name="expr"></field>\r\n                  </block>\r\n                </statement>\r\n              </block>\r\n            </next>\r\n          </block>\r\n        </next>\r\n      </block>\r\n    </statement>\r\n    <next>\r\n      <block type="for" id="%:luv!VIJ8Mf8!X6_z2x">\r\n        <field name="item">i</field>\r\n        <field name="seq">range(1, 20)</field>\r\n        <statement name="stmts">\r\n          <block type="if" id="J};P|NKZ92#:qApcQKnC">\r\n            <field name="expr">is_prime(i)</field>\r\n            <statement name="stmts">\r\n              <block type="varprint" id="0VMvnlb/dm1}9r@uoDPc">\r\n                <field name="var">"%d is prime." % i</field>\r\n              </block>\r\n            </statement>\r\n          </block>\r\n        </statement>\r\n      </block>\r\n    </next>\r\n  </block>	print("=== Testing your program... =============================")\r\ntest = 1\r\nprime_tests = [2, 3, 5, 7, 11, 13, 17, 19, 23, 29, 31, 37, 41, 43, 47, 53, 59, 61, 67, 71, 73, 79, 83, 89, 97, 101, 103, 107, 109, 113, 127, 131, 137, 139, 149, 151, 157, 163, 167, 173, 179, 181, 191, 193, 197, 199]\r\ncomposite_tests = [4, 6, 8, 9, 10, 12, 14, 15, 16, 18, 20, 21, 22, 24, 25, 26, 27, 28, 30, 32, 33, 34, 35, 36, 38, 39, 40, 42, 44, 45, 46, 48, 49, 50, 51, 52, 54, 55, 56, 57, 58, 60, 62, 63, 64, 65, 66, 68, 69, 70, 72, 74, 75, 76, 77, 78, 80, 81, 82, 84]\r\ndef verifier_results():\r\n    print('NT_VERIFIER_RESULTS:%d:%d' % (test-1, len(prime_tests) + len(composite_tests)))\r\n    import sys\r\n    sys.exit(0)\r\nfor n in prime_tests:\r\n    print("TEST %d) Does is_prime(%d) return True?" % (test, n))\r\n    result = is_prime(n)\r\n    if result == True:\r\n        print("\\\\t-> CORRECT")\r\n        test += 1\r\n    else:\r\n        print("\\\\t-> INCORRECT. Your code returns %s. Fix your mistake and try again." % result)\r\n        verifier_results()\r\nfor n in composite_tests:\r\n    print("TEST %d) Does is_prime(%d) return False?" % (test, n))\r\n    result = is_prime(n)\r\n    if result == False:\r\n        print("\\\\t-> CORRECT")\r\n        test += 1\r\n    else:\r\n        print("\\\\t-> INCORRECT. Your code returns %s. Fix your mistake and try again." % result)\r\n        verifier_results()\r\nprint("ALL TESTS PASSED.")\r\nverifier_results()	9
31	Noble Gases	In chemistry, these six elements on the periodic table are called <b>the noble gases</b>: helium, neon, argon, krypton, xeon, and radon. These are their symbols:\r\n\r\n$$He, Ne, Ar, Kr, Xe, Rn$$\r\n\r\nComplete the function <i>is_noble_gas</i> so that it returns <i>True</i> if the <i>symbol</i> given to it represents a noble gas. If it's not a noble gas, return <i>False</i>.	<block type="def" id="g{J=FEAq?Fw[#KI#f0Qs" x="7" y="50">\r\n    <field name="funcname">is_noble_gas</field>\r\n    <field name="funcargs">symbol</field>\r\n    <next>\r\n      <block type="varprint" id="||b?J5g5bzf+)RXTM[4[">\r\n        <field name="var">is_noble_gas('He')</field>\r\n        <next>\r\n          <block type="varprint" id="^kpO@j(J4OfMwU~R^RPk">\r\n            <field name="var">is_noble_gas('Si')</field>\r\n            <next>\r\n              <block type="varprint" id="#0`KwtQ1vSv(+~z,/kc)">\r\n                <field name="var">is_noble_gas('Cf')</field>\r\n                <next>\r\n                  <block type="varprint" id="s0sXO~;J}.AjbLfCe84r">\r\n                    <field name="var">is_noble_gas('Li')</field>\r\n                    <next>\r\n                      <block type="varprint" id="kS=W^{xMxymFZeE96*O6">\r\n                        <field name="var">is_noble_gas('Ar')</field>\r\n                      </block>\r\n                    </next>\r\n                  </block>\r\n                </next>\r\n              </block>\r\n            </next>\r\n          </block>\r\n        </next>\r\n      </block>\r\n    </next>\r\n  </block>	print("=== Testing your program... =============================")\r\ntest = 1\r\ntests = [('He', True), ('Ne', True), ('Ar', True), ('Kr', True), ('Xe', True), ('Rn', True), ('Cf', False), ('Li', False), ('Pb', False), ('Si', False)]\r\ndef verifier_results():\r\n    print('NT_VERIFIER_RESULTS:%d:%d' % (test-1, len(tests)))\r\n    import sys\r\n    sys.exit(0)\r\nfor (sym, answer) in tests:\r\n    print("TEST %d) Does is_noble_gas('%s') return %s?" % (test, sym, answer))\r\n    result = is_noble_gas(sym)\r\n    if result == answer:\r\n        print("\\t-> CORRECT")\r\n        test += 1\r\n    else:\r\n        print("\\t-> INCORRECT. Your code returns %s. Fix your mistake and try again." % result)\r\n        verifier_results()\r\nprint("ALL TESTS PASSED.")\r\nverifier_results()	10
32	Alkali Metals	In chemistry, these six elements on the periodic table are called <b>the alkali metals</b>: lithium, sodium, potassium, rubidium, caesium, and francium. These are their symbols:\r\n\r\n$$Li, Na, K, Rb, Cs, Fr$$\r\n\r\nComplete the function <i>is_alkali_metal</i> so that it returns <i>True</i> if the <i>symbol</i> given to it represents an alkali metal. If it's not an alkali metal, return <i>False</i>.	<block type="def" id="g{J=FEAq?Fw[#KI#f0Qs" x="7" y="50">\r\n    <field name="funcname">is_alkali_metal</field>\r\n    <field name="funcargs">symbol</field>\r\n    <next>\r\n      <block type="varprint" id="||b?J5g5bzf+)RXTM[4[">\r\n        <field name="var">is_alkali_metal('He')</field>\r\n        <next>\r\n          <block type="varprint" id="^kpO@j(J4OfMwU~R^RPk">\r\n            <field name="var">is_alkali_metal('Si')</field>\r\n            <next>\r\n              <block type="varprint" id="#0`KwtQ1vSv(+~z,/kc)">\r\n                <field name="var">is_alkali_metal('Cf')</field>\r\n                <next>\r\n                  <block type="varprint" id="s0sXO~;J}.AjbLfCe84r">\r\n                    <field name="var">is_alkali_metal('Li')</field>\r\n                    <next>\r\n                      <block type="varprint" id="kS=W^{xMxymFZeE96*O6">\r\n                        <field name="var">is_alkali_metal('Ar')</field>\r\n                      </block>\r\n                    </next>\r\n                  </block>\r\n                </next>\r\n              </block>\r\n            </next>\r\n          </block>\r\n        </next>\r\n      </block>\r\n    </next>\r\n  </block>	print("=== Testing your program... =============================")\r\ntest = 1\r\ntests = [('Li', True), ('Na', True), ('K', True), ('Rb', True), ('Cs', True), ('Fr', True), ('Cf', False), ('Ar', False), ('Pb', False), ('Si', False)]\r\ndef verifier_results():\r\n    print('NT_VERIFIER_RESULTS:%d:%d' % (test-1, len(tests)))\r\n    import sys\r\n    sys.exit(0)\r\nfor (sym, answer) in tests:\r\n    print("TEST %d) Does is_alkali_metal('%s') return %s?" % (test, sym, answer))\r\n    result = is_alkali_metal(sym)\r\n    if result == answer:\r\n        print("\\t-> CORRECT")\r\n        test += 1\r\n    else:\r\n        print("\\t-> INCORRECT. Your code returns %s. Fix your mistake and try again." % result)\r\n        verifier_results()\r\nprint("ALL TESTS PASSED.")\r\nverifier_results()	10
33	Motion Equation in Physics	If we have a moving object and want to know where it will be after some time, we can use this physics equation:\r\n\r\n$$s = s_0 + v_0t + \\frac{1}{2}at^2$$\r\n\r\nwhere <b>s</b> is the position where the object will be, <b>s<sub>0</sub></b> is the position where the object started, <b>v<sub>0</sub></b> is the initial velocity of the object, <b>a</b> is the object's acceleration, and <b>t</b> is the amount of time that has passed since the object started moving.\r\n\r\n<br/><br/>\r\n\r\nComplete the Python function <i>position_equation</i> to calculate any object's position <b>s</b> using <b>s0, v0, a,</b> and <b>t</b>.	<block type="def" id="g{J=FEAq?Fw[#KI#f0Qs" x="7" y="50">\r\n    <field name="funcname">motion_equation</field>\r\n    <field name="funcargs">s0, v0, a, t</field>\r\n    <next>\r\n      <block type="varprint" id="ia43Ba/Jca`huOx!g[C-">\r\n        <field name="var">motion_equation(0, 0, 0, 0)</field>\r\n        <next>\r\n          <block type="varprint" id="||b?J5g5bzf+)RXTM[4[">\r\n            <field name="var">motion_equation(0, 10, 4, 8)</field>\r\n            <next>\r\n              <block type="varprint" id="q)T/:Qq,QhPvzo-vZkmm">\r\n                <field name="var">motion_equation(20, 4, -2, 10)</field>\r\n                <next>\r\n                  <block type="varprint" id="3p62W)7x:;M:bIsPTMyE">\r\n                    <field name="var">motion_equation(-10, 30, 5, 40)</field>\r\n                  </block>\r\n                </next>\r\n              </block>\r\n            </next>\r\n          </block>\r\n        </next>\r\n      </block>\r\n    </next>\r\n  </block>	print("=== Testing your program... =============================")\r\ntest = 1\r\ntests = [(0, 0, 0, 0, 0), (0, 10, 4, 8, 208), (20, 4, -2, 10, -40), (-10, 30, 5, 40, 5190)]\r\ndef verifier_results():\r\n    print('NT_VERIFIER_RESULTS:%d:%d' % (test-1, len(tests)))\r\n    import sys\r\n    sys.exit(0)\r\nfor (s0, v0, a, t, answer) in tests:\r\n    print("TEST %d) Does motion_equation(%d, %d, %d, %d) return %d?" % (test, s0, v0, a, t, answer))\r\n    result = motion_equation(s0, v0, a, t)\r\n    if ("%.2f" % result) == ("%.2f" % answer):\r\n        print("\\t-> CORRECT")\r\n        test += 1\r\n    else:\r\n        print("\\t-> INCORRECT. Your code returns %s. Fix your mistake and try again." % result)\r\n        verifier_results()\r\nprint("ALL TESTS PASSED.")\r\nverifier_results()	11
35	The Intensity Level of Light	If we want to know the intensity level of light, we can use this physics equation:\r\n\r\n$$L_I = 10 \\log\\left(\\frac{I}{I_0}\\right)$$\r\n\r\nwhere <b>L<sub>I</sub></b> is the intensity level, <b>I</b> is the intensity of the light, and <b>I<sub>0</sub></b> is the intensity of a reference signal.\r\n\r\nComplete the Python function <i>intensity_level</i> to correctly calculate and return the intensity level of any light given to it. You can use Python's <b>math.log()</b> function to calculate the logarithm of any number you give it.	<block type="import" id="=OxOf`cZxX8Ml;W1T;3(" x="31" y="-4">\r\n    <field name="libname">math</field>\r\n    <next>\r\n      <block type="def" id="3od`QJX+)oY%yn{^gY!_">\r\n        <field name="funcname">intensity_level</field>\r\n        <field name="funcargs">i, i0</field>\r\n        <next>\r\n          <block type="varprint" id="ZY!ctbo!)Le?m-~.n+-0">\r\n            <field name="var">intensity_level(1, 5)</field>\r\n            <next>\r\n              <block type="varprint" id="qTLZ-?{/%o%skXq:{3hL">\r\n                <field name="var">intensity_level(1, 1)</field>\r\n                <next>\r\n                  <block type="varprint" id="~zYlkLtz7@?bnIvaBv1X">\r\n                    <field name="var">intensity_level(4, 8)</field>\r\n                    <next>\r\n                      <block type="varprint" id="+1D,(^%?f|c3N^D~odi~">\r\n                        <field name="var">intensity_level(8, 14)</field>\r\n                        <next>\r\n                          <block type="varprint" id="i~:*Vy%?RMbNUP-eTHHz">\r\n                            <field name="var">intensity_level(3, 44)</field>\r\n                          </block>\r\n                        </next>\r\n                      </block>\r\n                    </next>\r\n                  </block>\r\n                </next>\r\n              </block>\r\n            </next>\r\n          </block>\r\n        </next>\r\n      </block>\r\n    </next>\r\n  </block>	print("=== Testing your program... =============================")\r\ntest = 1\r\ntests = [(1, 5, '-16.09'), (1, 1, '0.00'), (4, 8, '-6.93'), (8, 14, '-5.60'), (3, 44, '-26.86')]\r\ndef verifier_results():\r\n    print('NT_VERIFIER_RESULTS:%d:%d' % (test-1, len(tests)))\r\n    import sys\r\n    sys.exit(0)\r\nfor (i, i0, answer) in tests:\r\n    print("TEST %d) Does intensity_level(%d, %d) return %s?" % (test, i, i0, answer))\r\n    result = "%.2f" % intensity_level(i, i0)\r\n    if result == answer:\r\n        print("\\t-> CORRECT")\r\n        test += 1\r\n    else:\r\n        print("\\t-> INCORRECT. Your code returns %s. Fix your mistake and try again." % result)\r\n        verifier_results()\r\nprint("ALL TESTS PASSED.")\r\nverifier_results()	11
36	The Pressure Level of Light	If we want to know the pressure level of light, we can use this physics equation:\r\n\r\n$$L_P = 20 \\log\\left(\\frac{\\Delta P}{\\Delta P_0}\\right)$$\r\n\r\nwhere <b>L<sub>P</sub></b> is the pressure level, <b>&Delta;P</b> is the change in pressure, and <b>&Delta;P<sub>0</sub></b> is the change in pressure of a reference signal.\r\n\r\nComplete the Python function <i>pressure_level</i> to correctly calculate and return the pressure level of any light given to it. You can use Python's <b>math.log()</b> function to calculate the logarithm of any number you give it.	<block type="import" id="=OxOf`cZxX8Ml;W1T;3(" x="31" y="-4">\r\n    <field name="libname">math</field>\r\n    <next>\r\n      <block type="def" id="3od`QJX+)oY%yn{^gY!_">\r\n        <field name="funcname">pressure_level</field>\r\n        <field name="funcargs">delta_P, delta_P0</field>\r\n        <next>\r\n          <block type="varprint" id="ZY!ctbo!)Le?m-~.n+-0">\r\n            <field name="var">pressure_level(1, 5)</field>\r\n            <next>\r\n              <block type="varprint" id="qTLZ-?{/%o%skXq:{3hL">\r\n                <field name="var">pressure_level(1, 1)</field>\r\n                <next>\r\n                  <block type="varprint" id="~zYlkLtz7@?bnIvaBv1X">\r\n                    <field name="var">pressure_level(4, 8)</field>\r\n                    <next>\r\n                      <block type="varprint" id="+1D,(^%?f|c3N^D~odi~">\r\n                        <field name="var">pressure_level(8, 14)</field>\r\n                        <next>\r\n                          <block type="varprint" id="i~:*Vy%?RMbNUP-eTHHz">\r\n                            <field name="var">pressure_level(3, 44)</field>\r\n                          </block>\r\n                        </next>\r\n                      </block>\r\n                    </next>\r\n                  </block>\r\n                </next>\r\n              </block>\r\n            </next>\r\n          </block>\r\n        </next>\r\n      </block>\r\n    </next>\r\n  </block>	print("=== Testing your program... =============================")\r\ntest = 1\r\ntests = [(1, 5, '-32.19'), (1, 1, '0.00'), (4, 8, '-13.86'), (8, 14, '-11.19'), (3, 44, '-53.71')]\r\ndef verifier_results():\r\n    print('NT_VERIFIER_RESULTS:%d:%d' % (test-1, len(tests)))\r\n    import sys\r\n    sys.exit(0)\r\nfor (dp, dp0, answer) in tests:\r\n    print("TEST %d) Does pressure_level(%d, %d) return %s?" % (test, dp, dp0, answer))\r\n    result = "%.2f" % pressure_level(dp, dp0)\r\n    if result == answer:\r\n        print("\\t-> CORRECT")\r\n        test += 1\r\n    else:\r\n        print("\\t-> INCORRECT. Your code returns %s. Fix your mistake and try again." % result)\r\n        verifier_results()\r\nprint("ALL TESTS PASSED.")\r\nverifier_results()	11
37	Magnetic Force on a Moving Charged Particle	To calculate the magnetic force on a moving charged particle, we use this physics equation:\r\n\r\n$$F = qvB \\sin \\theta$$\r\n\r\nwhere <b>F</b> is the force, <b>q</b> is the charge, <b>v</b> is the velocity, <b>B</b> is the magnetic field, and <b>&theta;</b> is the angle between the velocity and the magnetic field.\r\n\r\n<br/><br/>\r\n\r\nComplete the Python function <i>magnetic_force</i> to correctly calculate and return the magnetic force on any moving charged particle given to it. You can use Python's <b>math.sin()</b> function to calculate the sine of any number given to it.	<block type="import" id="=OxOf`cZxX8Ml;W1T;3(" x="-99" y="16">\r\n    <field name="libname">math</field>\r\n    <next>\r\n      <block type="def" id="3od`QJX+)oY%yn{^gY!_">\r\n        <field name="funcname">magnetic_force</field>\r\n        <field name="funcargs">charge, velocity, magnetic_field, angle</field>\r\n        <next>\r\n          <block type="varprint" id="ZY!ctbo!)Le?m-~.n+-0">\r\n            <field name="var">magnetic_force(0.4, 10.3, 1.2, 40.4)</field>\r\n            <next>\r\n              <block type="varprint" id="qTLZ-?{/%o%skXq:{3hL">\r\n                <field name="var">magnetic_force(1.4, 4.3, 5.5, -90.0)</field>\r\n                <next>\r\n                  <block type="varprint" id="~zYlkLtz7@?bnIvaBv1X">\r\n                    <field name="var">magnetic_force(8.3, 1.0, 6.7, 270.0)</field>\r\n                  </block>\r\n                </next>\r\n              </block>\r\n            </next>\r\n          </block>\r\n        </next>\r\n      </block>\r\n    </next>\r\n  </block>	print("=== Testing your program... =============================")\r\ntest = 1\r\ntests = [(0.4, 10.3, 1.2, 40.4, '2.11'), (1.4, 4.3, 5.5, -90.0, '-29.60'), (8.3, 1.0, 6.7, 270.0, '-9.79')]\r\ndef verifier_results():\r\n    print('NT_VERIFIER_RESULTS:%d:%d' % (test-1, len(tests)))\r\n    import sys\r\n    sys.exit(0)\r\nfor (q, v, b, theta, answer) in tests:\r\n    print("TEST %d) Does magnetic_force(%.2f, %.2f, %.2f, %.2f) return %s?" % (test, q, v, b, theta, answer))\r\n    result = "%.2f" % magnetic_force(q, v, b, theta)\r\n    if result == answer:\r\n        print("\\t-> CORRECT")\r\n        test += 1\r\n    else:\r\n        print("\\t-> INCORRECT. Your code returns %s. Fix your mistake and try again." % result)\r\n        verifier_results()\r\nprint("ALL TESTS PASSED.")\r\nverifier_results()	11
34	Vodacom and Halotel	In Tanzania, Vodacom phone numbers start with <b>07</b>. Halotel phone numbers start with <b>06</b>.\r\n\r\n<br/><br/>\r\n\r\nComplete the Python function <i>count_voda_halotel_numbers</i> so that it correctly counts the number of Vodacom phone numbers and the number of Halotel numbers in any <i>phone_numbers</i> list given to it. You will need to check <b>the first two digits of every phone number</b>; for example, if you have a variable called <i>phone_number</i>, you can get just the first two digits using:\r\n\r\n$$phone\\_number[\\text{:2}]$$\r\n\r\nUse this inside an <b>if block</b> to check if the first two digits of a phone number are '06' or '07'.	<block type="def" id="1kn(rhRtd3AtD):;B7Ou" x="-21" y="42">\r\n    <field name="funcname">count_voda_halotel_numbers</field>\r\n    <field name="funcargs">phone_numbers</field>\r\n    <statement name="funcbody">\r\n      <block type="varstore" id="j_;p%GA;o2:s1yfO/sk^">\r\n        <field name="1">num_voda</field>\r\n        <field name="2">0</field>\r\n        <next>\r\n          <block type="varstore" id="nwBf{:hU2:C8-Z|SS@N}">\r\n            <field name="1">num_halotel</field>\r\n            <field name="2">0</field>\r\n            <next>\r\n              <block type="return" id=".7r|{0%G1e08BRHZ5lbg">\r\n                <field name="expr">num_voda, num_halotel</field>\r\n              </block>\r\n            </next>\r\n          </block>\r\n        </next>\r\n      </block>\r\n    </statement>\r\n    <next>\r\n      <block type="varprint" id="gZW+_ebA]t-eEd-;eW%Q">\r\n        <field name="var">count_voda_halotel_numbers([])</field>\r\n        <next>\r\n          <block type="varprint" id="@s(|E1uLG]q#4VXozCU^">\r\n            <field name="var">count_voda_halotel_numbers(['0762046294'])</field>\r\n            <next>\r\n              <block type="varprint" id=")G}CN^u4DbOqH4QjbEB^">\r\n                <field name="var">count_voda_halotel_numbers(['0677745521'])</field>\r\n                <next>\r\n                  <block type="varprint" id="I7yi~/mL|=8.dewnj8a7">\r\n                    <field name="var">count_voda_halotel_numbers(['0762046294', '0677745521'])</field>\r\n                  </block>\r\n                </next>\r\n              </block>\r\n            </next>\r\n          </block>\r\n        </next>\r\n      </block>\r\n    </next>\r\n  </block>	print("=== Testing your program... =============================")\r\ntest = 1\r\ntests = [([], (0, 0)), (['0762046294'], (1, 0)), (['0677745521'], (0, 1)), (['0762046294', '0677745521'], (1, 1)), (['0788824116','0655273863','0768200442','0761788962','0664604533','0732814641','0673857280','0626349704','0650566071','0618384027'], (4, 6)), (['0671258752','0875563055','0790288495','0756601476','0638843366','0775770419','0777997979','0840231955','0687192941','0689373256','0773903069','0718944661','0698336611',\r\n'0799274857','0657590000'], (7,6))]\r\ndef verifier_results():\r\n    print('NT_VERIFIER_RESULTS:%d:%d' % (test-1, len(tests)))\r\n    import sys\r\n    sys.exit(0)\r\nfor (l, answer) in tests:\r\n    print("TEST %d) Does count_voda_halotel_numbers(%s) return (%s, %s)?" % (test, l, answer[0], answer[1]))\r\n    result = count_voda_halotel_numbers(l)\r\n    if result == answer:\r\n        print("\\t-> CORRECT")\r\n        test += 1\r\n    else:\r\n        print("\\t-> INCORRECT. Your code returns (%s, %s). Fix your mistake and try again." % (result[0], result[1]))\r\n        verifier_results()\r\nprint("ALL TESTS PASSED.")\r\nverifier_results()	12
38	Counting Vowels in Names	Complete the function <i>count_vowels</i> so that it correctly counts the number of vowels in any name given to it.	<block type="def" id="B)_.++WeyVXp:~-m/9/E" x="67" y="27">\r\n    <field name="funcname">count_vowels</field>\r\n    <field name="funcargs">jina</field>\r\n    <statement name="funcbody">\r\n      <block type="varstore" id="@MMYFkuAP?tr-gLM0-!a">\r\n        <field name="1">count</field>\r\n        <field name="2">0</field>\r\n        <next>\r\n          <block type="return" id="WI%hU_)MF+XZSp#/gr/`">\r\n            <field name="expr">count</field>\r\n          </block>\r\n        </next>\r\n      </block>\r\n    </statement>\r\n    <next>\r\n      <block type="varprint" id="XH8UY:X5=d;S8Olm+*sk">\r\n        <field name="var">"Vowels in 'Julius Nyerere': %d" % count_vowels('Julius Nyerere')</field>\r\n        <next>\r\n          <block type="varprint" id="/(o]1u=os+!#m`30L0Or">\r\n            <field name="var">"Vowels in 'Barack Obama': %d" % count_vowels('Barack Obama')</field>\r\n          </block>\r\n        </next>\r\n      </block>\r\n    </next>\r\n  </block>	print("=== Testing your program... =============================")\r\ntest = 1\r\ntests = [('Julius Nyerere', 6), ('Barack Obama', 5), ('Jesus Christ', 3), ('Buddha', 2), ('Oprah Winfrey', 4), ('Muhammed Ali', 5), ('George W. Bush', 4), ('Donald Trump', 3), ('Mao Zedong', 4), ('Ho Chi Minh', 3)]\r\ndef verifier_results():\r\n    print('NT_VERIFIER_RESULTS:%d:%d' % (test-1, len(tests)))\r\n    import sys\r\n    sys.exit(0)\r\nfor (name, answer) in tests:\r\n    print("TEST %d) Does count_vowels('%s') return %s?" % (test, name, answer))\r\n    result = count_vowels(name)\r\n    if result == answer:\r\n        print("\\t-> CORRECT")\r\n        test += 1\r\n    else:\r\n        print("\\t-> INCORRECT. Your code returns %s. Fix your mistake and try again." % result)\r\n        verifier_results()\r\nprint("ALL TESTS PASSED.")\r\nverifier_results()	13
39	Bei Jumla	A shop sells three items:\r\n\r\n<ul>\r\n  <li>Samaki for TSH 1000</li>\r\n  <li>Chipsi for TSH 2500</li>\r\n  <li>Fanta for TSH 1000</li>\r\n</ul>\r\n\r\nYou can buy any combination of these three things. Complete the Python function <i>bei_jumla</i> to calculate for any combination: mfanyabiashara atakudai shingapi?	<block type="varstore" id="D=D)f;|?T^i4]q;I#tGC" x="-216" y="23">\r\n    <field name="1">prices</field>\r\n    <field name="2">{}</field>\r\n    <next>\r\n      <block type="varstore" id="-v`y`Bgcsrv1_rap98}V">\r\n        <field name="1">prices['samaki']</field>\r\n        <field name="2">1000</field>\r\n        <next>\r\n          <block type="varstore" id="E|9pe;@^2jia?_o4%s/`">\r\n            <field name="1">prices['chipsi']</field>\r\n            <field name="2">2500</field>\r\n            <next>\r\n              <block type="varstore" id="yX.5!jEF`MLcx%:om2h(">\r\n                <field name="1">prices['fanta']</field>\r\n                <field name="2">1000</field>\r\n                <next>\r\n                  <block type="def" id="16Rm7#[Lo)@Bi)zvmsN;">\r\n                    <field name="funcname">bei_jumla</field>\r\n                    <field name="funcargs">purchased</field>\r\n                    <statement name="funcbody">\r\n                      <block type="varstore" id=".;SX^DEe8YEUbv|GC|Sy">\r\n                        <field name="1">bei</field>\r\n                        <field name="2">0</field>\r\n                        <next>\r\n                          <block type="return" id="MmN,FHduh8ppGKi]%Uz+">\r\n                            <field name="expr">bei</field>\r\n                          </block>\r\n                        </next>\r\n                      </block>\r\n                    </statement>\r\n                    <next>\r\n                      <block type="varprint" id="5cDX~tRG!U)GaNV/=;d,">\r\n                        <field name="var">bei_jumla({'samaki': 2, 'fanta': 1})</field>\r\n                        <next>\r\n                          <block type="varprint" id="#udBuU@Yv/F):(]JD/kf">\r\n                            <field name="var">bei_jumla({'fanta': 3, 'chipsi': 5})</field>\r\n                            <next>\r\n                              <block type="varprint" id="OpIYPZwuKN/2kuxD)ceW">\r\n                                <field name="var">bei_jumla({'chipsi': 2, 'fanta': 2})</field>\r\n                                <next>\r\n                                  <block type="varprint" id="[Qv1,w|ED697qJ{wJaXj">\r\n                                    <field name="var">bei_jumla({})</field>\r\n                                  </block>\r\n                                </next>\r\n                              </block>\r\n                            </next>\r\n                          </block>\r\n                        </next>\r\n                      </block>\r\n                    </next>\r\n                  </block>\r\n                </next>\r\n              </block>\r\n            </next>\r\n          </block>\r\n        </next>\r\n      </block>\r\n    </next>\r\n  </block>	print("=== Testing your program... =============================")\r\ntest = 1\r\ntests = [({'samaki': 2, 'fanta': 1}, 3000), ({'fanta': 3, 'chipsi': 5}, 15500), ({'chipsi': 2, 'fanta': 2}, 7000), ({}, 0), ({'samaki': 10, 'chipsi': 9, 'fanta': 8}, 40500)]\r\ndef verifier_results():\r\n    print('NT_VERIFIER_RESULTS:%d:%d' % (test-1, len(tests)))\r\n    import sys\r\n    sys.exit(0)\r\nfor (items, answer) in tests:\r\n    print("TEST %d) Does bei_jumla(%s) return %s?" % (test, items, answer))\r\n    result = bei_jumla(items)\r\n    if result == answer:\r\n        print("\\t-> CORRECT")\r\n        test += 1\r\n    else:\r\n        print("\\t-> INCORRECT. Your code returns %s. Fix your mistake and try again." % result)\r\n        verifier_results()\r\nprint("ALL TESTS PASSED.")\r\nverifier_results()	14
40	Counting Maneno ya Shairi	Complete the Python function <i>count_maneno</i> so that it correctly returns the number of words in any poem given to it. One poem, entitled <i>Shairi la Mnazi</i>, has been given to you as an example.	<block type="def" id="VjM+LE@X5WCdq~}e*bsB" x="-32" y="35">\r\n    <field name="funcname">count_maneno</field>\r\n    <field name="funcargs">shairi</field>\r\n    <statement name="funcbody">\r\n      <block type="varstore" id="(7w)+Q!nUn`hza;WHHA#">\r\n        <field name="1">count</field>\r\n        <field name="2">0</field>\r\n        <next>\r\n          <block type="return" id=":N*+5-*fcMc|`=i;srJ`">\r\n            <field name="expr">count</field>\r\n          </block>\r\n        </next>\r\n      </block>\r\n    </statement>\r\n    <next>\r\n      <block type="varstore" id="tBZl9ikuoQ5did~Ri:[7">\r\n        <field name="1">shairi_la_mnazi</field>\r\n        <field name="2">[''] * 10</field>\r\n        <next>\r\n          <block type="varstore" id="(ejILTpWjI-{0^.pDON)">\r\n            <field name="1">shairi_la_mnazi[0]</field>\r\n            <field name="2">'Pani kiti nikae kitako niwambie sifa za mnazi.'</field>\r\n            <next>\r\n              <block type="varstore" id="b1cpkQr[eoiO,^0+NKN_">\r\n                <field name="1">shairi_la_mnazi[1]</field>\r\n                <field name="2">'Mti huu unzapo kumeya makutiye yanga panga wazi.'</field>\r\n                <next>\r\n                  <block type="varstore" id="Ejk9ZIL^m*YV=N`vBN~n">\r\n                    <field name="1">shairi_la_mnazi[2]</field>\r\n                    <field name="2">'Baadaye hushuska kigogo hutoleza mapanda na mizi,'</field>\r\n                    <next>\r\n                      <block type="varstore" id="^%=}XG1-~|o]+rO)%~M%">\r\n                        <field name="1">shairi_la_mnazi[3]</field>\r\n                        <field name="2">'hatimaye huwaa matunda matundaye inakwitwa nazi.'</field>\r\n                        <next>\r\n                          <block type="varstore" id="]Cr(7ZK?WzpQx@n]_@-[">\r\n                            <field name="1">shairi_la_mnazi[4]</field>\r\n                            <field name="2">'Huyangwa hwambua makutiye hapikia wali na mtunzi,'</field>\r\n                            <next>\r\n                              <block type="varstore" id=";Gtr[HEH/];Pon3398f}">\r\n                                <field name="1">shairi_la_mnazi[5]</field>\r\n                                <field name="2">'kifwuche hatonga upawa kapikia Saada muwandazi.'</field>\r\n                                <next>\r\n                                  <block type="varstore" id="PUN^M{3XNqc/+)wm#B{s">\r\n                                    <field name="1">shairi_la_mnazi[6]</field>\r\n                                    <field name="2">'Na takizi hamwaya jaani katakura yimbi mtakuzi,'</field>\r\n                                    <next>\r\n                                      <block type="varstore" id="iz6s-Ix*sO(MKiu`ZLc-">\r\n                                        <field name="1">shairi_la_mnazi[7]</field>\r\n                                        <field name="2">'makumbiye hasokota kamba haundia sambwe na jahazi.'</field>\r\n                                        <next>\r\n                                          <block type="varstore" id="e9/I[}cIwRA7sEE+e_JU">\r\n                                            <field name="1">shairi_la_mnazi[8]</field>\r\n                                            <field name="2">'Makutiye hazibia nyumba hazuia pepo na fusizi,'</field>\r\n                                            <next>\r\n                                              <block type="varstore" id="rwobNLa(xaR{#FL?kA2P">\r\n                                                <field name="1">shairi_la_mnazi[9]</field>\r\n                                                <field name="2">'kigogoche hafanyia mlango hazuia harubu na mwizi.'</field>\r\n                                                <next>\r\n                                                  <block type="varprint" id="o}k-aT}Y#=VME]Me[gO8">\r\n                                                    <field name="var">count_maneno(shairi_la_mnazi)</field>\r\n                                                  </block>\r\n                                                </next>\r\n                                              </block>\r\n                                            </next>\r\n                                          </block>\r\n                                        </next>\r\n                                      </block>\r\n                                    </next>\r\n                                  </block>\r\n                                </next>\r\n                              </block>\r\n                            </next>\r\n                          </block>\r\n                        </next>\r\n                      </block>\r\n                    </next>\r\n                  </block>\r\n                </next>\r\n              </block>\r\n            </next>\r\n          </block>\r\n        </next>\r\n      </block>\r\n    </next>\r\n  </block>	print("=== Testing your program... =============================")\r\nshairi_la_mnazi=[''] * 10\r\nshairi_la_mnazi[0]='Pani kiti nikae kitako niwambie sifa za mnazi.'\r\nshairi_la_mnazi[1]='Mti huu unzapo kumeya makutiye yanga panga wazi.'\r\nshairi_la_mnazi[2]='Baadaye hushuska kigogo hutoleza mapanda na mizi,'\r\nshairi_la_mnazi[3]='hatimaye huwaa matunda matundaye inakwitwa nazi.'\r\nshairi_la_mnazi[4]='Huyangwa hwambua makutiye hapikia wali na mtunzi,'\r\nshairi_la_mnazi[5]='kifwuche hatonga upawa kapikia Saada muwandazi.'\r\nshairi_la_mnazi[6]='Na takizi hamwaya jaani katakura yimbi mtakuzi,'\r\nshairi_la_mnazi[7]='makumbiye hasokota kamba haundia sambwe na jahazi.'\r\nshairi_la_mnazi[8]='Makutiye hazibia nyumba hazuia pepo na fusizi,'\r\nshairi_la_mnazi[9]='kigogoche hafanyia mlango hazuia harubu na mwizi.'\r\nshairi2 = [''] * 18\r\nshairi2[0] = 'Mama, nipeeke, haoe kaoe'\r\nshairi2[1] = 'Urembo na shani Ungama,'\r\nshairi2[2] = 'Haoe mnara mpambo mpambe,'\r\nshairi2[3] = 'Uzainyeo hcshima.'\r\nshairi2[4] = 'Na wenyi kupamba patoto patoto.'\r\nshairi2[5] = 'Wavete vitindi na kama,'\r\nshairi2[6] = 'Wavete saufo ziemba ziemba,'\r\nshairi2[7] = 'Na mikili bee na nyuma.'\r\nshairi2[8] = 'Wavete libasi teule teule,'\r\nshairi2[9] = 'Kwa zitwana bee na nyuma.'\r\nshairi2[10] = 'Watukuze panga ngao na ngao.'\r\nshairi2[11] = 'Mtu hutoshea kuona.'\r\nshairi2[12] = 'Kujile Mngazidja na kubu na kubu,'\r\nshairi2[13] = 'Ujile kutaka harubu.'\r\nshairi2[14] = 'Kujile Mgala na mata na mata,'\r\nshairi2[15] = 'Ujile kutaka kuteta.'\r\nshairi2[16] = 'Tutawatilia ukuta ukuta,'\r\nshairi2[17] = 'Wasituingilie myini.'\r\ntest = 1\r\ntests = [(shairi_la_mnazi, 70), (shairi2, 72)]\r\ndef verifier_results():\r\n    print('NT_VERIFIER_RESULTS:%d:%d' % (test-1, len(tests)))\r\n    import sys\r\n    sys.exit(0)\r\nfor (shairi, answer) in tests:\r\n    print("TEST %d) Does count_maneno(%s) return %s?" % (test, shairi, answer))\r\n    result = count_maneno(shairi)\r\n    if result == answer:\r\n        print("\\t-> CORRECT")\r\n        test += 1\r\n    else:\r\n        print("\\t-> INCORRECT. Your code returns %s. Fix your mistake and try again." % result)\r\n        verifier_results()\r\nprint("ALL TESTS PASSED.")\r\nverifier_results()	15
41	Counting neno la 'na' ya Shairi	Complete the Python function <i>count_na</i> so that it correctly returns the number of times the word 'Na' or 'na' appears in any poem given to it. One poem, entitled <i>Shairi la Mnazi</i>, has been given to you as an example.	<block type="def" id="VjM+LE@X5WCdq~}e*bsB" x="-32" y="35">\r\n    <field name="funcname">count_na</field>\r\n    <field name="funcargs">shairi</field>\r\n    <statement name="funcbody">\r\n      <block type="varstore" id="(7w)+Q!nUn`hza;WHHA#">\r\n        <field name="1">count</field>\r\n        <field name="2">0</field>\r\n        <next>\r\n          <block type="return" id=":N*+5-*fcMc|`=i;srJ`">\r\n            <field name="expr">count</field>\r\n          </block>\r\n        </next>\r\n      </block>\r\n    </statement>\r\n    <next>\r\n      <block type="varstore" id="tBZl9ikuoQ5did~Ri:[7">\r\n        <field name="1">shairi_la_mnazi</field>\r\n        <field name="2">[''] * 10</field>\r\n        <next>\r\n          <block type="varstore" id="(ejILTpWjI-{0^.pDON)">\r\n            <field name="1">shairi_la_mnazi[0]</field>\r\n            <field name="2">'Pani kiti nikae kitako niwambie sifa za mnazi.'</field>\r\n            <next>\r\n              <block type="varstore" id="b1cpkQr[eoiO,^0+NKN_">\r\n                <field name="1">shairi_la_mnazi[1]</field>\r\n                <field name="2">'Mti huu unzapo kumeya makutiye yanga panga wazi.'</field>\r\n                <next>\r\n                  <block type="varstore" id="Ejk9ZIL^m*YV=N`vBN~n">\r\n                    <field name="1">shairi_la_mnazi[2]</field>\r\n                    <field name="2">'Baadaye hushuska kigogo hutoleza mapanda na mizi,'</field>\r\n                    <next>\r\n                      <block type="varstore" id="^%=}XG1-~|o]+rO)%~M%">\r\n                        <field name="1">shairi_la_mnazi[3]</field>\r\n                        <field name="2">'hatimaye huwaa matunda matundaye inakwitwa nazi.'</field>\r\n                        <next>\r\n                          <block type="varstore" id="]Cr(7ZK?WzpQx@n]_@-[">\r\n                            <field name="1">shairi_la_mnazi[4]</field>\r\n                            <field name="2">'Huyangwa hwambua makutiye hapikia wali na mtunzi,'</field>\r\n                            <next>\r\n                              <block type="varstore" id=";Gtr[HEH/];Pon3398f}">\r\n                                <field name="1">shairi_la_mnazi[5]</field>\r\n                                <field name="2">'kifwuche hatonga upawa kapikia Saada muwandazi.'</field>\r\n                                <next>\r\n                                  <block type="varstore" id="PUN^M{3XNqc/+)wm#B{s">\r\n                                    <field name="1">shairi_la_mnazi[6]</field>\r\n                                    <field name="2">'Na takizi hamwaya jaani katakura yimbi mtakuzi,'</field>\r\n                                    <next>\r\n                                      <block type="varstore" id="iz6s-Ix*sO(MKiu`ZLc-">\r\n                                        <field name="1">shairi_la_mnazi[7]</field>\r\n                                        <field name="2">'makumbiye hasokota kamba haundia sambwe na jahazi.'</field>\r\n                                        <next>\r\n                                          <block type="varstore" id="e9/I[}cIwRA7sEE+e_JU">\r\n                                            <field name="1">shairi_la_mnazi[8]</field>\r\n                                            <field name="2">'Makutiye hazibia nyumba hazuia pepo na fusizi,'</field>\r\n                                            <next>\r\n                                              <block type="varstore" id="rwobNLa(xaR{#FL?kA2P">\r\n                                                <field name="1">shairi_la_mnazi[9]</field>\r\n                                                <field name="2">'kigogoche hafanyia mlango hazuia harubu na mwizi.'</field>\r\n                                                <next>\r\n                                                  <block type="varprint" id="o}k-aT}Y#=VME]Me[gO8">\r\n                                                    <field name="var">count_na(shairi_la_mnazi)</field>\r\n                                                  </block>\r\n                                                </next>\r\n                                              </block>\r\n                                            </next>\r\n                                          </block>\r\n                                        </next>\r\n                                      </block>\r\n                                    </next>\r\n                                  </block>\r\n                                </next>\r\n                              </block>\r\n                            </next>\r\n                          </block>\r\n                        </next>\r\n                      </block>\r\n                    </next>\r\n                  </block>\r\n                </next>\r\n              </block>\r\n            </next>\r\n          </block>\r\n        </next>\r\n      </block>\r\n    </next>\r\n  </block>	print("=== Testing your program... =============================")\r\nshairi_la_mnazi=[''] * 10\r\nshairi_la_mnazi[0]='Pani kiti nikae kitako niwambie sifa za mnazi.'\r\nshairi_la_mnazi[1]='Mti huu unzapo kumeya makutiye yanga panga wazi.'\r\nshairi_la_mnazi[2]='Baadaye hushuska kigogo hutoleza mapanda na mizi,'\r\nshairi_la_mnazi[3]='hatimaye huwaa matunda matundaye inakwitwa nazi.'\r\nshairi_la_mnazi[4]='Huyangwa hwambua makutiye hapikia wali na mtunzi,'\r\nshairi_la_mnazi[5]='kifwuche hatonga upawa kapikia Saada muwandazi.'\r\nshairi_la_mnazi[6]='Na takizi hamwaya jaani katakura yimbi mtakuzi,'\r\nshairi_la_mnazi[7]='makumbiye hasokota kamba haundia sambwe na jahazi.'\r\nshairi_la_mnazi[8]='Makutiye hazibia nyumba hazuia pepo na fusizi,'\r\nshairi_la_mnazi[9]='kigogoche hafanyia mlango hazuia harubu na mwizi.'\r\nshairi2 = [''] * 18\r\nshairi2[0] = 'Mama, nipeeke, haoe kaoe'\r\nshairi2[1] = 'Urembo na shani Ungama,'\r\nshairi2[2] = 'Haoe mnara mpambo mpambe,'\r\nshairi2[3] = 'Uzainyeo hcshima.'\r\nshairi2[4] = 'Na wenyi kupamba patoto patoto.'\r\nshairi2[5] = 'Wavete vitindi na kama,'\r\nshairi2[6] = 'Wavete saufo ziemba ziemba,'\r\nshairi2[7] = 'Na mikili bee na nyuma.'\r\nshairi2[8] = 'Wavete libasi teule teule,'\r\nshairi2[9] = 'Kwa zitwana bee na nyuma.'\r\nshairi2[10] = 'Watukuze panga ngao na ngao.'\r\nshairi2[11] = 'Mtu hutoshea kuona.'\r\nshairi2[12] = 'Kujile Mngazidja na kubu na kubu,'\r\nshairi2[13] = 'Ujile kutaka harubu.'\r\nshairi2[14] = 'Kujile Mgala na mata na mata,'\r\nshairi2[15] = 'Ujile kutaka kuteta.'\r\nshairi2[16] = 'Tutawatilia ukuta ukuta,'\r\nshairi2[17] = 'Wasituingilie myini.'\r\ntest = 1\r\ntests = [(shairi_la_mnazi, 6), (shairi2, 11)]\r\ndef verifier_results():\r\n    print('NT_VERIFIER_RESULTS:%d:%d' % (test-1, len(tests)))\r\n    import sys\r\n    sys.exit(0)\r\nfor (shairi, answer) in tests:\r\n    print("TEST %d) Does count_na(%s) return %s?" % (test, shairi, answer))\r\n    result = count_na(shairi)\r\n    if result == answer:\r\n        print("\\t-> CORRECT")\r\n        test += 1\r\n    else:\r\n        print("\\t-> INCORRECT. Your code returns %s. Fix your mistake and try again." % result)\r\n        verifier_results()\r\nprint("ALL TESTS PASSED.")\r\nverifier_results()	16
43	Wasichana na Wavulana	Complete the Python function <i>wasichana_wavulana</i> so that it correctly counts the number of boys and girls in the <i>watu</i> variable.	<block type="def" id="9mvE0XIw1XMWt0Srsieu" x="104" y="96">\r\n    <field name="funcname">wasichana_wavulana</field>\r\n    <field name="funcargs">watu</field>\r\n    <statement name="funcbody">\r\n      <block type="varstore" id="^d{x%nIEJTDj,KOYJJ1W">\r\n        <field name="1">num_wasichana</field>\r\n        <field name="2">0</field>\r\n        <next>\r\n          <block type="varstore" id="(DJeV*7R)g,u{d1VFWRq">\r\n            <field name="1">num_wavulana</field>\r\n            <field name="2">0</field>\r\n            <next>\r\n              <block type="return" id="_c:8bIN0HgOQF^Q}?yu5">\r\n                <field name="expr">(num_wasichana, num_wavulana)</field>\r\n              </block>\r\n            </next>\r\n          </block>\r\n        </next>\r\n      </block>\r\n    </statement>\r\n    <next>\r\n      <block type="varstore" id="5YFlo=p~|8Ku{v[%j8~`">\r\n        <field name="1">wanafunzi</field>\r\n        <field name="2">{}</field>\r\n        <next>\r\n          <block type="varstore" id="gMsSCC27)p(B#[b-%B-3">\r\n            <field name="1">wanafunzi['Anitha']</field>\r\n            <field name="2">'F'</field>\r\n            <next>\r\n              <block type="varstore" id="f^qjh!HmU:/G{lA,CDzL">\r\n                <field name="1">wanafunzi['James']</field>\r\n                <field name="2">'M'</field>\r\n                <next>\r\n                  <block type="varstore" id="CCQ/,uf8@B*f1a(,mJ0p">\r\n                    <field name="1">wanafunzi['Godlove']</field>\r\n                    <field name="2">'M'</field>\r\n                    <next>\r\n                      <block type="varstore" id="8c*!TWzh;U3x+Y@Zhab4">\r\n                        <field name="1">wanafunzi['Endesh']</field>\r\n                        <field name="2">'F'</field>\r\n                        <next>\r\n                          <block type="varstore" id=".`{Kbl*,#C}j6.i(+M)s">\r\n                            <field name="1">wanafunzi['Fred']</field>\r\n                            <field name="2">'M'</field>\r\n                            <next>\r\n                              <block type="varstore" id="oOT(9*(LIk]`D8YJ80I/">\r\n                                <field name="1">wanafunzi['Nice']</field>\r\n                                <field name="2">'F'</field>\r\n                                <next>\r\n                                  <block type="varprint" id="wn_aECylpL;rMB31wnYu">\r\n                                    <field name="var">"Wasichana: %d, Wavulana: %d" % wasichana_wavulana(wanafunzi)</field>\r\n                                  </block>\r\n                                </next>\r\n                              </block>\r\n                            </next>\r\n                          </block>\r\n                        </next>\r\n                      </block>\r\n                    </next>\r\n                  </block>\r\n                </next>\r\n              </block>\r\n            </next>\r\n          </block>\r\n        </next>\r\n      </block>\r\n    </next>\r\n  </block>	print("=== Testing your program... =============================")\r\ntest = 1\r\ntests = [({'Anitha': 'F', 'James': 'M', 'Godlove': 'M', 'Endesh': 'F', 'Fred': 'M', 'Nice': 'F'}, (3, 3)), ({}, (0, 0)), ({'A': 'F', 'B': 'F', 'C': 'M', 'D': 'F', 'E': 'F', 'G': 'M'}, (4, 2))]\r\ndef verifier_results():\r\n    print('NT_VERIFIER_RESULTS:%d:%d' % (test-1, len(tests)))\r\n    import sys\r\n    sys.exit(0)\r\nfor (watu, answer) in tests:\r\n    print("TEST %d) Does wasichana_wavulana(%s) return %s?" % (test, watu, answer))\r\n    result = wasichana_wavulana(watu)\r\n    if result == answer:\r\n        print("\\t-> CORRECT")\r\n        test += 1\r\n    else:\r\n        print("\\t-> INCORRECT. Your code returns (%s, %s). Fix your mistake and try again." % (result[0], result[1]))\r\n        verifier_results()\r\nprint("ALL TESTS PASSED.")\r\nverifier_results()	17
\.


--
-- Name: main_problem_id_seq; Type: SEQUENCE SET; Schema: public; Owner: ntuser
--

SELECT pg_catalog.setval('main_problem_id_seq', 13, true);


--
-- Data for Name: main_progress; Type: TABLE DATA; Schema: public; Owner: ntuser
--

COPY main_progress (id, latest_submission, num_submissions, passed_tests_percent, started_dtstamp, passed_dtstamp, problem_id_id, student_id_id) FROM stdin;
\.


--
-- Name: main_progress_id_seq; Type: SEQUENCE SET; Schema: public; Owner: ntuser
--

SELECT pg_catalog.setval('main_progress_id_seq', 4280, true);


--
-- Data for Name: main_student; Type: TABLE DATA; Schema: public; Owner: ntuser
--

COPY main_student (id, name, form, gender, total_pass_percent, total_submissions, stream, total_first_solves_in_stream, bonus_first_solves_in_stream, bonus_pass_percent) FROM stdin;
123	Emmanuel Samwel	1	M	0	0	A	0	0	0
125	Kelvin Joseph	1	M	0	0	A	0	0	0
127	Pascal Vincent	1	M	0	0	A	0	0	0
129	Loveness Jacob	1	F	0	0	A	0	0	0
131	Collinsia Eullin	1	F	0	0	A	0	0	0
133	Brision John	1	M	0	0	A	0	0	0
135	Anastazia Petro	1	F	0	0	A	0	0	0
137	Silvia Nemence	1	F	0	0	A	0	0	0
139	Anifa Swalehe	1	F	0	0	A	0	0	0
141	Chrispina Lashayo	1	F	0	0	A	0	0	0
143	Aman Amos	1	M	0	0	A	0	0	0
145	Scholastica Hhando	1	F	0	0	A	0	0	0
147	Alphonce John	1	M	0	0	A	0	0	0
149	Baraka Awaki	1	M	0	0	A	0	0	0
151	Fadhil Yusuph	1	M	0	0	A	0	0	0
153	Shukuru Nyerere	1	F	0	0	A	0	0	0
155	Ibrahim John	1	M	0	0	B	0	0	0
157	Irene Elias	1	F	0	0	B	0	0	0
159	Halima Ernest	1	F	0	0	B	0	0	0
161	Naomi Peter	1	F	0	0	B	0	0	0
163	Wema Julius	1	F	0	0	B	0	0	0
165	Rita Daniel	1	F	0	0	B	0	0	0
167	Ezra Edward	1	M	0	0	B	0	0	0
169	Irene Simon	1	F	0	0	B	0	0	0
171	Johnson Japhet	1	M	0	0	B	0	0	0
173	Sara Nestory	1	F	0	0	B	0	0	0
175	Donald Damas	1	M	0	0	B	0	0	0
177	Mary Philipo	1	F	0	0	B	0	0	0
179	Loveness Kastuli	1	F	0	0	B	0	0	0
181	Caleb Meleji	1	M	0	0	B	0	0	0
183	Rogathe Fidelis	1	M	0	0	B	0	0	0
185	Hezekia Kidava	1	M	0	0	B	0	0	0
124	Patrick Ayub	1	M	0	0	A	0	0	0
126	Justin Julius	1	M	0	0	A	0	0	0
128	Godlisten John	1	M	0	0	A	0	0	0
130	Upendo Thomas	1	F	0	0	A	0	0	0
132	Abdul Mohamed	1	M	0	0	A	0	0	0
134	Upendo Ginyanyi	1	F	0	0	A	0	0	0
136	Beatrice Hamisi	1	F	0	0	A	0	0	0
138	Neema George	1	F	0	0	A	0	0	0
140	Shazmina Eliabish	1	F	0	0	A	0	0	0
142	Kornelia Marco	1	F	0	0	A	0	0	0
144	Hancy Christopher	1	M	0	0	A	0	0	0
146	Husna Mohamed	1	F	0	0	A	0	0	0
148	John Orestus	1	M	0	0	A	0	0	0
150	Geofrey Josia	1	M	0	0	A	0	0	0
152	Samuel Michael	1	M	0	0	A	0	0	0
156	Jackline Joseph	1	F	0	0	B	0	0	0
158	Abdul-Aziz Lema	1	M	0	0	B	0	0	0
160	Renatha Emanuel	1	F	0	0	B	0	0	0
162	Maria Peter	1	F	0	0	B	0	0	0
164	Jackline Agustino	1	F	0	0	B	0	0	0
166	Shadrack Lembrise	1	M	0	0	B	0	0	0
168	Miraji Hassan	1	M	0	0	B	0	0	0
170	Johnson Dominick	1	M	0	0	B	0	0	0
172	Lordrick Ayoub	1	M	0	0	B	0	0	0
174	Joseph Peter	1	M	0	0	B	0	0	0
176	Nelson Frank	1	M	0	0	B	0	0	0
178	Happiness Henry	1	F	0	0	B	0	0	0
180	Esupat Martin	1	F	0	0	B	0	0	0
182	Severiana Paul	1	F	0	0	B	0	0	0
184	Kimolo Manyangu	1	M	0	0	B	0	0	0
\.


--
-- Name: main_student_id_seq; Type: SEQUENCE SET; Schema: public; Owner: ntuser
--

SELECT pg_catalog.setval('main_student_id_seq', 185, true);


--
-- Name: auth_group auth_group_name_key; Type: CONSTRAINT; Schema: public; Owner: ntuser
--

ALTER TABLE ONLY auth_group
    ADD CONSTRAINT auth_group_name_key UNIQUE (name);


--
-- Name: auth_group_permissions auth_group_permissions_group_id_permission_id_0cd325b0_uniq; Type: CONSTRAINT; Schema: public; Owner: ntuser
--

ALTER TABLE ONLY auth_group_permissions
    ADD CONSTRAINT auth_group_permissions_group_id_permission_id_0cd325b0_uniq UNIQUE (group_id, permission_id);


--
-- Name: auth_group_permissions auth_group_permissions_pkey; Type: CONSTRAINT; Schema: public; Owner: ntuser
--

ALTER TABLE ONLY auth_group_permissions
    ADD CONSTRAINT auth_group_permissions_pkey PRIMARY KEY (id);


--
-- Name: auth_group auth_group_pkey; Type: CONSTRAINT; Schema: public; Owner: ntuser
--

ALTER TABLE ONLY auth_group
    ADD CONSTRAINT auth_group_pkey PRIMARY KEY (id);


--
-- Name: auth_permission auth_permission_content_type_id_codename_01ab375a_uniq; Type: CONSTRAINT; Schema: public; Owner: ntuser
--

ALTER TABLE ONLY auth_permission
    ADD CONSTRAINT auth_permission_content_type_id_codename_01ab375a_uniq UNIQUE (content_type_id, codename);


--
-- Name: auth_permission auth_permission_pkey; Type: CONSTRAINT; Schema: public; Owner: ntuser
--

ALTER TABLE ONLY auth_permission
    ADD CONSTRAINT auth_permission_pkey PRIMARY KEY (id);


--
-- Name: auth_user_groups auth_user_groups_pkey; Type: CONSTRAINT; Schema: public; Owner: ntuser
--

ALTER TABLE ONLY auth_user_groups
    ADD CONSTRAINT auth_user_groups_pkey PRIMARY KEY (id);


--
-- Name: auth_user_groups auth_user_groups_user_id_group_id_94350c0c_uniq; Type: CONSTRAINT; Schema: public; Owner: ntuser
--

ALTER TABLE ONLY auth_user_groups
    ADD CONSTRAINT auth_user_groups_user_id_group_id_94350c0c_uniq UNIQUE (user_id, group_id);


--
-- Name: auth_user auth_user_pkey; Type: CONSTRAINT; Schema: public; Owner: ntuser
--

ALTER TABLE ONLY auth_user
    ADD CONSTRAINT auth_user_pkey PRIMARY KEY (id);


--
-- Name: auth_user_user_permissions auth_user_user_permissions_pkey; Type: CONSTRAINT; Schema: public; Owner: ntuser
--

ALTER TABLE ONLY auth_user_user_permissions
    ADD CONSTRAINT auth_user_user_permissions_pkey PRIMARY KEY (id);


--
-- Name: auth_user_user_permissions auth_user_user_permissions_user_id_permission_id_14a6b632_uniq; Type: CONSTRAINT; Schema: public; Owner: ntuser
--

ALTER TABLE ONLY auth_user_user_permissions
    ADD CONSTRAINT auth_user_user_permissions_user_id_permission_id_14a6b632_uniq UNIQUE (user_id, permission_id);


--
-- Name: auth_user auth_user_username_key; Type: CONSTRAINT; Schema: public; Owner: ntuser
--

ALTER TABLE ONLY auth_user
    ADD CONSTRAINT auth_user_username_key UNIQUE (username);


--
-- Name: django_admin_log django_admin_log_pkey; Type: CONSTRAINT; Schema: public; Owner: ntuser
--

ALTER TABLE ONLY django_admin_log
    ADD CONSTRAINT django_admin_log_pkey PRIMARY KEY (id);


--
-- Name: django_content_type django_content_type_app_label_model_76bd3d3b_uniq; Type: CONSTRAINT; Schema: public; Owner: ntuser
--

ALTER TABLE ONLY django_content_type
    ADD CONSTRAINT django_content_type_app_label_model_76bd3d3b_uniq UNIQUE (app_label, model);


--
-- Name: django_content_type django_content_type_pkey; Type: CONSTRAINT; Schema: public; Owner: ntuser
--

ALTER TABLE ONLY django_content_type
    ADD CONSTRAINT django_content_type_pkey PRIMARY KEY (id);


--
-- Name: django_migrations django_migrations_pkey; Type: CONSTRAINT; Schema: public; Owner: ntuser
--

ALTER TABLE ONLY django_migrations
    ADD CONSTRAINT django_migrations_pkey PRIMARY KEY (id);


--
-- Name: django_session django_session_pkey; Type: CONSTRAINT; Schema: public; Owner: ntuser
--

ALTER TABLE ONLY django_session
    ADD CONSTRAINT django_session_pkey PRIMARY KEY (session_key);


--
-- Name: main_accesswhitelist main_accesswhitelist_pkey; Type: CONSTRAINT; Schema: public; Owner: ntuser
--

ALTER TABLE ONLY main_accesswhitelist
    ADD CONSTRAINT main_accesswhitelist_pkey PRIMARY KEY (id);


--
-- Name: main_problem main_problem_pkey; Type: CONSTRAINT; Schema: public; Owner: ntuser
--

ALTER TABLE ONLY main_problem
    ADD CONSTRAINT main_problem_pkey PRIMARY KEY (id);


--
-- Name: main_progress main_progress_pkey; Type: CONSTRAINT; Schema: public; Owner: ntuser
--

ALTER TABLE ONLY main_progress
    ADD CONSTRAINT main_progress_pkey PRIMARY KEY (id);


--
-- Name: main_student main_student_pkey; Type: CONSTRAINT; Schema: public; Owner: ntuser
--

ALTER TABLE ONLY main_student
    ADD CONSTRAINT main_student_pkey PRIMARY KEY (id);


--
-- Name: auth_group_name_a6ea08ec_like; Type: INDEX; Schema: public; Owner: ntuser
--

CREATE INDEX auth_group_name_a6ea08ec_like ON auth_group USING btree (name varchar_pattern_ops);


--
-- Name: auth_group_permissions_group_id_b120cbf9; Type: INDEX; Schema: public; Owner: ntuser
--

CREATE INDEX auth_group_permissions_group_id_b120cbf9 ON auth_group_permissions USING btree (group_id);


--
-- Name: auth_group_permissions_permission_id_84c5c92e; Type: INDEX; Schema: public; Owner: ntuser
--

CREATE INDEX auth_group_permissions_permission_id_84c5c92e ON auth_group_permissions USING btree (permission_id);


--
-- Name: auth_permission_content_type_id_2f476e4b; Type: INDEX; Schema: public; Owner: ntuser
--

CREATE INDEX auth_permission_content_type_id_2f476e4b ON auth_permission USING btree (content_type_id);


--
-- Name: auth_user_groups_group_id_97559544; Type: INDEX; Schema: public; Owner: ntuser
--

CREATE INDEX auth_user_groups_group_id_97559544 ON auth_user_groups USING btree (group_id);


--
-- Name: auth_user_groups_user_id_6a12ed8b; Type: INDEX; Schema: public; Owner: ntuser
--

CREATE INDEX auth_user_groups_user_id_6a12ed8b ON auth_user_groups USING btree (user_id);


--
-- Name: auth_user_user_permissions_permission_id_1fbb5f2c; Type: INDEX; Schema: public; Owner: ntuser
--

CREATE INDEX auth_user_user_permissions_permission_id_1fbb5f2c ON auth_user_user_permissions USING btree (permission_id);


--
-- Name: auth_user_user_permissions_user_id_a95ead1b; Type: INDEX; Schema: public; Owner: ntuser
--

CREATE INDEX auth_user_user_permissions_user_id_a95ead1b ON auth_user_user_permissions USING btree (user_id);


--
-- Name: auth_user_username_6821ab7c_like; Type: INDEX; Schema: public; Owner: ntuser
--

CREATE INDEX auth_user_username_6821ab7c_like ON auth_user USING btree (username varchar_pattern_ops);


--
-- Name: django_admin_log_content_type_id_c4bce8eb; Type: INDEX; Schema: public; Owner: ntuser
--

CREATE INDEX django_admin_log_content_type_id_c4bce8eb ON django_admin_log USING btree (content_type_id);


--
-- Name: django_admin_log_user_id_c564eba6; Type: INDEX; Schema: public; Owner: ntuser
--

CREATE INDEX django_admin_log_user_id_c564eba6 ON django_admin_log USING btree (user_id);


--
-- Name: django_session_expire_date_a5c62663; Type: INDEX; Schema: public; Owner: ntuser
--

CREATE INDEX django_session_expire_date_a5c62663 ON django_session USING btree (expire_date);


--
-- Name: django_session_session_key_c0390e0f_like; Type: INDEX; Schema: public; Owner: ntuser
--

CREATE INDEX django_session_session_key_c0390e0f_like ON django_session USING btree (session_key varchar_pattern_ops);


--
-- Name: main_progress_problem_id_id_bd0d0f11; Type: INDEX; Schema: public; Owner: ntuser
--

CREATE INDEX main_progress_problem_id_id_bd0d0f11 ON main_progress USING btree (problem_id_id);


--
-- Name: main_progress_student_id_id_17db4a34; Type: INDEX; Schema: public; Owner: ntuser
--

CREATE INDEX main_progress_student_id_id_17db4a34 ON main_progress USING btree (student_id_id);


--
-- Name: auth_group_permissions auth_group_permissio_permission_id_84c5c92e_fk_auth_perm; Type: FK CONSTRAINT; Schema: public; Owner: ntuser
--

ALTER TABLE ONLY auth_group_permissions
    ADD CONSTRAINT auth_group_permissio_permission_id_84c5c92e_fk_auth_perm FOREIGN KEY (permission_id) REFERENCES auth_permission(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: auth_group_permissions auth_group_permissions_group_id_b120cbf9_fk_auth_group_id; Type: FK CONSTRAINT; Schema: public; Owner: ntuser
--

ALTER TABLE ONLY auth_group_permissions
    ADD CONSTRAINT auth_group_permissions_group_id_b120cbf9_fk_auth_group_id FOREIGN KEY (group_id) REFERENCES auth_group(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: auth_permission auth_permission_content_type_id_2f476e4b_fk_django_co; Type: FK CONSTRAINT; Schema: public; Owner: ntuser
--

ALTER TABLE ONLY auth_permission
    ADD CONSTRAINT auth_permission_content_type_id_2f476e4b_fk_django_co FOREIGN KEY (content_type_id) REFERENCES django_content_type(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: auth_user_groups auth_user_groups_group_id_97559544_fk_auth_group_id; Type: FK CONSTRAINT; Schema: public; Owner: ntuser
--

ALTER TABLE ONLY auth_user_groups
    ADD CONSTRAINT auth_user_groups_group_id_97559544_fk_auth_group_id FOREIGN KEY (group_id) REFERENCES auth_group(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: auth_user_groups auth_user_groups_user_id_6a12ed8b_fk_auth_user_id; Type: FK CONSTRAINT; Schema: public; Owner: ntuser
--

ALTER TABLE ONLY auth_user_groups
    ADD CONSTRAINT auth_user_groups_user_id_6a12ed8b_fk_auth_user_id FOREIGN KEY (user_id) REFERENCES auth_user(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: auth_user_user_permissions auth_user_user_permi_permission_id_1fbb5f2c_fk_auth_perm; Type: FK CONSTRAINT; Schema: public; Owner: ntuser
--

ALTER TABLE ONLY auth_user_user_permissions
    ADD CONSTRAINT auth_user_user_permi_permission_id_1fbb5f2c_fk_auth_perm FOREIGN KEY (permission_id) REFERENCES auth_permission(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: auth_user_user_permissions auth_user_user_permissions_user_id_a95ead1b_fk_auth_user_id; Type: FK CONSTRAINT; Schema: public; Owner: ntuser
--

ALTER TABLE ONLY auth_user_user_permissions
    ADD CONSTRAINT auth_user_user_permissions_user_id_a95ead1b_fk_auth_user_id FOREIGN KEY (user_id) REFERENCES auth_user(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: django_admin_log django_admin_log_content_type_id_c4bce8eb_fk_django_co; Type: FK CONSTRAINT; Schema: public; Owner: ntuser
--

ALTER TABLE ONLY django_admin_log
    ADD CONSTRAINT django_admin_log_content_type_id_c4bce8eb_fk_django_co FOREIGN KEY (content_type_id) REFERENCES django_content_type(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: django_admin_log django_admin_log_user_id_c564eba6_fk_auth_user_id; Type: FK CONSTRAINT; Schema: public; Owner: ntuser
--

ALTER TABLE ONLY django_admin_log
    ADD CONSTRAINT django_admin_log_user_id_c564eba6_fk_auth_user_id FOREIGN KEY (user_id) REFERENCES auth_user(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: main_progress main_progress_problem_id_id_bd0d0f11_fk_main_problem_id; Type: FK CONSTRAINT; Schema: public; Owner: ntuser
--

ALTER TABLE ONLY main_progress
    ADD CONSTRAINT main_progress_problem_id_id_bd0d0f11_fk_main_problem_id FOREIGN KEY (problem_id_id) REFERENCES main_problem(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: main_progress main_progress_student_id_id_17db4a34_fk_main_student_id; Type: FK CONSTRAINT; Schema: public; Owner: ntuser
--

ALTER TABLE ONLY main_progress
    ADD CONSTRAINT main_progress_student_id_id_17db4a34_fk_main_student_id FOREIGN KEY (student_id_id) REFERENCES main_student(id) DEFERRABLE INITIALLY DEFERRED;


--
-- PostgreSQL database dump complete
--

