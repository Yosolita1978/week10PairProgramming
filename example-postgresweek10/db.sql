--
-- PostgreSQL database dump
--

-- Dumped from database version 13.3
-- Dumped by pg_dump version 13.4

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
-- Name: merchants; Type: TABLE; Schema: public; Owner: my_test_user
--

CREATE TABLE public.merchants (
    id integer NOT NULL,
    name character varying(30),
    email character varying(30)
);


ALTER TABLE public.merchants OWNER TO my_test_user;

--
-- Name: merchants_id_seq; Type: SEQUENCE; Schema: public; Owner: my_test_user
--

CREATE SEQUENCE public.merchants_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.merchants_id_seq OWNER TO my_test_user;

--
-- Name: merchants_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: my_test_user
--

ALTER SEQUENCE public.merchants_id_seq OWNED BY public.merchants.id;


--
-- Name: merchants id; Type: DEFAULT; Schema: public; Owner: my_test_user
--

ALTER TABLE ONLY public.merchants ALTER COLUMN id SET DEFAULT nextval('public.merchants_id_seq'::regclass);


--
-- Data for Name: merchants; Type: TABLE DATA; Schema: public; Owner: my_test_user
--

COPY public.merchants (id, name, email) FROM stdin;
1	cristina	yosola@gmail.com
2	john	john@mail.com
\.


--
-- Name: merchants_id_seq; Type: SEQUENCE SET; Schema: public; Owner: my_test_user
--

SELECT pg_catalog.setval('public.merchants_id_seq', 3, true);


--
-- Name: merchants merchants_pkey; Type: CONSTRAINT; Schema: public; Owner: my_test_user
--

ALTER TABLE ONLY public.merchants
    ADD CONSTRAINT merchants_pkey PRIMARY KEY (id);


--
-- PostgreSQL database dump complete
--

