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

INSERT INTO public.sessions VALUES (1, 1, '5874d907-b4ac-4798-9544-e9832569a454', '2022-10-15 17:20:10.020378');
INSERT INTO public.sessions VALUES (2, 2, 'ce4b9bc7-ff51-4fee-bf7d-f6c310feefad', '2022-10-15 17:21:17.188245');
INSERT INTO public.sessions VALUES (3, 3, '260ed11d-d0a5-42ca-aded-1ea5a152ea25', '2022-10-16 00:06:54.366594');
INSERT INTO public.sessions VALUES (4, 8, 'b3c4a16a-89cb-41f9-a026-5cd8df091a60', '2022-10-16 21:55:05.42998');
INSERT INTO public.sessions VALUES (5, 8, '55e856e7-4ad2-4888-94fe-9940c6f30b10', '2022-10-16 21:55:58.517806');
INSERT INTO public.sessions VALUES (6, 8, 'cf48cf0f-b85f-4922-9c0a-bc17f78019e2', '2022-10-16 22:41:46.981633');
INSERT INTO public.sessions VALUES (7, 8, 'a9500204-4586-4211-8cd9-5ecc1a80fb74', '2022-10-16 23:02:36.921916');
INSERT INTO public.sessions VALUES (8, 8, '87fe6ecc-b907-4893-982a-b4f7816ab745', '2022-10-16 23:03:57.722253');
INSERT INTO public.sessions VALUES (9, 8, '2afab293-0114-43ff-a930-0018b6ed68e9', '2022-10-16 23:10:01.529568');
INSERT INTO public.sessions VALUES (10, 8, '462724d2-27eb-486a-91c9-3fb9d1f44c11', '2022-10-16 23:39:18.189968');
INSERT INTO public.sessions VALUES (11, 8, 'be8137db-b187-41a7-bfe4-7f76703081cc', '2022-10-16 23:45:15.278015');
INSERT INTO public.sessions VALUES (12, 8, 'd8eaa4fa-8934-415d-a82e-1244b31988d2', '2022-10-16 23:46:32.903371');
INSERT INTO public.sessions VALUES (13, 8, 'c208d8ac-6ff1-4b57-a1c9-8ad70e98dbe6', '2022-10-16 23:47:59.021807');
INSERT INTO public.sessions VALUES (14, 8, '139162bd-b058-48f2-874a-2196331fec62', '2022-10-16 23:50:05.949981');
INSERT INTO public.sessions VALUES (15, 8, 'dd5788f2-201e-4c0f-a8a3-f6870b8263a9', '2022-10-16 23:54:50.615706');
INSERT INTO public.sessions VALUES (16, 8, '9c318434-967d-4ddf-8907-752f067b56a6', '2022-10-16 23:57:31.429956');
INSERT INTO public.sessions VALUES (17, 8, 'dadb5e42-1ef3-4617-a3b2-93fd9cee5ee7', '2022-10-17 00:50:17.727678');
INSERT INTO public.sessions VALUES (18, 8, 'a8d0f27c-ffc5-4695-b268-59455924cd07', '2022-10-17 02:26:48.294116');
INSERT INTO public.sessions VALUES (19, 8, '0452a61b-3a0d-4f46-9d13-2622adf289b3', '2022-10-17 03:19:51.689458');
INSERT INTO public.sessions VALUES (20, 8, 'be4b1611-230b-47ce-8fb3-2d20bb2403dc', '2022-10-17 03:23:21.151092');
INSERT INTO public.sessions VALUES (21, 9, 'c8fe8f1a-4ccc-4d11-8215-db9d5369bd8d', '2022-10-17 03:58:04.608478');
INSERT INTO public.sessions VALUES (22, 9, '9da56f80-0c63-42c0-ae83-92892dd8dfc5', '2022-10-17 04:00:03.099784');
INSERT INTO public.sessions VALUES (23, 9, '4bb5f2a1-1d57-4f01-8b2d-d8396e3b2fbd', '2022-10-17 04:01:20.389144');
INSERT INTO public.sessions VALUES (24, 9, '5ddae118-c451-4c28-900f-db26f167294b', '2022-10-17 04:01:58.641054');
INSERT INTO public.sessions VALUES (25, 9, '8fa95581-6be0-4f96-ab7e-c5bd2ef7f5af', '2022-10-17 04:04:05.061133');
INSERT INTO public.sessions VALUES (26, 9, 'f859c337-da1d-427c-8157-3c6d59d06f7d', '2022-10-17 10:46:43.568367');
INSERT INTO public.sessions VALUES (27, 9, '8fe47fb8-0ade-4df5-b943-441c6789848b', '2022-10-17 10:50:58.694286');
INSERT INTO public.sessions VALUES (28, 10, 'ab2c495f-c148-4f65-acce-f695fc42cb06', '2022-10-17 10:53:26.01608');


--
-- Data for Name: shortens; Type: TABLE DATA; Schema: public; Owner: -
--

INSERT INTO public.shortens VALUES (2, 'https://www.google.com/search?q=imagens&oq=image&aqs=chrome.2.69i57j35i39l2j0i433i512j46i175i199i512j69i60l3.2250j0j7&sourceid=chrome&ie=UTF-8', 'iitijji', 0, '2022-10-15 17:20:39.621202');
INSERT INTO public.shortens VALUES (5, 'https://www.google.com/search?q=imagens&oq=image&aqs=chrome.2.69i57j35i39l2j0i433i512j46i175i199i512j69i60l3.2250j0j7&sourceid=chrome&ie=UTF-8', 'iw5s2', 0, '2022-10-15 17:20:42.107835');
INSERT INTO public.shortens VALUES (6, 'https://www.google.com/search?q=imagens&oq=image&aqs=chrome.2.69i57j35i39l2j0i433i512j46i175i199i512j69i60l3.2250j0j7&sourceid=chrome&ie=UTF-8', 'Ui7omU89', 0, '2022-10-15 17:20:42.968156');
INSERT INTO public.shortens VALUES (7, 'https://www.google.com/search?q=imagens&oq=image&aqs=chrome.2.69i57j35i39l2j0i433i512j46i175i199i512j69i60l3.2250j0j7&sourceid=chrome&ie=UTF-8', '11le2e', 0, '2022-10-15 17:20:43.869579');
INSERT INTO public.shortens VALUES (8, 'https://www.google.com/search?q=imagens&oq=image&aqs=chrome.2.69i57j35i39l2j0i433i512j46i175i199i512j69i60l3.2250j0j7&sourceid=chrome&ie=UTF-8', 'n60clro', 0, '2022-10-15 17:21:35.81416');
INSERT INTO public.shortens VALUES (9, 'https://www.google.com/search?q=imagens&oq=image&aqs=chrome.2.69i57j35i39l2j0i433i512j46i175i199i512j69i60l3.2250j0j7&sourceid=chrome&ie=UTF-8', 'cghw1mhd', 0, '2022-10-15 17:21:36.245485');
INSERT INTO public.shortens VALUES (11, 'https://www.google.com/search?q=imagens&oq=image&aqs=chrome.2.69i57j35i39l2j0i433i512j46i175i199i512j69i60l3.2250j0j7&sourceid=chrome&ie=UTF-8', '2iji', 0, '2022-10-15 17:21:37.025278');
INSERT INTO public.shortens VALUES (12, 'https://www.google.com/search?q=imagens&oq=image&aqs=chrome.2.69i57j35i39l2j0i433i512j46i175i199i512j69i60l3.2250j0j7&sourceid=chrome&ie=UTF-8', 'w9scrai', 0, '2022-10-15 17:21:37.413117');
INSERT INTO public.shortens VALUES (13, 'https://www.google.com/search?q=imagens&oq=image&aqs=chrome.2.69i57j35i39l2j0i433i512j46i175i199i512j69i60l3.2250j0j7&sourceid=chrome&ie=UTF-8', 'eiee', 0, '2022-10-15 17:21:38.173098');
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
INSERT INTO public.shortens VALUES (4, 'https://www.google.com/search?q=imagens&oq=image&aqs=chrome.2.69i57j35i39l2j0i433i512j46i175i199i512j69i60l3.2250j0j7&sourceid=chrome&ie=UTF-8', 'ojj1epj', 8, '2022-10-15 17:20:41.341029');
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
INSERT INTO public.shortens VALUES (23, 'https://www.npmjs.com/package/@fontsource/lexend-deca', 'aetpkwo', 0, '2022-10-16 23:48:06.35735');
INSERT INTO public.shortens VALUES (24, 'https://www.npmjs.com/package/@fontsource/lexend-deca', 'mjepc', 0, '2022-10-16 23:50:12.913783');
INSERT INTO public.shortens VALUES (25, 'https://www.npmjs.com/package/@fontsource/', 'ppaammmw', 0, '2022-10-16 23:56:30.847393');
INSERT INTO public.shortens VALUES (46, 'https://www.google.com/search?q=tradutor&oq=trz&aqs=chrome.1.69i57j0i10i512j46i175i199i512j0i10i512j46i175i199i512j0i512j0i10i512j46i10i433i512j0i10i433i512j0i10i512.2564j0j7&sourceid=chrome&ie=UTF-8', 'rujhih07', 5, '2022-10-17 02:38:48.253143');
INSERT INTO public.shortens VALUES (43, 'https://github.com/EduardoVSR1995/projeto16-shortly-front', 'ouihhh', 43, '2022-10-17 02:05:45.399506');
INSERT INTO public.shortens VALUES (48, 'https://dashboard.heroku.com/apps/shortly007/deploy/github', 'l0day7at', 3, '2022-10-17 04:04:25.589922');
INSERT INTO public.shortens VALUES (49, 'https://dashboard.heroku.com/apps/shortly007/resources', 'rrsrph00', 0, '2022-10-17 10:46:56.050786');
INSERT INTO public.shortens VALUES (50, 'https://dashboard.heroku.com/apps/shortly007/resources', 'praerer', 0, '2022-10-17 10:51:05.658116');
INSERT INTO public.shortens VALUES (51, 'https://dashboard.heroku.com/apps/shortly007/resources', 'lasyroac', 0, '2022-10-17 10:53:36.282731');
INSERT INTO public.shortens VALUES (44, 'https://github.com/EduardoVSR1995/projeto16-shortly-front/tree/main/', 'oua9tb', 5, '2022-10-17 02:06:54.661279');


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
INSERT INTO public."usersShortens" VALUES (43, 43, 8, '2022-10-17 02:05:45.404722');
INSERT INTO public."usersShortens" VALUES (44, 44, 8, '2022-10-17 02:06:54.665549');
INSERT INTO public."usersShortens" VALUES (46, 46, 8, '2022-10-17 02:38:48.260913');
INSERT INTO public."usersShortens" VALUES (48, 48, 9, '2022-10-17 04:04:25.59538');
INSERT INTO public."usersShortens" VALUES (49, 49, 9, '2022-10-17 10:46:56.056389');
INSERT INTO public."usersShortens" VALUES (50, 50, 9, '2022-10-17 10:51:05.663893');
INSERT INTO public."usersShortens" VALUES (51, 51, 10, '2022-10-17 10:53:36.288288');


--
-- Name: sessions_id_seq; Type: SEQUENCE SET; Schema: public; Owner: -
--

SELECT pg_catalog.setval('public.sessions_id_seq', 28, true);


--
-- Name: shortens_id_seq; Type: SEQUENCE SET; Schema: public; Owner: -
--

SELECT pg_catalog.setval('public.shortens_id_seq', 51, true);


--
-- Name: usersShortens_id_seq; Type: SEQUENCE SET; Schema: public; Owner: -
--

SELECT pg_catalog.setval('public."usersShortens_id_seq"', 51, true);


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

