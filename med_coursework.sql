--
-- PostgreSQL database dump
--

-- Dumped from database version 10.12 (Ubuntu 10.12-2.pgdg18.04+1)
-- Dumped by pg_dump version 10.12 (Ubuntu 10.12-2.pgdg18.04+1)

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

--
-- Name: plpgsql; Type: EXTENSION; Schema: -; Owner: 
--

CREATE EXTENSION IF NOT EXISTS plpgsql WITH SCHEMA pg_catalog;


--
-- Name: EXTENSION plpgsql; Type: COMMENT; Schema: -; Owner: 
--

COMMENT ON EXTENSION plpgsql IS 'PL/pgSQL procedural language';


SET default_tablespace = '';

SET default_with_oids = false;

--
-- Name: diseases; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.diseases (
    disease text NOT NULL,
    year smallint NOT NULL,
    district text NOT NULL,
    abs integer,
    rel integer,
    abs_child integer,
    rel_child integer,
    predicted boolean
);


ALTER TABLE public.diseases OWNER TO postgres;

--
-- Name: federal_districts; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.federal_districts (
    district text NOT NULL
);


ALTER TABLE public.federal_districts OWNER TO postgres;

--
-- Data for Name: diseases; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.diseases (disease, year, district, abs, rel, abs_child, rel_child, predicted) FROM stdin;
Туберкулез	2013	российская федерация	90427	63	\N	\N	f
Туберкулез	2014	российская федерация	86953	59	\N	\N	f
Туберкулез	2013	центральный федеральный округ	16027	41	\N	\N	f
Туберкулез	2014	центральный федеральный округ	15178	39	\N	\N	f
Туберкулез	2013	северо-западный федеральный округ	6521	47	\N	\N	f
Туберкулез	2014	северо-западный федеральный округ	6330	46	\N	\N	f
Туберкулез	2013	южный федеральный округ	8735	63	\N	\N	f
Туберкулез	2014	южный федеральный округ	8022	57	\N	\N	f
Туберкулез	2013	северо-кавказский федеральный округ	4083	43	\N	\N	f
Туберкулез	2014	северо-кавказский федеральный округ	3731	39	\N	\N	f
Туберкулез	2013	приволжский федеральный округ	18246	61	\N	\N	f
Туберкулез	2014	приволжский федеральный округ	17358	58	\N	\N	f
Туберкулез	2013	уральский федеральный округ	9416	77	\N	\N	f
Туберкулез	2014	уральский федеральный округ	9203	75	\N	\N	f
Туберкулез	2013	сибирский федеральный округ	20186	105	\N	\N	f
Туберкулез	2014	сибирский федеральный округ	19058	99	\N	\N	f
Туберкулез	2013	дальневосточный федеральный округ	7206	116	\N	\N	f
Туберкулез	2014	дальневосточный федеральный округ	6410	103	\N	\N	f
Туберкулез	2013	гл. мед. упр. управления делами президента рф	7	\N	\N	\N	f
Туберкулез	2014	гл. мед. упр. управления делами президента рф	3	\N	\N	\N	f
Туберкулез	2015	российская федерация	84515	58	\N	\N	f
Туберкулез	2016	российская федерация	78121	53	\N	\N	f
Туберкулез	2015	центральный федеральный округ	14700	38	\N	\N	f
Туберкулез	2016	центральный федеральный округ	13375	34	\N	\N	f
Туберкулез	2015	северо-западный федеральный округ	5642	41	\N	\N	f
Туберкулез	2016	северо-западный федеральный округ	5144	37	\N	\N	f
Туберкулез	2015	южный федеральный округ	7616	54	\N	\N	f
Туберкулез	2016	южный федеральный округ	8336	51	\N	\N	f
Туберкулез	2015	северо-кавказский федеральный округ	3481	36	\N	\N	f
Туберкулез	2016	северо-кавказский федеральный округ	3285	34	\N	\N	f
Туберкулез	2015	приволжский федеральный округ	16623	56	\N	\N	f
Туберкулез	2016	приволжский федеральный округ	15572	53	\N	\N	f
Туберкулез	2015	уральский федеральный округ	9629	78	\N	\N	f
Туберкулез	2016	уральский федеральный округ	8876	72	\N	\N	f
Туберкулез	2015	сибирский федеральный округ	18851	98	\N	\N	f
Туберкулез	2016	сибирский федеральный округ	17671	91	\N	\N	f
Туберкулез	2015	дальневосточный федеральный округ	6334	102	\N	\N	f
Туберкулез	2016	дальневосточный федеральный округ	5860	95	\N	\N	f
Туберкулез	2017	российская федерация	70861	48	\N	\N	f
Туберкулез	2018	российская федерация	65234	44	\N	\N	f
Туберкулез	2017	центральный федеральный округ	12158	31	\N	\N	f
Туберкулез	2018	центральный федеральный округ	10952	28	\N	\N	f
Туберкулез	2017	северо-западный федеральный округ	4356	31	\N	\N	f
Туберкулез	2018	северо-западный федеральный округ	4000	29	\N	\N	f
Туберкулез	2017	южный федеральный округ	7964	49	\N	\N	f
Туберкулез	2018	южный федеральный округ	7106	43	\N	\N	f
Туберкулез	2017	северо-кавказский федеральный округ	3081	31	\N	\N	f
Туберкулез	2018	северо-кавказский федеральный округ	2948	30	\N	\N	f
Туберкулез	2017	приволжский федеральный округ	14092	48	\N	\N	f
Туберкулез	2018	приволжский федеральный округ	12706	43	\N	\N	f
Туберкулез	2017	уральский федеральный округ	7770	63	\N	\N	f
Туберкулез	2018	уральский федеральный округ	7616	62	\N	\N	f
Туберкулез	2017	сибирский федеральный округ	16119	84	\N	\N	f
Туберкулез	2018	сибирский федеральный округ	13825	80	\N	\N	f
Туберкулез	2017	дальневосточный федеральный округ	5321	86	\N	\N	f
Туберкулез	2018	дальневосточный федеральный округ	6081	74	\N	\N	f
Артериальная Гипертензия	2013	российская федерация	568387	396	\N	\N	f
Артериальная Гипертензия	2014	российская федерация	675416	462	\N	\N	f
Артериальная Гипертензия	2013	северо-кавказский федеральный округ	47817	500	\N	\N	f
Артериальная Гипертензия	2014	северо-кавказский федеральный округ	41171	426	\N	\N	f
Артериальная Гипертензия	2013	приволжский федеральный округ	124110	417	\N	\N	f
Артериальная Гипертензия	2014	приволжский федеральный округ	176364	594	\N	\N	f
Артериальная Гипертензия	2013	сибирский федеральный округ	119103	618	\N	\N	f
ВИЧ	2016	сибирский федеральный округ	23192	120	402	10	f
Артериальная Гипертензия	2014	сибирский федеральный округ	133882	693	\N	\N	f
Артериальная Гипертензия	2015	российская федерация	926568	633	\N	\N	f
Артериальная Гипертензия	2016	российская федерация	988959	675	\N	\N	f
Артериальная Гипертензия	2015	северо-кавказский федеральный округ	46478	480	\N	\N	f
Артериальная Гипертензия	2016	северо-кавказский федеральный округ	45546	469	\N	\N	f
Артериальная Гипертензия	2015	приволжский федеральный округ	255993	862	\N	\N	f
Артериальная Гипертензия	2016	приволжский федеральный округ	269615	909	\N	\N	f
Артериальная Гипертензия	2015	сибирский федеральный округ	145601	754	\N	\N	f
Артериальная Гипертензия	2016	сибирский федеральный округ	154145	798	\N	\N	f
Артериальная Гипертензия	2015	гл. мед. упр. управления делами президента рф	1707	\N	\N	\N	f
Артериальная Гипертензия	2016	гл. мед. упр. управления делами президента рф	1334	\N	\N	\N	f
Артериальная Гипертензия	2017	российская федерация	1028997	701	\N	\N	f
Артериальная Гипертензия	2017	северо-кавказский федеральный округ	34835	356	\N	\N	f
Артериальная Гипертензия	2017	приволжский федеральный округ	280041	945	\N	\N	f
Артериальная Гипертензия	2017	сибирский федеральный округ	150780	780	\N	\N	f
Артериальная Гипертензия	2017	дальневосточный федеральный округ	21386	346	\N	\N	f
Артериальная Гипертензия	2017	гл. мед. упр. управления делами президента рф	1069	\N	\N	\N	f
Новообразования	2013	российская федерация	1628870	1135	\N	\N	f
Новообразования	2014	российская федерация	1693096	1158	\N	\N	f
Новообразования	2013	северо-кавказский федеральный округ	56440	590	\N	\N	f
Новообразования	2014	северо-кавказский федеральный округ	55043	570	\N	\N	f
Новообразования	2013	приволжский федеральный округ	370637	1246	\N	\N	f
Новообразования	2014	приволжский федеральный округ	388208	1306	\N	\N	f
Новообразования	2013	сибирский федеральный округ	260946	1353	\N	\N	f
Новообразования	2014	сибирский федеральный округ	267552	1385	\N	\N	f
Новообразования	2015	российская федерация	1671596	1142	\N	\N	f
Новообразования	2016	российская федерация	1668133	1138	\N	\N	f
Новообразования	2015	северо-кавказский федеральный округ	57774	596	\N	\N	f
Новообразования	2016	северо-кавказский федеральный округ	59638	614	\N	\N	f
Новообразования	2015	приволжский федеральный округ	387912	1306	\N	\N	f
Новообразования	2016	приволжский федеральный округ	352757	1189	\N	\N	f
Новообразования	2015	сибирский федеральный округ	263614	1365	\N	\N	f
Новообразования	2016	сибирский федеральный округ	259579	1343	\N	\N	f
Новообразования	2015	гл. мед. упр. управления делами президента рф	14023	\N	\N	\N	f
Новообразования	2016	гл. мед. упр. управления делами президента рф	13991	\N	\N	\N	f
Новообразования	2017	российская федерация	1674088	1140	\N	\N	f
Новообразования	2017	северо-кавказский федеральный округ	57357	587	\N	\N	f
Новообразования	2017	приволжский федеральный округ	354141	1195	\N	\N	f
Новообразования	2017	сибирский федеральный округ	263100	1361	\N	\N	f
Новообразования	2017	дальневосточный федеральный округ	68557	1109	\N	\N	f
Новообразования	2017	гл. мед. упр. управления делами президента рф	13871	\N	\N	\N	f
Сахарный диабет	2013	российская федерация	339450	237	\N	\N	f
Сахарный диабет	2014	российская федерация	343138	235	\N	\N	f
Сахарный диабет	2013	северо-кавказский федеральный округ	14928	156	\N	\N	f
Сахарный диабет	2014	северо-кавказский федеральный округ	13880	144	\N	\N	f
Сахарный диабет	2013	приволжский федеральный округ	75306	253	\N	\N	f
Сахарный диабет	2014	приволжский федеральный округ	75403	254	\N	\N	f
Сахарный диабет	2013	сибирский федеральный округ	43266	224	\N	\N	f
Сахарный диабет	2014	сибирский федеральный округ	44110	228	\N	\N	f
Сахарный диабет	2015	российская федерация	352221	241	\N	\N	f
Сахарный диабет	2016	российская федерация	339362	232	\N	\N	f
Сахарный диабет	2015	северо-кавказский федеральный округ	14488	150	\N	\N	f
Сахарный диабет	2016	северо-кавказский федеральный округ	14719	152	\N	\N	f
Сахарный диабет	2015	приволжский федеральный округ	76310	257	\N	\N	f
Сахарный диабет	2016	приволжский федеральный округ	74679	252	\N	\N	f
Сахарный диабет	2015	сибирский федеральный округ	44501	230	\N	\N	f
Сахарный диабет	2016	сибирский федеральный округ	42521	220	\N	\N	f
Сахарный диабет	2015	гл. мед. упр. управления делами президента рф	461	\N	\N	\N	f
Сахарный диабет	2016	гл. мед. упр. управления делами президента рф	559	\N	\N	\N	f
Сахарный диабет	2017	российская федерация	363533	248	\N	\N	f
Сахарный диабет	2017	северо-кавказский федеральный округ	14059	144	\N	\N	f
Сахарный диабет	2017	приволжский федеральный округ	79327	268	\N	\N	f
Сахарный диабет	2017	сибирский федеральный округ	44880	232	\N	\N	f
Сахарный диабет	2017	дальневосточный федеральный округ	10884	176	\N	\N	f
Сахарный диабет	2017	гл. мед. упр. управления делами президента рф	546	\N	\N	\N	f
Гепатит	2013	российская федерация	95280	66	\N	\N	f
Гепатит	2014	российская федерация	98980	68	\N	\N	f
Гепатит	2013	северо-кавказский федеральный округ	4881	51	\N	\N	f
Гепатит	2014	северо-кавказский федеральный округ	4356	45	\N	\N	f
Гепатит	2013	приволжский федеральный округ	18549	62	\N	\N	f
Гепатит	2014	приволжский федеральный округ	20173	68	\N	\N	f
Гепатит	2013	сибирский федеральный округ	18008	93	\N	\N	f
Гепатит	2014	сибирский федеральный округ	18834	98	\N	\N	f
Гепатит	2015	российская федерация	95763	65	\N	\N	f
Гепатит	2016	российская федерация	94109	64	\N	\N	f
Гепатит	2015	северо-кавказский федеральный округ	3528	36	\N	\N	f
Гепатит	2016	северо-кавказский федеральный округ	3590	37	\N	\N	f
Гепатит	2015	приволжский федеральный округ	18947	64	\N	\N	f
Гепатит	2016	приволжский федеральный округ	20192	68	\N	\N	f
Гепатит	2015	сибирский федеральный округ	16454	85	\N	\N	f
Гепатит	2016	сибирский федеральный округ	17414	90	\N	\N	f
Гепатит	2015	гл. мед. упр. управления делами президента рф	122	\N	\N	\N	f
Гепатит	2016	гл. мед. упр. управления делами президента рф	89	\N	\N	\N	f
Гепатит	2017	российская федерация	86987	59	\N	\N	f
Гепатит	2017	северо-кавказский федеральный округ	2845	29	\N	\N	f
Гепатит	2017	приволжский федеральный округ	18531	63	\N	\N	f
Гепатит	2017	сибирский федеральный округ	15248	79	\N	\N	f
Гепатит	2017	дальневосточный федеральный округ	4957	80	\N	\N	f
Гепатит	2017	гл. мед. упр. управления делами президента рф	89	\N	\N	\N	f
ВИЧ	2014	южный федеральный округ	1690	74	10	2	f
ВИЧ	2013	гл. мед. упр. управления делами президента рф	\N	\N	\N	\N	f
ВИЧ	2014	гл. мед. упр. управления делами президента рф	\N	\N	\N	\N	f
ВИЧ	2015	российская федерация	100220	69	1322	5	f
ВИЧ	2016	российская федерация	86855	59	1281	4	f
ВИЧ	2015	центральный федеральный округ	19445	50	171	3	f
ВИЧ	2016	центральный федеральный округ	11949	31	172	3	f
ВИЧ	2015	северо-западный федеральный округ	7268	53	69	3	f
ВИЧ	2016	северо-западный федеральный округ	5847	42	66	3	f
ВИЧ	2015	южный федеральный округ	5322	38	55	2	f
ВИЧ	2016	южный федеральный округ	6850	42	79	3	f
ВИЧ	2015	северо-кавказский федеральный округ	1521	16	45	2	f
ВИЧ	2016	северо-кавказский федеральный округ	1716	18	31	1	f
ВИЧ	2015	приволжский федеральный округ	21289	72	321	6	f
ВИЧ	2016	приволжский федеральный округ	20665	70	284	5	f
ВИЧ	2015	уральский федеральный округ	16633	135	195	7	f
ВИЧ	2016	уральский федеральный округ	14367	117	219	8	f
ВИЧ	2015	сибирский федеральный округ	25396	132	415	10	f
ВИЧ	2015	дальневосточный федеральный округ	2291	37	23	2	f
ВИЧ	2016	дальневосточный федеральный округ	2269	37	28	2	f
ВИЧ	2015	гл. мед. упр. управления делами президента рф	\N	\N	\N	\N	f
ВИЧ	2016	гл. мед. упр. управления делами президента рф	\N	\N	\N	\N	f
ВИЧ	2017	российская федерация	85802	58	1073	4	f
ВИЧ	2018	российская федерация	85995	59	977	3	f
ВИЧ	2017	центральный федеральный округ	12938	33	137	2	f
ВИЧ	2018	центральный федеральный округ	12405	32	110	2	f
ВИЧ	2017	северо-западный федеральный округ	5616	40	70	3	f
ВИЧ	2018	северо-западный федеральный округ	6535	47	60	2	f
ВИЧ	2017	южный федеральный округ	6768	41	89	3	f
ВИЧ	2018	южный федеральный округ	6866	42	65	2	f
ВИЧ	2017	северо-кавказский федеральный округ	1566	16	31	1	f
ВИЧ	2018	северо-кавказский федеральный округ	1754	18	32	1	f
ВИЧ	2017	приволжский федеральный округ	20120	68	222	4	f
ВИЧ	2018	приволжский федеральный округ	20102	68	221	4	f
ВИЧ	2017	уральский федеральный округ	14504	117	180	7	f
ВИЧ	2018	уральский федеральный округ	13367	108	168	6	f
ВИЧ	2017	сибирский федеральный округ	22249	115	324	8	f
ВИЧ	2018	сибирский федеральный округ	21489	125	288	8	f
ВИЧ	2017	дальневосточный федеральный округ	2041	33	20	2	f
ВИЧ	2018	дальневосточный федеральный округ	3477	42	33	2	f
ВИЧ	2017	гл. мед. упр. управления делами президента рф	\N	\N	\N	\N	f
ВИЧ	2018	гл. мед. упр. управления делами президента рф	\N	\N	\N	\N	f
Психиатрия	2013	российская федерация	747126	521	\N	\N	f
Психиатрия	2014	российская федерация	733873	502	\N	\N	f
Психиатрия	2013	северо-кавказский федеральный округ	26897	281	\N	\N	f
Психиатрия	2014	северо-кавказский федеральный округ	25676	266	\N	\N	f
Психиатрия	2013	приволжский федеральный округ	167894	564	\N	\N	f
Психиатрия	2014	приволжский федеральный округ	160779	541	\N	\N	f
Психиатрия	2013	сибирский федеральный округ	120312	624	\N	\N	f
Психиатрия	2014	сибирский федеральный округ	118464	613	\N	\N	f
Психиатрия	2015	российская федерация	709995	485	\N	\N	f
Психиатрия	2016	российская федерация	649035	443	\N	\N	f
Психиатрия	2015	северо-кавказский федеральный округ	25508	263	\N	\N	f
Психиатрия	2016	северо-кавказский федеральный округ	22991	237	\N	\N	f
Психиатрия	2015	приволжский федеральный округ	150858	508	\N	\N	f
Психиатрия	2016	приволжский федеральный округ	141301	476	\N	\N	f
Психиатрия	2015	сибирский федеральный округ	121833	631	\N	\N	f
Психиатрия	2016	сибирский федеральный округ	110368	571	\N	\N	f
Психиатрия	2015	гл. мед. упр. управления делами президента рф	2550	\N	\N	\N	f
Психиатрия	2016	гл. мед. упр. управления делами президента рф	2185	\N	\N	\N	f
Психиатрия	2017	российская федерация	612045	417	\N	\N	f
Психиатрия	2017	северо-кавказский федеральный округ	21952	225	\N	\N	f
Психиатрия	2017	приволжский федеральный округ	125020	422	\N	\N	f
Психиатрия	2017	сибирский федеральный округ	106604	552	\N	\N	f
Психиатрия	2017	дальневосточный федеральный округ	29798	482	\N	\N	f
Психиатрия	2017	гл. мед. упр. управления делами президента рф	2476	\N	\N	\N	f
\.


--
-- Data for Name: federal_districts; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.federal_districts (district) FROM stdin;
российская федерация
центральный федеральный округ
северо-западный федеральный округ
южный федеральный округ
северо-кавказский федеральный округ
приволжский федеральный округ
уральский федеральный округ
сибирский федеральный округ
дальневосточный федеральный округ
гл. мед. упр. управления делами президента рф
\.


--
-- Name: diseases diseases_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.diseases
    ADD CONSTRAINT diseases_pkey PRIMARY KEY (disease, year, district);


--
-- Name: federal_districts federal_districts_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.federal_districts
    ADD CONSTRAINT federal_districts_pkey PRIMARY KEY (district);


--
-- Name: diseases diseases_district_fkey; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.diseases
    ADD CONSTRAINT diseases_district_fkey FOREIGN KEY (district) REFERENCES public.federal_districts(district) ON DELETE CASCADE;


--
-- PostgreSQL database dump complete
--
