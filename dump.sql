--
-- PostgreSQL database dump
--

-- Dumped from database version 14.5 (Ubuntu 14.5-0ubuntu0.22.04.1)
-- Dumped by pg_dump version 14.5 (Ubuntu 14.5-0ubuntu0.22.04.1)

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
-- Name: sessions; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE public.sessions (
    id integer NOT NULL,
    "usersId" integer NOT NULL,
    token text NOT NULL,
    "createdAt" timestamp without time zone DEFAULT now() NOT NULL
);


--
-- Name: sessions_id_seq; Type: SEQUENCE; Schema: public; Owner: -
--

CREATE SEQUENCE public.sessions_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


--
-- Name: sessions_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: -
--

ALTER SEQUENCE public.sessions_id_seq OWNED BY public.sessions.id;


--
-- Name: shortens; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE public.shortens (
    id integer NOT NULL,
    url text NOT NULL,
    "shortUrl" text NOT NULL,
    "visitCount" integer NOT NULL,
    "createdAt" timestamp without time zone DEFAULT now() NOT NULL
);


--
-- Name: shortens_id_seq; Type: SEQUENCE; Schema: public; Owner: -
--

CREATE SEQUENCE public.shortens_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


--
-- Name: shortens_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: -
--

ALTER SEQUENCE public.shortens_id_seq OWNED BY public.shortens.id;


--
-- Name: users; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE public.users (
    id integer NOT NULL,
    name character varying(40) NOT NULL,
    email character varying(25) NOT NULL,
    password text NOT NULL,
    "createdAt" timestamp without time zone DEFAULT now() NOT NULL
);


--
-- Name: usersShortens; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE public."usersShortens" (
    id integer NOT NULL,
    "shortensId" integer NOT NULL,
    "usersId" integer NOT NULL,
    "createdAt" timestamp without time zone DEFAULT now() NOT NULL
);


--
-- Name: usersShortens_id_seq; Type: SEQUENCE; Schema: public; Owner: -
--

CREATE SEQUENCE public."usersShortens_id_seq"
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


--
-- Name: usersShortens_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: -
--

ALTER SEQUENCE public."usersShortens_id_seq" OWNED BY public."usersShortens".id;


--
-- Name: users_id_seq; Type: SEQUENCE; Schema: public; Owner: -
--

CREATE SEQUENCE public.users_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


--
-- Name: users_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: -
--

ALTER SEQUENCE public.users_id_seq OWNED BY public.users.id;


--
-- Name: sessions id; Type: DEFAULT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.sessions ALTER COLUMN id SET DEFAULT nextval('public.sessions_id_seq'::regclass);


--
-- Name: shortens id; Type: DEFAULT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.shortens ALTER COLUMN id SET DEFAULT nextval('public.shortens_id_seq'::regclass);


--
-- Name: users id; Type: DEFAULT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.users ALTER COLUMN id SET DEFAULT nextval('public.users_id_seq'::regclass);


--
-- Name: usersShortens id; Type: DEFAULT; Schema: public; Owner: -
--

ALTER TABLE ONLY public."usersShortens" ALTER COLUMN id SET DEFAULT nextval('public."usersShortens_id_seq"'::regclass);


--
-- Data for Name: sessions; Type: TABLE DATA; Schema: public; Owner: -
--



--
-- Data for Name: shortens; Type: TABLE DATA; Schema: public; Owner: -
--

INSERT INTO public.shortens VALUES (1, 'https://www.google.com/search?q=imagens&oq=image&aqs=chrome.2.69i57j35i39l2j0i433i512j46i175i199i512j69i60l3.2250j0j7&sourceid=chrome&ie=UTF-8', 's30e9ioe', 1, '2022-10-15 17:20:37.879156');
INSERT INTO public.shortens VALUES (26, 'https://www.npmjs.com/package/@fontsource/lexend-deca', 'uaplcl', 0, '2022-10-16 23:57:44.350624');
INSERT INTO public.shortens VALUES (3, 'https://www.google.com/search?q=imagens&oq=image&aqs=chrome.2.69i57j35i39l2j0i433i512j46i175i199i512j69i60l3.2250j0j7&sourceid=chrome&ie=UTF-8', '3osw52', 2, '2022-10-15 17:20:40.595394');
INSERT INTO public.shortens VALUES (27, 'https://www.npmjs.com/package/@fontsource/lexend-deca', 'epapcwch', 0, '2022-10-16 23:58:05.552938');
INSERT INTO public.shortens VALUES (28, 'https://www.npmjs.com/package/@fontsource/lexend-deca', 'hpekej', 0, '2022-10-16 23:58:20.352736');
INSERT INTO public.shortens VALUES (29, 'https://www.npmjs.com/package/@fontsource/lexend-deca', 'ksomcde', 0, '2022-10-16 23:59:40.109579');
INSERT INTO public.shortens VALUES (30, 'https://www.npmjs.com/package/@fontsource/lexend-deca', 'ctogm', 0, '2022-10-17 00:00:43.843569');
INSERT INTO public.shortens VALUES (31, 'https://www.npmjs.com/package/@fontsource/lexend-deca', 'txwspx', 0, '2022-10-17 00:03:17.722641');
INSERT INTO public.shortens VALUES (32, 'https://bootcampra.notion.site/Projeto-Shortly-API-21533489cd5042058524caf3429b62e4', '50A3t0i', 0, '2022-10-17 00:26:52.127711');
INSERT INTO public.shortens VALUES (33, 'https://www.npmjs.com/package/@fontsource/', 'gsassgmo', 0, '2022-10-17 00:27:23.788009');
INSERT INTO public.shortens VALUES (14, 'https://www.google.com/search?q=imagens&oq=image&aqs=chrome.2.69i57j35i39l2j0i433i512j46i175i199i512j69i60l3.2250j0j7&sourceid=chrome&ie=UTF-8', '3jjiep', 0, '2022-10-16 00:08:18.676293');
INSERT INTO public.shortens VALUES (17, 'https://bootcampra.notion.site/Projeto-Shortly-API-21533489cd5042058524caf3429b62e4', '4ien89', 0, '2022-10-16 00:09:16.399187');
INSERT INTO public.shortens VALUES (34, 'https://bootcampra.notion.site/Projeto-Shortly-API-21533489cd5042058524caf3429b62e4', 'Pepac59', 0, '2022-10-17 00:36:43.862647');
INSERT INTO public.shortens VALUES (35, 'https://bootcampra.notion.site/Projeto-Shortly-API-21533489cd5042058524caf3429b62e4', 'tdt2h9a', 0, '2022-10-17 00:37:56.887007');
INSERT INTO public.shortens VALUES (36, 'https://bootcampra.notion.site/Projeto-Shortly-API-21533489cd5042058524caf3429b62e4', 'P0pA0', 0, '2022-10-17 00:39:31.709078');
INSERT INTO public.shortens VALUES (18, 'https://bootcampra.notion.site/Projeto-Shortly-API-21533489cd5042058524caf3429b62e4', '025834h', 4, '2022-10-16 00:09:17.084283');
INSERT INTO public.shortens VALUES (19, 'https://bootcampra.notion.site/Projeto-Shortly-API-21533489cd5042058524caf3429b62e4', 'tcSns20A', 3, '2022-10-16 00:10:48.106439');
INSERT INTO public.shortens VALUES (20, 'https://www.npmjs.com/package/@fontsource/lexend-deca', 'ecumeap', 0, '2022-10-16 23:39:37.840796');
INSERT INTO public.shortens VALUES (21, 'https://www.npmjs.com/package/@fontsource/lexend-deca', 'cwnepcpw', 0, '2022-10-16 23:45:30.329335');
INSERT INTO public.shortens VALUES (22, 'https://www.npmjs.com/package/@fontsource/lexend-deca', 'toagswde', 0, '2022-10-16 23:46:39.203298');
INSERT INTO public.shortens VALUES (25, 'https://www.npmjs.com/package/@fontsource/', 'ppaammmw', 0, '2022-10-16 23:56:30.847393');
INSERT INTO public.shortens VALUES (2, 'https://www.google.com/search?q=imagens&oq=image&aqs=chrome.2.69i57j35i39l2j0i433i512j46i175i199i512j69i60l3.2250j0j7&sourceid=chrome&ie=UTF-8', 'iitijji', 3, '2022-10-15 17:20:39.621202');
INSERT INTO public.shortens VALUES (5, 'https://www.google.com/search?q=imagens&oq=image&aqs=chrome.2.69i57j35i39l2j0i433i512j46i175i199i512j69i60l3.2250j0j7&sourceid=chrome&ie=UTF-8', 'iw5s2', 2, '2022-10-15 17:20:42.107835');
INSERT INTO public.shortens VALUES (12, 'https://www.google.com/search?q=imagens&oq=image&aqs=chrome.2.69i57j35i39l2j0i433i512j46i175i199i512j69i60l3.2250j0j7&sourceid=chrome&ie=UTF-8', 'w9scrai', 4, '2022-10-15 17:21:37.413117');
INSERT INTO public.shortens VALUES (7, 'https://www.google.com/search?q=imagens&oq=image&aqs=chrome.2.69i57j35i39l2j0i433i512j46i175i199i512j69i60l3.2250j0j7&sourceid=chrome&ie=UTF-8', '11le2e', 1, '2022-10-15 17:20:43.869579');
INSERT INTO public.shortens VALUES (48, 'https://dashboard.heroku.com/apps/shortly007/deploy/github', 'l0day7at', 3, '2022-10-17 04:04:25.589922');
INSERT INTO public.shortens VALUES (49, 'https://dashboard.heroku.com/apps/shortly007/resources', 'rrsrph00', 0, '2022-10-17 10:46:56.050786');
INSERT INTO public.shortens VALUES (51, 'https://dashboard.heroku.com/apps/shortly007/resources', 'lasyroac', 0, '2022-10-17 10:53:36.282731');
INSERT INTO public.shortens VALUES (50, 'https://dashboard.heroku.com/apps/shortly007/resources', 'praerer', 1, '2022-10-17 10:51:05.658116');
INSERT INTO public.shortens VALUES (6, 'https://www.google.com/search?q=imagens&oq=image&aqs=chrome.2.69i57j35i39l2j0i433i512j46i175i199i512j69i60l3.2250j0j7&sourceid=chrome&ie=UTF-8', 'Ui7omU89', 2, '2022-10-15 17:20:42.968156');
INSERT INTO public.shortens VALUES (13, 'https://www.google.com/search?q=imagens&oq=image&aqs=chrome.2.69i57j35i39l2j0i433i512j46i175i199i512j69i60l3.2250j0j7&sourceid=chrome&ie=UTF-8', 'eiee', 1, '2022-10-15 17:21:38.173098');
INSERT INTO public.shortens VALUES (4, 'https://www.google.com/search?q=imagens&oq=image&aqs=chrome.2.69i57j35i39l2j0i433i512j46i175i199i512j69i60l3.2250j0j7&sourceid=chrome&ie=UTF-8', 'ojj1epj', 9, '2022-10-15 17:20:41.341029');
INSERT INTO public.shortens VALUES (8, 'https://www.google.com/search?q=imagens&oq=image&aqs=chrome.2.69i57j35i39l2j0i433i512j46i175i199i512j69i60l3.2250j0j7&sourceid=chrome&ie=UTF-8', 'n60clro', 2, '2022-10-15 17:21:35.81416');
INSERT INTO public.shortens VALUES (23, 'https://www.npmjs.com/package/@fontsource/lexend-deca', 'aetpkwo', 2, '2022-10-16 23:48:06.35735');
INSERT INTO public.shortens VALUES (24, 'https://www.npmjs.com/package/@fontsource/lexend-deca', 'mjepc', 1, '2022-10-16 23:50:12.913783');
INSERT INTO public.shortens VALUES (9, 'https://www.google.com/search?q=imagens&oq=image&aqs=chrome.2.69i57j35i39l2j0i433i512j46i175i199i512j69i60l3.2250j0j7&sourceid=chrome&ie=UTF-8', 'cghw1mhd', 1, '2022-10-15 17:21:36.245485');
INSERT INTO public.shortens VALUES (11, 'https://www.google.com/search?q=imagens&oq=image&aqs=chrome.2.69i57j35i39l2j0i433i512j46i175i199i512j69i60l3.2250j0j7&sourceid=chrome&ie=UTF-8', '2iji', 1, '2022-10-15 17:21:37.025278');
INSERT INTO public.shortens VALUES (52, 'https://www.devmedia.com.br/date-javascript-trabalhando-com-data-e-hora-em-js/37222', 'ch2pd2', 9, '2022-10-17 13:27:32.224703');


--
-- Data for Name: users; Type: TABLE DATA; Schema: public; Owner: -
--

INSERT INTO public.users VALUES (1, 'dudu', 'dudu@driven.com.br', '$2b$10$nargKZ.mHcgle9tzuAALKefHdC1MdUYIWHlnQoavkNpt46XjViNTC', '2022-10-15 17:20:00.112853');
INSERT INTO public.users VALUES (2, 'dudu', 'uu@driven.com.br', '$2b$10$dQUaT1OpEFVfHBNidGRy8OOKgoe4O85p0xlxv8O3BJQpvjghW4LES', '2022-10-15 17:21:10.212267');
INSERT INTO public.users VALUES (3, 'EDU', 'Duu@driven.com.br', '$2b$10$2oC3R8uTyzKfqsEF29UfPuu5BxRYlQTwI4xhzdU3SvcyEURqUOGZO', '2022-10-16 00:06:43.385658');
INSERT INTO public.users VALUES (4, 'EDU', 'Dudsu@driven.com.br', '$2b$10$dgBWzrLIJoNObShVKRlnRO0p2KHE77M7BWTFk2mYR0PUaXtJaFBde', '2022-10-16 02:38:27.145095');
INSERT INTO public.users VALUES (5, 'dede', 'Duduuu@gmail.com', '$2b$10$nFkmHurvzr1/ogR7a64KZ.cXvkTAyHw2jOGHrUSQbOXUSwSmhH/.a', '2022-10-16 10:41:52.379695');
INSERT INTO public.users VALUES (6, 'dede', 'Du@gmail.com', '$2b$10$FPejTk0bhlVKle1.qIs5FeGzMjC33ICOFF8hdhCIGutuKVOW6dy2u', '2022-10-16 11:35:20.446686');
INSERT INTO public.users VALUES (7, 'dede', 'Duss@gmail.com', '$2b$10$FrYHxt4S1FxRjHXGGkTefOfq4oHRSFiNfb1nlNlickE2o6l55tEu6', '2022-10-16 11:37:58.339627');
INSERT INTO public.users VALUES (8, 'dede', 'dudu@mail.com', '$2b$10$Ra2oxZO/30jeydL0ukwNp.AG/UUkaZXlkaVI8VkGlW6wUvYUboqGu', '2022-10-16 21:54:41.62087');
INSERT INTO public.users VALUES (9, 'oi', 'e@gmail.comoassim', '$2b$10$7pgmGmCGoYCeEPZiuB3f6OoXaA4bmnsIx.UnRjXHs0hFk0oo.1pmS', '2022-10-17 03:57:55.725275');
INSERT INTO public.users VALUES (10, 'que', 'ds@gmail.com', '$2b$10$qjf5nHgyygJ2Iywf2ryIvO7vLHEJzprtKNYS3SPoTlV8dDZeCd15a', '2022-10-17 10:53:03.474905');


--
-- Data for Name: usersShortens; Type: TABLE DATA; Schema: public; Owner: -
--

INSERT INTO public."usersShortens" VALUES (1, 1, 1, '2022-10-15 17:20:37.88765');
INSERT INTO public."usersShortens" VALUES (2, 2, 1, '2022-10-15 17:20:39.625556');
INSERT INTO public."usersShortens" VALUES (3, 3, 1, '2022-10-15 17:20:40.601229');
INSERT INTO public."usersShortens" VALUES (4, 4, 1, '2022-10-15 17:20:41.345104');
INSERT INTO public."usersShortens" VALUES (5, 5, 1, '2022-10-15 17:20:42.114039');
INSERT INTO public."usersShortens" VALUES (6, 6, 1, '2022-10-15 17:20:42.97356');
INSERT INTO public."usersShortens" VALUES (7, 7, 1, '2022-10-15 17:20:43.875619');
INSERT INTO public."usersShortens" VALUES (8, 8, 2, '2022-10-15 17:21:35.818524');
INSERT INTO public."usersShortens" VALUES (9, 9, 2, '2022-10-15 17:21:36.249518');
INSERT INTO public."usersShortens" VALUES (11, 11, 2, '2022-10-15 17:21:37.029768');
INSERT INTO public."usersShortens" VALUES (12, 12, 2, '2022-10-15 17:21:37.418133');
INSERT INTO public."usersShortens" VALUES (13, 13, 2, '2022-10-15 17:21:38.178311');
INSERT INTO public."usersShortens" VALUES (14, 14, 2, '2022-10-16 00:08:18.681293');
INSERT INTO public."usersShortens" VALUES (17, 17, 3, '2022-10-16 00:09:16.403338');
INSERT INTO public."usersShortens" VALUES (18, 18, 3, '2022-10-16 00:09:17.096415');
INSERT INTO public."usersShortens" VALUES (19, 19, 3, '2022-10-16 00:10:48.111008');
INSERT INTO public."usersShortens" VALUES (48, 48, 9, '2022-10-17 04:04:25.59538');
INSERT INTO public."usersShortens" VALUES (49, 49, 9, '2022-10-17 10:46:56.056389');
INSERT INTO public."usersShortens" VALUES (50, 50, 9, '2022-10-17 10:51:05.663893');
INSERT INTO public."usersShortens" VALUES (51, 51, 10, '2022-10-17 10:53:36.288288');
INSERT INTO public."usersShortens" VALUES (52, 52, 8, '2022-10-17 13:27:32.228916');


--
-- Name: sessions_id_seq; Type: SEQUENCE SET; Schema: public; Owner: -
--

SELECT pg_catalog.setval('public.sessions_id_seq', 48, true);


--
-- Name: shortens_id_seq; Type: SEQUENCE SET; Schema: public; Owner: -
--

SELECT pg_catalog.setval('public.shortens_id_seq', 52, true);


--
-- Name: usersShortens_id_seq; Type: SEQUENCE SET; Schema: public; Owner: -
--

SELECT pg_catalog.setval('public."usersShortens_id_seq"', 52, true);


--
-- Name: users_id_seq; Type: SEQUENCE SET; Schema: public; Owner: -
--

SELECT pg_catalog.setval('public.users_id_seq', 10, true);


--
-- Name: sessions sessions_pkey; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.sessions
    ADD CONSTRAINT sessions_pkey PRIMARY KEY (id);


--
-- Name: shortens shortens_pkey; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.shortens
    ADD CONSTRAINT shortens_pkey PRIMARY KEY (id);


--
-- Name: usersShortens usersShortens_pkey; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public."usersShortens"
    ADD CONSTRAINT "usersShortens_pkey" PRIMARY KEY (id);


--
-- Name: users users_email_key; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.users
    ADD CONSTRAINT users_email_key UNIQUE (email);


--
-- Name: users users_pkey; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.users
    ADD CONSTRAINT users_pkey PRIMARY KEY (id);


--
-- Name: sessions sessions_usersId_fkey; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.sessions
    ADD CONSTRAINT "sessions_usersId_fkey" FOREIGN KEY ("usersId") REFERENCES public.users(id);


--
-- Name: usersShortens usersShortens_shortensId_fkey; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public."usersShortens"
    ADD CONSTRAINT "usersShortens_shortensId_fkey" FOREIGN KEY ("shortensId") REFERENCES public.shortens(id);


--
-- Name: usersShortens usersShortens_usersId_fkey; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public."usersShortens"
    ADD CONSTRAINT "usersShortens_usersId_fkey" FOREIGN KEY ("usersId") REFERENCES public.users(id);


--
-- PostgreSQL database dump complete
--

