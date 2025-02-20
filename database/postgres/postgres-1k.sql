--
-- PostgreSQL database dump
--

-- Dumped from database version 14.16 (Homebrew)
-- Dumped by pg_dump version 14.16 (Homebrew)

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
-- Name: akas; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.akas (
    title_id text,
    title text,
    region text,
    language text,
    types text,
    attributes text,
    is_original_title bigint
);


ALTER TABLE public.akas OWNER TO postgres;

--
-- Name: crew; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.crew (
    title_id text,
    person_id text,
    category text,
    job text,
    characters text
);


ALTER TABLE public.crew OWNER TO postgres;

--
-- Name: episodes; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.episodes (
    episode_title_id text,
    show_title_id text,
    season_number bigint,
    episode_number bigint
);


ALTER TABLE public.episodes OWNER TO postgres;

--
-- Name: people; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.people (
    person_id text NOT NULL,
    name text,
    born bigint,
    died bigint
);


ALTER TABLE public.people OWNER TO postgres;

--
-- Name: ratings; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.ratings (
    title_id text,
    rating double precision,
    votes bigint
);


ALTER TABLE public.ratings OWNER TO postgres;

--
-- Name: titles; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.titles (
    title_id text NOT NULL,
    type text,
    primary_title text,
    original_title text,
    is_adult bigint,
    premiered bigint,
    ended bigint,
    runtime_minutes bigint,
    genres text
);


ALTER TABLE public.titles OWNER TO postgres;

--
-- Data for Name: akas; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.akas (title_id, title, region, language, types, attributes, is_original_title) FROM stdin;
tt4238836	Episode dated 19 November 2014	\N	\N	original	\N	1
tt4238836	Episódio datado de 19 Novembro de 2014	PT	pt	\N	\N	0
tt4238836	19 नवम्बर 2014 को प्रसारित एपिसोड	IN	hi	\N	\N	0
tt4238836	Épisode datant du 19 novembre 2014	FR	fr	\N	\N	0
tt4238836	Episodio datato 19 novembre 2014	IT	it	\N	\N	0
tt4238836	Folge vom 19. November 2014	DE	de	\N	\N	0
tt4238836	2014年11月19日 のエピソード	JP	ja	\N	\N	0
tt4238836	Episodio fechado 19 noviembre 2014	ES	es	\N	\N	0
tt20918690	The Push	\N	\N	original	\N	1
tt20918690	The Push	US	\N	\N	\N	0
tt35020055	Episode dated 26 November 1992	\N	\N	original	\N	1
tt35020055	Episódio datado de 26 Novembro de 1992	PT	pt	\N	\N	0
tt35020055	26 नवम्बर 1992 को प्रसारित एपिसोड	IN	hi	\N	\N	0
tt35020055	Épisode datant du 26 novembre 1992	FR	fr	\N	\N	0
tt35020055	Episodio datato 26 novembre 1992	IT	it	\N	\N	0
tt35020055	Folge vom 26. November 1992	DE	de	\N	\N	0
tt35020055	1992年11月26日 のエピソード	JP	ja	\N	\N	0
tt35020055	Episodio fechado 26 noviembre 1992	ES	es	\N	\N	0
tt12364528	Episode #1.1	\N	\N	original	\N	1
tt12364528	Episódio #1.1	PT	pt	\N	\N	0
tt12364528	एपिसोड #1.1	IN	hi	\N	\N	0
tt12364528	Épisode #1.1	FR	fr	\N	\N	0
tt12364528	Episodio #1.1	IT	it	\N	\N	0
tt12364528	Folge #1.1	DE	de	\N	\N	0
tt12364528	エピソード #1.1	JP	ja	\N	\N	0
tt12364528	Episodio #1.1	ES	es	\N	\N	0
tt32667897	Episode #1.1671	\N	\N	original	\N	1
tt32667897	Episódio #1.1671	PT	pt	\N	\N	0
tt32667897	एपिसोड #1.1671	IN	hi	\N	\N	0
tt32667897	Épisode #1.1671	FR	fr	\N	\N	0
tt32667897	Episodio #1.1671	IT	it	\N	\N	0
tt32667897	Folge #1.1671	DE	de	\N	\N	0
tt32667897	エピソード #1.1671	JP	ja	\N	\N	0
tt32667897	Episodio #1.1671	ES	es	\N	\N	0
tt33317334	Expecting Heavy Losses	\N	\N	original	\N	1
tt29059237	Dangerous Moments in the Wild Kingdom	\N	\N	original	\N	1
tt7539072	Xpiation	\N	\N	original	\N	1
tt7539072	Xpiation	IT	\N	imdbDisplay	\N	0
tt4006356	Where L.A. Chefs Eat	\N	\N	original	\N	1
tt2772922	Live Action Role Play	\N	\N	original	\N	1
tt27766765	Du chocolat pour sauver l'Amazonie	\N	\N	original	\N	1
tt27766765	Du chocolat pour sauver l'Amazonie	FR	\N	\N	\N	0
tt28537546	O famoso queijo Canastra	\N	\N	original	\N	1
tt7408744	Katherine Schwarzenegger!/My Digestion Issues Almost Killed Me!/TLC's My Giant Life!/Our Family's Fight: Hunter Syndrome	\N	\N	original	\N	1
tt7408744	Katherine Schwarzenegger!/My Digestion Issues Almost Killed Me!/TLC's My Giant Life!/Our Family's Fight: Hunter Syndrome	US	\N	\N	\N	0
tt15246970	Are We Official?	\N	\N	original	\N	1
tt10638084	Episode dated 8 July 2019	\N	\N	original	\N	1
tt10638084	Episódio datado de 8 Julho de 2019	PT	pt	\N	\N	0
tt10638084	8 जुलाई 2019 को प्रसारित एपिसोड	IN	hi	\N	\N	0
tt10638084	Épisode datant du 8 juillet 2019	FR	fr	\N	\N	0
tt10638084	Episodio datato 8 luglio 2019	IT	it	\N	\N	0
tt10638084	Folge vom 8. Juli 2019	DE	de	\N	\N	0
tt10638084	2019年7月8日 のエピソード	JP	ja	\N	\N	0
tt10638084	Episodio fechado 8 julio 2019	ES	es	\N	\N	0
tt9095990	Episode #1.105	\N	\N	original	\N	1
tt9095990	Episódio #1.105	PT	pt	\N	\N	0
tt9095990	एपिसोड #1.105	IN	hi	\N	\N	0
tt9095990	Épisode #1.105	FR	fr	\N	\N	0
tt9095990	Episodio #1.105	IT	it	\N	\N	0
tt9095990	Folge #1.105	DE	de	\N	\N	0
tt9095990	エピソード #1.105	JP	ja	\N	\N	0
tt9095990	Episodio #1.105	ES	es	\N	\N	0
tt0556919	Tribute to the Dog	\N	\N	original	\N	1
tt0556919	Tribute to the Dog	US	\N	\N	\N	0
tt23811384	Temptation 2	\N	\N	original	\N	1
tt1717440	Just Pursuing Doggedly	\N	\N	original	\N	1
tt15080802	Episode #1.545	\N	\N	original	\N	1
tt15080802	Episódio #1.545	PT	pt	\N	\N	0
tt15080802	एपिसोड #1.545	IN	hi	\N	\N	0
tt15080802	Épisode #1.545	FR	fr	\N	\N	0
tt15080802	Episodio #1.545	IT	it	\N	\N	0
tt15080802	Folge #1.545	DE	de	\N	\N	0
tt15080802	エピソード #1.545	JP	ja	\N	\N	0
tt15080802	Episodio #1.545	ES	es	\N	\N	0
tt2098935	Foot-Fistless/Dance on Down the Road	\N	\N	original	\N	1
tt33501010	Episode #1.5664	\N	\N	original	\N	1
tt33501010	Episódio #1.5664	PT	pt	\N	\N	0
tt33501010	एपिसोड #1.5664	IN	hi	\N	\N	0
tt33501010	Épisode #1.5664	FR	fr	\N	\N	0
tt33501010	Episodio #1.5664	IT	it	\N	\N	0
tt33501010	Folge #1.5664	DE	de	\N	\N	0
tt33501010	エピソード #1.5664	JP	ja	\N	\N	0
tt33501010	Episodio #1.5664	ES	es	\N	\N	0
tt1661414	Murray Cod Tactics	\N	\N	original	\N	1
tt1661414	Murray Cod Tactics	AU	\N	imdbDisplay	\N	0
tt3381528	The Dark Monsters	\N	\N	original	\N	1
tt3381528	Beyond the Dark Graves	\N	\N	\N	\N	0
tt3381528	The Dark Monsters	AU	\N	imdbDisplay	\N	0
tt2159401	Do the Hustle	\N	\N	original	\N	1
tt3926380	Episode #1.668	\N	\N	original	\N	1
tt3926380	Episódio #1.668	PT	pt	\N	\N	0
tt3926380	एपिसोड #1.668	IN	hi	\N	\N	0
tt3926380	Épisode #1.668	FR	fr	\N	\N	0
tt3926380	Episodio #1.668	IT	it	\N	\N	0
tt3926380	Folge #1.668	DE	de	\N	\N	0
tt3926380	エピソード #1.668	JP	ja	\N	\N	0
tt3926380	Episodio #1.668	ES	es	\N	\N	0
tt2623294	Pepperwood	\N	\N	original	\N	1
tt3361504	Episode #9.60	\N	\N	original	\N	1
tt3361504	Episódio #9.60	PT	pt	\N	\N	0
tt3361504	एपिसोड #9.60	IN	hi	\N	\N	0
tt3361504	Épisode #9.60	FR	fr	\N	\N	0
tt3361504	Episodio #9.60	IT	it	\N	\N	0
tt3361504	Folge #9.60	DE	de	\N	\N	0
tt3361504	エピソード #9.60	JP	ja	\N	\N	0
tt3361504	Episodio #9.60	ES	es	\N	\N	0
tt2833904	Postman Pat's Pigeon Post	\N	\N	original	\N	1
tt1584588	Faulkner's Choice	\N	\N	original	\N	1
tt4205818	Digiknow uLive	\N	\N	original	\N	1
tt4205818	Digiknow uLive	GB	\N	imdbDisplay	\N	0
tt7337888	Episode #1.98	\N	\N	original	\N	1
tt7337888	Episódio #1.98	PT	pt	\N	\N	0
tt7337888	एपिसोड #1.98	IN	hi	\N	\N	0
tt7337888	Épisode #1.98	FR	fr	\N	\N	0
tt7337888	Episodio #1.98	IT	it	\N	\N	0
tt7337888	Folge #1.98	DE	de	\N	\N	0
tt7337888	エピソード #1.98	JP	ja	\N	\N	0
tt7337888	Episodio #1.98	ES	es	\N	\N	0
tt7245680	The Best Films of 2000	\N	\N	original	\N	1
tt26738850	Episode #1.23	\N	\N	original	\N	1
tt26738850	Episódio #1.23	PT	pt	\N	\N	0
tt26738850	एपिसोड #1.23	IN	hi	\N	\N	0
tt26738850	Épisode #1.23	FR	fr	\N	\N	0
tt26738850	Episodio #1.23	IT	it	\N	\N	0
tt26738850	Folge #1.23	DE	de	\N	\N	0
tt26738850	エピソード #1.23	JP	ja	\N	\N	0
tt26738850	Episodio #1.23	ES	es	\N	\N	0
tt2192472	Episode #2.56	\N	\N	original	\N	1
tt2192472	Episódio #2.56	PT	pt	\N	\N	0
tt2192472	एपिसोड #2.56	IN	hi	\N	\N	0
tt2192472	Épisode #2.56	FR	fr	\N	\N	0
tt2192472	Episodio #2.56	IT	it	\N	\N	0
tt2192472	Folge #2.56	DE	de	\N	\N	0
tt2192472	エピソード #2.56	JP	ja	\N	\N	0
tt2192472	Episodio #2.56	ES	es	\N	\N	0
tt5829304	The Tube's Hautest	\N	\N	original	\N	1
tt5829304	The Tube's Hautest	US	\N	imdbDisplay	\N	0
tt14405152	The Other Side of Paradise	\N	\N	original	\N	1
tt14405152	The Other Side of Paradise	AU	\N	imdbDisplay	\N	0
tt1998664	Episode #1.4565	\N	\N	original	\N	1
tt1998664	Episódio #1.4565	PT	pt	\N	\N	0
tt1998664	एपिसोड #1.4565	IN	hi	\N	\N	0
tt1998664	Épisode #1.4565	FR	fr	\N	\N	0
tt1998664	Episodio #1.4565	IT	it	\N	\N	0
tt1998664	Folge #1.4565	DE	de	\N	\N	0
tt1998664	エピソード #1.4565	JP	ja	\N	\N	0
tt1998664	Episodio #1.4565	ES	es	\N	\N	0
tt9748862	Episode dated 4 February 2010	\N	\N	original	\N	1
tt9748862	Episódio datado de 4 Fevereiro de 2010	PT	pt	\N	\N	0
tt9748862	4 फ़रवरी 2010 को प्रसारित एपिसोड	IN	hi	\N	\N	0
tt9748862	Épisode datant du 4 février 2010	FR	fr	\N	\N	0
tt9748862	Episodio datato 4 febbraio 2010	IT	it	\N	\N	0
tt9748862	Folge vom 4. Februar 2010	DE	de	\N	\N	0
tt9748862	2010年2月4日 のエピソード	JP	ja	\N	\N	0
tt9748862	Episodio fechado 4 febrero 2010	ES	es	\N	\N	0
tt3892090	This Is Every YouTube Video Ever	\N	\N	original	\N	1
tt11852564	DOD Experiment #2469	\N	\N	original	\N	1
tt13870356	Molestation... I Can't Live with This Accusation	\N	\N	original	\N	1
tt13870356	Molestation... I Can't Live with This Accusation	US	\N	\N	\N	0
tt1410265	Eine für alle - Frauen können's besser	\N	\N	original	\N	1
tt1410265	Biggi ist der Boss	DE	\N	working	\N	0
tt1410265	Eine für alle - Frauen können's besser	DE	\N	imdbDisplay	\N	0
tt1410265	Made in Germany	DE	\N	working	\N	0
tt9851424	Episode #1.216	\N	\N	original	\N	1
tt9851424	Episódio #1.216	PT	pt	\N	\N	0
tt9851424	एपिसोड #1.216	IN	hi	\N	\N	0
tt9851424	Épisode #1.216	FR	fr	\N	\N	0
tt9851424	Episodio #1.216	IT	it	\N	\N	0
tt9851424	Folge #1.216	DE	de	\N	\N	0
tt9851424	エピソード #1.216	JP	ja	\N	\N	0
tt9851424	Episodio #1.216	ES	es	\N	\N	0
tt4727818	The Kirk Show Rises	\N	\N	original	\N	1
tt10819096	Thayssa Ferraz Hooks Up With Rafa	\N	\N	original	\N	1
tt8543800	Utrax	\N	\N	original	\N	1
tt8543800	Utrax	US	\N	\N	\N	0
tt1503241	Spanish 101	\N	\N	original	\N	1
tt1503241	Spanish 101	US	\N	\N	\N	0
tt0645345	Choice of Evils	\N	\N	original	\N	1
tt0645345	Choice of Evils	US	\N	\N	\N	0
tt6233038	Episode #1.3	\N	\N	original	\N	1
tt6233038	Episódio #1.3	PT	pt	\N	\N	0
tt6233038	एपिसोड #1.3	IN	hi	\N	\N	0
tt6233038	Épisode #1.3	FR	fr	\N	\N	0
tt6233038	Episodio #1.3	IT	it	\N	\N	0
tt6233038	Folge #1.3	DE	de	\N	\N	0
tt6233038	エピソード #1.3	JP	ja	\N	\N	0
tt6233038	Episodio #1.3	ES	es	\N	\N	0
tt7597456	Schwanz-Selfie! Der neue Trend!	\N	\N	original	\N	1
tt6073012	Rubbing Ruby	\N	\N	original	\N	1
tt12549086	June 15 2020	\N	\N	original	\N	1
tt14835916	Censor	\N	\N	original	\N	1
tt14835916	Censor	US	\N	\N	\N	0
tt4864042	You Can't Get Wetter Than Wet	\N	\N	original	\N	1
tt11590702	Episode dated 1 August 2008	\N	\N	original	\N	1
tt11590702	Episódio datado de 1 Agosto de 2008	PT	pt	\N	\N	0
tt11590702	1 अगस्त 2008 को प्रसारित एपिसोड	IN	hi	\N	\N	0
tt11590702	Épisode datant du 1 août 2008	FR	fr	\N	\N	0
tt11590702	Episodio datato 1 agosto 2008	IT	it	\N	\N	0
tt11590702	Folge vom 1. August 2008	DE	de	\N	\N	0
tt11590702	2008年8月1日 のエピソード	JP	ja	\N	\N	0
tt11590702	Episodio fechado 1 agosto 2008	ES	es	\N	\N	0
tt16260146	Incurable Disease	XWW	en	imdbDisplay	\N	0
tt22262504	Verabredungen mit einem Dichter - Michael Krüger	\N	\N	original	\N	1
tt22262504	Verabredungen mit einem Dichter - Michael Krüger	DE	\N	imdbDisplay	\N	0
tt7438896	Multi Orgasmic Massage	\N	\N	original	\N	1
tt31170181	24/05/2021 | Ep 277 | Anirudh Witnesses Cruelty!	\N	\N	original	\N	1
tt31414623	Episode #1.3585	\N	\N	original	\N	1
tt31414623	Episódio #1.3585	PT	pt	\N	\N	0
tt31414623	एपिसोड #1.3585	IN	hi	\N	\N	0
tt31414623	Épisode #1.3585	FR	fr	\N	\N	0
tt31414623	Episodio #1.3585	IT	it	\N	\N	0
tt31414623	Folge #1.3585	DE	de	\N	\N	0
tt31414623	エピソード #1.3585	JP	ja	\N	\N	0
tt31414623	Episodio #1.3585	ES	es	\N	\N	0
tt5776374	By His Hand	\N	\N	original	\N	1
tt5776374	By His Hand	GB	\N	imdbDisplay	\N	0
tt10095516	Betsy Brandt/Ashanti/Gaby Dalkin	\N	\N	original	\N	1
tt11922202	Episode #1.4943	\N	\N	original	\N	1
tt11922202	Episódio #1.4943	PT	pt	\N	\N	0
tt11922202	एपिसोड #1.4943	IN	hi	\N	\N	0
tt11922202	Épisode #1.4943	FR	fr	\N	\N	0
tt11922202	Episodio #1.4943	IT	it	\N	\N	0
tt11922202	Folge #1.4943	DE	de	\N	\N	0
tt11922202	エピソード #1.4943	JP	ja	\N	\N	0
tt11922202	Episodio #1.4943	ES	es	\N	\N	0
tt13963314	Episode #13.4	\N	\N	original	\N	1
tt13963314	Episódio #13.4	PT	pt	\N	\N	0
tt13963314	एपिसोड #13.4	IN	hi	\N	\N	0
tt13963314	Épisode #13.4	FR	fr	\N	\N	0
tt13963314	Episodio #13.4	IT	it	\N	\N	0
tt13963314	Folge #13.4	DE	de	\N	\N	0
tt13963314	エピソード #13.4	JP	ja	\N	\N	0
tt13963314	Episodio #13.4	ES	es	\N	\N	0
tt9694538	Episode #1.357	\N	\N	original	\N	1
tt9694538	Episódio #1.357	PT	pt	\N	\N	0
tt9694538	एपिसोड #1.357	IN	hi	\N	\N	0
tt9694538	Épisode #1.357	FR	fr	\N	\N	0
tt9694538	Episodio #1.357	IT	it	\N	\N	0
tt9694538	Folge #1.357	DE	de	\N	\N	0
tt9694538	エピソード #1.357	JP	ja	\N	\N	0
tt9694538	Episodio #1.357	ES	es	\N	\N	0
tt6573900	The Road to Woody Point	\N	\N	original	\N	1
tt6573900	The Road to Woody Point	CA	\N	\N	\N	0
tt29455600	KIM CHANG WAN BAND	\N	\N	original	\N	1
tt30331769	Episode #1.211	\N	\N	original	\N	1
tt30331769	Episódio #1.211	PT	pt	\N	\N	0
tt30331769	एपिसोड #1.211	IN	hi	\N	\N	0
tt30331769	Épisode #1.211	FR	fr	\N	\N	0
tt30331769	Episodio #1.211	IT	it	\N	\N	0
tt30331769	Folge #1.211	DE	de	\N	\N	0
tt30331769	エピソード #1.211	JP	ja	\N	\N	0
tt30331769	Episodio #1.211	ES	es	\N	\N	0
tt28480766	Episode dated 4 February 2022	\N	\N	original	\N	1
tt28480766	Episódio datado de 4 Fevereiro de 2022	PT	pt	\N	\N	0
tt28480766	4 फ़रवरी 2022 को प्रसारित एपिसोड	IN	hi	\N	\N	0
tt28480766	Épisode datant du 4 février 2022	FR	fr	\N	\N	0
tt28480766	Episodio datato 4 febbraio 2022	IT	it	\N	\N	0
tt28480766	Folge vom 4. Februar 2022	DE	de	\N	\N	0
tt28480766	2022年2月4日 のエピソード	JP	ja	\N	\N	0
tt28480766	Episodio fechado 4 febrero 2022	ES	es	\N	\N	0
tt7864088	Mike Cernovich Call-In Show	\N	\N	original	\N	1
tt7864088	Mike Cernovich Call-In Show	US	\N	imdbDisplay	\N	0
tt2949894	Episode #3.7	\N	\N	original	\N	1
tt2949894	Episódio #3.7	PT	pt	\N	\N	0
tt2949894	एपिसोड #3.7	IN	hi	\N	\N	0
tt2949894	Épisode #3.7	FR	fr	\N	\N	0
tt2949894	Episodio #3.7	IT	it	\N	\N	0
tt2949894	Folge #3.7	DE	de	\N	\N	0
tt2949894	エピソード #3.7	JP	ja	\N	\N	0
tt2949894	Episodio #3.7	ES	es	\N	\N	0
tt10639480	Episode #1.11	\N	\N	original	\N	1
tt10639480	Episódio #1.11	PT	pt	\N	\N	0
tt10639480	एपिसोड #1.11	IN	hi	\N	\N	0
tt10639480	Épisode #1.11	FR	fr	\N	\N	0
tt10639480	Episodio #1.11	IT	it	\N	\N	0
tt10639480	Folge #1.11	DE	de	\N	\N	0
tt10639480	エピソード #1.11	JP	ja	\N	\N	0
tt10639480	Episodio #1.11	ES	es	\N	\N	0
tt4824340	The Tongue Twister	\N	\N	original	\N	1
tt4824340	The Tongue Twister	CA	\N	\N	\N	0
tt22480418	Episode #2.37	\N	\N	original	\N	1
tt22480418	Episódio #2.37	PT	pt	\N	\N	0
tt22480418	एपिसोड #2.37	IN	hi	\N	\N	0
tt22480418	Épisode #2.37	FR	fr	\N	\N	0
tt22480418	Episodio #2.37	IT	it	\N	\N	0
tt22480418	Folge #2.37	DE	de	\N	\N	0
tt22480418	エピソード #2.37	JP	ja	\N	\N	0
tt22480418	Episodio #2.37	ES	es	\N	\N	0
tt9865538	Episode #1.124	\N	\N	original	\N	1
tt9865538	Episódio #1.124	PT	pt	\N	\N	0
tt9865538	एपिसोड #1.124	IN	hi	\N	\N	0
tt9865538	Épisode #1.124	FR	fr	\N	\N	0
tt9865538	Episodio #1.124	IT	it	\N	\N	0
tt9865538	Folge #1.124	DE	de	\N	\N	0
tt9865538	エピソード #1.124	JP	ja	\N	\N	0
tt9865538	Episodio #1.124	ES	es	\N	\N	0
tt6306690	OMC's Car School/OMG OMC	\N	\N	original	\N	1
tt27868019	Episode #1.137	\N	\N	original	\N	1
tt27868019	Episódio #1.137	PT	pt	\N	\N	0
tt27868019	एपिसोड #1.137	IN	hi	\N	\N	0
tt27868019	Épisode #1.137	FR	fr	\N	\N	0
tt27868019	Episodio #1.137	IT	it	\N	\N	0
tt27868019	Folge #1.137	DE	de	\N	\N	0
tt27868019	エピソード #1.137	JP	ja	\N	\N	0
tt27868019	Episodio #1.137	ES	es	\N	\N	0
tt9164742	Priyanka Chopra and Shahid Kapoor	\N	\N	original	\N	1
tt16260146	Fujinoyamai	IL	\N	\N	\N	0
tt11724786	Too Late to Know It's Too Soon for the Sex Talk	\N	\N	original	\N	1
tt0968456	The Casualty	\N	\N	original	\N	1
tt0968456	The Casualty	GB	\N	\N	\N	0
tt9738958	Episode #1.352	\N	\N	original	\N	1
tt9738958	Episódio #1.352	PT	pt	\N	\N	0
tt9738958	एपिसोड #1.352	IN	hi	\N	\N	0
tt9738958	Épisode #1.352	FR	fr	\N	\N	0
tt9738958	Episodio #1.352	IT	it	\N	\N	0
tt9738958	Folge #1.352	DE	de	\N	\N	0
tt9738958	エピソード #1.352	JP	ja	\N	\N	0
tt9738958	Episodio #1.352	ES	es	\N	\N	0
tt5224992	Jules Roy, l'homme debout	\N	\N	original	\N	1
tt27766539	Hochkaräter: Die blauen Steine der Pharaonen	\N	\N	original	\N	1
tt1035025	Episode #1.11	\N	\N	original	\N	1
tt1035025	Episódio #1.11	PT	pt	\N	\N	0
tt1035025	एपिसोड #1.11	IN	hi	\N	\N	0
tt1035025	Épisode #1.11	FR	fr	\N	\N	0
tt1035025	Episodio #1.11	IT	it	\N	\N	0
tt1035025	Folge #1.11	DE	de	\N	\N	0
tt1035025	エピソード #1.11	JP	ja	\N	\N	0
tt1035025	Episodio #1.11	ES	es	\N	\N	0
tt30270724	Itsuwari no nikushimi-mori! Izuna no kioku!!	\N	\N	original	\N	1
tt30270724	Itsuwari no nikushimi-mori! Izuna no kioku!!	JP	\N	\N	\N	0
tt2196934	Japanese Y House/Jamaican Dome/Canadian Tire Home	\N	\N	original	\N	1
tt14979026	Kristy kinky kitchen sex	\N	\N	original	\N	1
tt1374692	Episode #14.32	\N	\N	original	\N	1
tt1374692	Episódio #14.32	PT	pt	\N	\N	0
tt1374692	एपिसोड #14.32	IN	hi	\N	\N	0
tt1374692	Épisode #14.32	FR	fr	\N	\N	0
tt1374692	Episodio #14.32	IT	it	\N	\N	0
tt1374692	Folge #14.32	DE	de	\N	\N	0
tt1374692	エピソード #14.32	JP	ja	\N	\N	0
tt1374692	Episodio #14.32	ES	es	\N	\N	0
tt14752820	Ashens Easter Special 2019	\N	\N	original	\N	1
tt11515280	Mikhail Evdokimov	\N	\N	original	\N	1
tt3315050	L'affaire Kellman	\N	\N	original	\N	1
tt3315050	L'affaire Kellman	FR	\N	imdbDisplay	\N	0
tt11989454	The Birthday	\N	\N	original	\N	1
tt11989454	The Birthday	SE	\N	imdbDisplay	\N	0
tt3888462	Episode #1.4	\N	\N	original	\N	1
tt3888462	Episódio #1.4	PT	pt	\N	\N	0
tt3888462	एपिसोड #1.4	IN	hi	\N	\N	0
tt3888462	Épisode #1.4	FR	fr	\N	\N	0
tt3888462	Episodio #1.4	IT	it	\N	\N	0
tt3888462	Folge #1.4	DE	de	\N	\N	0
tt3888462	エピソード #1.4	JP	ja	\N	\N	0
tt3888462	Episodio #1.4	ES	es	\N	\N	0
tt14854768	Episode #1.430	\N	\N	original	\N	1
tt14854768	Episódio #1.430	PT	pt	\N	\N	0
tt14854768	एपिसोड #1.430	IN	hi	\N	\N	0
tt14854768	Épisode #1.430	FR	fr	\N	\N	0
tt14854768	Episodio #1.430	IT	it	\N	\N	0
tt14854768	Folge #1.430	DE	de	\N	\N	0
tt14854768	エピソード #1.430	JP	ja	\N	\N	0
tt14854768	Episodio #1.430	ES	es	\N	\N	0
tt26777958	Dear President Biden	\N	\N	original	\N	1
tt26777958	Dear President Biden	US	\N	\N	\N	0
tt9542852	Santa's naughty little elf tied down & punished with forced orgasms	\N	\N	original	\N	1
tt0964158	Peter Chan	\N	\N	original	\N	1
tt4047506	Higher, faster, stronger	\N	\N	original	\N	1
tt13529240	Soldiers with Glasses - Industrial Centres - Frontline Generals - Out of the Trenches	\N	\N	original	\N	1
tt9836520	Episode #1.100	\N	\N	original	\N	1
tt9836520	Episódio #1.100	PT	pt	\N	\N	0
tt9836520	एपिसोड #1.100	IN	hi	\N	\N	0
tt9836520	Épisode #1.100	FR	fr	\N	\N	0
tt9836520	Episodio #1.100	IT	it	\N	\N	0
tt9836520	Folge #1.100	DE	de	\N	\N	0
tt9836520	エピソード #1.100	JP	ja	\N	\N	0
tt9836520	Episodio #1.100	ES	es	\N	\N	0
tt1519408	The Cambodian Room: Situations with Antoine D'Agata	\N	\N	original	\N	1
tt1519408	La chambre cambodgienne	FR	\N	imdbDisplay	\N	0
tt31598246	Episode #1.9	\N	\N	original	\N	1
tt31598246	Episódio #1.9	PT	pt	\N	\N	0
tt31598246	एपिसोड #1.9	IN	hi	\N	\N	0
tt31598246	Épisode #1.9	FR	fr	\N	\N	0
tt31598246	Episodio #1.9	IT	it	\N	\N	0
tt31598246	Folge #1.9	DE	de	\N	\N	0
tt31598246	エピソード #1.9	JP	ja	\N	\N	0
tt31598246	Episodio #1.9	ES	es	\N	\N	0
tt0122242	Scare the Living	\N	\N	original	\N	1
tt0122242	Scare the Living	US	\N	imdbDisplay	\N	0
tt0122242	Scare the Living	HK	\N	\N	\N	0
tt0848446	Serapita	\N	\N	original	\N	1
tt0848446	Serapita	SUHH	\N	imdbDisplay	\N	0
tt10998086	Episode #1.213	\N	\N	original	\N	1
tt10998086	Episódio #1.213	PT	pt	\N	\N	0
tt10998086	एपिसोड #1.213	IN	hi	\N	\N	0
tt10998086	Épisode #1.213	FR	fr	\N	\N	0
tt10998086	Episodio #1.213	IT	it	\N	\N	0
tt10998086	Folge #1.213	DE	de	\N	\N	0
tt10998086	エピソード #1.213	JP	ja	\N	\N	0
tt10998086	Episodio #1.213	ES	es	\N	\N	0
tt15281282	The Great Pandemic: Right Swipers	\N	\N	original	\N	1
tt15137058	Episode #1.3626	\N	\N	original	\N	1
tt15137058	Episódio #1.3626	PT	pt	\N	\N	0
tt15137058	एपिसोड #1.3626	IN	hi	\N	\N	0
tt15137058	Épisode #1.3626	FR	fr	\N	\N	0
tt15137058	Episodio #1.3626	IT	it	\N	\N	0
tt15137058	Folge #1.3626	DE	de	\N	\N	0
tt15137058	エピソード #1.3626	JP	ja	\N	\N	0
tt15137058	Episodio #1.3626	ES	es	\N	\N	0
tt28700626	Dogs in Prison	\N	\N	original	\N	1
tt21350172	The First Episode of Season 3	\N	\N	original	\N	1
tt16260146	Fujinoyamai	\N	\N	original	\N	1
tt6312672	Episodio #1.264	IT	it	\N	\N	0
tt1213086	Kôya no hate: zenpen	\N	\N	original	\N	1
tt1213086	Kôya no hate: zenpen	JP	\N	\N	\N	0
tt3266866	Episode #1.39	\N	\N	original	\N	1
tt3266866	Episódio #1.39	PT	pt	\N	\N	0
tt3266866	एपिसोड #1.39	IN	hi	\N	\N	0
tt3266866	Épisode #1.39	FR	fr	\N	\N	0
tt3266866	Episodio #1.39	IT	it	\N	\N	0
tt3266866	Folge #1.39	DE	de	\N	\N	0
tt3266866	エピソード #1.39	JP	ja	\N	\N	0
tt3266866	Episodio #1.39	ES	es	\N	\N	0
tt14776270	Episode #1.161	\N	\N	original	\N	1
tt14776270	Episódio #1.161	PT	pt	\N	\N	0
tt14776270	एपिसोड #1.161	IN	hi	\N	\N	0
tt14776270	Épisode #1.161	FR	fr	\N	\N	0
tt14776270	Episodio #1.161	IT	it	\N	\N	0
tt14776270	Folge #1.161	DE	de	\N	\N	0
tt14776270	エピソード #1.161	JP	ja	\N	\N	0
tt14776270	Episodio #1.161	ES	es	\N	\N	0
tt0848569	The Away Game	\N	\N	original	\N	1
tt0848569	The Away Game	AU	\N	imdbDisplay	\N	0
tt4792354	Babies and Big Rigs	\N	\N	original	\N	1
tt28145625	Bela do Verão	\N	\N	original	\N	1
tt28145625	Bela do Verão	BR	\N	\N	\N	0
tt11745344	Episode #1.94	\N	\N	original	\N	1
tt11745344	Episódio #1.94	PT	pt	\N	\N	0
tt11745344	एपिसोड #1.94	IN	hi	\N	\N	0
tt11745344	Épisode #1.94	FR	fr	\N	\N	0
tt11745344	Episodio #1.94	IT	it	\N	\N	0
tt11745344	Folge #1.94	DE	de	\N	\N	0
tt11745344	エピソード #1.94	JP	ja	\N	\N	0
tt11745344	Episodio #1.94	ES	es	\N	\N	0
tt0816529	I'm Staying with My Boys: The Heroic Life of Sgt. John Basilone, USMC	\N	\N	original	\N	1
tt0816529	I'm Staying with My Boys: The Heroic Life of Sgt. John Basilone, USMC	US	\N	\N	\N	0
tt19370734	3 Heures d'Agonie	\N	\N	original	\N	1
tt20605338	Game Night: NBA Finals 2010, Game 7	\N	\N	original	\N	1
tt2775302	Episode dated 17 April 1992	\N	\N	original	\N	1
tt2775302	Episódio datado de 17 Abril de 1992	PT	pt	\N	\N	0
tt2775302	17 अप्रैल 1992 को प्रसारित एपिसोड	IN	hi	\N	\N	0
tt2775302	Épisode datant du 17 avril 1992	FR	fr	\N	\N	0
tt2775302	Episodio datato 17 aprile 1992	IT	it	\N	\N	0
tt2775302	Folge vom 17. April 1992	DE	de	\N	\N	0
tt2775302	1992年4月17日 のエピソード	JP	ja	\N	\N	0
tt2775302	Episodio fechado 17 abril 1992	ES	es	\N	\N	0
tt25380318	Krishna Gets Shocked	\N	\N	original	\N	1
tt25380318	Krishna Gets Shocked	IN	\N	\N	\N	0
tt6001760	Sitter Jitters	\N	\N	original	\N	1
tt15766174	11-11-2021	\N	\N	original	\N	1
tt7151686	Episode #2.4	\N	\N	original	\N	1
tt7151686	Episódio #2.4	PT	pt	\N	\N	0
tt7151686	एपिसोड #2.4	IN	hi	\N	\N	0
tt7151686	Épisode #2.4	FR	fr	\N	\N	0
tt7151686	Episodio #2.4	IT	it	\N	\N	0
tt7151686	Folge #2.4	DE	de	\N	\N	0
tt7151686	エピソード #2.4	JP	ja	\N	\N	0
tt7151686	Episodio #2.4	ES	es	\N	\N	0
tt6023952	Poet Muslim Magomayev	\N	\N	original	\N	1
tt6023952	Поёт Муслим Магомаев	RU	\N	imdbDisplay	\N	0
tt6023952	Поёт Муслим Магомаев	SUHH	ru	imdbDisplay	\N	0
tt6023952	Oxuyur Müslüm Maqomayev	AZ	\N	imdbDisplay	\N	0
tt4226490	Marseille	\N	\N	original	\N	1
tt5700008	Episode #1.6	\N	\N	original	\N	1
tt5700008	Episódio #1.6	PT	pt	\N	\N	0
tt5700008	एपिसोड #1.6	IN	hi	\N	\N	0
tt5700008	Épisode #1.6	FR	fr	\N	\N	0
tt5700008	Episodio #1.6	IT	it	\N	\N	0
tt5700008	Folge #1.6	DE	de	\N	\N	0
tt5700008	エピソード #1.6	JP	ja	\N	\N	0
tt5700008	Episodio #1.6	ES	es	\N	\N	0
tt0517796	Uncle Bentley and the Aunts	\N	\N	original	\N	1
tt0517796	Uncle Bentley and the Aunts	US	\N	\N	\N	0
tt5289806	Trip in Paris	\N	\N	original	\N	1
tt5289806	Trip in Paris	FR	\N	imdbDisplay	\N	0
tt0595547	Stefans Geheimnis	\N	\N	original	\N	1
tt28551561	Episode #1.55	\N	\N	original	\N	1
tt28551561	Episódio #1.55	PT	pt	\N	\N	0
tt28551561	एपिसोड #1.55	IN	hi	\N	\N	0
tt28551561	Épisode #1.55	FR	fr	\N	\N	0
tt28551561	Episodio #1.55	IT	it	\N	\N	0
tt28551561	Folge #1.55	DE	de	\N	\N	0
tt28551561	エピソード #1.55	JP	ja	\N	\N	0
tt28551561	Episodio #1.55	ES	es	\N	\N	0
tt9794826	Brexit-Chaos: Wie geht es jetzt weiter?	\N	\N	original	\N	1
tt1194409	1985 MLB All-Star Game	\N	\N	original	\N	1
tt1194409	1985 MLB All-Star Game	US	\N	imdbDisplay	\N	0
tt1014787	AIDS Inc.	\N	\N	original	\N	1
tt1014787	AIDS Inc.	US	\N	imdbDisplay	\N	0
tt28712874	#304 - America Ferrera	\N	\N	original	\N	1
tt30316821	Episode #1.6	\N	\N	original	\N	1
tt30316821	Episódio #1.6	PT	pt	\N	\N	0
tt30316821	एपिसोड #1.6	IN	hi	\N	\N	0
tt30316821	Épisode #1.6	FR	fr	\N	\N	0
tt30316821	Episodio #1.6	IT	it	\N	\N	0
tt30316821	Folge #1.6	DE	de	\N	\N	0
tt30316821	エピソード #1.6	JP	ja	\N	\N	0
tt30316821	Episodio #1.6	ES	es	\N	\N	0
tt14967056	Cohabitation	\N	\N	original	\N	1
tt14967056	Cohabitation	US	\N	imdbDisplay	\N	0
tt5356630	Heat 3: Cartoons and Animations	\N	\N	original	\N	1
tt5356630	Heat 3: Cartoons and Animations	GB	\N	\N	\N	0
tt34625276	All the Colors of the Dark (1972)/The Case of the Bloody Iris (1972)	\N	\N	original	\N	1
tt6312672	Episode #1.264	\N	\N	original	\N	1
tt6312672	Episódio #1.264	PT	pt	\N	\N	0
tt6312672	एपिसोड #1.264	IN	hi	\N	\N	0
tt6312672	Épisode #1.264	FR	fr	\N	\N	0
tt6312672	Folge #1.264	DE	de	\N	\N	0
tt6312672	エピソード #1.264	JP	ja	\N	\N	0
tt6312672	Episodio #1.264	ES	es	\N	\N	0
tt27662794	Look at Life: Controlled Landing	\N	\N	original	\N	1
tt27662794	Look at Life: Controlled Landing	GB	\N	\N	\N	0
tt1934370	Písen o veliké lásce	\N	\N	original	\N	1
tt1934370	Písen o veliké lásce	CSHH	\N	imdbDisplay	\N	0
tt3888132	Episode #1.54	\N	\N	original	\N	1
tt3888132	Episódio #1.54	PT	pt	\N	\N	0
tt3888132	एपिसोड #1.54	IN	hi	\N	\N	0
tt3888132	Épisode #1.54	FR	fr	\N	\N	0
tt3888132	Episodio #1.54	IT	it	\N	\N	0
tt3888132	Folge #1.54	DE	de	\N	\N	0
tt3888132	エピソード #1.54	JP	ja	\N	\N	0
tt3888132	Episodio #1.54	ES	es	\N	\N	0
tt8720660	19th June 2018 Evening News	\N	\N	original	\N	1
tt14018394	Episode #1.14095	\N	\N	original	\N	1
tt14018394	Episódio #1.14095	PT	pt	\N	\N	0
tt14018394	एपिसोड #1.14095	IN	hi	\N	\N	0
tt14018394	Épisode #1.14095	FR	fr	\N	\N	0
tt14018394	Episodio #1.14095	IT	it	\N	\N	0
tt14018394	Folge #1.14095	DE	de	\N	\N	0
tt14018394	エピソード #1.14095	JP	ja	\N	\N	0
tt14018394	Episodio #1.14095	ES	es	\N	\N	0
tt26736246	Episode 7	\N	\N	original	\N	1
tt2635882	Buba Shel Layla	\N	\N	original	\N	1
tt2635882	Buba Shel Layla	IL	he	imdbDisplay	\N	0
tt21215940	Clue (SNES)	\N	\N	original	\N	1
tt1755773	Buying the Games	\N	\N	original	\N	1
tt1755773	Buying the Games	GB	\N	\N	\N	0
tt13223530	Namma Kuzhaindagal	\N	\N	original	\N	1
tt13223530	Namma Kuzhaindagal	IN	\N	\N	\N	0
tt12657232	Episode #14.129	\N	\N	original	\N	1
tt12657232	Episódio #14.129	PT	pt	\N	\N	0
tt12657232	एपिसोड #14.129	IN	hi	\N	\N	0
tt12657232	Épisode #14.129	FR	fr	\N	\N	0
tt12657232	Episodio #14.129	IT	it	\N	\N	0
tt12657232	Folge #14.129	DE	de	\N	\N	0
tt12657232	エピソード #14.129	JP	ja	\N	\N	0
tt12657232	Episodio #14.129	ES	es	\N	\N	0
tt25151784	Episode #1.30	\N	\N	original	\N	1
tt25151784	Episódio #1.30	PT	pt	\N	\N	0
tt25151784	एपिसोड #1.30	IN	hi	\N	\N	0
tt25151784	Épisode #1.30	FR	fr	\N	\N	0
tt25151784	Episodio #1.30	IT	it	\N	\N	0
tt25151784	Folge #1.30	DE	de	\N	\N	0
tt25151784	エピソード #1.30	JP	ja	\N	\N	0
tt25151784	Episodio #1.30	ES	es	\N	\N	0
tt15072918	Les bidasses: le service militaire	\N	\N	original	\N	1
tt0099311	The Court-Martial of Jackie Robinson	\N	\N	original	\N	1
tt0099311	Tribunal Militar para Jackie Robinson	PT	\N	\N	\N	0
tt0099311	A Corte Marcial	BR	\N	\N	\N	0
tt0099311	Consejo de guerra	ES	\N	imdbDisplay	\N	0
tt0099311	Jackie Robinson	PL	\N	imdbDisplay	\N	0
tt0099311	Jackie Robinson: Le procès d'un héros	CA	fr	imdbDisplay	\N	0
tt0099311	Rättegången mot Jackie Robinson	SE	\N	\N	video box title	0
tt0099311	Sotaoikeuden edessä	FI	\N	\N	\N	0
tt0099311	The Court-Martial of Jackie Robinson	US	\N	imdbDisplay	\N	0
tt0099311	Tribunal de honor	ES	\N	video	\N	0
tt12338814	Why Butch Hartman STINKS!!	\N	\N	original	\N	1
tt12338814	Why Butch Hartman STINKS!!	US	\N	\N	\N	0
tt9845442	Episode #1.399	\N	\N	original	\N	1
tt9845442	Episódio #1.399	PT	pt	\N	\N	0
tt9845442	एपिसोड #1.399	IN	hi	\N	\N	0
tt9845442	Épisode #1.399	FR	fr	\N	\N	0
tt9845442	Episodio #1.399	IT	it	\N	\N	0
tt9845442	Folge #1.399	DE	de	\N	\N	0
tt9845442	エピソード #1.399	JP	ja	\N	\N	0
tt9845442	Episodio #1.399	ES	es	\N	\N	0
tt5298464	Episode #1.10	\N	\N	original	\N	1
tt5298464	Episódio #1.10	PT	pt	\N	\N	0
tt5298464	एपिसोड #1.10	IN	hi	\N	\N	0
tt5298464	Épisode #1.10	FR	fr	\N	\N	0
tt5298464	Episodio #1.10	IT	it	\N	\N	0
tt5298464	Folge #1.10	DE	de	\N	\N	0
tt5298464	エピソード #1.10	JP	ja	\N	\N	0
tt5298464	Episodio #1.10	ES	es	\N	\N	0
tt11986152	Chota Packet Bada Dhamaka	\N	\N	original	\N	1
tt35441616	Los Bipolares hablan de su nuevo disco "El hombre más feliz del mundo"	\N	\N	original	\N	1
tt10270220	Sous la peau	\N	\N	original	\N	1
tt8514626	Do You B'leed In Magic	\N	\N	original	\N	1
tt6818168	El Titi y Bruce Lee de peleas	\N	\N	original	\N	1
tt1886422	Episode #1.47	\N	\N	original	\N	1
tt1886422	Episódio #1.47	PT	pt	\N	\N	0
tt1886422	एपिसोड #1.47	IN	hi	\N	\N	0
tt1886422	Épisode #1.47	FR	fr	\N	\N	0
tt1886422	Episodio #1.47	IT	it	\N	\N	0
tt1886422	Folge #1.47	DE	de	\N	\N	0
tt1886422	エピソード #1.47	JP	ja	\N	\N	0
tt1886422	Episodio #1.47	ES	es	\N	\N	0
tt30737907	Kárpátalja Expressz	\N	\N	original	\N	1
tt30737907	Kárpátalja Expressz	HU	\N	\N	\N	0
tt14913300	Mike Gutridge Interview	\N	\N	original	\N	1
tt8658644	Preparation For Bad Fortune. Based on chapter XXV in 'The Prince': 'Of the influence of fortune in human affairs, and how it may be counteracted'	\N	\N	original	\N	1
tt27074230	Episode #1.4359	\N	\N	original	\N	1
tt27074230	Episódio #1.4359	PT	pt	\N	\N	0
tt27074230	एपिसोड #1.4359	IN	hi	\N	\N	0
tt27074230	Épisode #1.4359	FR	fr	\N	\N	0
tt27074230	Episodio #1.4359	IT	it	\N	\N	0
tt27074230	Folge #1.4359	DE	de	\N	\N	0
tt27074230	エピソード #1.4359	JP	ja	\N	\N	0
tt27074230	Episodio #1.4359	ES	es	\N	\N	0
tt34153151	Episode #1.1036	\N	\N	original	\N	1
tt34153151	Episódio #1.1036	PT	pt	\N	\N	0
tt34153151	एपिसोड #1.1036	IN	hi	\N	\N	0
tt34153151	Épisode #1.1036	FR	fr	\N	\N	0
tt34153151	Episodio #1.1036	IT	it	\N	\N	0
tt34153151	Folge #1.1036	DE	de	\N	\N	0
tt34153151	エピソード #1.1036	JP	ja	\N	\N	0
tt34153151	Episodio #1.1036	ES	es	\N	\N	0
tt7650018	Avsnitt 2	\N	\N	original	\N	1
tt0602307	Cuisine à la Stalag 13	\N	\N	original	\N	1
tt0602307	Cuisine à la Stalag 13	US	\N	\N	\N	0
tt3173212	Episode #1.40	\N	\N	original	\N	1
tt3173212	Episódio #1.40	PT	pt	\N	\N	0
tt3173212	एपिसोड #1.40	IN	hi	\N	\N	0
tt3173212	Épisode #1.40	FR	fr	\N	\N	0
tt3173212	Episodio #1.40	IT	it	\N	\N	0
tt3173212	Folge #1.40	DE	de	\N	\N	0
tt3173212	エピソード #1.40	JP	ja	\N	\N	0
tt3173212	Episodio #1.40	ES	es	\N	\N	0
tt4085854	2010 FWBC Camping Trip: Pastor Anderson's Sermon	\N	\N	original	\N	1
tt6842868	Addicted to Love	\N	\N	original	\N	1
tt6842868	Addicted to Love	US	\N	imdbDisplay	\N	0
tt6445822	Episode #1.6515	\N	\N	original	\N	1
tt6445822	Episódio #1.6515	PT	pt	\N	\N	0
tt6445822	एपिसोड #1.6515	IN	hi	\N	\N	0
tt6445822	Épisode #1.6515	FR	fr	\N	\N	0
tt6445822	Episodio #1.6515	IT	it	\N	\N	0
tt6445822	Folge #1.6515	DE	de	\N	\N	0
tt6445822	エピソード #1.6515	JP	ja	\N	\N	0
tt6445822	Episodio #1.6515	ES	es	\N	\N	0
tt10637370	Scooter Derek, This Is Your Life	\N	\N	original	\N	1
tt29273868	Episode #1.5855	\N	\N	original	\N	1
tt29273868	Episódio #1.5855	PT	pt	\N	\N	0
tt29273868	एपिसोड #1.5855	IN	hi	\N	\N	0
tt29273868	Épisode #1.5855	FR	fr	\N	\N	0
tt29273868	Episodio #1.5855	IT	it	\N	\N	0
tt29273868	Folge #1.5855	DE	de	\N	\N	0
tt29273868	エピソード #1.5855	JP	ja	\N	\N	0
tt29273868	Episodio #1.5855	ES	es	\N	\N	0
tt3637698	Jon Lovitz/Ally Walker/Rusted Root	\N	\N	original	\N	1
tt0595110	Marukô nôto	\N	\N	original	\N	1
tt0595110	Marcoh's Notes	US	\N	\N	\N	0
tt7956220	Episode #1.33	\N	\N	original	\N	1
tt7956220	Episódio #1.33	PT	pt	\N	\N	0
tt7956220	एपिसोड #1.33	IN	hi	\N	\N	0
tt7956220	Épisode #1.33	FR	fr	\N	\N	0
tt7956220	Episodio #1.33	IT	it	\N	\N	0
tt7956220	Folge #1.33	DE	de	\N	\N	0
tt7956220	エピソード #1.33	JP	ja	\N	\N	0
tt7956220	Episodio #1.33	ES	es	\N	\N	0
tt32268246	Randall Hall (2/7/12)	\N	\N	original	\N	1
tt7489442	Women's day special	\N	\N	original	\N	1
tt8817384	Episode #1.8	\N	\N	original	\N	1
tt8817384	Episódio #1.8	PT	pt	\N	\N	0
tt8817384	एपिसोड #1.8	IN	hi	\N	\N	0
tt8817384	Épisode #1.8	FR	fr	\N	\N	0
tt8817384	Episodio #1.8	IT	it	\N	\N	0
tt8817384	Folge #1.8	DE	de	\N	\N	0
tt8817384	エピソード #1.8	JP	ja	\N	\N	0
tt8817384	Episodio #1.8	ES	es	\N	\N	0
tt8849934	Episode dated 23 October 2017	\N	\N	original	\N	1
tt8849934	Episódio datado de 23 Outubro de 2017	PT	pt	\N	\N	0
tt8849934	23 अक्टूबर 2017 को प्रसारित एपिसोड	IN	hi	\N	\N	0
tt8849934	Épisode datant du 23 octobre 2017	FR	fr	\N	\N	0
tt8849934	Episodio datato 23 ottobre 2017	IT	it	\N	\N	0
tt8849934	Folge vom 23. Oktober 2017	DE	de	\N	\N	0
tt8849934	2017年10月23日 のエピソード	JP	ja	\N	\N	0
tt8849934	Episodio fechado 23 octubre 2017	ES	es	\N	\N	0
tt28578224	Episode #1.5242	\N	\N	original	\N	1
tt28578224	Episódio #1.5242	PT	pt	\N	\N	0
tt28578224	एपिसोड #1.5242	IN	hi	\N	\N	0
tt28578224	Épisode #1.5242	FR	fr	\N	\N	0
tt28578224	Episodio #1.5242	IT	it	\N	\N	0
tt28578224	Folge #1.5242	DE	de	\N	\N	0
tt28578224	エピソード #1.5242	JP	ja	\N	\N	0
tt28578224	Episodio #1.5242	ES	es	\N	\N	0
tt26446160	Voittaja ratkeaa!	\N	\N	original	\N	1
tt0781472	Seventh Anniversary	\N	\N	original	\N	1
tt0781472	Seventh Anniversary	JP	ja	imdbDisplay	\N	0
tt0781472	セブンス アニバーサリー	JP	\N	imdbDisplay	\N	0
tt0781472	七週年	HK	cmn	\N	literal title	0
tt27199631	Episode #1.340	\N	\N	original	\N	1
tt27199631	Episódio #1.340	PT	pt	\N	\N	0
tt27199631	एपिसोड #1.340	IN	hi	\N	\N	0
tt27199631	Épisode #1.340	FR	fr	\N	\N	0
tt27199631	Episodio #1.340	IT	it	\N	\N	0
tt27199631	Folge #1.340	DE	de	\N	\N	0
tt27199631	エピソード #1.340	JP	ja	\N	\N	0
tt27199631	Episodio #1.340	ES	es	\N	\N	0
tt1063739	Episode #1.6591	\N	\N	original	\N	1
tt1063739	Episódio #1.6591	PT	pt	\N	\N	0
tt1063739	एपिसोड #1.6591	IN	hi	\N	\N	0
tt1063739	Épisode #1.6591	FR	fr	\N	\N	0
tt1063739	Episodio #1.6591	IT	it	\N	\N	0
tt1063739	Folge #1.6591	DE	de	\N	\N	0
tt1063739	エピソード #1.6591	JP	ja	\N	\N	0
tt1063739	Episodio #1.6591	ES	es	\N	\N	0
tt16066310	20. mai 2014 kl. 20:55	\N	\N	original	\N	1
tt16066310	20. mai 2014 kl. 20:55	NO	\N	\N	\N	0
tt0613729	The Bob Hope Show	\N	\N	original	\N	1
tt0613729	The Bob Hope Show	US	\N	\N	\N	0
tt1377507	Let Me Go	\N	\N	original	\N	1
tt1377507	Let Me Go	US	\N	imdbDisplay	\N	0
tt0320300	Portret: Miki Muster	\N	\N	original	\N	1
tt0320300	Portret: Miki Muster	SI	\N	imdbDisplay	\N	0
tt32919395	Folge #1.2087	DE	de	\N	\N	0
tt4218926	Surface 4: The Pantheon	\N	\N	original	\N	1
tt4218926	Surface 4: The Pantheon	US	\N	\N	\N	0
tt1900675	Surprising Health Dangers You Never Knew	\N	\N	original	\N	1
tt1900675	Surprising Health Dangers You Never Knew	US	\N	\N	\N	0
tt7543426	Episode dated 27 October 2017	\N	\N	original	\N	1
tt7543426	Episódio datado de 27 Outubro de 2017	PT	pt	\N	\N	0
tt7543426	27 अक्टूबर 2017 को प्रसारित एपिसोड	IN	hi	\N	\N	0
tt7543426	Épisode datant du 27 octobre 2017	FR	fr	\N	\N	0
tt7543426	Episodio datato 27 ottobre 2017	IT	it	\N	\N	0
tt7543426	Folge vom 27. Oktober 2017	DE	de	\N	\N	0
tt7543426	2017年10月27日 のエピソード	JP	ja	\N	\N	0
tt7543426	Episodio fechado 27 octubre 2017	ES	es	\N	\N	0
tt13192086	Episode #13.60	\N	\N	original	\N	1
tt13192086	Episódio #13.60	PT	pt	\N	\N	0
tt13192086	एपिसोड #13.60	IN	hi	\N	\N	0
tt13192086	Épisode #13.60	FR	fr	\N	\N	0
tt13192086	Episodio #13.60	IT	it	\N	\N	0
tt13192086	Folge #13.60	DE	de	\N	\N	0
tt13192086	エピソード #13.60	JP	ja	\N	\N	0
tt13192086	Episodio #13.60	ES	es	\N	\N	0
tt0011342	It's a Boy	\N	\N	original	\N	1
tt0011342	It's a Boy	US	\N	imdbDisplay	\N	0
tt6859608	Episode #1.36	\N	\N	original	\N	1
tt6859608	Episódio #1.36	PT	pt	\N	\N	0
tt6859608	एपिसोड #1.36	IN	hi	\N	\N	0
tt6859608	Épisode #1.36	FR	fr	\N	\N	0
tt6859608	Episodio #1.36	IT	it	\N	\N	0
tt6859608	Folge #1.36	DE	de	\N	\N	0
tt6859608	エピソード #1.36	JP	ja	\N	\N	0
tt6859608	Episodio #1.36	ES	es	\N	\N	0
tt3127864	Robert Reaves: Oct. 1 Testimony (Day 3, Part 1)	\N	\N	original	\N	1
tt15794426	10. okt. 2019 - Politisk kvarter	\N	\N	original	\N	1
tt3218850	Hernán escapa	\N	\N	original	\N	1
tt3218850	Hernán escapa	MX	\N	\N	\N	0
tt35319700	Interview with Wes Huff and GodLogic	\N	\N	original	\N	1
tt0456813	Viva el teatro	\N	\N	original	\N	1
tt0456813	Viva el teatro	CL	\N	imdbDisplay	\N	0
tt21270542	Jessica und Jennifer	\N	\N	original	\N	1
tt21270542	Jessica und Jennifer	DE	\N	\N	\N	0
tt32727495	Episode #1.10	\N	\N	original	\N	1
tt32727495	Episódio #1.10	PT	pt	\N	\N	0
tt32727495	एपिसोड #1.10	IN	hi	\N	\N	0
tt32727495	Épisode #1.10	FR	fr	\N	\N	0
tt32727495	Episodio #1.10	IT	it	\N	\N	0
tt32727495	Folge #1.10	DE	de	\N	\N	0
tt32727495	エピソード #1.10	JP	ja	\N	\N	0
tt32727495	Episodio #1.10	ES	es	\N	\N	0
tt16235608	Episode #3.150	\N	\N	original	\N	1
tt16235608	Episódio #3.150	PT	pt	\N	\N	0
tt16235608	एपिसोड #3.150	IN	hi	\N	\N	0
tt16235608	Épisode #3.150	FR	fr	\N	\N	0
tt16235608	Episodio #3.150	IT	it	\N	\N	0
tt16235608	Folge #3.150	DE	de	\N	\N	0
tt16235608	エピソード #3.150	JP	ja	\N	\N	0
tt16235608	Episodio #3.150	ES	es	\N	\N	0
tt18072628	19/10/2021	\N	\N	original	\N	1
tt11630922	Episode #1.351	\N	\N	original	\N	1
tt11630922	Episódio #1.351	PT	pt	\N	\N	0
tt11630922	एपिसोड #1.351	IN	hi	\N	\N	0
tt11630922	Épisode #1.351	FR	fr	\N	\N	0
tt11630922	Episodio #1.351	IT	it	\N	\N	0
tt11630922	Folge #1.351	DE	de	\N	\N	0
tt11630922	エピソード #1.351	JP	ja	\N	\N	0
tt11630922	Episodio #1.351	ES	es	\N	\N	0
tt3287444	Episode dated 31 October 2013	\N	\N	original	\N	1
tt3287444	Episódio datado de 31 Outubro de 2013	PT	pt	\N	\N	0
tt3287444	31 अक्टूबर 2013 को प्रसारित एपिसोड	IN	hi	\N	\N	0
tt3287444	Épisode datant du 31 octobre 2013	FR	fr	\N	\N	0
tt3287444	Episodio datato 31 ottobre 2013	IT	it	\N	\N	0
tt3287444	Folge vom 31. Oktober 2013	DE	de	\N	\N	0
tt3287444	2013年10月31日 のエピソード	JP	ja	\N	\N	0
tt3287444	Episodio fechado 31 octubre 2013	ES	es	\N	\N	0
tt1921364	Wasiyat	\N	\N	original	\N	1
tt12163244	Episode #1.8	\N	\N	original	\N	1
tt12163244	Episódio #1.8	PT	pt	\N	\N	0
tt12163244	एपिसोड #1.8	IN	hi	\N	\N	0
tt12163244	Épisode #1.8	FR	fr	\N	\N	0
tt12163244	Episodio #1.8	IT	it	\N	\N	0
tt12163244	Folge #1.8	DE	de	\N	\N	0
tt12163244	エピソード #1.8	JP	ja	\N	\N	0
tt12163244	Episodio #1.8	ES	es	\N	\N	0
tt5608490	45th Grey Cup	\N	\N	original	\N	1
tt5608490	45th Grey Cup	CA	\N	\N	\N	0
tt0847203	Tim Stack's Family Vacation	\N	\N	original	\N	1
tt0847203	Tim Stack's Family Vacation	US	\N	imdbDisplay	\N	0
tt2101793	Haley/Mary	\N	\N	original	\N	1
tt10537660	Mystère à Saint-Tropez	\N	\N	original	\N	1
tt10537660	Misterio en Saint-Tropez	ES	\N	imdbDisplay	\N	0
tt10537660	Mistero a Saint Tropez	IT	\N	imdbDisplay	\N	0
tt10537660	Mord in Saint-Tropez	DE	\N	imdbDisplay	\N	0
tt10537660	Mord in Saint-Tropez - Ein Fall für Inspektor Boulin	DE	\N	\N	complete title	0
tt10537660	Mystère à Saint-Tropez: Une enquête de l'inspecteur Boulin	FR	\N	\N	complete title	0
tt10537660	Mystery in St Tropez	US	\N	\N	new title	0
tt10537660	Mystery in St. Tropez	SG	en	alternative	\N	0
tt10537660	Rejtély a Riviérán	HU	\N	imdbDisplay	\N	0
tt10537660	Tajemnice Saint-Tropez	PL	\N	imdbDisplay	\N	0
tt10537660	Tajne Azure obale	HR	\N	imdbDisplay	\N	0
tt10537660	Mystère à Saint-Tropez	BE	\N	imdbDisplay	\N	0
tt10537660	Záhada v Saint-Tropez	CZ	\N	imdbDisplay	\N	0
tt33363660	Folge #1.46	DE	de	\N	\N	0
tt10537660	Κάτι τρέχει στο Σεν Τροπέ	GR	\N	imdbDisplay	\N	0
tt10537660	Таємниця Сен-Тропе	UA	\N	imdbDisplay	\N	0
tt10537660	Тайна Сен-Тропе	RU	\N	imdbDisplay	\N	0
tt10537660	Mystère à Saint-Tropez	FR	\N	imdbDisplay	\N	0
tt10537660	Mystère à Saint-Tropez	LU	fr	imdbDisplay	\N	0
tt10537660	Mystère à Saint-Tropez	SE	\N	imdbDisplay	\N	0
tt10537660	Do You Do You Saint-Tropez	FR	\N	working	\N	0
tt10537660	Do You Do You Saint-Tropez	GB	\N	imdbDisplay	\N	0
tt10537660	Do You Do You Saint-Tropez	US	\N	imdbDisplay	\N	0
tt10537660	Mistério em Saint-Tropez	PT	\N	imdbDisplay	\N	0
tt19722430	Twitch sperrt User, Triller kämpft gegen Tik Tok, Eishockey und Fußball	\N	\N	original	\N	1
tt11611354	Alyssa Bustamante	\N	\N	original	\N	1
tt30276030	Episode #1.5784	\N	\N	original	\N	1
tt30276030	Episódio #1.5784	PT	pt	\N	\N	0
tt30276030	एपिसोड #1.5784	IN	hi	\N	\N	0
tt30276030	Épisode #1.5784	FR	fr	\N	\N	0
tt30276030	Episodio #1.5784	IT	it	\N	\N	0
tt30276030	Folge #1.5784	DE	de	\N	\N	0
tt30276030	エピソード #1.5784	JP	ja	\N	\N	0
tt30276030	Episodio #1.5784	ES	es	\N	\N	0
tt0510524	Mutterliebe	\N	\N	original	\N	1
tt28549748	Full Moon	\N	\N	original	\N	1
tt28549748	Full Moon	JP	\N	\N	\N	0
tt18073740	Episode #1.2877	\N	\N	original	\N	1
tt18073740	Episódio #1.2877	PT	pt	\N	\N	0
tt18073740	एपिसोड #1.2877	IN	hi	\N	\N	0
tt18073740	Épisode #1.2877	FR	fr	\N	\N	0
tt18073740	Episodio #1.2877	IT	it	\N	\N	0
tt18073740	Folge #1.2877	DE	de	\N	\N	0
tt18073740	エピソード #1.2877	JP	ja	\N	\N	0
tt18073740	Episodio #1.2877	ES	es	\N	\N	0
tt3413830	Episode dated 12 February 1994	\N	\N	original	\N	1
tt3413830	Episódio datado de 12 Fevereiro de 1994	PT	pt	\N	\N	0
tt3413830	12 फ़रवरी 1994 को प्रसारित एपिसोड	IN	hi	\N	\N	0
tt3413830	Épisode datant du 12 février 1994	FR	fr	\N	\N	0
tt3413830	Episodio datato 12 febbraio 1994	IT	it	\N	\N	0
tt3413830	Folge vom 12. Februar 1994	DE	de	\N	\N	0
tt3413830	1994年2月12日 のエピソード	JP	ja	\N	\N	0
tt3413830	Episodio fechado 12 febrero 1994	ES	es	\N	\N	0
tt8553926	The Principles of Magnetic Workholding	\N	\N	original	\N	1
tt8553926	The Principles of Magnetic Workholding	GB	\N	imdbDisplay	\N	0
tt0929487	Uksuum Cauyai: The Drums of Winter	\N	\N	original	\N	1
tt0929487	Uksuum Cauyai: The Drums of Winter	US	\N	\N	\N	0
tt14021866	50 People Try To Make Dough	\N	\N	original	\N	1
tt28655501	Episode #1.113	\N	\N	original	\N	1
tt28655501	Episódio #1.113	PT	pt	\N	\N	0
tt28655501	एपिसोड #1.113	IN	hi	\N	\N	0
tt28655501	Épisode #1.113	FR	fr	\N	\N	0
tt28655501	Episodio #1.113	IT	it	\N	\N	0
tt28655501	Folge #1.113	DE	de	\N	\N	0
tt28655501	エピソード #1.113	JP	ja	\N	\N	0
tt28655501	Episodio #1.113	ES	es	\N	\N	0
tt14792880	Jane	\N	\N	original	\N	1
tt14792880	Jane	IN	\N	\N	\N	0
tt0563260	Bionic Man	\N	\N	original	\N	1
tt0563260	Bionic Man	GB	\N	\N	\N	0
tt1323446	Episode #1.12	\N	\N	original	\N	1
tt1323446	Episódio #1.12	PT	pt	\N	\N	0
tt1323446	एपिसोड #1.12	IN	hi	\N	\N	0
tt1323446	Épisode #1.12	FR	fr	\N	\N	0
tt1323446	Episodio #1.12	IT	it	\N	\N	0
tt1323446	Folge #1.12	DE	de	\N	\N	0
tt1323446	エピソード #1.12	JP	ja	\N	\N	0
tt1323446	Episodio #1.12	ES	es	\N	\N	0
tt2687770	Episode dated 11 January 1979	\N	\N	original	\N	1
tt2687770	Episódio datado de 11 Janeiro de 1979	PT	pt	\N	\N	0
tt2687770	11 जनवरी 1979 को प्रसारित एपिसोड	IN	hi	\N	\N	0
tt2687770	Épisode datant du 11 janvier 1979	FR	fr	\N	\N	0
tt2687770	Episodio datato 11 gennaio 1979	IT	it	\N	\N	0
tt2687770	Folge vom 11. Januar 1979	DE	de	\N	\N	0
tt2687770	1979年1月11日 のエピソード	JP	ja	\N	\N	0
tt2687770	Episodio fechado 11 enero 1979	ES	es	\N	\N	0
tt4121898	Pubs in Portsmouth	\N	\N	original	\N	1
tt4121898	Pubs in Portsmouth	GB	\N	imdbDisplay	\N	0
tt31436314	John and Lisa's Food Trip Down Under	\N	\N	original	\N	1
tt31436314	John and Lisa's Food Trip Down Under	AU	\N	imdbDisplay	\N	0
tt31436314	John and Lisa's Food Trip Down Under	GB	\N	imdbDisplay	\N	0
tt15801560	107 Nickelodeon Facts You Should Know!	\N	\N	original	\N	1
tt3300460	Gli Squallor	\N	\N	original	\N	1
tt3300460	Gli Squallor	IT	\N	imdbDisplay	\N	0
tt8836372	Oslo Havn	\N	\N	original	\N	1
tt8836372	Oslo Havn	NO	\N	imdbDisplay	\N	0
tt15254298	Episode #1.565	\N	\N	original	\N	1
tt15254298	Episódio #1.565	PT	pt	\N	\N	0
tt15254298	एपिसोड #1.565	IN	hi	\N	\N	0
tt15254298	Épisode #1.565	FR	fr	\N	\N	0
tt15254298	Episodio #1.565	IT	it	\N	\N	0
tt15254298	Folge #1.565	DE	de	\N	\N	0
tt15254298	エピソード #1.565	JP	ja	\N	\N	0
tt15254298	Episodio #1.565	ES	es	\N	\N	0
tt1738052	Carnival of Animals	\N	\N	original	\N	1
tt15132940	Episode dated 28 July 2021	\N	\N	original	\N	1
tt15132940	Episódio datado de 28 Julho de 2021	PT	pt	\N	\N	0
tt15132940	28 जुलाई 2021 को प्रसारित एपिसोड	IN	hi	\N	\N	0
tt15132940	Épisode datant du 28 juillet 2021	FR	fr	\N	\N	0
tt15132940	Episodio datato 28 luglio 2021	IT	it	\N	\N	0
tt15132940	Folge vom 28. Juli 2021	DE	de	\N	\N	0
tt15132940	2021年7月28日 のエピソード	JP	ja	\N	\N	0
tt15132940	Episodio fechado 28 julio 2021	ES	es	\N	\N	0
tt13651344	Episode #1.1037	\N	\N	original	\N	1
tt13651344	Episódio #1.1037	PT	pt	\N	\N	0
tt13651344	एपिसोड #1.1037	IN	hi	\N	\N	0
tt13651344	Épisode #1.1037	FR	fr	\N	\N	0
tt13651344	Episodio #1.1037	IT	it	\N	\N	0
tt13651344	Folge #1.1037	DE	de	\N	\N	0
tt13651344	エピソード #1.1037	JP	ja	\N	\N	0
tt13651344	Episodio #1.1037	ES	es	\N	\N	0
tt4116048	Patton Oswalt Confronts His Haters	\N	\N	original	\N	1
tt4116048	Patton Oswalt Confronts His Haters	US	\N	imdbDisplay	\N	0
tt1099850	Hell's Kitchen vs. Harlem	\N	\N	original	\N	1
tt11843952	Episode #3.116	\N	\N	original	\N	1
tt11843952	Episódio #3.116	PT	pt	\N	\N	0
tt11843952	एपिसोड #3.116	IN	hi	\N	\N	0
tt11843952	Épisode #3.116	FR	fr	\N	\N	0
tt11843952	Episodio #3.116	IT	it	\N	\N	0
tt11843952	Folge #3.116	DE	de	\N	\N	0
tt11843952	エピソード #3.116	JP	ja	\N	\N	0
tt11843952	Episodio #3.116	ES	es	\N	\N	0
tt4568854	The Encounters	\N	\N	original	\N	1
tt4568854	The Encounters	CA	\N	\N	\N	0
tt1377041	Episode dated 28 October 1991	\N	\N	original	\N	1
tt1377041	Episódio datado de 28 Outubro de 1991	PT	pt	\N	\N	0
tt1377041	28 अक्टूबर 1991 को प्रसारित एपिसोड	IN	hi	\N	\N	0
tt1377041	Épisode datant du 28 octobre 1991	FR	fr	\N	\N	0
tt1377041	Episodio datato 28 ottobre 1991	IT	it	\N	\N	0
tt1377041	Folge vom 28. Oktober 1991	DE	de	\N	\N	0
tt1377041	1991年10月28日 のエピソード	JP	ja	\N	\N	0
tt1377041	Episodio fechado 28 octubre 1991	ES	es	\N	\N	0
tt13622092	Episode dated 10 December 2020	\N	\N	original	\N	1
tt13622092	Episódio datado de 10 Dezembro de 2020	PT	pt	\N	\N	0
tt13622092	10 दिसम्बर 2020 को प्रसारित एपिसोड	IN	hi	\N	\N	0
tt13622092	Épisode datant du 10 décembre 2020	FR	fr	\N	\N	0
tt13622092	Episodio datato 10 dicembre 2020	IT	it	\N	\N	0
tt13622092	Folge vom 10. Dezember 2020	DE	de	\N	\N	0
tt13622092	2020年12月10日 のエピソード	JP	ja	\N	\N	0
tt13622092	Episodio fechado 10 diciembre 2020	ES	es	\N	\N	0
tt9489942	Teacher's Pet	\N	\N	original	\N	1
tt3972084	Café para llevar	\N	\N	original	\N	1
tt3972084	Café para llevar	DE	\N	imdbDisplay	\N	0
tt3972084	Café para llevar	ES	\N	imdbDisplay	\N	0
tt3972084	Coffee to Go	XWW	en	\N	subtitle	0
tt3972084	Kaffe att ta med	SE	\N	tv	\N	0
tt3469120	Elephant	\N	\N	original	\N	1
tt5390838	Episode #1.4888	\N	\N	original	\N	1
tt5390838	Episódio #1.4888	PT	pt	\N	\N	0
tt5390838	एपिसोड #1.4888	IN	hi	\N	\N	0
tt5390838	Épisode #1.4888	FR	fr	\N	\N	0
tt5390838	Episodio #1.4888	IT	it	\N	\N	0
tt5390838	Folge #1.4888	DE	de	\N	\N	0
tt5390838	エピソード #1.4888	JP	ja	\N	\N	0
tt5390838	Episodio #1.4888	ES	es	\N	\N	0
tt9030736	1922 - Berlijn	\N	\N	original	\N	1
tt4970204	Last Goodbye	\N	\N	original	\N	1
tt12233736	Episode #3.3	\N	\N	original	\N	1
tt12233736	Episódio #3.3	PT	pt	\N	\N	0
tt12233736	एपिसोड #3.3	IN	hi	\N	\N	0
tt12233736	Épisode #3.3	FR	fr	\N	\N	0
tt12233736	Episodio #3.3	IT	it	\N	\N	0
tt12233736	Folge #3.3	DE	de	\N	\N	0
tt12233736	エピソード #3.3	JP	ja	\N	\N	0
tt12233736	Episodio #3.3	ES	es	\N	\N	0
tt8670340	Episode #1.177	\N	\N	original	\N	1
tt8670340	Episódio #1.177	PT	pt	\N	\N	0
tt8670340	एपिसोड #1.177	IN	hi	\N	\N	0
tt8670340	Épisode #1.177	FR	fr	\N	\N	0
tt8670340	Episodio #1.177	IT	it	\N	\N	0
tt8670340	Folge #1.177	DE	de	\N	\N	0
tt8670340	エピソード #1.177	JP	ja	\N	\N	0
tt8670340	Episodio #1.177	ES	es	\N	\N	0
tt1957978	Nagarjunakonda	\N	\N	original	\N	1
tt1957978	Nagarjunakonda	IN	\N	\N	\N	0
tt6862016	The Expat	\N	\N	original	\N	1
tt6862016	The Expat	AU	\N	imdbDisplay	\N	0
tt6862016	The Expat	CA	en	imdbDisplay	\N	0
tt6862016	The Expat	GB	\N	imdbDisplay	\N	0
tt6862016	The Expat	JP	ja	imdbDisplay	\N	0
tt6862016	The Expat	PH	en	imdbDisplay	\N	0
tt6862016	The Expat	US	\N	imdbDisplay	\N	0
tt6151298	Inner Kitty	\N	\N	original	\N	1
tt6151298	Inner Kitty	US	\N	imdbDisplay	\N	0
tt31037916	Panorama 21/10/74	\N	\N	original	\N	1
tt7652348	ACCELERATING TRAGEDY: A UNIVERSE VANISHES!	\N	\N	original	\N	1
tt21054968	9 More Video Game WTFs (CONTINUED)	\N	\N	original	\N	1
tt4462914	Episode #1.50	\N	\N	original	\N	1
tt4462914	Episódio #1.50	PT	pt	\N	\N	0
tt4462914	एपिसोड #1.50	IN	hi	\N	\N	0
tt4462914	Épisode #1.50	FR	fr	\N	\N	0
tt4462914	Episodio #1.50	IT	it	\N	\N	0
tt4462914	Folge #1.50	DE	de	\N	\N	0
tt4462914	エピソード #1.50	JP	ja	\N	\N	0
tt4462914	Episodio #1.50	ES	es	\N	\N	0
tt1924831	Madeleine Kamman	\N	\N	original	\N	1
tt35277076	Episode dated 29 March 1992	\N	\N	original	\N	1
tt35277076	Episódio datado de 29 Março de 1992	PT	pt	\N	\N	0
tt35277076	29 मार्च 1992 को प्रसारित एपिसोड	IN	hi	\N	\N	0
tt35277076	Épisode datant du 29 mars 1992	FR	fr	\N	\N	0
tt35277076	Episodio datato 29 marzo 1992	IT	it	\N	\N	0
tt35277076	Folge vom 29. März 1992	DE	de	\N	\N	0
tt35277076	1992年3月29日 のエピソード	JP	ja	\N	\N	0
tt35277076	Episodio fechado 29 marzo 1992	ES	es	\N	\N	0
tt9335082	Episode #1.11	\N	\N	original	\N	1
tt9335082	Episódio #1.11	PT	pt	\N	\N	0
tt9335082	एपिसोड #1.11	IN	hi	\N	\N	0
tt9335082	Épisode #1.11	FR	fr	\N	\N	0
tt9335082	Episodio #1.11	IT	it	\N	\N	0
tt9335082	Folge #1.11	DE	de	\N	\N	0
tt9335082	エピソード #1.11	JP	ja	\N	\N	0
tt9335082	Episodio #1.11	ES	es	\N	\N	0
tt22502976	The Pizzeria	\N	\N	original	\N	1
tt3551418	Episode #1.1	\N	\N	original	\N	1
tt3551418	Episódio #1.1	PT	pt	\N	\N	0
tt3551418	एपिसोड #1.1	IN	hi	\N	\N	0
tt3551418	Épisode #1.1	FR	fr	\N	\N	0
tt3551418	Episodio #1.1	IT	it	\N	\N	0
tt3551418	Folge #1.1	DE	de	\N	\N	0
tt3551418	エピソード #1.1	JP	ja	\N	\N	0
tt3551418	Episodio #1.1	ES	es	\N	\N	0
tt4138122	Episode #1.37	\N	\N	original	\N	1
tt4138122	Episódio #1.37	PT	pt	\N	\N	0
tt4138122	एपिसोड #1.37	IN	hi	\N	\N	0
tt4138122	Épisode #1.37	FR	fr	\N	\N	0
tt4138122	Episodio #1.37	IT	it	\N	\N	0
tt4138122	Folge #1.37	DE	de	\N	\N	0
tt4138122	エピソード #1.37	JP	ja	\N	\N	0
tt4138122	Episodio #1.37	ES	es	\N	\N	0
tt8086740	Episode #1.66	\N	\N	original	\N	1
tt8086740	Episódio #1.66	PT	pt	\N	\N	0
tt8086740	एपिसोड #1.66	IN	hi	\N	\N	0
tt8086740	Épisode #1.66	FR	fr	\N	\N	0
tt8086740	Episodio #1.66	IT	it	\N	\N	0
tt8086740	Folge #1.66	DE	de	\N	\N	0
tt8086740	エピソード #1.66	JP	ja	\N	\N	0
tt8086740	Episodio #1.66	ES	es	\N	\N	0
tt27482522	Episode dated 15 June 2016	\N	\N	original	\N	1
tt27482522	Episódio datado de 15 Junho de 2016	PT	pt	\N	\N	0
tt27482522	15 जून 2016 को प्रसारित एपिसोड	IN	hi	\N	\N	0
tt27482522	Épisode datant du 15 juin 2016	FR	fr	\N	\N	0
tt27482522	Episodio datato 15 giugno 2016	IT	it	\N	\N	0
tt27482522	Folge vom 15. Juni 2016	DE	de	\N	\N	0
tt27482522	2016年6月15日 のエピソード	JP	ja	\N	\N	0
tt27482522	Episodio fechado 15 junio 2016	ES	es	\N	\N	0
tt5731836	Episode #1.982	\N	\N	original	\N	1
tt5731836	Episódio #1.982	PT	pt	\N	\N	0
tt5731836	एपिसोड #1.982	IN	hi	\N	\N	0
tt5731836	Épisode #1.982	FR	fr	\N	\N	0
tt5731836	Episodio #1.982	IT	it	\N	\N	0
tt5731836	Folge #1.982	DE	de	\N	\N	0
tt5731836	エピソード #1.982	JP	ja	\N	\N	0
tt5731836	Episodio #1.982	ES	es	\N	\N	0
tt10664536	Chuck Grows a Mustache	\N	\N	original	\N	1
tt3960290	On the Hook	\N	\N	original	\N	1
tt3960290	On the Hook	IT	\N	imdbDisplay	\N	0
tt3960290	On the Hook	US	\N	imdbDisplay	\N	0
tt7187398	Episode #1.4	\N	\N	original	\N	1
tt7187398	Episódio #1.4	PT	pt	\N	\N	0
tt7187398	एपिसोड #1.4	IN	hi	\N	\N	0
tt7187398	Épisode #1.4	FR	fr	\N	\N	0
tt7187398	Episodio #1.4	IT	it	\N	\N	0
tt7187398	Folge #1.4	DE	de	\N	\N	0
tt7187398	エピソード #1.4	JP	ja	\N	\N	0
tt7187398	Episodio #1.4	ES	es	\N	\N	0
tt15419914	Committed to the Craft	\N	\N	original	\N	1
tt15419914	Committed to the Craft	US	\N	imdbDisplay	\N	0
tt17678208	S1E11	\N	\N	original	\N	1
tt0500733	Episode dated 26 April 1980	\N	\N	original	\N	1
tt0500733	Episódio datado de 26 Abril de 1980	PT	pt	\N	\N	0
tt0500733	26 अप्रैल 1980 को प्रसारित एपिसोड	IN	hi	\N	\N	0
tt0500733	Épisode datant du 26 avril 1980	FR	fr	\N	\N	0
tt0500733	Episodio datato 26 aprile 1980	IT	it	\N	\N	0
tt0500733	Folge vom 26. April 1980	DE	de	\N	\N	0
tt0500733	1980年4月26日 のエピソード	JP	ja	\N	\N	0
tt0500733	Episodio fechado 26 abril 1980	ES	es	\N	\N	0
tt0918116	Unhealthy Competition	\N	\N	original	\N	1
tt28658425	Cambridge, Massachusetts	\N	\N	original	\N	1
tt10063006	Round of 64: Iona vs. North Carolina	\N	\N	original	\N	1
tt0989024	Long John	\N	\N	original	\N	1
tt0989024	Long John	NG	\N	\N	\N	0
tt14717216	Nosso Amor Vai Embora	\N	\N	original	\N	1
tt14717216	Nosso Amor Vai Embora	BR	\N	imdbDisplay	\N	0
tt2350455	Episode dated 9 February 2004	\N	\N	original	\N	1
tt2350455	Episódio datado de 9 Fevereiro de 2004	PT	pt	\N	\N	0
tt2350455	9 फ़रवरी 2004 को प्रसारित एपिसोड	IN	hi	\N	\N	0
tt2350455	Épisode datant du 9 février 2004	FR	fr	\N	\N	0
tt2350455	Episodio datato 9 febbraio 2004	IT	it	\N	\N	0
tt2350455	Folge vom 9. Februar 2004	DE	de	\N	\N	0
tt2350455	2004年2月9日 のエピソード	JP	ja	\N	\N	0
tt2350455	Episodio fechado 9 febrero 2004	ES	es	\N	\N	0
tt28565287	Episode dated 19 August 2023	\N	\N	original	\N	1
tt28565287	Episódio datado de 19 Agosto de 2023	PT	pt	\N	\N	0
tt28565287	19 अगस्त 2023 को प्रसारित एपिसोड	IN	hi	\N	\N	0
tt28565287	Épisode datant du 19 août 2023	FR	fr	\N	\N	0
tt28565287	Episodio datato 19 agosto 2023	IT	it	\N	\N	0
tt28565287	Folge vom 19. August 2023	DE	de	\N	\N	0
tt28565287	2023年8月19日 のエピソード	JP	ja	\N	\N	0
tt28565287	Episodio fechado 19 agosto 2023	ES	es	\N	\N	0
tt5729504	Thirst	\N	\N	original	\N	1
tt5729504	新エイリアン　最終繁殖	JP	ja	imdbDisplay	\N	0
tt5729504	Thirst	CH	\N	\N	\N	0
tt2794440	Aflevering 4670	\N	\N	original	\N	1
tt0346778	A College Boomerang	\N	\N	original	\N	1
tt0346778	A College Boomerang	US	\N	imdbDisplay	\N	0
tt6989356	Wie gewonnen, so zerronnen	\N	\N	original	\N	1
tt6989356	Wie gewonnen, so zerronnen	DE	\N	\N	\N	0
tt0873148	Episode dated 28 September 2006	\N	\N	original	\N	1
tt0873148	Episódio datado de 28 Setembro de 2006	PT	pt	\N	\N	0
tt0873148	28 सितम्बर 2006 को प्रसारित एपिसोड	IN	hi	\N	\N	0
tt0873148	Épisode datant du 28 septembre 2006	FR	fr	\N	\N	0
tt0873148	Episodio datato 28 settembre 2006	IT	it	\N	\N	0
tt0873148	Folge vom 28. September 2006	DE	de	\N	\N	0
tt0873148	2006年9月28日 のエピソード	JP	ja	\N	\N	0
tt0873148	Episodio fechado 28 septiembre 2006	ES	es	\N	\N	0
tt2559248	Ice Chip Off the Old Block	\N	\N	original	\N	1
tt0434722	Spoorloos verdwenen	\N	\N	original	\N	1
tt0434722	Spoorloos verdwenen	NL	\N	\N	\N	0
tt10856380	Jiang Ye 2	\N	\N	original	\N	1
tt10856380	Ever Night	\N	\N	working	\N	0
tt10856380	Ever Night: Season 2	IT	\N	imdbDisplay	\N	0
tt10856380	Jiang Ye 2	CN	cmn	\N	alternative transliteration	0
tt10856380	Malam Abadi S2	ID	id	\N	alternative transliteration	0
tt10856380	Tương Dạ 2	VN	\N	imdbDisplay	\N	0
tt10856380	将夜2	CN	cmn	imdbDisplay	\N	0
tt10856380	Ever Night 2	CA	en	imdbDisplay	\N	0
tt10856380	Ever Night 2	DE	\N	imdbDisplay	\N	0
tt10856380	Ever Night 2	IN	en	imdbDisplay	\N	0
tt10856380	Ever Night 2	PH	en	imdbDisplay	\N	0
tt10856380	Ever Night 2	SG	en	imdbDisplay	\N	0
tt10856380	Ever Night 2	US	\N	imdbDisplay	\N	0
tt10856380	Ever Night 2	XWW	en	imdbDisplay	\N	0
tt10856380	Ever Night 2	ZA	en	imdbDisplay	\N	0
tt12785856	Of Mages, Malice, and Monstrous Mayhem	\N	\N	original	\N	1
tt12785856	Of Mages, Malice, and Monstrous Mayhem	PL	\N	\N	\N	0
tt9659602	Margam Castle	\N	\N	original	\N	1
tt0342135	Blood Will Tell	\N	\N	original	\N	1
tt0342135	Blood Will Tell	US	\N	imdbDisplay	\N	0
tt0342135	The Sins of a Brother	US	\N	\N	reissue title	0
tt1011941	Episode #1.17	\N	\N	original	\N	1
tt1011941	Episódio #1.17	PT	pt	\N	\N	0
tt1011941	एपिसोड #1.17	IN	hi	\N	\N	0
tt1011941	Épisode #1.17	FR	fr	\N	\N	0
tt1011941	Episodio #1.17	IT	it	\N	\N	0
tt1011941	Folge #1.17	DE	de	\N	\N	0
tt1011941	エピソード #1.17	JP	ja	\N	\N	0
tt1011941	Episodio #1.17	ES	es	\N	\N	0
tt0439950	New Comedy Showcase	\N	\N	original	\N	1
tt0439950	New Comedy Showcase	US	\N	imdbDisplay	\N	0
tt27434153	Episode #1.3991	\N	\N	original	\N	1
tt27434153	Episódio #1.3991	PT	pt	\N	\N	0
tt27434153	एपिसोड #1.3991	IN	hi	\N	\N	0
tt27434153	Épisode #1.3991	FR	fr	\N	\N	0
tt27434153	Episodio #1.3991	IT	it	\N	\N	0
tt27434153	Folge #1.3991	DE	de	\N	\N	0
tt27434153	エピソード #1.3991	JP	ja	\N	\N	0
tt27434153	Episodio #1.3991	ES	es	\N	\N	0
tt4796112	T. Rex	\N	\N	original	\N	1
tt4796112	T. Rex	MX	\N	imdbDisplay	\N	0
tt4796112	T. Rex	US	\N	imdbDisplay	\N	0
tt6104550	Folks!/K2/One False Move/Poison Ivy/Leaving Normal	\N	\N	original	\N	1
tt21399842	Episode #4.8	\N	\N	original	\N	1
tt21399842	Episódio #4.8	PT	pt	\N	\N	0
tt21399842	एपिसोड #4.8	IN	hi	\N	\N	0
tt21399842	Épisode #4.8	FR	fr	\N	\N	0
tt21399842	Episodio #4.8	IT	it	\N	\N	0
tt21399842	Folge #4.8	DE	de	\N	\N	0
tt21399842	エピソード #4.8	JP	ja	\N	\N	0
tt21399842	Episodio #4.8	ES	es	\N	\N	0
tt9828132	Devon	\N	\N	original	\N	1
tt32296243	Hell in Paradise	\N	\N	original	\N	1
tt35403804	The Wilderness	\N	\N	original	\N	1
tt35403804	The Wilderness	ZA	\N	\N	\N	0
tt7314942	Sleep to Grow	\N	\N	original	\N	1
tt2329014	Episode #15.6	\N	\N	original	\N	1
tt2329014	Episódio #15.6	PT	pt	\N	\N	0
tt2329014	एपिसोड #15.6	IN	hi	\N	\N	0
tt2329014	Épisode #15.6	FR	fr	\N	\N	0
tt2329014	Episodio #15.6	IT	it	\N	\N	0
tt2329014	Folge #15.6	DE	de	\N	\N	0
tt2329014	エピソード #15.6	JP	ja	\N	\N	0
tt2329014	Episodio #15.6	ES	es	\N	\N	0
tt0387591	Shock & Awe: The Return of 'Alien'	\N	\N	original	\N	1
tt0387591	Shock & Awe: The Return of 'Alien'	GB	\N	\N	\N	0
tt15593990	8. august 2013	\N	\N	original	\N	1
tt31417485	Chupp	\N	\N	original	\N	1
tt31417485	Chupp	IN	en	imdbDisplay	\N	0
tt7002484	Don't Touch Her 5	\N	\N	original	\N	1
tt12689750	Pork Chop Phooey	\N	\N	original	\N	1
tt12689750	Pork Chop Phooey	US	\N	\N	\N	0
tt3580762	Grab Dinner By The Tail	\N	\N	original	\N	1
tt20876436	Maximum Perversum 55 - Gierige Fotzen	\N	\N	original	\N	1
tt20876436	Maximum Perversum 55 - Gierige Fotzen	DE	\N	\N	\N	0
tt13557514	Episode #1.89	\N	\N	original	\N	1
tt13557514	Episódio #1.89	PT	pt	\N	\N	0
tt13557514	एपिसोड #1.89	IN	hi	\N	\N	0
tt13557514	Épisode #1.89	FR	fr	\N	\N	0
tt13557514	Episodio #1.89	IT	it	\N	\N	0
tt13557514	Folge #1.89	DE	de	\N	\N	0
tt13557514	エピソード #1.89	JP	ja	\N	\N	0
tt13557514	Episodio #1.89	ES	es	\N	\N	0
tt33703890	Conspiracy Theories That Turned Out to Be True	\N	\N	original	\N	1
tt32919395	Episode #1.2087	\N	\N	original	\N	1
tt32919395	Episódio #1.2087	PT	pt	\N	\N	0
tt32919395	एपिसोड #1.2087	IN	hi	\N	\N	0
tt32919395	Épisode #1.2087	FR	fr	\N	\N	0
tt32919395	Episodio #1.2087	IT	it	\N	\N	0
tt32919395	エピソード #1.2087	JP	ja	\N	\N	0
tt32919395	Episodio #1.2087	ES	es	\N	\N	0
tt11148068	Episode #1.52	\N	\N	original	\N	1
tt11148068	Episódio #1.52	PT	pt	\N	\N	0
tt11148068	एपिसोड #1.52	IN	hi	\N	\N	0
tt11148068	Épisode #1.52	FR	fr	\N	\N	0
tt11148068	Episodio #1.52	IT	it	\N	\N	0
tt11148068	Folge #1.52	DE	de	\N	\N	0
tt11148068	エピソード #1.52	JP	ja	\N	\N	0
tt11148068	Episodio #1.52	ES	es	\N	\N	0
tt1519237	Wunder-Bar	\N	\N	original	\N	1
tt1519237	Wunder-Bar	DE	\N	imdbDisplay	\N	0
tt10171526	And So He Opens His Eyes	\N	\N	original	\N	1
tt10171526	И тут он открывает глаза	RU	\N	imdbDisplay	\N	0
tt0861404	The Truth About Mother Goose	\N	\N	original	\N	1
tt0861404	The Truth About Mother Goose	US	\N	\N	\N	0
tt17157440	Der Glitzerbaum	\N	\N	original	\N	1
tt17157440	Der Glitzerbaum	DE	\N	\N	\N	0
tt9397578	Episode 4	\N	\N	original	\N	1
tt3328042	Greed and Lust	\N	\N	original	\N	1
tt22173936	People Pleasers - Pros and Cons for Maids	\N	\N	original	\N	1
tt19366840	Episode #15.157	\N	\N	original	\N	1
tt19366840	Episódio #15.157	PT	pt	\N	\N	0
tt19366840	एपिसोड #15.157	IN	hi	\N	\N	0
tt19366840	Épisode #15.157	FR	fr	\N	\N	0
tt19366840	Episodio #15.157	IT	it	\N	\N	0
tt19366840	Folge #15.157	DE	de	\N	\N	0
tt19366840	エピソード #15.157	JP	ja	\N	\N	0
tt19366840	Episodio #15.157	ES	es	\N	\N	0
tt10685242	The Gift of the End of the World	\N	\N	original	\N	1
tt1488643	Ramón y Marta empiezan de nuevo	\N	\N	original	\N	1
tt1620046	The Great Outdoors	\N	\N	original	\N	1
tt15546426	Dodgeball Academia	\N	\N	original	\N	1
tt15546426	Dodgeball Academia	US	\N	imdbDisplay	\N	0
tt5117170	The Last Lion	\N	\N	original	\N	1
tt5117170	The Last Lion	IE	\N	\N	\N	0
tt9348060	Deux steamés avec Normand L'Amour	\N	\N	original	\N	1
tt18250548	America, Do You Have What It Takes?	\N	\N	original	\N	1
tt9740696	Episode #1.170	\N	\N	original	\N	1
tt9740696	Episódio #1.170	PT	pt	\N	\N	0
tt9740696	एपिसोड #1.170	IN	hi	\N	\N	0
tt9740696	Épisode #1.170	FR	fr	\N	\N	0
tt9740696	Episodio #1.170	IT	it	\N	\N	0
tt9740696	Folge #1.170	DE	de	\N	\N	0
tt9740696	エピソード #1.170	JP	ja	\N	\N	0
tt9740696	Episodio #1.170	ES	es	\N	\N	0
tt4042080	Episode #1.5	\N	\N	original	\N	1
tt4042080	Episódio #1.5	PT	pt	\N	\N	0
tt4042080	एपिसोड #1.5	IN	hi	\N	\N	0
tt4042080	Épisode #1.5	FR	fr	\N	\N	0
tt4042080	Episodio #1.5	IT	it	\N	\N	0
tt4042080	Folge #1.5	DE	de	\N	\N	0
tt4042080	エピソード #1.5	JP	ja	\N	\N	0
tt4042080	Episodio #1.5	ES	es	\N	\N	0
tt1157067	Un embarazo de altura	\N	\N	original	\N	1
tt22010336	Episode #1.28	\N	\N	original	\N	1
tt22010336	Episódio #1.28	PT	pt	\N	\N	0
tt22010336	एपिसोड #1.28	IN	hi	\N	\N	0
tt22010336	Épisode #1.28	FR	fr	\N	\N	0
tt22010336	Episodio #1.28	IT	it	\N	\N	0
tt22010336	Folge #1.28	DE	de	\N	\N	0
tt22010336	エピソード #1.28	JP	ja	\N	\N	0
tt22010336	Episodio #1.28	ES	es	\N	\N	0
tt2451782	Paul the Dowser: Opening a Portal to the 5th Dimension	\N	\N	original	\N	1
tt2451782	Paul the Dowser: Opening a Portal to the 5th Dimension	CA	\N	\N	\N	0
tt4032518	Sir Nigel Hawthorne: Remembered	\N	\N	original	\N	1
tt4032518	Sir Nigel Hawthorne: Remembered	GB	\N	\N	\N	0
tt8564538	Episode #3.101	\N	\N	original	\N	1
tt8564538	Episódio #3.101	PT	pt	\N	\N	0
tt8564538	एपिसोड #3.101	IN	hi	\N	\N	0
tt8564538	Épisode #3.101	FR	fr	\N	\N	0
tt8564538	Episodio #3.101	IT	it	\N	\N	0
tt8564538	Folge #3.101	DE	de	\N	\N	0
tt8564538	エピソード #3.101	JP	ja	\N	\N	0
tt8564538	Episodio #3.101	ES	es	\N	\N	0
tt2128049	Love Means Nothing in Tennis	\N	\N	original	\N	1
tt2128049	Love Means Nothing in Tennis	GB	\N	\N	\N	0
tt21432634	Episode #1.27	\N	\N	original	\N	1
tt21432634	Episódio #1.27	PT	pt	\N	\N	0
tt21432634	एपिसोड #1.27	IN	hi	\N	\N	0
tt21432634	Épisode #1.27	FR	fr	\N	\N	0
tt21432634	Episodio #1.27	IT	it	\N	\N	0
tt21432634	Folge #1.27	DE	de	\N	\N	0
tt21432634	エピソード #1.27	JP	ja	\N	\N	0
tt21432634	Episodio #1.27	ES	es	\N	\N	0
tt15556682	Episode #1.592	\N	\N	original	\N	1
tt15556682	Episódio #1.592	PT	pt	\N	\N	0
tt15556682	एपिसोड #1.592	IN	hi	\N	\N	0
tt15556682	Épisode #1.592	FR	fr	\N	\N	0
tt15556682	Episodio #1.592	IT	it	\N	\N	0
tt15556682	Folge #1.592	DE	de	\N	\N	0
tt15556682	エピソード #1.592	JP	ja	\N	\N	0
tt15556682	Episodio #1.592	ES	es	\N	\N	0
tt9053968	2010 Week 2	\N	\N	original	\N	1
tt9562714	Episode dated 22 May 2017	\N	\N	original	\N	1
tt9562714	Episódio datado de 22 Maio de 2017	PT	pt	\N	\N	0
tt9562714	22 मई 2017 को प्रसारित एपिसोड	IN	hi	\N	\N	0
tt9562714	Épisode datant du 22 mai 2017	FR	fr	\N	\N	0
tt9562714	Episodio datato 22 maggio 2017	IT	it	\N	\N	0
tt9562714	Folge vom 22. Mai 2017	DE	de	\N	\N	0
tt9562714	2017年5月22日 のエピソード	JP	ja	\N	\N	0
tt9562714	Episodio fechado 22 mayo 2017	ES	es	\N	\N	0
tt5528154	Avsnitt 5	\N	\N	original	\N	1
tt22515600	Ana Rose Makes Fireworks With Her Pussy On Independence Day!	\N	\N	original	\N	1
tt23980592	Episode #1.147	\N	\N	original	\N	1
tt23980592	Episódio #1.147	PT	pt	\N	\N	0
tt23980592	एपिसोड #1.147	IN	hi	\N	\N	0
tt23980592	Épisode #1.147	FR	fr	\N	\N	0
tt23980592	Episodio #1.147	IT	it	\N	\N	0
tt23980592	Folge #1.147	DE	de	\N	\N	0
tt23980592	エピソード #1.147	JP	ja	\N	\N	0
tt23980592	Episodio #1.147	ES	es	\N	\N	0
tt6079884	Adrian's Story	\N	\N	original	\N	1
tt6079884	Adrian's Story	US	\N	imdbDisplay	\N	0
tt8523010	Episode dated 6 June 2018	\N	\N	original	\N	1
tt8523010	Episódio datado de 6 Junho de 2018	PT	pt	\N	\N	0
tt8523010	6 जून 2018 को प्रसारित एपिसोड	IN	hi	\N	\N	0
tt8523010	Épisode datant du 6 juin 2018	FR	fr	\N	\N	0
tt8523010	Episodio datato 6 giugno 2018	IT	it	\N	\N	0
tt8523010	Folge vom 6. Juni 2018	DE	de	\N	\N	0
tt8523010	2018年6月6日 のエピソード	JP	ja	\N	\N	0
tt8523010	Episodio fechado 6 junio 2018	ES	es	\N	\N	0
tt7691376	Episode #1.135	\N	\N	original	\N	1
tt7691376	Episódio #1.135	PT	pt	\N	\N	0
tt7691376	एपिसोड #1.135	IN	hi	\N	\N	0
tt7691376	Épisode #1.135	FR	fr	\N	\N	0
tt7691376	Episodio #1.135	IT	it	\N	\N	0
tt7691376	Folge #1.135	DE	de	\N	\N	0
tt7691376	エピソード #1.135	JP	ja	\N	\N	0
tt7691376	Episodio #1.135	ES	es	\N	\N	0
tt1442481	#73, Shaanthi Nivaasa	\N	\N	original	\N	1
tt1442481	No. 73, Shanthi Nivasa	IN	kn	\N	alternative spelling	0
tt1442481	#73, Shaanthi Nivaasa	IN	\N	\N	\N	0
tt11746020	Episode #1.388	\N	\N	original	\N	1
tt11746020	Episódio #1.388	PT	pt	\N	\N	0
tt11746020	एपिसोड #1.388	IN	hi	\N	\N	0
tt11746020	Épisode #1.388	FR	fr	\N	\N	0
tt11746020	Episodio #1.388	IT	it	\N	\N	0
tt11746020	Folge #1.388	DE	de	\N	\N	0
tt11746020	エピソード #1.388	JP	ja	\N	\N	0
tt11746020	Episodio #1.388	ES	es	\N	\N	0
tt6671550	Episode dated 17 March 2017	\N	\N	original	\N	1
tt6671550	Episódio datado de 17 Março de 2017	PT	pt	\N	\N	0
tt6671550	17 मार्च 2017 को प्रसारित एपिसोड	IN	hi	\N	\N	0
tt6671550	Épisode datant du 17 mars 2017	FR	fr	\N	\N	0
tt6671550	Episodio datato 17 marzo 2017	IT	it	\N	\N	0
tt6671550	Folge vom 17. März 2017	DE	de	\N	\N	0
tt6671550	2017年3月17日 のエピソード	JP	ja	\N	\N	0
tt6671550	Episodio fechado 17 marzo 2017	ES	es	\N	\N	0
tt9262768	Episode #1.64	\N	\N	original	\N	1
tt9262768	Episódio #1.64	PT	pt	\N	\N	0
tt9262768	एपिसोड #1.64	IN	hi	\N	\N	0
tt9262768	Épisode #1.64	FR	fr	\N	\N	0
tt9262768	Episodio #1.64	IT	it	\N	\N	0
tt9262768	Folge #1.64	DE	de	\N	\N	0
tt9262768	エピソード #1.64	JP	ja	\N	\N	0
tt9262768	Episodio #1.64	ES	es	\N	\N	0
tt1102658	Dackel kross süß-sauer	\N	\N	original	\N	1
tt1102658	Dackel kross süß-sauer	DE	\N	\N	\N	0
tt22485744	Selbstvorwürfe	\N	\N	original	\N	1
tt7755274	Side of Chilaquiles	\N	\N	original	\N	1
tt21025742	Let's Just Swing	\N	\N	original	\N	1
tt11462094	Episode #1.2656	\N	\N	original	\N	1
tt11462094	Episódio #1.2656	PT	pt	\N	\N	0
tt11462094	एपिसोड #1.2656	IN	hi	\N	\N	0
tt11462094	Épisode #1.2656	FR	fr	\N	\N	0
tt11462094	Episodio #1.2656	IT	it	\N	\N	0
tt11462094	Folge #1.2656	DE	de	\N	\N	0
tt11462094	エピソード #1.2656	JP	ja	\N	\N	0
tt11462094	Episodio #1.2656	ES	es	\N	\N	0
tt11929294	Guyland	\N	\N	original	\N	1
tt30875330	July 12, 2022	\N	\N	original	\N	1
tt2097975	Aru hi watashi wa	\N	\N	original	\N	1
tt2097975	Aru hi watashi wa	JP	\N	\N	\N	0
tt19488364	S01E01	\N	\N	original	\N	1
tt8575766	Machinaka gunyagunya nendoron	\N	\N	original	\N	1
tt8575766	Machinaka gunyagunya nendoron	JP	\N	\N	\N	0
tt4680650	Surprise Visit	\N	\N	original	\N	1
tt4680650	Surprise Visit	US	\N	imdbDisplay	\N	0
tt10758690	Episode #1.32	\N	\N	original	\N	1
tt10758690	Episódio #1.32	PT	pt	\N	\N	0
tt10758690	एपिसोड #1.32	IN	hi	\N	\N	0
tt10758690	Épisode #1.32	FR	fr	\N	\N	0
tt10758690	Episodio #1.32	IT	it	\N	\N	0
tt10758690	Folge #1.32	DE	de	\N	\N	0
tt10758690	エピソード #1.32	JP	ja	\N	\N	0
tt10758690	Episodio #1.32	ES	es	\N	\N	0
tt35505147	Episode dated 2 June 2022	\N	\N	original	\N	1
tt35505147	Episódio datado de 2 Junho de 2022	PT	pt	\N	\N	0
tt35505147	2 जून 2022 को प्रसारित एपिसोड	IN	hi	\N	\N	0
tt35505147	Épisode datant du 2 juin 2022	FR	fr	\N	\N	0
tt35505147	Episodio datato 2 giugno 2022	IT	it	\N	\N	0
tt35505147	Folge vom 2. Juni 2022	DE	de	\N	\N	0
tt35505147	2022年6月2日 のエピソード	JP	ja	\N	\N	0
tt35505147	Episodio fechado 2 junio 2022	ES	es	\N	\N	0
tt0677744	Convictions	\N	\N	original	\N	1
tt9394610	Top 10 Most Expensive Sci-Fi Movies Ever Made	\N	\N	original	\N	1
tt29768105	Dopady lhostejnosti	\N	\N	original	\N	1
tt29768105	Dopady lhostejnosti	CZ	\N	\N	\N	0
tt13419618	Episode #3.49	\N	\N	original	\N	1
tt13419618	Episódio #3.49	PT	pt	\N	\N	0
tt13419618	एपिसोड #3.49	IN	hi	\N	\N	0
tt13419618	Épisode #3.49	FR	fr	\N	\N	0
tt13419618	Episodio #3.49	IT	it	\N	\N	0
tt13419618	Folge #3.49	DE	de	\N	\N	0
tt13419618	エピソード #3.49	JP	ja	\N	\N	0
tt13419618	Episodio #3.49	ES	es	\N	\N	0
tt10601554	Episode #3.5	\N	\N	original	\N	1
tt10601554	Episódio #3.5	PT	pt	\N	\N	0
tt10601554	एपिसोड #3.5	IN	hi	\N	\N	0
tt10601554	Épisode #3.5	FR	fr	\N	\N	0
tt10601554	Episodio #3.5	IT	it	\N	\N	0
tt10601554	Folge #3.5	DE	de	\N	\N	0
tt10601554	エピソード #3.5	JP	ja	\N	\N	0
tt10601554	Episodio #3.5	ES	es	\N	\N	0
tt0859781	New Chairs	\N	\N	original	\N	1
tt8569992	Episode #2.105	\N	\N	original	\N	1
tt8569992	Episódio #2.105	PT	pt	\N	\N	0
tt8569992	एपिसोड #2.105	IN	hi	\N	\N	0
tt8569992	Épisode #2.105	FR	fr	\N	\N	0
tt8569992	Episodio #2.105	IT	it	\N	\N	0
tt8569992	Folge #2.105	DE	de	\N	\N	0
tt8569992	エピソード #2.105	JP	ja	\N	\N	0
tt8569992	Episodio #2.105	ES	es	\N	\N	0
tt7738656	What You're Doing is Bad	\N	\N	original	\N	1
tt7738656	What You're Doing is Bad	US	\N	imdbDisplay	\N	0
tt4792384	2. Ta Challenge tou Borat: B' Meros	\N	\N	original	\N	1
tt31638715	Miracle on the Precipice	\N	\N	original	\N	1
tt31638715	Miracle on the Precipice	US	\N	\N	\N	0
tt9385690	Episode #1.126	\N	\N	original	\N	1
tt9385690	Episódio #1.126	PT	pt	\N	\N	0
tt9385690	एपिसोड #1.126	IN	hi	\N	\N	0
tt9385690	Épisode #1.126	FR	fr	\N	\N	0
tt9385690	Episodio #1.126	IT	it	\N	\N	0
tt9385690	Folge #1.126	DE	de	\N	\N	0
tt9385690	エピソード #1.126	JP	ja	\N	\N	0
tt9385690	Episodio #1.126	ES	es	\N	\N	0
tt26407927	The Last Song: Maxi's Revenge	\N	\N	original	\N	1
tt26407927	The Last Song: Maxi's Revenge	US	\N	imdbDisplay	\N	0
tt0942967	Episode #1.80	\N	\N	original	\N	1
tt0942967	Episódio #1.80	PT	pt	\N	\N	0
tt0942967	एपिसोड #1.80	IN	hi	\N	\N	0
tt0942967	Épisode #1.80	FR	fr	\N	\N	0
tt0942967	Episodio #1.80	IT	it	\N	\N	0
tt0942967	Folge #1.80	DE	de	\N	\N	0
tt0942967	エピソード #1.80	JP	ja	\N	\N	0
tt0942967	Episodio #1.80	ES	es	\N	\N	0
tt8729732	Episode #1.173	\N	\N	original	\N	1
tt8729732	Episódio #1.173	PT	pt	\N	\N	0
tt8729732	एपिसोड #1.173	IN	hi	\N	\N	0
tt8729732	Épisode #1.173	FR	fr	\N	\N	0
tt8729732	Episodio #1.173	IT	it	\N	\N	0
tt8729732	Folge #1.173	DE	de	\N	\N	0
tt8729732	エピソード #1.173	JP	ja	\N	\N	0
tt8729732	Episodio #1.173	ES	es	\N	\N	0
tt2029103	Episode #1.29	\N	\N	original	\N	1
tt2029103	Episódio #1.29	PT	pt	\N	\N	0
tt2029103	एपिसोड #1.29	IN	hi	\N	\N	0
tt2029103	Épisode #1.29	FR	fr	\N	\N	0
tt2029103	Episodio #1.29	IT	it	\N	\N	0
tt2029103	Folge #1.29	DE	de	\N	\N	0
tt2029103	エピソード #1.29	JP	ja	\N	\N	0
tt2029103	Episodio #1.29	ES	es	\N	\N	0
tt13864070	Sparks Underwater	\N	\N	original	\N	1
tt13864070	Sparks Underwater	AU	\N	imdbDisplay	\N	0
tt7964934	Episode #1.64	\N	\N	original	\N	1
tt7964934	Episódio #1.64	PT	pt	\N	\N	0
tt7964934	एपिसोड #1.64	IN	hi	\N	\N	0
tt7964934	Épisode #1.64	FR	fr	\N	\N	0
tt7964934	Episodio #1.64	IT	it	\N	\N	0
tt7964934	Folge #1.64	DE	de	\N	\N	0
tt7964934	エピソード #1.64	JP	ja	\N	\N	0
tt7964934	Episodio #1.64	ES	es	\N	\N	0
tt11453472	Episode #1.314	\N	\N	original	\N	1
tt11453472	Episódio #1.314	PT	pt	\N	\N	0
tt11453472	एपिसोड #1.314	IN	hi	\N	\N	0
tt11453472	Épisode #1.314	FR	fr	\N	\N	0
tt11453472	Episodio #1.314	IT	it	\N	\N	0
tt11453472	Folge #1.314	DE	de	\N	\N	0
tt11453472	エピソード #1.314	JP	ja	\N	\N	0
tt11453472	Episodio #1.314	ES	es	\N	\N	0
tt27862030	Building The Last of Us	\N	\N	original	\N	1
tt4836258	Episode #1.4	\N	\N	original	\N	1
tt4836258	Episódio #1.4	PT	pt	\N	\N	0
tt4836258	एपिसोड #1.4	IN	hi	\N	\N	0
tt4836258	Épisode #1.4	FR	fr	\N	\N	0
tt4836258	Episodio #1.4	IT	it	\N	\N	0
tt4836258	Folge #1.4	DE	de	\N	\N	0
tt4836258	エピソード #1.4	JP	ja	\N	\N	0
tt4836258	Episodio #1.4	ES	es	\N	\N	0
tt1090245	Nulla è impossibile	\N	\N	original	\N	1
tt1090245	Nothing is Impossible	GB	\N	\N	\N	0
tt1090245	Nulla è impossibile	IT	\N	imdbDisplay	\N	0
tt1469806	Episode #7.11	\N	\N	original	\N	1
tt1469806	Episódio #7.11	PT	pt	\N	\N	0
tt1469806	एपिसोड #7.11	IN	hi	\N	\N	0
tt1469806	Épisode #7.11	FR	fr	\N	\N	0
tt1469806	Episodio #7.11	IT	it	\N	\N	0
tt1469806	Folge #7.11	DE	de	\N	\N	0
tt1469806	エピソード #7.11	JP	ja	\N	\N	0
tt1469806	Episodio #7.11	ES	es	\N	\N	0
tt9366082	Episode #1.504	\N	\N	original	\N	1
tt9366082	Episódio #1.504	PT	pt	\N	\N	0
tt9366082	एपिसोड #1.504	IN	hi	\N	\N	0
tt9366082	Épisode #1.504	FR	fr	\N	\N	0
tt9366082	Episodio #1.504	IT	it	\N	\N	0
tt9366082	Folge #1.504	DE	de	\N	\N	0
tt9366082	エピソード #1.504	JP	ja	\N	\N	0
tt9366082	Episodio #1.504	ES	es	\N	\N	0
tt6512960	Il peso del potere	\N	\N	original	\N	1
tt11767638	Are You Really Gone	\N	\N	original	\N	1
tt11767638	Are You Really Gone	US	\N	imdbDisplay	\N	0
tt33363660	Episode #1.46	\N	\N	original	\N	1
tt33363660	Episódio #1.46	PT	pt	\N	\N	0
tt33363660	एपिसोड #1.46	IN	hi	\N	\N	0
tt33363660	Épisode #1.46	FR	fr	\N	\N	0
tt33363660	Episodio #1.46	IT	it	\N	\N	0
tt33363660	エピソード #1.46	JP	ja	\N	\N	0
tt33363660	Episodio #1.46	ES	es	\N	\N	0
tt21203940	Sonu surprises the Roadies!	\N	\N	original	\N	1
tt1056429	Kusama's Self-Obliteration	\N	\N	original	\N	1
tt1056429	Kusama's Self-Obliteration	US	\N	imdbDisplay	\N	0
tt1775731	Doug's Career Anxiety/Doug's Big Brawl	\N	\N	original	\N	1
tt3586696	MyChonny Moves In	\N	\N	original	\N	1
tt3586696	MyChonny Moves In	AU	\N	\N	\N	0
tt11061646	Episode dated 19 April 2011	\N	\N	original	\N	1
tt11061646	Episódio datado de 19 Abril de 2011	PT	pt	\N	\N	0
tt11061646	19 अप्रैल 2011 को प्रसारित एपिसोड	IN	hi	\N	\N	0
tt11061646	Épisode datant du 19 avril 2011	FR	fr	\N	\N	0
tt11061646	Episodio datato 19 aprile 2011	IT	it	\N	\N	0
tt11061646	Folge vom 19. April 2011	DE	de	\N	\N	0
tt11061646	2011年4月19日 のエピソード	JP	ja	\N	\N	0
tt11061646	Episodio fechado 19 abril 2011	ES	es	\N	\N	0
tt15363798	Episode #1.134	\N	\N	original	\N	1
tt15363798	Episódio #1.134	PT	pt	\N	\N	0
tt15363798	एपिसोड #1.134	IN	hi	\N	\N	0
tt15363798	Épisode #1.134	FR	fr	\N	\N	0
tt15363798	Episodio #1.134	IT	it	\N	\N	0
tt15363798	Folge #1.134	DE	de	\N	\N	0
tt15363798	エピソード #1.134	JP	ja	\N	\N	0
tt15363798	Episodio #1.134	ES	es	\N	\N	0
tt0472390	Küssen ist keine Sünd'	\N	\N	original	\N	1
tt0472390	Die letzte Einquartierung	AT	\N	\N	\N	0
tt0472390	Die letzte Einquartierung	DE	\N	alternative	\N	0
tt0472390	Beijar não é Pecado	BR	\N	imdbDisplay	\N	0
tt0472390	Küssen ist keine Sünd'	DE	\N	imdbDisplay	\N	0
tt0472390	Küssen ist keine Sünd'...	DE	\N	\N	alternative spelling	0
tt27853071	Episode #1.2037	\N	\N	original	\N	1
tt27853071	Episódio #1.2037	PT	pt	\N	\N	0
tt27853071	एपिसोड #1.2037	IN	hi	\N	\N	0
tt27853071	Épisode #1.2037	FR	fr	\N	\N	0
tt27853071	Episodio #1.2037	IT	it	\N	\N	0
tt27853071	Folge #1.2037	DE	de	\N	\N	0
tt27853071	エピソード #1.2037	JP	ja	\N	\N	0
tt27853071	Episodio #1.2037	ES	es	\N	\N	0
tt13775164	Episode dated 5 January 2021	\N	\N	original	\N	1
tt13775164	Episódio datado de 5 Janeiro de 2021	PT	pt	\N	\N	0
tt13775164	5 जनवरी 2021 को प्रसारित एपिसोड	IN	hi	\N	\N	0
tt13775164	Épisode datant du 5 janvier 2021	FR	fr	\N	\N	0
tt13775164	Episodio datato 5 gennaio 2021	IT	it	\N	\N	0
tt13775164	Folge vom 5. Januar 2021	DE	de	\N	\N	0
tt13775164	2021年1月5日 のエピソード	JP	ja	\N	\N	0
tt13775164	Episodio fechado 5 enero 2021	ES	es	\N	\N	0
tt20427582	Die Doppelmoral von DEKARLDENT	\N	\N	original	\N	1
tt20230648	When your girl send you to the store to get tampons	\N	\N	original	\N	1
tt20230648	When your girl send you to the store to get tampons	US	\N	\N	\N	0
tt20255790	Dark Mode	\N	\N	original	\N	1
tt20255790	Dark Mode	CA	en	imdbDisplay	\N	0
tt20255790	Dark Mode	US	\N	\N	\N	0
tt19880574	Secret History of Sonic & Tails	\N	\N	original	\N	1
tt1846858	The Secret of Etiquette	\N	\N	original	\N	1
tt1846858	The Secret of Etiquette	US	\N	\N	\N	0
tt32143484	Principal Matters	\N	\N	original	\N	1
tt32143484	Principal Matters	US	\N	\N	\N	0
tt14219894	Episode #1.95	\N	\N	original	\N	1
tt14219894	Episódio #1.95	PT	pt	\N	\N	0
tt14219894	एपिसोड #1.95	IN	hi	\N	\N	0
tt14219894	Épisode #1.95	FR	fr	\N	\N	0
tt14219894	Episodio #1.95	IT	it	\N	\N	0
tt14219894	Folge #1.95	DE	de	\N	\N	0
tt14219894	エピソード #1.95	JP	ja	\N	\N	0
tt14219894	Episodio #1.95	ES	es	\N	\N	0
tt11392830	Episode #1.443	\N	\N	original	\N	1
tt11392830	Episódio #1.443	PT	pt	\N	\N	0
tt11392830	एपिसोड #1.443	IN	hi	\N	\N	0
tt11392830	Épisode #1.443	FR	fr	\N	\N	0
tt11392830	Episodio #1.443	IT	it	\N	\N	0
tt11392830	Folge #1.443	DE	de	\N	\N	0
tt11392830	エピソード #1.443	JP	ja	\N	\N	0
tt11392830	Episodio #1.443	ES	es	\N	\N	0
tt11141946	044	\N	\N	original	\N	1
tt6271738	Pablo tiene un plan para liberar a Cristian	\N	\N	original	\N	1
tt6271738	Pablo tiene un plan para liberar a Cristian	MX	\N	\N	\N	0
tt31037164	Pamela Hutchinson	\N	\N	original	\N	1
tt5246612	Episode #11.74	\N	\N	original	\N	1
tt5246612	Episódio #11.74	PT	pt	\N	\N	0
tt5246612	एपिसोड #11.74	IN	hi	\N	\N	0
tt5246612	Épisode #11.74	FR	fr	\N	\N	0
tt5246612	Episodio #11.74	IT	it	\N	\N	0
tt5246612	Folge #11.74	DE	de	\N	\N	0
tt5246612	エピソード #11.74	JP	ja	\N	\N	0
tt5246612	Episodio #11.74	ES	es	\N	\N	0
tt33074220	Episode #1.1462	\N	\N	original	\N	1
tt33074220	Episódio #1.1462	PT	pt	\N	\N	0
tt33074220	एपिसोड #1.1462	IN	hi	\N	\N	0
tt33074220	Épisode #1.1462	FR	fr	\N	\N	0
tt33074220	Episodio #1.1462	IT	it	\N	\N	0
tt33074220	Folge #1.1462	DE	de	\N	\N	0
tt33074220	エピソード #1.1462	JP	ja	\N	\N	0
tt33074220	Episodio #1.1462	ES	es	\N	\N	0
tt21849144	Episode #6.2	\N	\N	original	\N	1
tt21849144	Episódio #6.2	PT	pt	\N	\N	0
tt21849144	एपिसोड #6.2	IN	hi	\N	\N	0
tt21849144	Épisode #6.2	FR	fr	\N	\N	0
tt21849144	Episodio #6.2	IT	it	\N	\N	0
tt21849144	Folge #6.2	DE	de	\N	\N	0
tt21849144	エピソード #6.2	JP	ja	\N	\N	0
tt21849144	Episodio #6.2	ES	es	\N	\N	0
tt15990172	17. mars 2021 kl. 23:00	\N	\N	original	\N	1
tt6661132	Episode #8.9	\N	\N	original	\N	1
tt6661132	Episódio #8.9	PT	pt	\N	\N	0
tt6661132	एपिसोड #8.9	IN	hi	\N	\N	0
tt6661132	Épisode #8.9	FR	fr	\N	\N	0
tt6661132	Episodio #8.9	IT	it	\N	\N	0
tt6661132	Folge #8.9	DE	de	\N	\N	0
tt6661132	エピソード #8.9	JP	ja	\N	\N	0
tt6661132	Episodio #8.9	ES	es	\N	\N	0
tt11768570	Episode #1.2986	\N	\N	original	\N	1
tt11768570	Episódio #1.2986	PT	pt	\N	\N	0
tt11768570	एपिसोड #1.2986	IN	hi	\N	\N	0
tt11768570	Épisode #1.2986	FR	fr	\N	\N	0
tt11768570	Episodio #1.2986	IT	it	\N	\N	0
tt11768570	Folge #1.2986	DE	de	\N	\N	0
tt11768570	エピソード #1.2986	JP	ja	\N	\N	0
tt11768570	Episodio #1.2986	ES	es	\N	\N	0
tt8871964	Episode #1.144	\N	\N	original	\N	1
tt8871964	Episódio #1.144	PT	pt	\N	\N	0
tt8871964	एपिसोड #1.144	IN	hi	\N	\N	0
tt8871964	Épisode #1.144	FR	fr	\N	\N	0
tt8871964	Episodio #1.144	IT	it	\N	\N	0
tt8871964	Folge #1.144	DE	de	\N	\N	0
tt8871964	エピソード #1.144	JP	ja	\N	\N	0
tt8871964	Episodio #1.144	ES	es	\N	\N	0
tt7462896	Mithi is jamuna's child	\N	\N	original	\N	1
tt14857528	Time Cut	\N	\N	original	\N	1
tt14857528	Time Cut	US	\N	imdbDisplay	\N	0
tt14857528	Corte en el tiempo	AR	\N	imdbDisplay	\N	0
tt14857528	Corte en el tiempo	ES	\N	imdbDisplay	\N	0
tt14857528	Corte en el tiempo	MX	\N	imdbDisplay	\N	0
tt14857528	Corte en el tiempo	US	es	imdbDisplay	\N	0
tt14857528	Corte no Tempo	BR	\N	imdbDisplay	\N	0
tt14857528	Corte no Tempo	PT	\N	imdbDisplay	\N	0
tt14857528	Cắt Qua Thời Gian	VN	\N	imdbDisplay	\N	0
tt14857528	Coupure temporelle	CA	fr	imdbDisplay	\N	0
tt14857528	Idővágás	HU	\N	imdbDisplay	\N	0
tt14857528	Time Cut	AU	\N	imdbDisplay	\N	0
tt14857528	Przeciąć czas	PL	\N	imdbDisplay	\N	0
tt14857528	Zamanda Bir Kesik	TR	tr	imdbDisplay	\N	0
tt14857528	Временной срез	RU	\N	imdbDisplay	\N	0
tt14857528	Часовий зріз	UA	\N	imdbDisplay	\N	0
tt14857528	タイムカット	JP	ja	imdbDisplay	\N	0
tt14857528	极限穿梭	CN	cmn	alternative	\N	0
tt14857528	逆时追凶	CN	cmn	imdbDisplay	\N	0
tt14857528	逆時追兇	TW	\N	imdbDisplay	\N	0
tt14857528	Time Cut	CA	en	imdbDisplay	\N	0
tt14857528	Time Cut	DE	\N	imdbDisplay	\N	0
tt14857528	Time Cut	FR	\N	imdbDisplay	\N	0
tt14857528	Time Cut	GB	\N	imdbDisplay	\N	0
tt14857528	Time Cut	IN	en	imdbDisplay	\N	0
tt14857528	Time Cut	IT	\N	imdbDisplay	\N	0
tt14857528	Time Cut	SE	\N	imdbDisplay	\N	0
tt1186204	Cupid on the Job	\N	\N	original	\N	1
tt1186204	Cupid on the Job	US	\N	imdbDisplay	\N	0
tt32003302	Viajate el Valle	\N	\N	original	\N	1
tt32003302	Viajate el Valle	CO	\N	\N	\N	0
tt1078593	Ricky Cooper	\N	\N	original	\N	1
tt1078593	Ricky Cooper	US	\N	imdbDisplay	\N	0
tt3185008	Stor lycka, stor fara	\N	\N	original	\N	1
tt10576374	Episode #1.227	\N	\N	original	\N	1
tt10576374	Episódio #1.227	PT	pt	\N	\N	0
tt10576374	एपिसोड #1.227	IN	hi	\N	\N	0
tt10576374	Épisode #1.227	FR	fr	\N	\N	0
tt10576374	Episodio #1.227	IT	it	\N	\N	0
tt10576374	Folge #1.227	DE	de	\N	\N	0
tt10576374	エピソード #1.227	JP	ja	\N	\N	0
tt10576374	Episodio #1.227	ES	es	\N	\N	0
tt6806954	Episode dated 13 July 1996	\N	\N	original	\N	1
tt6806954	Episódio datado de 13 Julho de 1996	PT	pt	\N	\N	0
tt6806954	13 जुलाई 1996 को प्रसारित एपिसोड	IN	hi	\N	\N	0
tt6806954	Épisode datant du 13 juillet 1996	FR	fr	\N	\N	0
tt6806954	Episodio datato 13 luglio 1996	IT	it	\N	\N	0
tt6806954	Folge vom 13. Juli 1996	DE	de	\N	\N	0
tt6806954	1996年7月13日 のエピソード	JP	ja	\N	\N	0
tt6806954	Episodio fechado 13 julio 1996	ES	es	\N	\N	0
tt30272245	Episode #1.5336	\N	\N	original	\N	1
tt30272245	Episódio #1.5336	PT	pt	\N	\N	0
tt30272245	एपिसोड #1.5336	IN	hi	\N	\N	0
tt30272245	Épisode #1.5336	FR	fr	\N	\N	0
tt30272245	Episodio #1.5336	IT	it	\N	\N	0
tt30272245	Folge #1.5336	DE	de	\N	\N	0
tt30272245	エピソード #1.5336	JP	ja	\N	\N	0
tt30272245	Episodio #1.5336	ES	es	\N	\N	0
tt9630990	Dont Break The Rules	\N	\N	original	\N	1
tt0512119	El susto	\N	\N	original	\N	1
tt13849900	Episode #1.2401	\N	\N	original	\N	1
tt13849900	Episódio #1.2401	PT	pt	\N	\N	0
tt13849900	एपिसोड #1.2401	IN	hi	\N	\N	0
tt13849900	Épisode #1.2401	FR	fr	\N	\N	0
tt13849900	Episodio #1.2401	IT	it	\N	\N	0
tt13849900	Folge #1.2401	DE	de	\N	\N	0
tt13849900	エピソード #1.2401	JP	ja	\N	\N	0
tt13849900	Episodio #1.2401	ES	es	\N	\N	0
tt2592776	Tin Machine: Live at the Docks	\N	\N	original	\N	1
tt2592776	Tin Machine Live: Oy Vey, Baby	GB	\N	\N	video box title	0
tt2592776	Tin Machine: Live at the Docks	GB	\N	imdbDisplay	\N	0
tt2766738	Nightrunners	\N	\N	original	\N	1
tt2766738	Nightrunners	CA	fr	imdbDisplay	\N	0
tt7419208	College Football - McGowan	\N	\N	original	\N	1
tt35662168	Episode #1.100	\N	\N	original	\N	1
tt35662168	Episódio #1.100	PT	pt	\N	\N	0
tt35662168	एपिसोड #1.100	IN	hi	\N	\N	0
tt35662168	Épisode #1.100	FR	fr	\N	\N	0
tt35662168	Episodio #1.100	IT	it	\N	\N	0
tt35662168	Folge #1.100	DE	de	\N	\N	0
tt35662168	エピソード #1.100	JP	ja	\N	\N	0
tt35662168	Episodio #1.100	ES	es	\N	\N	0
tt29763055	Der Pfarrer und die Frauen	\N	\N	original	\N	1
tt12416946	Episode dated 28 May 2020	\N	\N	original	\N	1
tt12416946	Episódio datado de 28 Maio de 2020	PT	pt	\N	\N	0
tt12416946	28 मई 2020 को प्रसारित एपिसोड	IN	hi	\N	\N	0
tt12416946	Épisode datant du 28 mai 2020	FR	fr	\N	\N	0
tt12416946	Episodio datato 28 maggio 2020	IT	it	\N	\N	0
tt12416946	Folge vom 28. Mai 2020	DE	de	\N	\N	0
tt12416946	2020年5月28日 のエピソード	JP	ja	\N	\N	0
tt12416946	Episodio fechado 28 mayo 2020	ES	es	\N	\N	0
tt5948646	Episode #1.142	\N	\N	original	\N	1
tt5948646	Episódio #1.142	PT	pt	\N	\N	0
tt5948646	एपिसोड #1.142	IN	hi	\N	\N	0
tt5948646	Épisode #1.142	FR	fr	\N	\N	0
tt5948646	Episodio #1.142	IT	it	\N	\N	0
tt5948646	Folge #1.142	DE	de	\N	\N	0
tt5948646	エピソード #1.142	JP	ja	\N	\N	0
tt5948646	Episodio #1.142	ES	es	\N	\N	0
tt5661452	Episode #33.75	\N	\N	original	\N	1
tt5661452	Episódio #33.75	PT	pt	\N	\N	0
tt5661452	एपिसोड #33.75	IN	hi	\N	\N	0
tt5661452	Épisode #33.75	FR	fr	\N	\N	0
tt5661452	Episodio #33.75	IT	it	\N	\N	0
tt5661452	Folge #33.75	DE	de	\N	\N	0
tt5661452	エピソード #33.75	JP	ja	\N	\N	0
tt5661452	Episodio #33.75	ES	es	\N	\N	0
tt7760258	Episode #1.116	\N	\N	original	\N	1
tt7760258	Episódio #1.116	PT	pt	\N	\N	0
tt7760258	एपिसोड #1.116	IN	hi	\N	\N	0
tt7760258	Épisode #1.116	FR	fr	\N	\N	0
tt7760258	Episodio #1.116	IT	it	\N	\N	0
tt7760258	Folge #1.116	DE	de	\N	\N	0
tt7760258	エピソード #1.116	JP	ja	\N	\N	0
tt7760258	Episodio #1.116	ES	es	\N	\N	0
tt3648730	Pathé Ballet: 50 jaar het Nationale Ballet	\N	\N	original	\N	1
tt3648730	Pathé Ballet: 50 jaar het Nationale Ballet	NL	\N	\N	\N	0
tt34671460	Episode #1.98	\N	\N	original	\N	1
tt34671460	Episódio #1.98	PT	pt	\N	\N	0
tt34671460	एपिसोड #1.98	IN	hi	\N	\N	0
tt34671460	Épisode #1.98	FR	fr	\N	\N	0
tt34671460	Episodio #1.98	IT	it	\N	\N	0
tt34671460	Folge #1.98	DE	de	\N	\N	0
tt34671460	エピソード #1.98	JP	ja	\N	\N	0
tt34671460	Episodio #1.98	ES	es	\N	\N	0
tt11664918	Episode #1.61	\N	\N	original	\N	1
tt11664918	Episódio #1.61	PT	pt	\N	\N	0
tt11664918	एपिसोड #1.61	IN	hi	\N	\N	0
tt11664918	Épisode #1.61	FR	fr	\N	\N	0
tt11664918	Episodio #1.61	IT	it	\N	\N	0
tt11664918	Folge #1.61	DE	de	\N	\N	0
tt11664918	エピソード #1.61	JP	ja	\N	\N	0
tt11664918	Episodio #1.61	ES	es	\N	\N	0
tt2914258	Episode #1.77	\N	\N	original	\N	1
tt2914258	Episódio #1.77	PT	pt	\N	\N	0
tt2914258	एपिसोड #1.77	IN	hi	\N	\N	0
tt2914258	Épisode #1.77	FR	fr	\N	\N	0
tt2914258	Episodio #1.77	IT	it	\N	\N	0
tt2914258	Folge #1.77	DE	de	\N	\N	0
tt2914258	エピソード #1.77	JP	ja	\N	\N	0
tt2914258	Episodio #1.77	ES	es	\N	\N	0
tt31307672	California Summer	\N	\N	original	\N	1
tt31307672	California Summer	US	\N	\N	\N	0
tt1332982	Episode dated 20 January 1987	\N	\N	original	\N	1
tt1332982	Episódio datado de 20 Janeiro de 1987	PT	pt	\N	\N	0
tt1332982	20 जनवरी 1987 को प्रसारित एपिसोड	IN	hi	\N	\N	0
tt1332982	Épisode datant du 20 janvier 1987	FR	fr	\N	\N	0
tt1332982	Episodio datato 20 gennaio 1987	IT	it	\N	\N	0
tt1332982	Folge vom 20. Januar 1987	DE	de	\N	\N	0
tt1332982	1987年1月20日 のエピソード	JP	ja	\N	\N	0
tt1332982	Episodio fechado 20 enero 1987	ES	es	\N	\N	0
tt27758943	Episode #2.51	\N	\N	original	\N	1
tt27758943	Episódio #2.51	PT	pt	\N	\N	0
tt27758943	एपिसोड #2.51	IN	hi	\N	\N	0
tt27758943	Épisode #2.51	FR	fr	\N	\N	0
tt27758943	Episodio #2.51	IT	it	\N	\N	0
tt27758943	Folge #2.51	DE	de	\N	\N	0
tt27758943	エピソード #2.51	JP	ja	\N	\N	0
tt27758943	Episodio #2.51	ES	es	\N	\N	0
tt14300608	Episode #1.38	\N	\N	original	\N	1
tt14300608	Episódio #1.38	PT	pt	\N	\N	0
tt14300608	एपिसोड #1.38	IN	hi	\N	\N	0
tt14300608	Épisode #1.38	FR	fr	\N	\N	0
tt14300608	Episodio #1.38	IT	it	\N	\N	0
tt14300608	Folge #1.38	DE	de	\N	\N	0
tt14300608	エピソード #1.38	JP	ja	\N	\N	0
tt14300608	Episodio #1.38	ES	es	\N	\N	0
tt4956656	Episode #1.12	\N	\N	original	\N	1
tt4956656	Episódio #1.12	PT	pt	\N	\N	0
tt4956656	एपिसोड #1.12	IN	hi	\N	\N	0
tt4956656	Épisode #1.12	FR	fr	\N	\N	0
tt4956656	Episodio #1.12	IT	it	\N	\N	0
tt4956656	Folge #1.12	DE	de	\N	\N	0
tt4956656	エピソード #1.12	JP	ja	\N	\N	0
tt4956656	Episodio #1.12	ES	es	\N	\N	0
tt12322766	Episode #1.81	\N	\N	original	\N	1
tt12322766	Episódio #1.81	PT	pt	\N	\N	0
tt12322766	एपिसोड #1.81	IN	hi	\N	\N	0
tt12322766	Épisode #1.81	FR	fr	\N	\N	0
tt12322766	Episodio #1.81	IT	it	\N	\N	0
tt12322766	Folge #1.81	DE	de	\N	\N	0
tt12322766	エピソード #1.81	JP	ja	\N	\N	0
tt12322766	Episodio #1.81	ES	es	\N	\N	0
tt8004590	Folge #1.45	DE	de	\N	\N	0
tt1153299	Episode #1.46	\N	\N	original	\N	1
tt1153299	Episódio #1.46	PT	pt	\N	\N	0
tt1153299	एपिसोड #1.46	IN	hi	\N	\N	0
tt1153299	Épisode #1.46	FR	fr	\N	\N	0
tt1153299	Episodio #1.46	IT	it	\N	\N	0
tt1153299	Folge #1.46	DE	de	\N	\N	0
tt1153299	エピソード #1.46	JP	ja	\N	\N	0
tt1153299	Episodio #1.46	ES	es	\N	\N	0
tt12377228	Real Life Stranger Things	\N	\N	original	\N	1
tt12377228	Real Life Stranger Things	US	\N	\N	\N	0
tt11071286	The Man Who Won't Marry - Part 2	\N	\N	original	\N	1
tt28351416	Episode #1.25	\N	\N	original	\N	1
tt28351416	Episódio #1.25	PT	pt	\N	\N	0
tt28351416	एपिसोड #1.25	IN	hi	\N	\N	0
tt28351416	Épisode #1.25	FR	fr	\N	\N	0
tt28351416	Episodio #1.25	IT	it	\N	\N	0
tt28351416	Folge #1.25	DE	de	\N	\N	0
tt28351416	エピソード #1.25	JP	ja	\N	\N	0
tt28351416	Episodio #1.25	ES	es	\N	\N	0
tt12282948	Episode #2.70	\N	\N	original	\N	1
tt12282948	Episódio #2.70	PT	pt	\N	\N	0
tt12282948	एपिसोड #2.70	IN	hi	\N	\N	0
tt12282948	Épisode #2.70	FR	fr	\N	\N	0
tt12282948	Episodio #2.70	IT	it	\N	\N	0
tt12282948	Folge #2.70	DE	de	\N	\N	0
tt12282948	エピソード #2.70	JP	ja	\N	\N	0
tt12282948	Episodio #2.70	ES	es	\N	\N	0
tt31975094	Episode #1.129	\N	\N	original	\N	1
tt31975094	Episódio #1.129	PT	pt	\N	\N	0
tt31975094	एपिसोड #1.129	IN	hi	\N	\N	0
tt31975094	Épisode #1.129	FR	fr	\N	\N	0
tt31975094	Episodio #1.129	IT	it	\N	\N	0
tt31975094	Folge #1.129	DE	de	\N	\N	0
tt31975094	エピソード #1.129	JP	ja	\N	\N	0
tt31975094	Episodio #1.129	ES	es	\N	\N	0
tt14670512	Vypusk 73: Poezd ushyol, Izobretatel', Turist-89	\N	\N	original	\N	1
tt6158740	Cry Wolf	\N	\N	original	\N	1
tt6158740	Cry Wolf	CA	\N	\N	\N	0
tt22939126	Football: Jesuit Marauders at Elk Grove Thundering Herd	\N	\N	original	\N	1
tt22939126	Football: Jesuit Marauders at Elk Grove Thundering Herd	US	\N	\N	\N	0
tt26677468	Episode #2.130	\N	\N	original	\N	1
tt26677468	Episódio #2.130	PT	pt	\N	\N	0
tt26677468	एपिसोड #2.130	IN	hi	\N	\N	0
tt26677468	Épisode #2.130	FR	fr	\N	\N	0
tt26677468	Episodio #2.130	IT	it	\N	\N	0
tt26677468	Folge #2.130	DE	de	\N	\N	0
tt26677468	エピソード #2.130	JP	ja	\N	\N	0
tt26677468	Episodio #2.130	ES	es	\N	\N	0
tt0788857	Episode #1.9	\N	\N	original	\N	1
tt0788857	Episódio #1.9	PT	pt	\N	\N	0
tt0788857	एपिसोड #1.9	IN	hi	\N	\N	0
tt0788857	Épisode #1.9	FR	fr	\N	\N	0
tt0788857	Episodio #1.9	IT	it	\N	\N	0
tt0788857	Folge #1.9	DE	de	\N	\N	0
tt0788857	エピソード #1.9	JP	ja	\N	\N	0
tt0788857	Episodio #1.9	ES	es	\N	\N	0
tt9188754	Episode #1.132	\N	\N	original	\N	1
tt9188754	Episódio #1.132	PT	pt	\N	\N	0
tt9188754	एपिसोड #1.132	IN	hi	\N	\N	0
tt9188754	Épisode #1.132	FR	fr	\N	\N	0
tt9188754	Episodio #1.132	IT	it	\N	\N	0
tt9188754	Folge #1.132	DE	de	\N	\N	0
tt9188754	エピソード #1.132	JP	ja	\N	\N	0
tt9188754	Episodio #1.132	ES	es	\N	\N	0
tt3830482	Frog Spawn	\N	\N	original	\N	1
tt3830482	Frog Spawn	GB	\N	imdbDisplay	\N	0
tt0770166	The 14th Morning	\N	\N	original	\N	1
tt0770166	The 14th Morning	DE	\N	imdbDisplay	\N	0
tt0770166	The 14th Morning	US	\N	imdbDisplay	\N	0
tt6749720	Caught in a Tight Situation	\N	\N	original	\N	1
tt27852182	July 2018	\N	\N	original	\N	1
tt28804769	Episode #1.184	\N	\N	original	\N	1
tt28804769	Episódio #1.184	PT	pt	\N	\N	0
tt28804769	एपिसोड #1.184	IN	hi	\N	\N	0
tt28804769	Épisode #1.184	FR	fr	\N	\N	0
tt28804769	Episodio #1.184	IT	it	\N	\N	0
tt28804769	Folge #1.184	DE	de	\N	\N	0
tt28804769	エピソード #1.184	JP	ja	\N	\N	0
tt28804769	Episodio #1.184	ES	es	\N	\N	0
tt33344071	Dzaomalaza et le boutre brûlé	\N	\N	original	\N	1
tt33344071	Dzaomalaza 1	XWW	en	\N	short title	0
tt33344071	Dzaomalaza et le boutre brûlé	MG	\N	\N	\N	0
tt7485318	Minnie	\N	\N	original	\N	1
tt7485318	Minnie	IT	\N	imdbDisplay	\N	0
tt6646754	Miedo en el piso 50	\N	\N	original	\N	1
tt11013382	Episode #1.76	\N	\N	original	\N	1
tt11013382	Episódio #1.76	PT	pt	\N	\N	0
tt11013382	एपिसोड #1.76	IN	hi	\N	\N	0
tt11013382	Épisode #1.76	FR	fr	\N	\N	0
tt11013382	Episodio #1.76	IT	it	\N	\N	0
tt11013382	Folge #1.76	DE	de	\N	\N	0
tt11013382	エピソード #1.76	JP	ja	\N	\N	0
tt11013382	Episodio #1.76	ES	es	\N	\N	0
tt1447574	Bring in 'Da Boyz, Bring in 'Da Skunk	\N	\N	original	\N	1
tt2006696	Bipolar	\N	\N	original	\N	1
tt2006696	Bipolar	GB	\N	imdbDisplay	\N	0
tt12386854	Episode #1.1519	\N	\N	original	\N	1
tt12386854	Episódio #1.1519	PT	pt	\N	\N	0
tt12386854	एपिसोड #1.1519	IN	hi	\N	\N	0
tt12386854	Épisode #1.1519	FR	fr	\N	\N	0
tt12386854	Episodio #1.1519	IT	it	\N	\N	0
tt12386854	Folge #1.1519	DE	de	\N	\N	0
tt12386854	エピソード #1.1519	JP	ja	\N	\N	0
tt12386854	Episodio #1.1519	ES	es	\N	\N	0
tt1608197	Sacred Earth	\N	\N	original	\N	1
tt1608197	Sacred Earth	US	\N	imdbDisplay	\N	0
tt1608197	Священна Земля	UA	\N	imdbDisplay	\N	0
tt1608197	Священная Земля	RU	\N	imdbDisplay	\N	0
tt2372868	Episode #1.6324	\N	\N	original	\N	1
tt2372868	Episódio #1.6324	PT	pt	\N	\N	0
tt2372868	एपिसोड #1.6324	IN	hi	\N	\N	0
tt2372868	Épisode #1.6324	FR	fr	\N	\N	0
tt2372868	Episodio #1.6324	IT	it	\N	\N	0
tt2372868	Folge #1.6324	DE	de	\N	\N	0
tt2372868	エピソード #1.6324	JP	ja	\N	\N	0
tt2372868	Episodio #1.6324	ES	es	\N	\N	0
tt1661341	1997 Norwest Sun Bowl	\N	\N	original	\N	1
tt1661341	1997 Norwest Sun Bowl	US	\N	imdbDisplay	\N	0
tt3263246	Deuxième époque: Nans - Firmin	\N	\N	original	\N	1
tt3263246	Deuxième époque: Nans - Firmin	FR	\N	\N	\N	0
tt31521526	Lowlands	\N	\N	original	\N	1
tt31521526	Lowlands	GB	\N	\N	\N	0
tt29622278	Als Au-Pair-Oma im Ausland	\N	\N	original	\N	1
tt0917825	Episode dated 18 October 2006	\N	\N	original	\N	1
tt0917825	Episódio datado de 18 Outubro de 2006	PT	pt	\N	\N	0
tt0917825	18 अक्टूबर 2006 को प्रसारित एपिसोड	IN	hi	\N	\N	0
tt0917825	Épisode datant du 18 octobre 2006	FR	fr	\N	\N	0
tt0917825	Episodio datato 18 ottobre 2006	IT	it	\N	\N	0
tt0917825	Folge vom 18. Oktober 2006	DE	de	\N	\N	0
tt0917825	2006年10月18日 のエピソード	JP	ja	\N	\N	0
tt0917825	Episodio fechado 18 octubre 2006	ES	es	\N	\N	0
tt6841546	Episode #1.53	\N	\N	original	\N	1
tt6841546	Episódio #1.53	PT	pt	\N	\N	0
tt6841546	एपिसोड #1.53	IN	hi	\N	\N	0
tt6841546	Épisode #1.53	FR	fr	\N	\N	0
tt6841546	Episodio #1.53	IT	it	\N	\N	0
tt6841546	Folge #1.53	DE	de	\N	\N	0
tt6841546	エピソード #1.53	JP	ja	\N	\N	0
tt6841546	Episodio #1.53	ES	es	\N	\N	0
tt12425162	Episode #1.3837	\N	\N	original	\N	1
tt12425162	Episódio #1.3837	PT	pt	\N	\N	0
tt12425162	एपिसोड #1.3837	IN	hi	\N	\N	0
tt12425162	Épisode #1.3837	FR	fr	\N	\N	0
tt12425162	Episodio #1.3837	IT	it	\N	\N	0
tt12425162	Folge #1.3837	DE	de	\N	\N	0
tt12425162	エピソード #1.3837	JP	ja	\N	\N	0
tt12425162	Episodio #1.3837	ES	es	\N	\N	0
tt12841228	Episode #1.746	\N	\N	original	\N	1
tt12841228	Episódio #1.746	PT	pt	\N	\N	0
tt12841228	एपिसोड #1.746	IN	hi	\N	\N	0
tt12841228	Épisode #1.746	FR	fr	\N	\N	0
tt12841228	Episodio #1.746	IT	it	\N	\N	0
tt12841228	Folge #1.746	DE	de	\N	\N	0
tt12841228	エピソード #1.746	JP	ja	\N	\N	0
tt12841228	Episodio #1.746	ES	es	\N	\N	0
tt32583227	Marty Ingels and Pat Carroll - Day 3	\N	\N	original	\N	1
tt14903798	Episode #1.179	\N	\N	original	\N	1
tt14903798	Episódio #1.179	PT	pt	\N	\N	0
tt14903798	एपिसोड #1.179	IN	hi	\N	\N	0
tt14903798	Épisode #1.179	FR	fr	\N	\N	0
tt14903798	Episodio #1.179	IT	it	\N	\N	0
tt14903798	Folge #1.179	DE	de	\N	\N	0
tt14903798	エピソード #1.179	JP	ja	\N	\N	0
tt14903798	Episodio #1.179	ES	es	\N	\N	0
tt14649272	Ninku Trap!	\N	\N	original	\N	1
tt15338250	La Nochevieja de Pepe el Manco	\N	\N	original	\N	1
tt13410454	Nature Sketch	\N	\N	original	\N	1
tt10440792	Episode #1.685	\N	\N	original	\N	1
tt10440792	Episódio #1.685	PT	pt	\N	\N	0
tt10440792	एपिसोड #1.685	IN	hi	\N	\N	0
tt10440792	Épisode #1.685	FR	fr	\N	\N	0
tt10440792	Episodio #1.685	IT	it	\N	\N	0
tt10440792	Folge #1.685	DE	de	\N	\N	0
tt10440792	エピソード #1.685	JP	ja	\N	\N	0
tt10440792	Episodio #1.685	ES	es	\N	\N	0
tt30134520	Episode #1.54	\N	\N	original	\N	1
tt30134520	Episódio #1.54	PT	pt	\N	\N	0
tt30134520	एपिसोड #1.54	IN	hi	\N	\N	0
tt30134520	Épisode #1.54	FR	fr	\N	\N	0
tt30134520	Episodio #1.54	IT	it	\N	\N	0
tt30134520	Folge #1.54	DE	de	\N	\N	0
tt30134520	エピソード #1.54	JP	ja	\N	\N	0
tt30134520	Episodio #1.54	ES	es	\N	\N	0
tt11212068	Episode dated 9 January 1975	\N	\N	original	\N	1
tt11212068	Episódio datado de 9 Janeiro de 1975	PT	pt	\N	\N	0
tt11212068	9 जनवरी 1975 को प्रसारित एपिसोड	IN	hi	\N	\N	0
tt11212068	Épisode datant du 9 janvier 1975	FR	fr	\N	\N	0
tt11212068	Episodio datato 9 gennaio 1975	IT	it	\N	\N	0
tt11212068	Folge vom 9. Januar 1975	DE	de	\N	\N	0
tt11212068	1975年1月9日 のエピソード	JP	ja	\N	\N	0
tt11212068	Episodio fechado 9 enero 1975	ES	es	\N	\N	0
tt1262791	999	\N	\N	original	\N	1
tt1262791	999	FR	\N	\N	\N	0
tt5560176	Pizza Delivery	\N	\N	original	\N	1
tt5560176	Pizza Delivery	IE	\N	\N	\N	0
tt21237734	Tour de France 2022, 6. Etappe: Binche - Longwy	\N	\N	original	\N	1
tt32673507	Episode #1.2008	\N	\N	original	\N	1
tt32673507	Episódio #1.2008	PT	pt	\N	\N	0
tt32673507	एपिसोड #1.2008	IN	hi	\N	\N	0
tt32673507	Épisode #1.2008	FR	fr	\N	\N	0
tt32673507	Episodio #1.2008	IT	it	\N	\N	0
tt32673507	Folge #1.2008	DE	de	\N	\N	0
tt32673507	エピソード #1.2008	JP	ja	\N	\N	0
tt32673507	Episodio #1.2008	ES	es	\N	\N	0
tt1231037	A Little Heart to Heart with Miss Bangor	\N	\N	original	\N	1
tt8004590	Episode #1.45	\N	\N	original	\N	1
tt8004590	Episódio #1.45	PT	pt	\N	\N	0
tt8004590	एपिसोड #1.45	IN	hi	\N	\N	0
tt8004590	Épisode #1.45	FR	fr	\N	\N	0
tt8004590	Episodio #1.45	IT	it	\N	\N	0
tt8004590	エピソード #1.45	JP	ja	\N	\N	0
tt8004590	Episodio #1.45	ES	es	\N	\N	0
tt12266198	Episode #3.110	\N	\N	original	\N	1
tt12266198	Episódio #3.110	PT	pt	\N	\N	0
tt12266198	एपिसोड #3.110	IN	hi	\N	\N	0
tt12266198	Épisode #3.110	FR	fr	\N	\N	0
tt12266198	Episodio #3.110	IT	it	\N	\N	0
tt12266198	Folge #3.110	DE	de	\N	\N	0
tt12266198	エピソード #3.110	JP	ja	\N	\N	0
tt12266198	Episodio #3.110	ES	es	\N	\N	0
tt32571245	Episode #1.355	\N	\N	original	\N	1
tt32571245	Episódio #1.355	PT	pt	\N	\N	0
tt32571245	एपिसोड #1.355	IN	hi	\N	\N	0
tt32571245	Épisode #1.355	FR	fr	\N	\N	0
tt32571245	Episodio #1.355	IT	it	\N	\N	0
tt32571245	Folge #1.355	DE	de	\N	\N	0
tt32571245	エピソード #1.355	JP	ja	\N	\N	0
tt32571245	Episodio #1.355	ES	es	\N	\N	0
tt10102514	Episode dated 26 April 2019	\N	\N	original	\N	1
tt10102514	Episódio datado de 26 Abril de 2019	PT	pt	\N	\N	0
tt10102514	26 अप्रैल 2019 को प्रसारित एपिसोड	IN	hi	\N	\N	0
tt10102514	Épisode datant du 26 avril 2019	FR	fr	\N	\N	0
tt10102514	Episodio datato 26 aprile 2019	IT	it	\N	\N	0
tt10102514	Folge vom 26. April 2019	DE	de	\N	\N	0
tt10102514	2019年4月26日 のエピソード	JP	ja	\N	\N	0
tt10102514	Episodio fechado 26 abril 2019	ES	es	\N	\N	0
tt9161154	Episode #1.157	\N	\N	original	\N	1
tt9161154	Episódio #1.157	PT	pt	\N	\N	0
tt9161154	एपिसोड #1.157	IN	hi	\N	\N	0
tt9161154	Épisode #1.157	FR	fr	\N	\N	0
tt9161154	Episodio #1.157	IT	it	\N	\N	0
tt9161154	Folge #1.157	DE	de	\N	\N	0
tt9161154	エピソード #1.157	JP	ja	\N	\N	0
tt9161154	Episodio #1.157	ES	es	\N	\N	0
tt1060340	Episode #2.7	\N	\N	original	\N	1
tt1060340	Episódio #2.7	PT	pt	\N	\N	0
tt1060340	एपिसोड #2.7	IN	hi	\N	\N	0
tt1060340	Épisode #2.7	FR	fr	\N	\N	0
tt1060340	Episodio #2.7	IT	it	\N	\N	0
tt1060340	Folge #2.7	DE	de	\N	\N	0
tt1060340	エピソード #2.7	JP	ja	\N	\N	0
tt1060340	Episodio #2.7	ES	es	\N	\N	0
tt28718363	The Mental Internet	\N	\N	original	\N	1
tt0588612	My Mother, Myself	\N	\N	original	\N	1
tt0588612	My Mother, Myself	US	\N	\N	\N	0
tt12474486	Episode #1.184	\N	\N	original	\N	1
tt12474486	Episódio #1.184	PT	pt	\N	\N	0
tt12474486	एपिसोड #1.184	IN	hi	\N	\N	0
tt12474486	Épisode #1.184	FR	fr	\N	\N	0
tt12474486	Episodio #1.184	IT	it	\N	\N	0
tt12474486	Folge #1.184	DE	de	\N	\N	0
tt12474486	エピソード #1.184	JP	ja	\N	\N	0
tt12474486	Episodio #1.184	ES	es	\N	\N	0
tt8557030	Episode #9.201	\N	\N	original	\N	1
tt8557030	Episódio #9.201	PT	pt	\N	\N	0
tt8557030	एपिसोड #9.201	IN	hi	\N	\N	0
tt8557030	Épisode #9.201	FR	fr	\N	\N	0
tt8557030	Episodio #9.201	IT	it	\N	\N	0
tt8557030	Folge #9.201	DE	de	\N	\N	0
tt8557030	エピソード #9.201	JP	ja	\N	\N	0
tt8557030	Episodio #9.201	ES	es	\N	\N	0
tt14189116	The Last Days of Rome	\N	\N	original	\N	1
tt0356541	Don Giovanni	\N	\N	original	\N	1
tt0356541	Don Giovanni	FR	\N	imdbDisplay	\N	0
tt0356541	Don Giovanni	IN	en	imdbDisplay	\N	0
tt3352606	Episode #19.199	\N	\N	original	\N	1
tt3352606	Episódio #19.199	PT	pt	\N	\N	0
tt3352606	एपिसोड #19.199	IN	hi	\N	\N	0
tt3352606	Épisode #19.199	FR	fr	\N	\N	0
tt3352606	Episodio #19.199	IT	it	\N	\N	0
tt3352606	Folge #19.199	DE	de	\N	\N	0
tt3352606	エピソード #19.199	JP	ja	\N	\N	0
tt3352606	Episodio #19.199	ES	es	\N	\N	0
tt28272315	Hot Pot/Tart	\N	\N	original	\N	1
tt0265680	Sa-ti vorbesc despre mine	\N	\N	original	\N	1
tt0265680	Sa-ti vorbesc despre mine	RO	\N	imdbDisplay	\N	0
tt14346444	Episode #1.277	\N	\N	original	\N	1
tt14346444	Episódio #1.277	PT	pt	\N	\N	0
tt14346444	एपिसोड #1.277	IN	hi	\N	\N	0
tt14346444	Épisode #1.277	FR	fr	\N	\N	0
tt14346444	Episodio #1.277	IT	it	\N	\N	0
tt14346444	Folge #1.277	DE	de	\N	\N	0
tt14346444	エピソード #1.277	JP	ja	\N	\N	0
tt14346444	Episodio #1.277	ES	es	\N	\N	0
tt6519822	1994: Day 5 Highlights	\N	\N	original	\N	1
tt27796652	Episode #12.44	\N	\N	original	\N	1
tt27796652	Episódio #12.44	PT	pt	\N	\N	0
tt27796652	एपिसोड #12.44	IN	hi	\N	\N	0
tt27796652	Épisode #12.44	FR	fr	\N	\N	0
tt27796652	Episodio #12.44	IT	it	\N	\N	0
tt27796652	Folge #12.44	DE	de	\N	\N	0
tt27796652	エピソード #12.44	JP	ja	\N	\N	0
tt27796652	Episodio #12.44	ES	es	\N	\N	0
tt1583288	Kinako: Minarai keisatsuken no monogatari	\N	\N	original	\N	1
tt1583288	Kinako, a História de um Cão Policial Aprendiz	BR	\N	imdbDisplay	\N	0
tt1583288	Krümels Traum	DE	\N	imdbDisplay	\N	0
tt1583288	Police Dog Dream	XWW	en	\N	\N	0
tt1583288	きな子　見習い警察犬の物語	JP	ja	imdbDisplay	\N	0
tt1583288	實習警犬物語	TW	\N	\N	literal title	0
tt1583288	狗狗學警	HK	cmn	imdbDisplay	\N	0
tt21929312	Episode #7.160	\N	\N	original	\N	1
tt21929312	Episódio #7.160	PT	pt	\N	\N	0
tt21929312	एपिसोड #7.160	IN	hi	\N	\N	0
tt21929312	Épisode #7.160	FR	fr	\N	\N	0
tt21929312	Episodio #7.160	IT	it	\N	\N	0
tt21929312	Folge #7.160	DE	de	\N	\N	0
tt21929312	エピソード #7.160	JP	ja	\N	\N	0
tt21929312	Episodio #7.160	ES	es	\N	\N	0
tt1065505	Slime Ballin'	\N	\N	original	\N	1
tt1065505	Slime Ballin'	US	\N	imdbDisplay	\N	0
tt0488784	Il sostituto	\N	\N	original	\N	1
tt0488784	Il sostituto	IT	\N	imdbDisplay	\N	0
tt7406470	RetroBlasting DragonCon 2012 Day 3 - A Cast of Thousands!	\N	\N	original	\N	1
tt12587368	Tim Robbins/Lauren Holly/Doris Wishman	\N	\N	original	\N	1
tt8278224	What did you do at school today?	\N	\N	original	\N	1
tt8278224	What Did You Do at School Today?	GB	\N	imdbDisplay	\N	0
tt8278224	What Did You Do at School Today?	US	\N	imdbDisplay	\N	0
tt8278224	What Did You Do at School Today?	XWW	en	imdbDisplay	\N	0
tt8278224	What did you do at school today	AU	\N	\N	alternative spelling	0
tt8278224	What did you do at school today?	AU	\N	imdbDisplay	\N	0
tt8278224	What Did You do at School Today?	AU	\N	\N	alternative spelling	0
tt8278224	What Did You Do at School Today?	AU	en	\N	\N	0
tt17279806	Episode #1.4	\N	\N	original	\N	1
tt17279806	Episódio #1.4	PT	pt	\N	\N	0
tt17279806	एपिसोड #1.4	IN	hi	\N	\N	0
tt17279806	Épisode #1.4	FR	fr	\N	\N	0
tt17279806	Episodio #1.4	IT	it	\N	\N	0
tt17279806	Folge #1.4	DE	de	\N	\N	0
tt17279806	エピソード #1.4	JP	ja	\N	\N	0
tt17279806	Episodio #1.4	ES	es	\N	\N	0
tt7212038	Episode #26.12	\N	\N	original	\N	1
tt7212038	Episódio #26.12	PT	pt	\N	\N	0
tt7212038	एपिसोड #26.12	IN	hi	\N	\N	0
tt7212038	Épisode #26.12	FR	fr	\N	\N	0
tt7212038	Episodio #26.12	IT	it	\N	\N	0
tt7212038	Folge #26.12	DE	de	\N	\N	0
tt7212038	エピソード #26.12	JP	ja	\N	\N	0
tt7212038	Episodio #26.12	ES	es	\N	\N	0
tt32314643	NEW FRIENDS!	\N	\N	original	\N	1
tt14937828	Episode #1.124	\N	\N	original	\N	1
tt14937828	Episódio #1.124	PT	pt	\N	\N	0
tt14937828	एपिसोड #1.124	IN	hi	\N	\N	0
tt14937828	Épisode #1.124	FR	fr	\N	\N	0
tt14937828	Episodio #1.124	IT	it	\N	\N	0
tt14937828	Folge #1.124	DE	de	\N	\N	0
tt14937828	エピソード #1.124	JP	ja	\N	\N	0
tt14937828	Episodio #1.124	ES	es	\N	\N	0
tt15377674	A Turning Point For Karna	\N	\N	original	\N	1
tt9556120	True Booty	\N	\N	original	\N	1
tt12665608	Episode #1.31	\N	\N	original	\N	1
tt12665608	Episódio #1.31	PT	pt	\N	\N	0
tt12665608	एपिसोड #1.31	IN	hi	\N	\N	0
tt12665608	Épisode #1.31	FR	fr	\N	\N	0
tt12665608	Episodio #1.31	IT	it	\N	\N	0
tt12665608	Folge #1.31	DE	de	\N	\N	0
tt12665608	エピソード #1.31	JP	ja	\N	\N	0
tt12665608	Episodio #1.31	ES	es	\N	\N	0
tt2000621	Episode dated 27 November 2000	\N	\N	original	\N	1
tt2000621	Episódio datado de 27 Novembro de 2000	PT	pt	\N	\N	0
tt2000621	27 नवम्बर 2000 को प्रसारित एपिसोड	IN	hi	\N	\N	0
tt2000621	Épisode datant du 27 novembre 2000	FR	fr	\N	\N	0
tt2000621	Episodio datato 27 novembre 2000	IT	it	\N	\N	0
tt2000621	Folge vom 27. November 2000	DE	de	\N	\N	0
tt2000621	2000年11月27日 のエピソード	JP	ja	\N	\N	0
tt2000621	Episodio fechado 27 noviembre 2000	ES	es	\N	\N	0
tt5552732	Episode #1.16	\N	\N	original	\N	1
tt5552732	Episódio #1.16	PT	pt	\N	\N	0
tt5552732	एपिसोड #1.16	IN	hi	\N	\N	0
tt5552732	Épisode #1.16	FR	fr	\N	\N	0
tt5552732	Episodio #1.16	IT	it	\N	\N	0
tt5552732	Folge #1.16	DE	de	\N	\N	0
tt5552732	エピソード #1.16	JP	ja	\N	\N	0
tt5552732	Episodio #1.16	ES	es	\N	\N	0
tt0359907	El robat el mukadass	\N	\N	original	\N	1
tt0359907	The Blessed Marriage	XWW	en	\N	\N	0
tt0359907	El robat el mukadass	EG	\N	\N	\N	0
tt7492390	Episode dated 17 May 2016	\N	\N	original	\N	1
tt7492390	Episódio datado de 17 Maio de 2016	PT	pt	\N	\N	0
tt7492390	17 मई 2016 को प्रसारित एपिसोड	IN	hi	\N	\N	0
tt7492390	Épisode datant du 17 mai 2016	FR	fr	\N	\N	0
tt7492390	Episodio datato 17 maggio 2016	IT	it	\N	\N	0
tt7492390	Folge vom 17. Mai 2016	DE	de	\N	\N	0
tt7492390	2016年5月17日 のエピソード	JP	ja	\N	\N	0
tt7492390	Episodio fechado 17 mayo 2016	ES	es	\N	\N	0
tt5664906	Blowing Bruno	\N	\N	original	\N	1
tt6142420	Coco Blue Fucks a Working Man	\N	\N	original	\N	1
tt11007452	Karma	\N	\N	original	\N	1
tt6882594	We Got You!	\N	\N	original	\N	1
tt11799310	Episode #3.101	\N	\N	original	\N	1
tt11799310	Episódio #3.101	PT	pt	\N	\N	0
tt11799310	एपिसोड #3.101	IN	hi	\N	\N	0
tt11799310	Épisode #3.101	FR	fr	\N	\N	0
tt11799310	Episodio #3.101	IT	it	\N	\N	0
tt11799310	Folge #3.101	DE	de	\N	\N	0
tt11799310	エピソード #3.101	JP	ja	\N	\N	0
tt11799310	Episodio #3.101	ES	es	\N	\N	0
tt31613783	Dark and Stormy	\N	\N	original	\N	1
tt31613783	Dark and Stormy	US	\N	\N	\N	0
tt33505950	05/10/2024	\N	\N	original	\N	1
tt34378891	The Steam Train Crew	\N	\N	original	\N	1
tt0959645	House of War: Uprising at Mazar-e Sharif	\N	\N	original	\N	1
tt3253548	Naveena Saraswathi Sabatham	\N	\N	original	\N	1
tt3253548	Naveena Saraswathi Sabatham	IN	en	imdbDisplay	\N	0
tt3616530	Episode dated 13 May 2005	\N	\N	original	\N	1
tt3616530	Episódio datado de 13 Maio de 2005	PT	pt	\N	\N	0
tt18972796	エピソード #16.3	JP	ja	\N	\N	0
tt3616530	13 मई 2005 को प्रसारित एपिसोड	IN	hi	\N	\N	0
tt3616530	Épisode datant du 13 mai 2005	FR	fr	\N	\N	0
tt3616530	Episodio datato 13 maggio 2005	IT	it	\N	\N	0
tt3616530	Folge vom 13. Mai 2005	DE	de	\N	\N	0
tt3616530	2005年5月13日 のエピソード	JP	ja	\N	\N	0
tt3616530	Episodio fechado 13 mayo 2005	ES	es	\N	\N	0
tt21228384	Episode #1.9399	\N	\N	original	\N	1
tt21228384	Episódio #1.9399	PT	pt	\N	\N	0
tt21228384	एपिसोड #1.9399	IN	hi	\N	\N	0
tt21228384	Épisode #1.9399	FR	fr	\N	\N	0
tt21228384	Episodio #1.9399	IT	it	\N	\N	0
tt21228384	Folge #1.9399	DE	de	\N	\N	0
tt21228384	エピソード #1.9399	JP	ja	\N	\N	0
tt21228384	Episodio #1.9399	ES	es	\N	\N	0
tt35496897	Episode dated 2 March 2006	\N	\N	original	\N	1
tt35496897	Episódio datado de 2 Março de 2006	PT	pt	\N	\N	0
tt35496897	2 मार्च 2006 को प्रसारित एपिसोड	IN	hi	\N	\N	0
tt35496897	Épisode datant du 2 mars 2006	FR	fr	\N	\N	0
tt35496897	Episodio datato 2 marzo 2006	IT	it	\N	\N	0
tt35496897	Folge vom 2. März 2006	DE	de	\N	\N	0
tt35496897	2006年3月2日 のエピソード	JP	ja	\N	\N	0
tt35496897	Episodio fechado 2 marzo 2006	ES	es	\N	\N	0
tt14649086	Kathleen Kennedy's future at Lucasfilm EXPOSED! New report hints Star Wars CEOs time is up!	\N	\N	original	\N	1
tt23630322	Episode #1.17	\N	\N	original	\N	1
tt23630322	Episódio #1.17	PT	pt	\N	\N	0
tt23630322	एपिसोड #1.17	IN	hi	\N	\N	0
tt23630322	Épisode #1.17	FR	fr	\N	\N	0
tt23630322	Episodio #1.17	IT	it	\N	\N	0
tt23630322	Folge #1.17	DE	de	\N	\N	0
tt23630322	エピソード #1.17	JP	ja	\N	\N	0
tt23630322	Episodio #1.17	ES	es	\N	\N	0
tt15162908	A Fresh Start For Sirat	\N	\N	original	\N	1
tt0886298	Episode dated 13 November 1997	\N	\N	original	\N	1
tt0886298	Episódio datado de 13 Novembro de 1997	PT	pt	\N	\N	0
tt0886298	13 नवम्बर 1997 को प्रसारित एपिसोड	IN	hi	\N	\N	0
tt0886298	Épisode datant du 13 novembre 1997	FR	fr	\N	\N	0
tt0886298	Episodio datato 13 novembre 1997	IT	it	\N	\N	0
tt0886298	Folge vom 13. November 1997	DE	de	\N	\N	0
tt0886298	1997年11月13日 のエピソード	JP	ja	\N	\N	0
tt0886298	Episodio fechado 13 noviembre 1997	ES	es	\N	\N	0
tt20232790	Ironman Weltmeisterschaft 2021 - heimspiel! extra live	\N	\N	original	\N	1
tt8571698	Onthou	\N	\N	original	\N	1
tt8571698	Onthou	ZA	\N	\N	\N	0
tt12851260	Mobilize! Type-05 GS Assist Robot	\N	\N	original	\N	1
tt9898808	Equivalent Exchange Part 2	\N	\N	original	\N	1
tt33891233	Episode #1.556	\N	\N	original	\N	1
tt33891233	Episódio #1.556	PT	pt	\N	\N	0
tt33891233	एपिसोड #1.556	IN	hi	\N	\N	0
tt33891233	Épisode #1.556	FR	fr	\N	\N	0
tt33891233	Episodio #1.556	IT	it	\N	\N	0
tt33891233	Folge #1.556	DE	de	\N	\N	0
tt33891233	エピソード #1.556	JP	ja	\N	\N	0
tt33891233	Episodio #1.556	ES	es	\N	\N	0
tt18550394	Episode #1.2540	\N	\N	original	\N	1
tt18550394	Episódio #1.2540	PT	pt	\N	\N	0
tt18550394	एपिसोड #1.2540	IN	hi	\N	\N	0
tt18550394	Épisode #1.2540	FR	fr	\N	\N	0
tt18550394	Episodio #1.2540	IT	it	\N	\N	0
tt18550394	Folge #1.2540	DE	de	\N	\N	0
tt18550394	エピソード #1.2540	JP	ja	\N	\N	0
tt18550394	Episodio #1.2540	ES	es	\N	\N	0
tt0593671	Hawkeye, the Mother	\N	\N	original	\N	1
tt25134250	Episode #1.5975	\N	\N	original	\N	1
tt25134250	Episódio #1.5975	PT	pt	\N	\N	0
tt25134250	एपिसोड #1.5975	IN	hi	\N	\N	0
tt25134250	Épisode #1.5975	FR	fr	\N	\N	0
tt25134250	Episodio #1.5975	IT	it	\N	\N	0
tt25134250	Folge #1.5975	DE	de	\N	\N	0
tt25134250	エピソード #1.5975	JP	ja	\N	\N	0
tt25134250	Episodio #1.5975	ES	es	\N	\N	0
tt15242844	Episode #5.5	\N	\N	original	\N	1
tt15242844	Episódio #5.5	PT	pt	\N	\N	0
tt15242844	एपिसोड #5.5	IN	hi	\N	\N	0
tt15242844	Épisode #5.5	FR	fr	\N	\N	0
tt15242844	Episodio #5.5	IT	it	\N	\N	0
tt15242844	Folge #5.5	DE	de	\N	\N	0
tt15242844	エピソード #5.5	JP	ja	\N	\N	0
tt15242844	Episodio #5.5	ES	es	\N	\N	0
tt23038242	Destination Park City	\N	\N	original	\N	1
tt32311504	Episode #1.892	\N	\N	original	\N	1
tt32311504	Episódio #1.892	PT	pt	\N	\N	0
tt32311504	एपिसोड #1.892	IN	hi	\N	\N	0
tt32311504	Épisode #1.892	FR	fr	\N	\N	0
tt32311504	Episodio #1.892	IT	it	\N	\N	0
tt32311504	Folge #1.892	DE	de	\N	\N	0
tt32311504	エピソード #1.892	JP	ja	\N	\N	0
tt32311504	Episodio #1.892	ES	es	\N	\N	0
tt3285806	Episode #18.33	\N	\N	original	\N	1
tt3285806	Episódio #18.33	PT	pt	\N	\N	0
tt3285806	एपिसोड #18.33	IN	hi	\N	\N	0
tt3285806	Épisode #18.33	FR	fr	\N	\N	0
tt3285806	Episodio #18.33	IT	it	\N	\N	0
tt3285806	Folge #18.33	DE	de	\N	\N	0
tt3285806	エピソード #18.33	JP	ja	\N	\N	0
tt3285806	Episodio #18.33	ES	es	\N	\N	0
tt18972796	Episode #16.3	\N	\N	original	\N	1
tt18972796	Episódio #16.3	PT	pt	\N	\N	0
tt18972796	एपिसोड #16.3	IN	hi	\N	\N	0
tt18972796	Épisode #16.3	FR	fr	\N	\N	0
tt18972796	Episodio #16.3	IT	it	\N	\N	0
tt18972796	Folge #16.3	DE	de	\N	\N	0
tt18972796	Episodio #16.3	ES	es	\N	\N	0
tt1219030	Chi è il merlo?	\N	\N	original	\N	1
tt1219030	Chi è il merlo?	IT	\N	imdbDisplay	\N	0
tt0402177	Feeding Pigeons in the Streets of Venice	\N	\N	original	\N	1
tt0402177	Feeding Pigeons in the Streets of Venice	US	\N	imdbDisplay	\N	0
tt1543912	Surfing Soweto	\N	\N	original	\N	1
tt1543912	Surfing Soweto	ZA	\N	\N	\N	0
tt21847944	Asidh	\N	\N	original	\N	1
tt21847944	Asidh	IN	\N	\N	\N	0
tt15430796	Episode #1.515	\N	\N	original	\N	1
tt15430796	Episódio #1.515	PT	pt	\N	\N	0
tt15430796	एपिसोड #1.515	IN	hi	\N	\N	0
tt15430796	Épisode #1.515	FR	fr	\N	\N	0
tt15430796	Episodio #1.515	IT	it	\N	\N	0
tt15430796	Folge #1.515	DE	de	\N	\N	0
tt15430796	エピソード #1.515	JP	ja	\N	\N	0
tt15430796	Episodio #1.515	ES	es	\N	\N	0
tt15536550	Episode dated 9 October 2021	\N	\N	original	\N	1
tt15536550	Episódio datado de 9 Outubro de 2021	PT	pt	\N	\N	0
tt15536550	9 अक्टूबर 2021 को प्रसारित एपिसोड	IN	hi	\N	\N	0
tt15536550	Épisode datant du 9 octobre 2021	FR	fr	\N	\N	0
tt15536550	Episodio datato 9 ottobre 2021	IT	it	\N	\N	0
tt15536550	Folge vom 9. Oktober 2021	DE	de	\N	\N	0
tt15536550	2021年10月9日 のエピソード	JP	ja	\N	\N	0
tt15536550	Episodio fechado 9 octubre 2021	ES	es	\N	\N	0
tt0932489	Boxing Day Special	\N	\N	original	\N	1
tt0932489	Boxing Day Special	GB	\N	\N	\N	0
tt27543327	Episode #1.2	\N	\N	original	\N	1
tt27543327	Episódio #1.2	PT	pt	\N	\N	0
tt27543327	एपिसोड #1.2	IN	hi	\N	\N	0
tt27543327	Épisode #1.2	FR	fr	\N	\N	0
tt27543327	Episodio #1.2	IT	it	\N	\N	0
tt27543327	Folge #1.2	DE	de	\N	\N	0
tt27543327	エピソード #1.2	JP	ja	\N	\N	0
tt27543327	Episodio #1.2	ES	es	\N	\N	0
tt35694555	La lune se lève	\N	\N	original	\N	1
tt35694555	La lune se lève	CH	\N	\N	\N	0
tt35666315	Episode dated 4 February 2025	\N	\N	original	\N	1
tt35666315	Episódio datado de 4 Fevereiro de 2025	PT	pt	\N	\N	0
tt35666315	4 फ़रवरी 2025 को प्रसारित एपिसोड	IN	hi	\N	\N	0
tt35666315	Épisode datant du 4 février 2025	FR	fr	\N	\N	0
tt35666315	Episodio datato 4 febbraio 2025	IT	it	\N	\N	0
tt35666315	Folge vom 4. Februar 2025	DE	de	\N	\N	0
tt35666315	2025年2月4日 のエピソード	JP	ja	\N	\N	0
tt35666315	Episodio fechado 4 febrero 2025	ES	es	\N	\N	0
tt14209750	Bhala Thandanana	\N	\N	original	\N	1
tt14209750	Bhala Thandanana	GB	\N	imdbDisplay	\N	0
tt14209750	Bhala Thandanana	IN	en	imdbDisplay	\N	0
tt14209750	Bhala Thandanana	IN	hi	imdbDisplay	\N	0
tt14209750	Bhala Thandanana	US	\N	imdbDisplay	\N	0
tt5204928	Episode #12.38	\N	\N	original	\N	1
tt5204928	Episódio #12.38	PT	pt	\N	\N	0
tt5204928	एपिसोड #12.38	IN	hi	\N	\N	0
tt5204928	Épisode #12.38	FR	fr	\N	\N	0
tt5204928	Episodio #12.38	IT	it	\N	\N	0
tt5204928	Folge #12.38	DE	de	\N	\N	0
tt5204928	エピソード #12.38	JP	ja	\N	\N	0
tt5204928	Episodio #12.38	ES	es	\N	\N	0
tt0497649	Only Darkness	\N	\N	original	\N	1
tt0497649	Only Darkness	GB	\N	imdbDisplay	\N	0
tt23775892	Episode #1.25	\N	\N	original	\N	1
tt23775892	Episódio #1.25	PT	pt	\N	\N	0
tt23775892	एपिसोड #1.25	IN	hi	\N	\N	0
tt23775892	Épisode #1.25	FR	fr	\N	\N	0
tt23775892	Episodio #1.25	IT	it	\N	\N	0
tt23775892	Folge #1.25	DE	de	\N	\N	0
tt23775892	エピソード #1.25	JP	ja	\N	\N	0
tt23775892	Episodio #1.25	ES	es	\N	\N	0
tt8791338	Deserted Hospital Investigation	\N	\N	original	\N	1
tt16392986	Episode #1.179	\N	\N	original	\N	1
tt16392986	Episódio #1.179	PT	pt	\N	\N	0
tt16392986	एपिसोड #1.179	IN	hi	\N	\N	0
tt16392986	Épisode #1.179	FR	fr	\N	\N	0
tt16392986	Episodio #1.179	IT	it	\N	\N	0
tt16392986	Folge #1.179	DE	de	\N	\N	0
tt16392986	エピソード #1.179	JP	ja	\N	\N	0
tt16392986	Episodio #1.179	ES	es	\N	\N	0
tt6212638	It Was Just a Look	\N	\N	original	\N	1
tt6212638	It Was Just a Look	US	\N	imdbDisplay	\N	0
tt1953696	Episode #37.91	\N	\N	original	\N	1
tt1953696	Episódio #37.91	PT	pt	\N	\N	0
tt1953696	एपिसोड #37.91	IN	hi	\N	\N	0
tt1953696	Épisode #37.91	FR	fr	\N	\N	0
tt1953696	Episodio #37.91	IT	it	\N	\N	0
tt1953696	Folge #37.91	DE	de	\N	\N	0
tt1953696	エピソード #37.91	JP	ja	\N	\N	0
tt1953696	Episodio #37.91	ES	es	\N	\N	0
tt15331130	Episode #1.3	\N	\N	original	\N	1
tt15331130	Episódio #1.3	PT	pt	\N	\N	0
tt15331130	एपिसोड #1.3	IN	hi	\N	\N	0
tt15331130	Épisode #1.3	FR	fr	\N	\N	0
tt15331130	Episodio #1.3	IT	it	\N	\N	0
tt15331130	Folge #1.3	DE	de	\N	\N	0
tt15331130	エピソード #1.3	JP	ja	\N	\N	0
tt15331130	Episodio #1.3	ES	es	\N	\N	0
tt12919508	Episode #1.177	\N	\N	original	\N	1
tt12919508	Episódio #1.177	PT	pt	\N	\N	0
tt12919508	एपिसोड #1.177	IN	hi	\N	\N	0
tt12919508	Épisode #1.177	FR	fr	\N	\N	0
tt12919508	Episodio #1.177	IT	it	\N	\N	0
tt12919508	Folge #1.177	DE	de	\N	\N	0
tt12919508	エピソード #1.177	JP	ja	\N	\N	0
tt12919508	Episodio #1.177	ES	es	\N	\N	0
tt33089346	War Within	\N	\N	original	\N	1
tt33089346	War Within	GB	\N	\N	\N	0
tt2682874	Episode dated 30 March 1972	\N	\N	original	\N	1
tt2682874	Episódio datado de 30 Março de 1972	PT	pt	\N	\N	0
tt2682874	30 मार्च 1972 को प्रसारित एपिसोड	IN	hi	\N	\N	0
tt2682874	Épisode datant du 30 mars 1972	FR	fr	\N	\N	0
tt2682874	Episodio datato 30 marzo 1972	IT	it	\N	\N	0
tt2682874	Folge vom 30. März 1972	DE	de	\N	\N	0
tt2682874	1972年3月30日 のエピソード	JP	ja	\N	\N	0
tt2682874	Episodio fechado 30 marzo 1972	ES	es	\N	\N	0
tt32194594	Episode #1.84	\N	\N	original	\N	1
tt32194594	Episódio #1.84	PT	pt	\N	\N	0
tt32194594	एपिसोड #1.84	IN	hi	\N	\N	0
tt32194594	Épisode #1.84	FR	fr	\N	\N	0
tt32194594	Episodio #1.84	IT	it	\N	\N	0
tt32194594	Folge #1.84	DE	de	\N	\N	0
tt32194594	エピソード #1.84	JP	ja	\N	\N	0
tt32194594	Episodio #1.84	ES	es	\N	\N	0
tt16116680	My (mini) Youtube blowup... A Thank you Khadija Mbowe	\N	\N	original	\N	1
tt1453138	Episode dated 16 February 1953	\N	\N	original	\N	1
tt1453138	Episódio datado de 16 Fevereiro de 1953	PT	pt	\N	\N	0
tt1453138	16 फ़रवरी 1953 को प्रसारित एपिसोड	IN	hi	\N	\N	0
tt1453138	Épisode datant du 16 février 1953	FR	fr	\N	\N	0
tt1453138	Episodio datato 16 febbraio 1953	IT	it	\N	\N	0
tt1453138	Folge vom 16. Februar 1953	DE	de	\N	\N	0
tt1453138	1953年2月16日 のエピソード	JP	ja	\N	\N	0
tt1453138	Episodio fechado 16 febrero 1953	ES	es	\N	\N	0
tt9431514	Border - Gavaskar Trophy 2016-17: 4th Test, Day 3	\N	\N	original	\N	1
tt0209238	Planet Patrol	\N	\N	original	\N	1
tt0209238	Planet Patrol	US	\N	imdbDisplay	\N	0
tt21820818	Episode #30.6	\N	\N	original	\N	1
tt21820818	Episódio #30.6	PT	pt	\N	\N	0
tt21820818	एपिसोड #30.6	IN	hi	\N	\N	0
tt21820818	Épisode #30.6	FR	fr	\N	\N	0
tt21820818	Episodio #30.6	IT	it	\N	\N	0
tt21820818	Folge #30.6	DE	de	\N	\N	0
tt21820818	エピソード #30.6	JP	ja	\N	\N	0
tt21820818	Episodio #30.6	ES	es	\N	\N	0
tt19783884	Sadako Returned	\N	\N	original	\N	1
tt19783884	Sadako Returns	US	\N	alternative	\N	0
tt19783884	贞子归来	CN	cmn	imdbDisplay	\N	0
tt26520924	Episode #1.65	\N	\N	original	\N	1
tt26520924	Episódio #1.65	PT	pt	\N	\N	0
tt26520924	एपिसोड #1.65	IN	hi	\N	\N	0
tt26520924	Épisode #1.65	FR	fr	\N	\N	0
tt26520924	Episodio #1.65	IT	it	\N	\N	0
tt26520924	Folge #1.65	DE	de	\N	\N	0
tt26520924	エピソード #1.65	JP	ja	\N	\N	0
tt26520924	Episodio #1.65	ES	es	\N	\N	0
tt34881417	Black Friday Bonanza	\N	\N	original	\N	1
tt5718344	Tärinää	\N	\N	original	\N	1
tt5718344	Tärinää	FI	\N	\N	\N	0
tt4250698	That's So Relatable: Emoticon	\N	\N	original	\N	1
tt4250698	That's So Relatable: Emoticon	US	\N	imdbDisplay	\N	0
tt13039288	Arazoak	\N	\N	original	\N	1
tt23873022	Episode #1.12	\N	\N	original	\N	1
tt23873022	Episódio #1.12	PT	pt	\N	\N	0
tt23873022	एपिसोड #1.12	IN	hi	\N	\N	0
tt23873022	Épisode #1.12	FR	fr	\N	\N	0
tt23873022	Episodio #1.12	IT	it	\N	\N	0
tt23873022	Folge #1.12	DE	de	\N	\N	0
tt23873022	エピソード #1.12	JP	ja	\N	\N	0
tt23873022	Episodio #1.12	ES	es	\N	\N	0
tt27351845	Episode #1.31	\N	\N	original	\N	1
tt27351845	Episódio #1.31	PT	pt	\N	\N	0
tt27351845	एपिसोड #1.31	IN	hi	\N	\N	0
tt27351845	Épisode #1.31	FR	fr	\N	\N	0
tt27351845	Episodio #1.31	IT	it	\N	\N	0
tt27351845	Folge #1.31	DE	de	\N	\N	0
tt27351845	エピソード #1.31	JP	ja	\N	\N	0
tt27351845	Episodio #1.31	ES	es	\N	\N	0
tt24636338	Episode #1.13	\N	\N	original	\N	1
tt24636338	Episódio #1.13	PT	pt	\N	\N	0
tt24636338	एपिसोड #1.13	IN	hi	\N	\N	0
tt24636338	Épisode #1.13	FR	fr	\N	\N	0
tt24636338	Episodio #1.13	IT	it	\N	\N	0
tt24636338	Folge #1.13	DE	de	\N	\N	0
tt24636338	エピソード #1.13	JP	ja	\N	\N	0
tt24636338	Episodio #1.13	ES	es	\N	\N	0
tt0843215	Poker Night Live	\N	\N	original	\N	1
tt0843215	Poker Night Live	GB	\N	imdbDisplay	\N	0
tt14693764	Episode #3.18	\N	\N	original	\N	1
tt14693764	Episódio #3.18	PT	pt	\N	\N	0
tt14693764	एपिसोड #3.18	IN	hi	\N	\N	0
tt14693764	Épisode #3.18	FR	fr	\N	\N	0
tt14693764	Episodio #3.18	IT	it	\N	\N	0
tt14693764	Folge #3.18	DE	de	\N	\N	0
tt14693764	エピソード #3.18	JP	ja	\N	\N	0
tt14693764	Episodio #3.18	ES	es	\N	\N	0
tt1840061	Episode dated 25 April 1995	\N	\N	original	\N	1
tt1840061	Episódio datado de 25 Abril de 1995	PT	pt	\N	\N	0
tt1840061	25 अप्रैल 1995 को प्रसारित एपिसोड	IN	hi	\N	\N	0
tt1840061	Épisode datant du 25 avril 1995	FR	fr	\N	\N	0
tt1840061	Episodio datato 25 aprile 1995	IT	it	\N	\N	0
tt1840061	Folge vom 25. April 1995	DE	de	\N	\N	0
tt1840061	1995年4月25日 のエピソード	JP	ja	\N	\N	0
tt1840061	Episodio fechado 25 abril 1995	ES	es	\N	\N	0
tt16316102	Episode 11	\N	\N	original	\N	1
tt1137806	Episode #1.112	\N	\N	original	\N	1
tt1137806	Episódio #1.112	PT	pt	\N	\N	0
tt1137806	एपिसोड #1.112	IN	hi	\N	\N	0
tt1137806	Épisode #1.112	FR	fr	\N	\N	0
tt1137806	Episodio #1.112	IT	it	\N	\N	0
tt1137806	Folge #1.112	DE	de	\N	\N	0
tt1137806	エピソード #1.112	JP	ja	\N	\N	0
tt1137806	Episodio #1.112	ES	es	\N	\N	0
tt10299134	Retorno	\N	\N	original	\N	1
tt10299134	Retorno	ES	\N	imdbDisplay	\N	0
tt0006470	Broken Fetters	\N	\N	original	\N	1
tt0006470	Broken Fetters	US	\N	imdbDisplay	\N	0
tt0006470	Yellow and White	US	\N	working	\N	0
tt18182704	Episode #1.3016	\N	\N	original	\N	1
tt18182704	Episódio #1.3016	PT	pt	\N	\N	0
tt18182704	एपिसोड #1.3016	IN	hi	\N	\N	0
tt18182704	Épisode #1.3016	FR	fr	\N	\N	0
tt18182704	Episodio #1.3016	IT	it	\N	\N	0
tt18182704	Folge #1.3016	DE	de	\N	\N	0
tt18182704	エピソード #1.3016	JP	ja	\N	\N	0
tt18182704	Episodio #1.3016	ES	es	\N	\N	0
tt4351608	Bad Tortoise Club	\N	\N	original	\N	1
tt33306919	MY ROOMMATE	\N	\N	original	\N	1
tt1851545	Wagner: Siegfried	\N	\N	original	\N	1
tt1851545	Wagner: Siegfried	US	\N	\N	\N	0
tt4532816	Episode #3.7	\N	\N	original	\N	1
tt4532816	Episódio #3.7	PT	pt	\N	\N	0
tt4532816	एपिसोड #3.7	IN	hi	\N	\N	0
tt4532816	Épisode #3.7	FR	fr	\N	\N	0
tt4532816	Episodio #3.7	IT	it	\N	\N	0
tt4532816	Folge #3.7	DE	de	\N	\N	0
tt4532816	エピソード #3.7	JP	ja	\N	\N	0
tt4532816	Episodio #3.7	ES	es	\N	\N	0
tt33307384	My Very First Boyfriend	\N	\N	original	\N	1
tt33307384	My Very First Boyfriend	NL	\N	\N	\N	0
tt0065067	A tanú	\N	\N	original	\N	1
tt0065067	Martorul	RO	\N	imdbDisplay	\N	0
tt0065067	Svědek	CZ	\N	imdbDisplay	\N	0
tt0065067	Svedok	SK	\N	imdbDisplay	\N	0
tt0065067	Świadek	PL	\N	imdbDisplay	\N	0
tt0065067	Vidnet	DK	\N	imdbDisplay	\N	0
tt0065067	Vittnet	SE	\N	imdbDisplay	\N	0
tt0065067	Свидетель	SUHH	ru	imdbDisplay	\N	0
tt0065067	The Witness	CA	en	imdbDisplay	\N	0
tt0065067	The Witness	US	\N	imdbDisplay	\N	0
tt0065067	The Witness	XWW	en	\N	\N	0
tt0065067	A tanú	HU	\N	imdbDisplay	\N	0
tt0065067	A testemunha	BR	\N	imdbDisplay	\N	0
tt0065067	Avaintodistaja	FI	\N	\N	\N	0
tt0065067	Der Zeuge	XWG	\N	\N	\N	0
tt0065067	Le Témoin	FR	\N	imdbDisplay	\N	0
tt6640976	The Xian Factor	\N	\N	original	\N	1
tt6640976	The Xian Factor	GB	\N	imdbDisplay	\N	0
tt1086983	Episode dated 17 August 2007	\N	\N	original	\N	1
tt1086983	Episódio datado de 17 Agosto de 2007	PT	pt	\N	\N	0
tt1086983	17 अगस्त 2007 को प्रसारित एपिसोड	IN	hi	\N	\N	0
tt1086983	Épisode datant du 17 août 2007	FR	fr	\N	\N	0
tt1086983	Episodio datato 17 agosto 2007	IT	it	\N	\N	0
tt1086983	Folge vom 17. August 2007	DE	de	\N	\N	0
tt1086983	2007年8月17日 のエピソード	JP	ja	\N	\N	0
tt1086983	Episodio fechado 17 agosto 2007	ES	es	\N	\N	0
tt18685564	Episode #1.1954	\N	\N	original	\N	1
tt18685564	Episódio #1.1954	PT	pt	\N	\N	0
tt18685564	एपिसोड #1.1954	IN	hi	\N	\N	0
tt18685564	Épisode #1.1954	FR	fr	\N	\N	0
tt18685564	Episodio #1.1954	IT	it	\N	\N	0
tt18685564	Folge #1.1954	DE	de	\N	\N	0
tt18685564	エピソード #1.1954	JP	ja	\N	\N	0
tt18685564	Episodio #1.1954	ES	es	\N	\N	0
tt7110126	Episode #1.217	\N	\N	original	\N	1
tt7110126	Episódio #1.217	PT	pt	\N	\N	0
tt7110126	एपिसोड #1.217	IN	hi	\N	\N	0
tt7110126	Épisode #1.217	FR	fr	\N	\N	0
tt7110126	Episodio #1.217	IT	it	\N	\N	0
tt7110126	Folge #1.217	DE	de	\N	\N	0
tt7110126	エピソード #1.217	JP	ja	\N	\N	0
tt7110126	Episodio #1.217	ES	es	\N	\N	0
tt14654960	Episode #2.2	\N	\N	original	\N	1
tt14654960	Episódio #2.2	PT	pt	\N	\N	0
tt14654960	एपिसोड #2.2	IN	hi	\N	\N	0
tt14654960	Épisode #2.2	FR	fr	\N	\N	0
tt14654960	Episodio #2.2	IT	it	\N	\N	0
tt14654960	Folge #2.2	DE	de	\N	\N	0
tt14654960	エピソード #2.2	JP	ja	\N	\N	0
tt14654960	Episodio #2.2	ES	es	\N	\N	0
tt0053284	Slecna od vody	\N	\N	original	\N	1
tt0053284	Die Wassernixe	DDDE	\N	\N	\N	0
tt0053284	Slecna od vody	CSHH	\N	imdbDisplay	\N	0
tt0053284	The Young Lady from the Riverside	XWW	en	\N	\N	0
tt22020222	Herregud! Har du tatt barten?	\N	\N	original	\N	1
tt1923649	Episode #1.6182	\N	\N	original	\N	1
tt1923649	Episódio #1.6182	PT	pt	\N	\N	0
tt1923649	एपिसोड #1.6182	IN	hi	\N	\N	0
tt1923649	Épisode #1.6182	FR	fr	\N	\N	0
tt1923649	Episodio #1.6182	IT	it	\N	\N	0
tt1923649	Folge #1.6182	DE	de	\N	\N	0
tt1923649	エピソード #1.6182	JP	ja	\N	\N	0
tt1923649	Episodio #1.6182	ES	es	\N	\N	0
tt3159556	Jacob	\N	\N	original	\N	1
tt3159556	Jacob	IN	\N	\N	\N	0
tt17053136	Episode #1.5578	\N	\N	original	\N	1
tt17053136	Episódio #1.5578	PT	pt	\N	\N	0
tt17053136	एपिसोड #1.5578	IN	hi	\N	\N	0
tt17053136	Épisode #1.5578	FR	fr	\N	\N	0
tt17053136	Episodio #1.5578	IT	it	\N	\N	0
tt17053136	Folge #1.5578	DE	de	\N	\N	0
tt17053136	エピソード #1.5578	JP	ja	\N	\N	0
tt17053136	Episodio #1.5578	ES	es	\N	\N	0
tt0620419	Strike Me Catholic	\N	\N	original	\N	1
tt0620419	Strike Me Catholic	AU	\N	\N	\N	0
tt32143010	Barbour & Saku: Through the Woods	\N	\N	original	\N	1
tt32143010	Barbour & Saku: Through the Woods	CA	\N	\N	\N	0
tt19265202	Episode #1.1230	\N	\N	original	\N	1
tt19265202	Episódio #1.1230	PT	pt	\N	\N	0
tt19265202	एपिसोड #1.1230	IN	hi	\N	\N	0
tt19265202	Épisode #1.1230	FR	fr	\N	\N	0
tt19265202	Episodio #1.1230	IT	it	\N	\N	0
tt19265202	Folge #1.1230	DE	de	\N	\N	0
tt19265202	エピソード #1.1230	JP	ja	\N	\N	0
tt19265202	Episodio #1.1230	ES	es	\N	\N	0
tt14447986	Episode #1.122	\N	\N	original	\N	1
tt14447986	Episódio #1.122	PT	pt	\N	\N	0
tt14447986	एपिसोड #1.122	IN	hi	\N	\N	0
tt14447986	Épisode #1.122	FR	fr	\N	\N	0
tt14447986	Episodio #1.122	IT	it	\N	\N	0
tt14447986	Folge #1.122	DE	de	\N	\N	0
tt14447986	エピソード #1.122	JP	ja	\N	\N	0
tt14447986	Episodio #1.122	ES	es	\N	\N	0
tt11641994	Episode #1.196	\N	\N	original	\N	1
tt11641994	Episódio #1.196	PT	pt	\N	\N	0
tt11641994	एपिसोड #1.196	IN	hi	\N	\N	0
tt11641994	Épisode #1.196	FR	fr	\N	\N	0
tt11641994	Episodio #1.196	IT	it	\N	\N	0
tt11641994	Folge #1.196	DE	de	\N	\N	0
tt11641994	エピソード #1.196	JP	ja	\N	\N	0
tt11641994	Episodio #1.196	ES	es	\N	\N	0
tt4403386	Palmira Roc a l'hospital	\N	\N	original	\N	1
tt0610558	A Frenzied Affair	\N	\N	original	\N	1
tt6561598	The Chibi Project Finale: Part 1	\N	\N	original	\N	1
tt28267345	Episode #1.31	\N	\N	original	\N	1
tt28267345	Episódio #1.31	PT	pt	\N	\N	0
tt28267345	एपिसोड #1.31	IN	hi	\N	\N	0
tt28267345	Épisode #1.31	FR	fr	\N	\N	0
tt28267345	Episodio #1.31	IT	it	\N	\N	0
tt28267345	Folge #1.31	DE	de	\N	\N	0
tt28267345	エピソード #1.31	JP	ja	\N	\N	0
tt28267345	Episodio #1.31	ES	es	\N	\N	0
tt27218612	Episode #1.288	\N	\N	original	\N	1
tt27218612	Episódio #1.288	PT	pt	\N	\N	0
tt27218612	एपिसोड #1.288	IN	hi	\N	\N	0
tt27218612	Épisode #1.288	FR	fr	\N	\N	0
tt27218612	Episodio #1.288	IT	it	\N	\N	0
tt27218612	Folge #1.288	DE	de	\N	\N	0
tt27218612	エピソード #1.288	JP	ja	\N	\N	0
tt27218612	Episodio #1.288	ES	es	\N	\N	0
tt7872180	De geheimzinnige brief	\N	\N	original	\N	1
tt28781963	Hunting Party	\N	\N	original	\N	1
tt28781963	Hunting Party	CA	\N	\N	\N	0
tt2130205	Sports Centre	\N	\N	original	\N	1
tt2130205	Sports Centre	GB	\N	imdbDisplay	\N	0
tt13794292	Amazon Music Holiday Plays	\N	\N	original	\N	1
tt13794292	Amazon Music Holiday Plays	US	\N	imdbDisplay	\N	0
tt5415004	Episode #1.7772	\N	\N	original	\N	1
tt5415004	Episódio #1.7772	PT	pt	\N	\N	0
tt5415004	एपिसोड #1.7772	IN	hi	\N	\N	0
tt5415004	Épisode #1.7772	FR	fr	\N	\N	0
tt5415004	Episodio #1.7772	IT	it	\N	\N	0
tt5415004	Folge #1.7772	DE	de	\N	\N	0
tt5415004	エピソード #1.7772	JP	ja	\N	\N	0
tt5415004	Episodio #1.7772	ES	es	\N	\N	0
tt0890496	Episode #10.30	\N	\N	original	\N	1
tt0890496	Episódio #10.30	PT	pt	\N	\N	0
tt0890496	एपिसोड #10.30	IN	hi	\N	\N	0
tt0890496	Épisode #10.30	FR	fr	\N	\N	0
tt0890496	Episodio #10.30	IT	it	\N	\N	0
tt0890496	Folge #10.30	DE	de	\N	\N	0
tt0890496	エピソード #10.30	JP	ja	\N	\N	0
tt0890496	Episodio #10.30	ES	es	\N	\N	0
tt10740900	Episode dated 21 May 2019	\N	\N	original	\N	1
tt10740900	Episódio datado de 21 Maio de 2019	PT	pt	\N	\N	0
tt10740900	21 मई 2019 को प्रसारित एपिसोड	IN	hi	\N	\N	0
tt10740900	Épisode datant du 21 mai 2019	FR	fr	\N	\N	0
tt10740900	Episodio datato 21 maggio 2019	IT	it	\N	\N	0
tt10740900	Folge vom 21. Mai 2019	DE	de	\N	\N	0
tt10740900	2019年5月21日 のエピソード	JP	ja	\N	\N	0
tt10740900	Episodio fechado 21 mayo 2019	ES	es	\N	\N	0
tt15150880	Asian Koel (SG Edition)	\N	\N	original	\N	1
tt21115914	Te quise y te estoy queriendo, como dice la canción	\N	\N	original	\N	1
tt21115914	Te quise y te estoy queriendo, como dice la canción	ES	\N	\N	\N	0
tt15554138	Buy This House	\N	\N	original	\N	1
tt32612686	Kim Kardashian, Skyhooks, Geocaching & the Mr Olympia contest	\N	\N	original	\N	1
tt32612686	Kim Kardashian, Skyhooks, Geocaching & the Mr Olympia contest	AU	\N	\N	\N	0
tt1027850	Rani Aur Maharani	\N	\N	original	\N	1
tt1027850	Rani Aur Maharani	IN	\N	\N	\N	0
tt1102857	Wave Goodbye to Grandpa	\N	\N	original	\N	1
tt4558196	Le cardon	\N	\N	original	\N	1
tt4558196	Le cardon	FR	\N	imdbDisplay	\N	0
tt8354154	Star Light Not so Bright/Operamatic	\N	\N	original	\N	1
tt11882154	Episode #1.120	\N	\N	original	\N	1
tt11882154	Episódio #1.120	PT	pt	\N	\N	0
tt11882154	एपिसोड #1.120	IN	hi	\N	\N	0
tt11882154	Épisode #1.120	FR	fr	\N	\N	0
tt11882154	Episodio #1.120	IT	it	\N	\N	0
tt11882154	Folge #1.120	DE	de	\N	\N	0
tt11882154	エピソード #1.120	JP	ja	\N	\N	0
tt11882154	Episodio #1.120	ES	es	\N	\N	0
tt5928890	Marv and the Mugger	\N	\N	original	\N	1
tt5928890	Marv and the Mugger	US	\N	imdbDisplay	\N	0
tt8905534	Episode #1.5	\N	\N	original	\N	1
tt8905534	Episódio #1.5	PT	pt	\N	\N	0
tt8905534	एपिसोड #1.5	IN	hi	\N	\N	0
tt8905534	Épisode #1.5	FR	fr	\N	\N	0
tt8905534	Episodio #1.5	IT	it	\N	\N	0
tt8905534	Folge #1.5	DE	de	\N	\N	0
tt8905534	エピソード #1.5	JP	ja	\N	\N	0
tt8905534	Episodio #1.5	ES	es	\N	\N	0
tt32930981	Épisode #1.20	FR	fr	\N	\N	0
tt0233746	Foul Play; or, A False Friend	\N	\N	original	\N	1
tt0233746	Foul Play; or, A False Friend	US	\N	imdbDisplay	\N	0
tt5858950	Reinforced	\N	\N	original	\N	1
tt5858950	Reinforced	US	\N	imdbDisplay	\N	0
tt1610647	Episode dated 24 October 2008	\N	\N	original	\N	1
tt1610647	Episódio datado de 24 Outubro de 2008	PT	pt	\N	\N	0
tt1610647	24 अक्टूबर 2008 को प्रसारित एपिसोड	IN	hi	\N	\N	0
tt1610647	Épisode datant du 24 octobre 2008	FR	fr	\N	\N	0
tt1610647	Episodio datato 24 ottobre 2008	IT	it	\N	\N	0
tt1610647	Folge vom 24. Oktober 2008	DE	de	\N	\N	0
tt1610647	2008年10月24日 のエピソード	JP	ja	\N	\N	0
tt1610647	Episodio fechado 24 octubre 2008	ES	es	\N	\N	0
tt15533722	Pick me girl	\N	\N	original	\N	1
tt3661304	Aquele do Doutor Google	\N	\N	original	\N	1
tt11529056	Episode #1.183	\N	\N	original	\N	1
tt11529056	Episódio #1.183	PT	pt	\N	\N	0
tt11529056	एपिसोड #1.183	IN	hi	\N	\N	0
tt11529056	Épisode #1.183	FR	fr	\N	\N	0
tt11529056	Episodio #1.183	IT	it	\N	\N	0
tt11529056	Folge #1.183	DE	de	\N	\N	0
tt11529056	エピソード #1.183	JP	ja	\N	\N	0
tt11529056	Episodio #1.183	ES	es	\N	\N	0
tt3516158	Chand metre moka'ab eshgh	\N	\N	original	\N	1
tt3516158	Несколько кубометров любви	RU	\N	imdbDisplay	\N	0
tt3516158	数立方メートルの愛	JP	ja	imdbDisplay	\N	0
tt3516158	A Few Cubic Metres of Love	GB	\N	imdbDisplay	\N	0
tt3516158	A Few Cubic Metres of Love	XWW	en	imdbDisplay	\N	0
tt3516158	A Few Cube Meters Love	XWW	en	alternative	\N	0
tt3516158	A Few Cubic Meters of Love	US	\N	imdbDisplay	\N	0
tt3516158	Chand metre moka'ab eshgh	AF	\N	imdbDisplay	\N	0
tt3516158	Kilka metrów sześciennych miłości	PL	\N	imdbDisplay	\N	0
tt3516158	Küçük Bir aşk Hikayesi	TR	tr	imdbDisplay	\N	0
tt3516158	Quelques mètres cubes d'amour	FR	\N	imdbDisplay	\N	0
tt17347984	Untouched	\N	\N	original	\N	1
tt17347984	Untouched	AU	\N	\N	\N	0
tt2298217	The Shattered Lives	\N	\N	original	\N	1
tt31248845	Episode dated 19 January 2024	\N	\N	original	\N	1
tt31248845	Episódio datado de 19 Janeiro de 2024	PT	pt	\N	\N	0
tt31248845	19 जनवरी 2024 को प्रसारित एपिसोड	IN	hi	\N	\N	0
tt31248845	Épisode datant du 19 janvier 2024	FR	fr	\N	\N	0
tt31248845	Episodio datato 19 gennaio 2024	IT	it	\N	\N	0
tt31248845	Folge vom 19. Januar 2024	DE	de	\N	\N	0
tt31248845	2024年1月19日 のエピソード	JP	ja	\N	\N	0
tt31248845	Episodio fechado 19 enero 2024	ES	es	\N	\N	0
tt7368942	Episode #1.133	\N	\N	original	\N	1
tt7368942	Episódio #1.133	PT	pt	\N	\N	0
tt7368942	एपिसोड #1.133	IN	hi	\N	\N	0
tt7368942	Épisode #1.133	FR	fr	\N	\N	0
tt7368942	Episodio #1.133	IT	it	\N	\N	0
tt7368942	Folge #1.133	DE	de	\N	\N	0
tt7368942	エピソード #1.133	JP	ja	\N	\N	0
tt7368942	Episodio #1.133	ES	es	\N	\N	0
tt2304909	Shrimp Crawl	\N	\N	original	\N	1
tt2304909	Shrimp Crawl	US	\N	imdbDisplay	\N	0
tt32306164	Episode #1.78	\N	\N	original	\N	1
tt32306164	Episódio #1.78	PT	pt	\N	\N	0
tt32306164	एपिसोड #1.78	IN	hi	\N	\N	0
tt32306164	Épisode #1.78	FR	fr	\N	\N	0
tt32306164	Episodio #1.78	IT	it	\N	\N	0
tt32306164	Folge #1.78	DE	de	\N	\N	0
tt32306164	エピソード #1.78	JP	ja	\N	\N	0
tt32306164	Episodio #1.78	ES	es	\N	\N	0
tt10116572	Episode #2.1	\N	\N	original	\N	1
tt10116572	Episódio #2.1	PT	pt	\N	\N	0
tt10116572	एपिसोड #2.1	IN	hi	\N	\N	0
tt10116572	Épisode #2.1	FR	fr	\N	\N	0
tt10116572	Episodio #2.1	IT	it	\N	\N	0
tt10116572	Folge #2.1	DE	de	\N	\N	0
tt10116572	エピソード #2.1	JP	ja	\N	\N	0
tt10116572	Episodio #2.1	ES	es	\N	\N	0
tt27612202	Episode #1.537	\N	\N	original	\N	1
tt27612202	Episódio #1.537	PT	pt	\N	\N	0
tt27612202	एपिसोड #1.537	IN	hi	\N	\N	0
tt27612202	Épisode #1.537	FR	fr	\N	\N	0
tt27612202	Episodio #1.537	IT	it	\N	\N	0
tt27612202	Folge #1.537	DE	de	\N	\N	0
tt27612202	エピソード #1.537	JP	ja	\N	\N	0
tt27612202	Episodio #1.537	ES	es	\N	\N	0
tt15006474	The Hidden Horror Next Door	\N	\N	original	\N	1
tt8574934	Choose Love!	\N	\N	original	\N	1
tt8574934	Choose Love!	US	\N	\N	\N	0
tt6742466	Shark Week på Level Up stream (Opptak)	\N	\N	original	\N	1
tt3254764	Suicide	\N	\N	original	\N	1
tt13820436	Episode dated 12 January 2021	\N	\N	original	\N	1
tt13820436	Episódio datado de 12 Janeiro de 2021	PT	pt	\N	\N	0
tt13820436	12 जनवरी 2021 को प्रसारित एपिसोड	IN	hi	\N	\N	0
tt13820436	Épisode datant du 12 janvier 2021	FR	fr	\N	\N	0
tt13820436	Episodio datato 12 gennaio 2021	IT	it	\N	\N	0
tt13820436	Folge vom 12. Januar 2021	DE	de	\N	\N	0
tt13820436	2021年1月12日 のエピソード	JP	ja	\N	\N	0
tt13820436	Episodio fechado 12 enero 2021	ES	es	\N	\N	0
tt4402648	Episode dated 25 April 2007	\N	\N	original	\N	1
tt4402648	Episódio datado de 25 Abril de 2007	PT	pt	\N	\N	0
tt4402648	25 अप्रैल 2007 को प्रसारित एपिसोड	IN	hi	\N	\N	0
tt4402648	Épisode datant du 25 avril 2007	FR	fr	\N	\N	0
tt4402648	Episodio datato 25 aprile 2007	IT	it	\N	\N	0
tt4402648	Folge vom 25. April 2007	DE	de	\N	\N	0
tt4402648	2007年4月25日 のエピソード	JP	ja	\N	\N	0
tt4402648	Episodio fechado 25 abril 2007	ES	es	\N	\N	0
tt6640698	Episode #1.47	\N	\N	original	\N	1
tt6640698	Episódio #1.47	PT	pt	\N	\N	0
tt6640698	एपिसोड #1.47	IN	hi	\N	\N	0
tt6640698	Épisode #1.47	FR	fr	\N	\N	0
tt6640698	Episodio #1.47	IT	it	\N	\N	0
tt6640698	Folge #1.47	DE	de	\N	\N	0
tt6640698	エピソード #1.47	JP	ja	\N	\N	0
tt6640698	Episodio #1.47	ES	es	\N	\N	0
tt14517868	Episode #1.54	\N	\N	original	\N	1
tt14517868	Episódio #1.54	PT	pt	\N	\N	0
tt14517868	एपिसोड #1.54	IN	hi	\N	\N	0
tt14517868	Épisode #1.54	FR	fr	\N	\N	0
tt14517868	Episodio #1.54	IT	it	\N	\N	0
tt14517868	Folge #1.54	DE	de	\N	\N	0
tt14517868	エピソード #1.54	JP	ja	\N	\N	0
tt14517868	Episodio #1.54	ES	es	\N	\N	0
tt1688637	1959 NFL Championship Game	\N	\N	original	\N	1
tt1688637	1959 NFL Championship Game	US	\N	imdbDisplay	\N	0
tt11000728	Two Fat Ghouls	\N	\N	original	\N	1
tt11000728	Two Fat Ghouls	US	\N	imdbDisplay	\N	0
tt14882786	Episode #1.93	\N	\N	original	\N	1
tt14882786	Episódio #1.93	PT	pt	\N	\N	0
tt14882786	एपिसोड #1.93	IN	hi	\N	\N	0
tt14882786	Épisode #1.93	FR	fr	\N	\N	0
tt14882786	Episodio #1.93	IT	it	\N	\N	0
tt14882786	Folge #1.93	DE	de	\N	\N	0
tt14882786	エピソード #1.93	JP	ja	\N	\N	0
tt14882786	Episodio #1.93	ES	es	\N	\N	0
tt15545194	Best of LESBO mit Lara - Teil1	\N	\N	original	\N	1
tt15928716	12. feb. 2018 kl. 18:50	\N	\N	original	\N	1
tt12035086	Episode #1.2836	\N	\N	original	\N	1
tt12035086	Episódio #1.2836	PT	pt	\N	\N	0
tt12035086	एपिसोड #1.2836	IN	hi	\N	\N	0
tt12035086	Épisode #1.2836	FR	fr	\N	\N	0
tt12035086	Episodio #1.2836	IT	it	\N	\N	0
tt12035086	Folge #1.2836	DE	de	\N	\N	0
tt12035086	エピソード #1.2836	JP	ja	\N	\N	0
tt12035086	Episodio #1.2836	ES	es	\N	\N	0
tt13216892	Horror Hotel	\N	\N	original	\N	1
tt15302624	Episode 3	\N	\N	original	\N	1
tt19393578	Hawaii 5-0	\N	\N	original	\N	1
tt13155330	Tøffe tider	\N	\N	original	\N	1
tt0578587	Gourmet Night	\N	\N	original	\N	1
tt0578587	Gourmet Night	GB	\N	\N	\N	0
tt15218448	Episode #1.129	\N	\N	original	\N	1
tt15218448	Episódio #1.129	PT	pt	\N	\N	0
tt15218448	एपिसोड #1.129	IN	hi	\N	\N	0
tt15218448	Épisode #1.129	FR	fr	\N	\N	0
tt15218448	Episodio #1.129	IT	it	\N	\N	0
tt15218448	Folge #1.129	DE	de	\N	\N	0
tt15218448	エピソード #1.129	JP	ja	\N	\N	0
tt15218448	Episodio #1.129	ES	es	\N	\N	0
tt0949735	He Who Must Not Be Named	\N	\N	original	\N	1
tt0949735	Hän-kenen-nimeä-ei-pidä-mainita	FI	\N	dvd	\N	0
tt0949735	He Who Must Not Be Named	GB	\N	imdbDisplay	\N	0
tt12249274	Episode #5.197	\N	\N	original	\N	1
tt12249274	Episódio #5.197	PT	pt	\N	\N	0
tt12249274	एपिसोड #5.197	IN	hi	\N	\N	0
tt12249274	Épisode #5.197	FR	fr	\N	\N	0
tt12249274	Episodio #5.197	IT	it	\N	\N	0
tt12249274	Folge #5.197	DE	de	\N	\N	0
tt12249274	エピソード #5.197	JP	ja	\N	\N	0
tt12249274	Episodio #5.197	ES	es	\N	\N	0
tt0831920	Pepernoten voor Sinterklaas	\N	\N	original	\N	1
tt0831920	Pepernoten voor Sinterklaas	NL	\N	\N	\N	0
tt3017522	Episode #1.179	\N	\N	original	\N	1
tt3017522	Episódio #1.179	PT	pt	\N	\N	0
tt3017522	एपिसोड #1.179	IN	hi	\N	\N	0
tt3017522	Épisode #1.179	FR	fr	\N	\N	0
tt3017522	Episodio #1.179	IT	it	\N	\N	0
tt3017522	Folge #1.179	DE	de	\N	\N	0
tt3017522	エピソード #1.179	JP	ja	\N	\N	0
tt3017522	Episodio #1.179	ES	es	\N	\N	0
tt0560873	Episode dated 10 February 2004	\N	\N	original	\N	1
tt0560873	Episódio datado de 10 Fevereiro de 2004	PT	pt	\N	\N	0
tt0560873	10 फ़रवरी 2004 को प्रसारित एपिसोड	IN	hi	\N	\N	0
tt0560873	Épisode datant du 10 février 2004	FR	fr	\N	\N	0
tt0560873	Episodio datato 10 febbraio 2004	IT	it	\N	\N	0
tt0560873	Folge vom 10. Februar 2004	DE	de	\N	\N	0
tt0560873	2004年2月10日 のエピソード	JP	ja	\N	\N	0
tt0560873	Episodio fechado 10 febrero 2004	ES	es	\N	\N	0
tt15832596	19. mai - Frankrike åpner restauranter	\N	\N	original	\N	1
tt31727138	Les suffragettes du village	\N	\N	original	\N	1
tt1529491	Änkans skärv	\N	\N	original	\N	1
tt3784214	Gabriel Over the White House	\N	\N	original	\N	1
tt11098984	Episode #1.30	\N	\N	original	\N	1
tt11098984	Episódio #1.30	PT	pt	\N	\N	0
tt11098984	एपिसोड #1.30	IN	hi	\N	\N	0
tt11098984	Épisode #1.30	FR	fr	\N	\N	0
tt11098984	Episodio #1.30	IT	it	\N	\N	0
tt11098984	Folge #1.30	DE	de	\N	\N	0
tt11098984	エピソード #1.30	JP	ja	\N	\N	0
tt11098984	Episodio #1.30	ES	es	\N	\N	0
tt29978742	Episode #1.6	\N	\N	original	\N	1
tt29978742	Episódio #1.6	PT	pt	\N	\N	0
tt29978742	एपिसोड #1.6	IN	hi	\N	\N	0
tt29978742	Épisode #1.6	FR	fr	\N	\N	0
tt29978742	Episodio #1.6	IT	it	\N	\N	0
tt29978742	Folge #1.6	DE	de	\N	\N	0
tt29978742	エピソード #1.6	JP	ja	\N	\N	0
tt29978742	Episodio #1.6	ES	es	\N	\N	0
tt32930981	Episode #1.20	\N	\N	original	\N	1
tt32930981	Episódio #1.20	PT	pt	\N	\N	0
tt32930981	एपिसोड #1.20	IN	hi	\N	\N	0
tt32930981	Episodio #1.20	IT	it	\N	\N	0
tt32930981	Folge #1.20	DE	de	\N	\N	0
tt32930981	エピソード #1.20	JP	ja	\N	\N	0
tt32930981	Episodio #1.20	ES	es	\N	\N	0
tt27171255	Episode #4.124	\N	\N	original	\N	1
tt27171255	Episódio #4.124	PT	pt	\N	\N	0
tt27171255	एपिसोड #4.124	IN	hi	\N	\N	0
tt27171255	Épisode #4.124	FR	fr	\N	\N	0
tt27171255	Episodio #4.124	IT	it	\N	\N	0
tt27171255	Folge #4.124	DE	de	\N	\N	0
tt27171255	エピソード #4.124	JP	ja	\N	\N	0
tt27171255	Episodio #4.124	ES	es	\N	\N	0
tt0189774	My Bare Lady	\N	\N	original	\N	1
tt0189774	Mi dama desnuda	VE	\N	imdbDisplay	\N	0
tt0189774	My Bare Lady	US	\N	imdbDisplay	\N	0
tt10484608	Episode #1.115	\N	\N	original	\N	1
tt10484608	Episódio #1.115	PT	pt	\N	\N	0
tt10484608	एपिसोड #1.115	IN	hi	\N	\N	0
tt10484608	Épisode #1.115	FR	fr	\N	\N	0
tt10484608	Episodio #1.115	IT	it	\N	\N	0
tt10484608	Folge #1.115	DE	de	\N	\N	0
tt10484608	エピソード #1.115	JP	ja	\N	\N	0
tt10484608	Episodio #1.115	ES	es	\N	\N	0
tt5024110	Episode dated 20 December 2013	\N	\N	original	\N	1
tt5024110	Episódio datado de 20 Dezembro de 2013	PT	pt	\N	\N	0
tt5024110	20 दिसम्बर 2013 को प्रसारित एपिसोड	IN	hi	\N	\N	0
tt5024110	Épisode datant du 20 décembre 2013	FR	fr	\N	\N	0
tt5024110	Episodio datato 20 dicembre 2013	IT	it	\N	\N	0
tt5024110	Folge vom 20. Dezember 2013	DE	de	\N	\N	0
tt5024110	2013年12月20日 のエピソード	JP	ja	\N	\N	0
tt5024110	Episodio fechado 20 diciembre 2013	ES	es	\N	\N	0
tt0227618	Le temple de la magie	\N	\N	original	\N	1
tt0227618	Herrmann, the Great Conjuror	US	\N	\N	\N	0
tt0227618	Le temple de la magie	FR	\N	imdbDisplay	\N	0
tt0227618	The Temple of the Sun	US	\N	\N	\N	0
tt0227618	Храм магии	RU	\N	imdbDisplay	\N	0
tt12946208	Episode #1.63	\N	\N	original	\N	1
tt12946208	Episódio #1.63	PT	pt	\N	\N	0
tt12946208	एपिसोड #1.63	IN	hi	\N	\N	0
tt12946208	Épisode #1.63	FR	fr	\N	\N	0
tt12946208	Episodio #1.63	IT	it	\N	\N	0
tt12946208	Folge #1.63	DE	de	\N	\N	0
tt12946208	エピソード #1.63	JP	ja	\N	\N	0
tt12946208	Episodio #1.63	ES	es	\N	\N	0
tt5925108	Umi ni okeru hou no shihai	\N	\N	original	\N	1
tt5925108	The Rule of Law at Sea	GB	\N	imdbDisplay	\N	0
tt5925108	The Rule of Law at Sea	US	\N	imdbDisplay	\N	0
tt5925108	The Rule of Law at Sea	XWW	en	imdbDisplay	\N	0
tt5925108	海における法の支配	JP	ja	imdbDisplay	\N	0
tt32310542	Episode #9.92	\N	\N	original	\N	1
tt32310542	Episódio #9.92	PT	pt	\N	\N	0
tt32310542	एपिसोड #9.92	IN	hi	\N	\N	0
tt32310542	Épisode #9.92	FR	fr	\N	\N	0
tt32310542	Episodio #9.92	IT	it	\N	\N	0
tt32310542	Folge #9.92	DE	de	\N	\N	0
tt32310542	エピソード #9.92	JP	ja	\N	\N	0
tt32310542	Episodio #9.92	ES	es	\N	\N	0
tt17489272	Episode #1.6385	\N	\N	original	\N	1
tt17489272	Episódio #1.6385	PT	pt	\N	\N	0
tt17489272	एपिसोड #1.6385	IN	hi	\N	\N	0
tt17489272	Épisode #1.6385	FR	fr	\N	\N	0
tt17489272	Episodio #1.6385	IT	it	\N	\N	0
tt17489272	Folge #1.6385	DE	de	\N	\N	0
tt17489272	エピソード #1.6385	JP	ja	\N	\N	0
tt17489272	Episodio #1.6385	ES	es	\N	\N	0
tt9463002	Episode #1.89	\N	\N	original	\N	1
tt9463002	Episódio #1.89	PT	pt	\N	\N	0
tt9463002	एपिसोड #1.89	IN	hi	\N	\N	0
tt9463002	Épisode #1.89	FR	fr	\N	\N	0
tt9463002	Episodio #1.89	IT	it	\N	\N	0
tt9463002	Folge #1.89	DE	de	\N	\N	0
tt9463002	エピソード #1.89	JP	ja	\N	\N	0
tt9463002	Episodio #1.89	ES	es	\N	\N	0
tt33355808	Episode #1.2366	\N	\N	original	\N	1
tt33355808	Episódio #1.2366	PT	pt	\N	\N	0
tt33355808	एपिसोड #1.2366	IN	hi	\N	\N	0
tt33355808	Épisode #1.2366	FR	fr	\N	\N	0
tt33355808	Episodio #1.2366	IT	it	\N	\N	0
tt33355808	Folge #1.2366	DE	de	\N	\N	0
tt33355808	エピソード #1.2366	JP	ja	\N	\N	0
tt33355808	Episodio #1.2366	ES	es	\N	\N	0
tt2520442	Guanajuato	\N	\N	original	\N	1
tt2520442	Guanajuato	AR	\N	imdbDisplay	\N	0
tt6966764	Final Copa del Rey 2017 #2	\N	\N	original	\N	1
tt17348354	Episode dated 28 June 1991	\N	\N	original	\N	1
tt17348354	Episódio datado de 28 Junho de 1991	PT	pt	\N	\N	0
tt17348354	28 जून 1991 को प्रसारित एपिसोड	IN	hi	\N	\N	0
tt17348354	Épisode datant du 28 juin 1991	FR	fr	\N	\N	0
tt17348354	Episodio datato 28 giugno 1991	IT	it	\N	\N	0
tt17348354	Folge vom 28. Juni 1991	DE	de	\N	\N	0
tt17348354	1991年6月28日 のエピソード	JP	ja	\N	\N	0
tt17348354	Episodio fechado 28 junio 1991	ES	es	\N	\N	0
tt0764900	Tokyo 1960	\N	\N	original	\N	1
tt0764900	Tokyo 1960	PH	\N	\N	\N	0
tt34078878	Episode #1.5	\N	\N	original	\N	1
tt34078878	Episódio #1.5	PT	pt	\N	\N	0
tt34078878	एपिसोड #1.5	IN	hi	\N	\N	0
tt34078878	Épisode #1.5	FR	fr	\N	\N	0
tt34078878	Episodio #1.5	IT	it	\N	\N	0
tt34078878	Folge #1.5	DE	de	\N	\N	0
tt34078878	エピソード #1.5	JP	ja	\N	\N	0
tt34078878	Episodio #1.5	ES	es	\N	\N	0
tt6178036	1989: Day 4, Part 2	\N	\N	original	\N	1
tt12639282	Episode #1.647	\N	\N	original	\N	1
tt12639282	Episódio #1.647	PT	pt	\N	\N	0
tt12639282	एपिसोड #1.647	IN	hi	\N	\N	0
tt12639282	Épisode #1.647	FR	fr	\N	\N	0
tt12639282	Episodio #1.647	IT	it	\N	\N	0
tt12639282	Folge #1.647	DE	de	\N	\N	0
tt12639282	エピソード #1.647	JP	ja	\N	\N	0
tt12639282	Episodio #1.647	ES	es	\N	\N	0
tt1369419	Star Wars: Episode III - Revenge of the Sith	\N	\N	original	\N	1
tt9092036	¡El Renca Juniors F.C volvió a ganar!	\N	\N	original	\N	1
tt5120812	Liza	\N	\N	original	\N	1
tt8327428	Episode dated 30 April 1981	\N	\N	original	\N	1
tt8327428	Episódio datado de 30 Abril de 1981	PT	pt	\N	\N	0
tt8327428	30 अप्रैल 1981 को प्रसारित एपिसोड	IN	hi	\N	\N	0
tt8327428	Épisode datant du 30 avril 1981	FR	fr	\N	\N	0
tt8327428	Episodio datato 30 aprile 1981	IT	it	\N	\N	0
tt8327428	Folge vom 30. April 1981	DE	de	\N	\N	0
tt8327428	1981年4月30日 のエピソード	JP	ja	\N	\N	0
tt8327428	Episodio fechado 30 abril 1981	ES	es	\N	\N	0
tt1784130	Old Town Orange County	\N	\N	original	\N	1
tt1784130	Old Town Orange County	US	\N	imdbDisplay	\N	0
tt1864770	Patton, Puller and Franks	\N	\N	original	\N	1
tt6435744	Episode #6.93	\N	\N	original	\N	1
tt6435744	Episódio #6.93	PT	pt	\N	\N	0
tt6435744	एपिसोड #6.93	IN	hi	\N	\N	0
tt6435744	Épisode #6.93	FR	fr	\N	\N	0
tt6435744	Episodio #6.93	IT	it	\N	\N	0
tt6435744	Folge #6.93	DE	de	\N	\N	0
tt6435744	エピソード #6.93	JP	ja	\N	\N	0
tt6435744	Episodio #6.93	ES	es	\N	\N	0
tt27483570	Episode #1.1881	\N	\N	original	\N	1
tt27483570	Episódio #1.1881	PT	pt	\N	\N	0
tt27483570	एपिसोड #1.1881	IN	hi	\N	\N	0
tt27483570	Épisode #1.1881	FR	fr	\N	\N	0
tt27483570	Episodio #1.1881	IT	it	\N	\N	0
tt27483570	Folge #1.1881	DE	de	\N	\N	0
tt27483570	エピソード #1.1881	JP	ja	\N	\N	0
tt27483570	Episodio #1.1881	ES	es	\N	\N	0
tt0510608	Un solitario corazón	\N	\N	original	\N	1
tt0510608	Un solitario corazón	AR	\N	\N	\N	0
tt2266888	Dowry Demands	\N	\N	original	\N	1
tt2266888	Dowry Demands	GB	\N	\N	\N	0
tt2265137	Accession	\N	\N	original	\N	1
tt2265137	アクセッション　増殖	JP	ja	imdbDisplay	\N	0
tt2265137	Accession	ZA	\N	\N	\N	0
tt0916054	Speed Dating	\N	\N	original	\N	1
tt15865148	25. november 2020	\N	\N	original	\N	1
tt25866418	Episode #1.1176	\N	\N	original	\N	1
tt25866418	Episódio #1.1176	PT	pt	\N	\N	0
tt25866418	एपिसोड #1.1176	IN	hi	\N	\N	0
tt25866418	Épisode #1.1176	FR	fr	\N	\N	0
tt25866418	Episodio #1.1176	IT	it	\N	\N	0
tt25866418	Folge #1.1176	DE	de	\N	\N	0
tt25866418	エピソード #1.1176	JP	ja	\N	\N	0
tt25866418	Episodio #1.1176	ES	es	\N	\N	0
tt15217060	Oshi no Oujisama	\N	\N	original	\N	1
tt15217060	Oshi no Oujisama	JP	\N	imdbDisplay	\N	0
tt15217060	Oshi no Oujisama	MX	\N	imdbDisplay	\N	0
tt15217060	推しの王子様	JP	ja	imdbDisplay	\N	0
tt23647666	Episode #1.50	\N	\N	original	\N	1
tt23647666	Episódio #1.50	PT	pt	\N	\N	0
tt23647666	एपिसोड #1.50	IN	hi	\N	\N	0
tt23647666	Épisode #1.50	FR	fr	\N	\N	0
tt23647666	Episodio #1.50	IT	it	\N	\N	0
tt23647666	Folge #1.50	DE	de	\N	\N	0
tt23647666	エピソード #1.50	JP	ja	\N	\N	0
tt23647666	Episodio #1.50	ES	es	\N	\N	0
tt29380847	How logical are you? A legendary experiment	\N	\N	original	\N	1
tt2617350	Taliban/Suicide Bomber/Nixon on Nixon	\N	\N	original	\N	1
tt7381354	La Vieja	\N	\N	original	\N	1
tt7381354	La Vieja	ES	\N	imdbDisplay	\N	0
tt6585060	Episode #1.3	\N	\N	original	\N	1
tt6585060	Episódio #1.3	PT	pt	\N	\N	0
tt6585060	एपिसोड #1.3	IN	hi	\N	\N	0
tt6585060	Épisode #1.3	FR	fr	\N	\N	0
tt6585060	Episodio #1.3	IT	it	\N	\N	0
tt6585060	Folge #1.3	DE	de	\N	\N	0
tt6585060	エピソード #1.3	JP	ja	\N	\N	0
tt6585060	Episodio #1.3	ES	es	\N	\N	0
tt5109270	The Interview	\N	\N	original	\N	1
tt5109270	The Interview	US	\N	\N	\N	0
tt9270812	Who will get the boomerang?/Magic belt/Three wishes/I want to win	\N	\N	original	\N	1
tt28418769	Popsicle Pussy	\N	\N	original	\N	1
tt11278474	Beta	\N	\N	original	\N	1
tt11278474	Beta	US	\N	\N	\N	0
tt1033081	Episode #1.185	\N	\N	original	\N	1
tt1033081	Episódio #1.185	PT	pt	\N	\N	0
tt1033081	एपिसोड #1.185	IN	hi	\N	\N	0
tt1033081	Épisode #1.185	FR	fr	\N	\N	0
tt1033081	Episodio #1.185	IT	it	\N	\N	0
tt1033081	Folge #1.185	DE	de	\N	\N	0
tt1033081	エピソード #1.185	JP	ja	\N	\N	0
tt1033081	Episodio #1.185	ES	es	\N	\N	0
tt3596966	Episode dated 21 March 2014	\N	\N	original	\N	1
tt3596966	Episódio datado de 21 Março de 2014	PT	pt	\N	\N	0
tt3596966	21 मार्च 2014 को प्रसारित एपिसोड	IN	hi	\N	\N	0
tt3596966	Épisode datant du 21 mars 2014	FR	fr	\N	\N	0
tt3596966	Episodio datato 21 marzo 2014	IT	it	\N	\N	0
tt3596966	Folge vom 21. März 2014	DE	de	\N	\N	0
tt3596966	2014年3月21日 のエピソード	JP	ja	\N	\N	0
tt3596966	Episodio fechado 21 marzo 2014	ES	es	\N	\N	0
tt5137972	Lost Crane	\N	\N	original	\N	1
tt19393640	Beach	\N	\N	original	\N	1
tt19393640	Beach	IN	\N	\N	\N	0
tt33086604	Episode #1.54	\N	\N	original	\N	1
tt33086604	Episódio #1.54	PT	pt	\N	\N	0
tt33086604	एपिसोड #1.54	IN	hi	\N	\N	0
tt33086604	Épisode #1.54	FR	fr	\N	\N	0
tt33086604	Episodio #1.54	IT	it	\N	\N	0
tt33086604	Folge #1.54	DE	de	\N	\N	0
tt33086604	エピソード #1.54	JP	ja	\N	\N	0
tt33086604	Episodio #1.54	ES	es	\N	\N	0
tt13519572	XOXO: Chrissy Teigen	\N	\N	original	\N	1
tt13519572	XOXO: Chrissy Teigen	US	\N	imdbDisplay	\N	0
tt15175624	Episode #7.49	\N	\N	original	\N	1
tt15175624	Episódio #7.49	PT	pt	\N	\N	0
tt15175624	एपिसोड #7.49	IN	hi	\N	\N	0
tt15175624	Épisode #7.49	FR	fr	\N	\N	0
tt15175624	Episodio #7.49	IT	it	\N	\N	0
tt15175624	Folge #7.49	DE	de	\N	\N	0
tt15175624	エピソード #7.49	JP	ja	\N	\N	0
tt15175624	Episodio #7.49	ES	es	\N	\N	0
tt5899540	Episode #1.3030	\N	\N	original	\N	1
tt5899540	Episódio #1.3030	PT	pt	\N	\N	0
tt5899540	एपिसोड #1.3030	IN	hi	\N	\N	0
tt5899540	Épisode #1.3030	FR	fr	\N	\N	0
tt5899540	Episodio #1.3030	IT	it	\N	\N	0
tt5899540	Folge #1.3030	DE	de	\N	\N	0
tt5899540	エピソード #1.3030	JP	ja	\N	\N	0
tt5899540	Episodio #1.3030	ES	es	\N	\N	0
tt14928162	Lary Kidd: Keys on the Table	\N	\N	original	\N	1
tt14928162	Lary Kidd: Keys on the Table	CA	\N	\N	\N	0
tt31925849	Warhammer 40,000: Warpforge	\N	\N	original	\N	1
tt31925849	Warhammer 40,000: Warpforge	GB	\N	\N	\N	0
tt0231023	Evening Magazine	\N	\N	original	\N	1
tt0231023	Evening Magazine: Baltimore	\N	\N	\N	\N	0
tt0231023	Evening Magazine: Baltimore	US	\N	alternative	\N	0
tt0231023	Evening	US	\N	imdbDisplay	\N	0
tt0231023	Evening: The MTWTF Show	US	\N	\N	first episodes title	0
tt0231023	P.M. Magazine	US	\N	alternative	\N	0
tt0231023	PM Magazine	US	\N	\N	new title	0
tt9170956	Lost	\N	\N	original	\N	1
tt1099047	Episode dated 12 November 1973	\N	\N	original	\N	1
tt1099047	Episódio datado de 12 Novembro de 1973	PT	pt	\N	\N	0
tt1099047	12 नवम्बर 1973 को प्रसारित एपिसोड	IN	hi	\N	\N	0
tt1099047	Épisode datant du 12 novembre 1973	FR	fr	\N	\N	0
tt1099047	Episodio datato 12 novembre 1973	IT	it	\N	\N	0
tt1099047	Folge vom 12. November 1973	DE	de	\N	\N	0
tt1099047	1973年11月12日 のエピソード	JP	ja	\N	\N	0
tt1099047	Episodio fechado 12 noviembre 1973	ES	es	\N	\N	0
tt0947424	Garbage Mountain	\N	\N	original	\N	1
tt15221538	Episode #1.711	\N	\N	original	\N	1
tt15221538	Episódio #1.711	PT	pt	\N	\N	0
tt15221538	एपिसोड #1.711	IN	hi	\N	\N	0
tt15221538	Épisode #1.711	FR	fr	\N	\N	0
tt15221538	Episodio #1.711	IT	it	\N	\N	0
tt15221538	Folge #1.711	DE	de	\N	\N	0
tt15221538	エピソード #1.711	JP	ja	\N	\N	0
tt15221538	Episodio #1.711	ES	es	\N	\N	0
tt10396382	Dead Reckoning, Where Are You	\N	\N	original	\N	1
tt26915667	Donae'o	\N	\N	original	\N	1
tt32718599	Episode #1.3269	\N	\N	original	\N	1
tt32718599	Episódio #1.3269	PT	pt	\N	\N	0
tt32718599	एपिसोड #1.3269	IN	hi	\N	\N	0
tt32718599	Épisode #1.3269	FR	fr	\N	\N	0
tt32718599	Episodio #1.3269	IT	it	\N	\N	0
tt32718599	Folge #1.3269	DE	de	\N	\N	0
tt32718599	エピソード #1.3269	JP	ja	\N	\N	0
tt32718599	Episodio #1.3269	ES	es	\N	\N	0
tt14712892	Episode #1.49	\N	\N	original	\N	1
tt14712892	Episódio #1.49	PT	pt	\N	\N	0
tt14712892	एपिसोड #1.49	IN	hi	\N	\N	0
tt14712892	Épisode #1.49	FR	fr	\N	\N	0
tt14712892	Episodio #1.49	IT	it	\N	\N	0
tt14712892	Folge #1.49	DE	de	\N	\N	0
tt14712892	エピソード #1.49	JP	ja	\N	\N	0
tt14712892	Episodio #1.49	ES	es	\N	\N	0
tt21812496	Episode #28.13	\N	\N	original	\N	1
tt21812496	Episódio #28.13	PT	pt	\N	\N	0
tt21812496	एपिसोड #28.13	IN	hi	\N	\N	0
tt21812496	Épisode #28.13	FR	fr	\N	\N	0
tt21812496	Episodio #28.13	IT	it	\N	\N	0
tt21812496	Folge #28.13	DE	de	\N	\N	0
tt21812496	エピソード #28.13	JP	ja	\N	\N	0
tt21812496	Episodio #28.13	ES	es	\N	\N	0
tt6072618	Episode #1.128	\N	\N	original	\N	1
tt6072618	Episódio #1.128	PT	pt	\N	\N	0
tt6072618	एपिसोड #1.128	IN	hi	\N	\N	0
tt6072618	Épisode #1.128	FR	fr	\N	\N	0
tt6072618	Episodio #1.128	IT	it	\N	\N	0
tt6072618	Folge #1.128	DE	de	\N	\N	0
tt6072618	エピソード #1.128	JP	ja	\N	\N	0
tt6072618	Episodio #1.128	ES	es	\N	\N	0
tt1126391	Gospoda ofitsery: Spasti imperatora	\N	\N	original	\N	1
tt1126391	Der Soldat des Zaren	DE	\N	dvd	\N	0
tt1126391	Gentlemen Officers: Save the Emperor	XWW	en	\N	\N	0
tt1126391	Panowie oficerowie: Ratujcie imperatora!	PL	\N	imdbDisplay	\N	0
tt1126391	Spasti imperatora	RU	\N	working	\N	0
tt1126391	Господа офицеры: Спасти императора	RU	\N	imdbDisplay	\N	0
tt1269504	The Window Box	\N	\N	original	\N	1
tt2259113	Rick Gordon, One-Man Army	\N	\N	original	\N	1
tt2259113	Rick Gordon, One-Man Army	US	\N	\N	\N	0
tt14229440	The French Nuclear Tests. That the Present White Australia Policy is in the Best Interests of the Country.	\N	\N	original	\N	1
tt14352700	Episode #1.370	\N	\N	original	\N	1
tt14352700	Episódio #1.370	PT	pt	\N	\N	0
tt14352700	एपिसोड #1.370	IN	hi	\N	\N	0
tt14352700	Épisode #1.370	FR	fr	\N	\N	0
tt14352700	Episodio #1.370	IT	it	\N	\N	0
tt14352700	Folge #1.370	DE	de	\N	\N	0
tt14352700	エピソード #1.370	JP	ja	\N	\N	0
tt14352700	Episodio #1.370	ES	es	\N	\N	0
tt2440974	Totengräber	\N	\N	original	\N	1
tt2440974	Totengräber	CH	\N	\N	\N	0
tt7188458	Casino Royale 1954 Review	\N	\N	original	\N	1
tt21807344	Marge The Sloth and Boris Tell Very Funny Jokes at Comedy Night	\N	\N	original	\N	1
tt7340268	Khushi Returns Home	\N	\N	original	\N	1
tt7340268	Khushi Returns Home	IN	\N	\N	\N	0
tt14637280	Episode #1.22	\N	\N	original	\N	1
tt14637280	Episódio #1.22	PT	pt	\N	\N	0
tt14637280	एपिसोड #1.22	IN	hi	\N	\N	0
tt14637280	Épisode #1.22	FR	fr	\N	\N	0
tt14637280	Episodio #1.22	IT	it	\N	\N	0
tt14637280	Folge #1.22	DE	de	\N	\N	0
tt14637280	エピソード #1.22	JP	ja	\N	\N	0
tt14637280	Episodio #1.22	ES	es	\N	\N	0
tt9728862	Episode dated 8 January 2018	\N	\N	original	\N	1
tt9728862	Episódio datado de 8 Janeiro de 2018	PT	pt	\N	\N	0
tt9728862	8 जनवरी 2018 को प्रसारित एपिसोड	IN	hi	\N	\N	0
tt9728862	Épisode datant du 8 janvier 2018	FR	fr	\N	\N	0
tt9728862	Episodio datato 8 gennaio 2018	IT	it	\N	\N	0
tt9728862	Folge vom 8. Januar 2018	DE	de	\N	\N	0
tt9728862	2018年1月8日 のエピソード	JP	ja	\N	\N	0
tt9728862	Episodio fechado 8 enero 2018	ES	es	\N	\N	0
tt9311350	Att handla är väl ingen match	\N	\N	original	\N	1
tt9311350	Att handla är väl ingen match	SE	\N	imdbDisplay	\N	0
tt15730130	Episode dated 21 January 2008	\N	\N	original	\N	1
tt15730130	Episódio datado de 21 Janeiro de 2008	PT	pt	\N	\N	0
tt15730130	21 जनवरी 2008 को प्रसारित एपिसोड	IN	hi	\N	\N	0
tt15730130	Épisode datant du 21 janvier 2008	FR	fr	\N	\N	0
tt15730130	Episodio datato 21 gennaio 2008	IT	it	\N	\N	0
tt15730130	Folge vom 21. Januar 2008	DE	de	\N	\N	0
tt15730130	2008年1月21日 のエピソード	JP	ja	\N	\N	0
tt15730130	Episodio fechado 21 enero 2008	ES	es	\N	\N	0
tt25437988	Episode #6.408	\N	\N	original	\N	1
tt25437988	Episódio #6.408	PT	pt	\N	\N	0
tt25437988	एपिसोड #6.408	IN	hi	\N	\N	0
tt25437988	Épisode #6.408	FR	fr	\N	\N	0
tt25437988	Episodio #6.408	IT	it	\N	\N	0
tt25437988	Folge #6.408	DE	de	\N	\N	0
tt25437988	エピソード #6.408	JP	ja	\N	\N	0
tt25437988	Episodio #6.408	ES	es	\N	\N	0
tt19719968	The Good Word	\N	\N	original	\N	1
tt15459418	Episode #1.36	\N	\N	original	\N	1
tt15459418	Episódio #1.36	PT	pt	\N	\N	0
tt15459418	एपिसोड #1.36	IN	hi	\N	\N	0
tt15459418	Épisode #1.36	FR	fr	\N	\N	0
tt15459418	Episodio #1.36	IT	it	\N	\N	0
tt15459418	Folge #1.36	DE	de	\N	\N	0
tt15459418	エピソード #1.36	JP	ja	\N	\N	0
tt15459418	Episodio #1.36	ES	es	\N	\N	0
tt21840660	Episode dated 9 October 1968	\N	\N	original	\N	1
tt21840660	Episódio datado de 9 Outubro de 1968	PT	pt	\N	\N	0
tt21840660	9 अक्टूबर 1968 को प्रसारित एपिसोड	IN	hi	\N	\N	0
tt21840660	Épisode datant du 9 octobre 1968	FR	fr	\N	\N	0
tt21840660	Episodio datato 9 ottobre 1968	IT	it	\N	\N	0
tt21840660	Folge vom 9. Oktober 1968	DE	de	\N	\N	0
tt21840660	1968年10月9日 のエピソード	JP	ja	\N	\N	0
tt21840660	Episodio fechado 9 octubre 1968	ES	es	\N	\N	0
tt14427442	Unterwegs am Untermain	\N	\N	original	\N	1
tt7626414	Brewed Awakening	\N	\N	original	\N	1
tt9713888	What Is Ritu's Secret?	\N	\N	original	\N	1
tt8177954	Episode #1.86	\N	\N	original	\N	1
tt8177954	Episódio #1.86	PT	pt	\N	\N	0
tt8177954	एपिसोड #1.86	IN	hi	\N	\N	0
tt8177954	Épisode #1.86	FR	fr	\N	\N	0
tt8177954	Episodio #1.86	IT	it	\N	\N	0
tt8177954	Folge #1.86	DE	de	\N	\N	0
tt8177954	エピソード #1.86	JP	ja	\N	\N	0
tt8177954	Episodio #1.86	ES	es	\N	\N	0
tt35051778	Episode dated 20 October 2023	\N	\N	original	\N	1
tt35051778	Episódio datado de 20 Outubro de 2023	PT	pt	\N	\N	0
tt35051778	20 अक्टूबर 2023 को प्रसारित एपिसोड	IN	hi	\N	\N	0
tt35051778	Épisode datant du 20 octobre 2023	FR	fr	\N	\N	0
tt35051778	Episodio datato 20 ottobre 2023	IT	it	\N	\N	0
tt35051778	Folge vom 20. Oktober 2023	DE	de	\N	\N	0
tt35051778	2023年10月20日 のエピソード	JP	ja	\N	\N	0
tt35051778	Episodio fechado 20 octubre 2023	ES	es	\N	\N	0
tt24908102	Alba's Zevon Mummification	\N	\N	original	\N	1
tt7858508	Les larmes de la Mésopotamie	\N	\N	original	\N	1
tt7649806	Episode #1.15	\N	\N	original	\N	1
tt7649806	Episódio #1.15	PT	pt	\N	\N	0
tt7649806	एपिसोड #1.15	IN	hi	\N	\N	0
tt7649806	Épisode #1.15	FR	fr	\N	\N	0
tt7649806	Episodio #1.15	IT	it	\N	\N	0
tt7649806	Folge #1.15	DE	de	\N	\N	0
tt7649806	エピソード #1.15	JP	ja	\N	\N	0
tt7649806	Episodio #1.15	ES	es	\N	\N	0
tt0039733	Mrs. Fitzherbert	\N	\N	original	\N	1
tt0039733	A Court Secret	AU	\N	\N	new title	0
tt0039733	Mrs. Fitzherbert	GB	\N	imdbDisplay	\N	0
tt0039733	Princess Fitz	GB	\N	alternative	\N	0
tt0039733	Un grande amore di Giorgio IV	IT	\N	imdbDisplay	\N	0
tt12989780	Episode #1.827	\N	\N	original	\N	1
tt12989780	Episódio #1.827	PT	pt	\N	\N	0
tt12989780	एपिसोड #1.827	IN	hi	\N	\N	0
tt35351398	Épisode #1.69	FR	fr	\N	\N	0
tt12989780	Épisode #1.827	FR	fr	\N	\N	0
tt12989780	Episodio #1.827	IT	it	\N	\N	0
tt12989780	Folge #1.827	DE	de	\N	\N	0
tt12989780	エピソード #1.827	JP	ja	\N	\N	0
tt12989780	Episodio #1.827	ES	es	\N	\N	0
tt35427962	Special: Much More Railgun	\N	\N	original	\N	1
tt1705051	The Birds, Like	\N	\N	original	\N	1
tt1705051	The Birds, Like	IE	\N	\N	\N	0
tt15868668	Volga -62	\N	\N	original	\N	1
tt15868668	Volga -62	FI	\N	imdbDisplay	\N	0
tt14622056	La Poucave	\N	\N	original	\N	1
tt14622056	La Poucave	FR	\N	\N	\N	0
tt15414696	Episode dated 31 March 1974	\N	\N	original	\N	1
tt15414696	Episódio datado de 31 Março de 1974	PT	pt	\N	\N	0
tt15414696	31 मार्च 1974 को प्रसारित एपिसोड	IN	hi	\N	\N	0
tt15414696	Épisode datant du 31 mars 1974	FR	fr	\N	\N	0
tt15414696	Episodio datato 31 marzo 1974	IT	it	\N	\N	0
tt15414696	Folge vom 31. März 1974	DE	de	\N	\N	0
tt15414696	1974年3月31日 のエピソード	JP	ja	\N	\N	0
tt15414696	Episodio fechado 31 marzo 1974	ES	es	\N	\N	0
tt26731393	Nice Boys Time	\N	\N	original	\N	1
tt10835872	Episode #1.105	\N	\N	original	\N	1
tt10835872	Episódio #1.105	PT	pt	\N	\N	0
tt10835872	एपिसोड #1.105	IN	hi	\N	\N	0
tt10835872	Épisode #1.105	FR	fr	\N	\N	0
tt10835872	Episodio #1.105	IT	it	\N	\N	0
tt10835872	Folge #1.105	DE	de	\N	\N	0
tt10835872	エピソード #1.105	JP	ja	\N	\N	0
tt10835872	Episodio #1.105	ES	es	\N	\N	0
tt0559186	Flashdance with Death	\N	\N	original	\N	1
tt0559186	Flashdance with Death	US	\N	imdbDisplay	\N	0
tt15464032	Bad Business	\N	\N	original	\N	1
tt16138628	Heather	\N	\N	original	\N	1
tt16138628	Heather	US	\N	\N	\N	0
tt9521782	Clip: archetype kidnaps sun strider	\N	\N	original	\N	1
tt0625535	Lassie and the Dynamite	\N	\N	original	\N	1
tt4102584	Submerge: The Chronicles of Ni're	\N	\N	original	\N	1
tt4102584	Submerge: The Chronicles of Ni're	US	\N	\N	\N	0
tt5408148	Episode #1.4388	\N	\N	original	\N	1
tt5408148	Episódio #1.4388	PT	pt	\N	\N	0
tt5408148	एपिसोड #1.4388	IN	hi	\N	\N	0
tt5408148	Épisode #1.4388	FR	fr	\N	\N	0
tt5408148	Episodio #1.4388	IT	it	\N	\N	0
tt5408148	Folge #1.4388	DE	de	\N	\N	0
tt5408148	エピソード #1.4388	JP	ja	\N	\N	0
tt5408148	Episodio #1.4388	ES	es	\N	\N	0
tt17488280	Episode #2.199	\N	\N	original	\N	1
tt17488280	Episódio #2.199	PT	pt	\N	\N	0
tt17488280	एपिसोड #2.199	IN	hi	\N	\N	0
tt17488280	Épisode #2.199	FR	fr	\N	\N	0
tt17488280	Episodio #2.199	IT	it	\N	\N	0
tt17488280	Folge #2.199	DE	de	\N	\N	0
tt17488280	エピソード #2.199	JP	ja	\N	\N	0
tt17488280	Episodio #2.199	ES	es	\N	\N	0
tt32306806	A HORROR GAME.. ABOUT ME!? | Better To Upload (CoryxKenshin Hiatus Game)	\N	\N	original	\N	1
tt5556050	What Does It Really Mean to Cut Out Carbs?	\N	\N	original	\N	1
tt5556050	What Does It Really Mean to Cut Out Carbs?	US	\N	\N	\N	0
tt23748734	Episode #1.365	\N	\N	original	\N	1
tt23748734	Episódio #1.365	PT	pt	\N	\N	0
tt23748734	एपिसोड #1.365	IN	hi	\N	\N	0
tt23748734	Épisode #1.365	FR	fr	\N	\N	0
tt23748734	Episodio #1.365	IT	it	\N	\N	0
tt23748734	Folge #1.365	DE	de	\N	\N	0
tt23748734	エピソード #1.365	JP	ja	\N	\N	0
tt23748734	Episodio #1.365	ES	es	\N	\N	0
tt1943093	Návrat na místo cinu	\N	\N	original	\N	1
tt6459858	Episode #22.113	\N	\N	original	\N	1
tt6459858	Episódio #22.113	PT	pt	\N	\N	0
tt6459858	एपिसोड #22.113	IN	hi	\N	\N	0
tt6459858	Épisode #22.113	FR	fr	\N	\N	0
tt6459858	Episodio #22.113	IT	it	\N	\N	0
tt6459858	Folge #22.113	DE	de	\N	\N	0
tt6459858	エピソード #22.113	JP	ja	\N	\N	0
tt6459858	Episodio #22.113	ES	es	\N	\N	0
tt6964766	Une employée bien trop jolie	\N	\N	original	\N	1
tt1962479	Episode dated 25 November 1999	\N	\N	original	\N	1
tt1962479	Episódio datado de 25 Novembro de 1999	PT	pt	\N	\N	0
tt1962479	25 नवम्बर 1999 को प्रसारित एपिसोड	IN	hi	\N	\N	0
tt1962479	Épisode datant du 25 novembre 1999	FR	fr	\N	\N	0
tt1962479	Episodio datato 25 novembre 1999	IT	it	\N	\N	0
tt1962479	Folge vom 25. November 1999	DE	de	\N	\N	0
tt1962479	1999年11月25日 のエピソード	JP	ja	\N	\N	0
tt1962479	Episodio fechado 25 noviembre 1999	ES	es	\N	\N	0
tt16478966	Por Que a TERRA Não Cai no ESPAÇO?	\N	\N	original	\N	1
tt16478966	Por Que a TERRA Não Cai no ESPAÇO?	BR	\N	\N	\N	0
tt7660616	Episode dated 12 November 2017	\N	\N	original	\N	1
tt7660616	Episódio datado de 12 Novembro de 2017	PT	pt	\N	\N	0
tt7660616	12 नवम्बर 2017 को प्रसारित एपिसोड	IN	hi	\N	\N	0
tt7660616	Épisode datant du 12 novembre 2017	FR	fr	\N	\N	0
tt7660616	Episodio datato 12 novembre 2017	IT	it	\N	\N	0
tt7660616	Folge vom 12. November 2017	DE	de	\N	\N	0
tt7660616	2017年11月12日 のエピソード	JP	ja	\N	\N	0
tt7660616	Episodio fechado 12 noviembre 2017	ES	es	\N	\N	0
tt12533114	Pi	\N	\N	original	\N	1
tt12533114	Pi	DK	\N	imdbDisplay	\N	0
tt8713632	Galahad	\N	\N	original	\N	1
tt8713632	Galahad	GB	\N	\N	\N	0
tt12009126	Episode #1.39	\N	\N	original	\N	1
tt12009126	Episódio #1.39	PT	pt	\N	\N	0
tt35351398	Episodio #1.69	IT	it	\N	\N	0
tt12009126	एपिसोड #1.39	IN	hi	\N	\N	0
tt12009126	Épisode #1.39	FR	fr	\N	\N	0
tt12009126	Episodio #1.39	IT	it	\N	\N	0
tt12009126	Folge #1.39	DE	de	\N	\N	0
tt12009126	エピソード #1.39	JP	ja	\N	\N	0
tt12009126	Episodio #1.39	ES	es	\N	\N	0
tt12418382	Catch Us If You Can	\N	\N	original	\N	1
tt12418382	Catch Us If You Can	AU	\N	imdbDisplay	\N	0
tt14491504	Die ungeschnittenen Szenen	\N	\N	original	\N	1
tt8925042	Odessa, Iron Storm!	\N	\N	original	\N	1
tt11242480	Mavis and Emily	\N	\N	original	\N	1
tt10471826	1200. Bölüm	\N	\N	original	\N	1
tt3441310	48M	\N	\N	original	\N	1
tt3441310	48M	KR	\N	imdbDisplay	\N	0
tt2706964	Episode dated 19 February 2013	\N	\N	original	\N	1
tt2706964	Episódio datado de 19 Fevereiro de 2013	PT	pt	\N	\N	0
tt2706964	19 फ़रवरी 2013 को प्रसारित एपिसोड	IN	hi	\N	\N	0
tt2706964	Épisode datant du 19 février 2013	FR	fr	\N	\N	0
tt2706964	Episodio datato 19 febbraio 2013	IT	it	\N	\N	0
tt2706964	Folge vom 19. Februar 2013	DE	de	\N	\N	0
tt2706964	2013年2月19日 のエピソード	JP	ja	\N	\N	0
tt2706964	Episodio fechado 19 febrero 2013	ES	es	\N	\N	0
tt8003492	Episode #1.104	\N	\N	original	\N	1
tt8003492	Episódio #1.104	PT	pt	\N	\N	0
tt8003492	एपिसोड #1.104	IN	hi	\N	\N	0
tt8003492	Épisode #1.104	FR	fr	\N	\N	0
tt8003492	Episodio #1.104	IT	it	\N	\N	0
tt8003492	Folge #1.104	DE	de	\N	\N	0
tt8003492	エピソード #1.104	JP	ja	\N	\N	0
tt8003492	Episodio #1.104	ES	es	\N	\N	0
tt20219118	Episode #1.159	\N	\N	original	\N	1
tt20219118	Episódio #1.159	PT	pt	\N	\N	0
tt20219118	एपिसोड #1.159	IN	hi	\N	\N	0
tt20219118	Épisode #1.159	FR	fr	\N	\N	0
tt20219118	Episodio #1.159	IT	it	\N	\N	0
tt20219118	Folge #1.159	DE	de	\N	\N	0
tt20219118	エピソード #1.159	JP	ja	\N	\N	0
tt20219118	Episodio #1.159	ES	es	\N	\N	0
tt11561864	Episode #1.98	\N	\N	original	\N	1
tt11561864	Episódio #1.98	PT	pt	\N	\N	0
tt11561864	एपिसोड #1.98	IN	hi	\N	\N	0
tt11561864	Épisode #1.98	FR	fr	\N	\N	0
tt11561864	Episodio #1.98	IT	it	\N	\N	0
tt11561864	Folge #1.98	DE	de	\N	\N	0
tt11561864	エピソード #1.98	JP	ja	\N	\N	0
tt11561864	Episodio #1.98	ES	es	\N	\N	0
tt16251418	Indo-Pacifique: nouveau centre du monde?	\N	\N	original	\N	1
tt0363410	Abdülhamid Düserken	\N	\N	original	\N	1
tt0363410	The Fall of Abdulhamit	XWW	en	\N	\N	0
tt0363410	Abdülhamid Düserken	TR	\N	\N	\N	0
tt14264940	Programa exibido em 26/09/2002	\N	\N	original	\N	1
tt1618645	Episode #1.23	\N	\N	original	\N	1
tt1618645	Episódio #1.23	PT	pt	\N	\N	0
tt1618645	एपिसोड #1.23	IN	hi	\N	\N	0
tt1618645	Épisode #1.23	FR	fr	\N	\N	0
tt1618645	Episodio #1.23	IT	it	\N	\N	0
tt1618645	Folge #1.23	DE	de	\N	\N	0
tt1618645	エピソード #1.23	JP	ja	\N	\N	0
tt1618645	Episodio #1.23	ES	es	\N	\N	0
tt14330574	Sunset Paradise	\N	\N	original	\N	1
tt14330574	Sunset Paradise	AU	\N	imdbDisplay	\N	0
tt14330574	Sunset Paradise	CA	en	imdbDisplay	\N	0
tt14330574	Sunset Paradise	JP	ja	imdbDisplay	\N	0
tt14330574	Sunset Paradise	KR	\N	imdbDisplay	\N	0
tt14330574	Sunset Paradise	MX	\N	imdbDisplay	\N	0
tt14330574	Sunset Paradise	PH	en	imdbDisplay	\N	0
tt14330574	Sunset Paradise	US	\N	\N	new title	0
tt14330574	Raj zalaska sunca	HR	\N	imdbDisplay	\N	0
tt3586122	Dead Dog: Chubby Money Comedy	\N	\N	original	\N	1
tt3586122	Dead Dog: Chubby Money Comedy	US	\N	imdbDisplay	\N	0
tt0486023	Surtur fer sunnan	\N	\N	original	\N	1
tt0486023	Birth of an Island	GB	\N	imdbDisplay	\N	0
tt0486023	Birth of an Island	US	\N	imdbDisplay	\N	0
tt0486023	Birth of an Island	XWW	en	imdbDisplay	\N	0
tt0486023	Surtur fer sunnan	IS	\N	imdbDisplay	\N	0
tt6291148	Episode dated 5 December 2016	\N	\N	original	\N	1
tt6291148	Episódio datado de 5 Dezembro de 2016	PT	pt	\N	\N	0
tt6291148	5 दिसम्बर 2016 को प्रसारित एपिसोड	IN	hi	\N	\N	0
tt6291148	Épisode datant du 5 décembre 2016	FR	fr	\N	\N	0
tt6291148	Episodio datato 5 dicembre 2016	IT	it	\N	\N	0
tt6291148	Folge vom 5. Dezember 2016	DE	de	\N	\N	0
tt6291148	2016年12月5日 のエピソード	JP	ja	\N	\N	0
tt6291148	Episodio fechado 5 diciembre 2016	ES	es	\N	\N	0
tt17686678	Episode #1.177	\N	\N	original	\N	1
tt17686678	Episódio #1.177	PT	pt	\N	\N	0
tt17686678	एपिसोड #1.177	IN	hi	\N	\N	0
tt17686678	Épisode #1.177	FR	fr	\N	\N	0
tt17686678	Episodio #1.177	IT	it	\N	\N	0
tt17686678	Folge #1.177	DE	de	\N	\N	0
tt17686678	エピソード #1.177	JP	ja	\N	\N	0
tt17686678	Episodio #1.177	ES	es	\N	\N	0
tt21106494	Episode #1.443	\N	\N	original	\N	1
tt21106494	Episódio #1.443	PT	pt	\N	\N	0
tt21106494	एपिसोड #1.443	IN	hi	\N	\N	0
tt21106494	Épisode #1.443	FR	fr	\N	\N	0
tt21106494	Episodio #1.443	IT	it	\N	\N	0
tt21106494	Folge #1.443	DE	de	\N	\N	0
tt21106494	エピソード #1.443	JP	ja	\N	\N	0
tt21106494	Episodio #1.443	ES	es	\N	\N	0
tt33412589	Death Smiles on a Murderer & Torture Chamber of Dr Sadism	\N	\N	original	\N	1
tt13102558	Episode #1.85	\N	\N	original	\N	1
tt13102558	Episódio #1.85	PT	pt	\N	\N	0
tt13102558	एपिसोड #1.85	IN	hi	\N	\N	0
tt13102558	Épisode #1.85	FR	fr	\N	\N	0
tt13102558	Episodio #1.85	IT	it	\N	\N	0
tt13102558	Folge #1.85	DE	de	\N	\N	0
tt13102558	エピソード #1.85	JP	ja	\N	\N	0
tt13102558	Episodio #1.85	ES	es	\N	\N	0
tt15074516	Episode #1.62	\N	\N	original	\N	1
tt15074516	Episódio #1.62	PT	pt	\N	\N	0
tt15074516	एपिसोड #1.62	IN	hi	\N	\N	0
tt15074516	Épisode #1.62	FR	fr	\N	\N	0
tt15074516	Episodio #1.62	IT	it	\N	\N	0
tt15074516	Folge #1.62	DE	de	\N	\N	0
tt15074516	エピソード #1.62	JP	ja	\N	\N	0
tt15074516	Episodio #1.62	ES	es	\N	\N	0
tt10761844	The coach	\N	\N	original	\N	1
tt10761844	The coach	IT	\N	imdbDisplay	\N	0
tt6172450	1986: Day 2, Part 5	\N	\N	original	\N	1
tt5178078	De voksne	\N	\N	original	\N	1
tt7850788	Episode #1.60	\N	\N	original	\N	1
tt7850788	Episódio #1.60	PT	pt	\N	\N	0
tt7850788	एपिसोड #1.60	IN	hi	\N	\N	0
tt7850788	Épisode #1.60	FR	fr	\N	\N	0
tt7850788	Episodio #1.60	IT	it	\N	\N	0
tt7850788	Folge #1.60	DE	de	\N	\N	0
tt7850788	エピソード #1.60	JP	ja	\N	\N	0
tt7850788	Episodio #1.60	ES	es	\N	\N	0
tt28328229	Mali Shoghl bi Al Souq	\N	\N	original	\N	1
tt28328229	Mali Shoghl bi Al Souq	SA	\N	\N	\N	0
tt6617024	Die Vorstellung	\N	\N	original	\N	1
tt7030662	Health and Fitness	\N	\N	original	\N	1
tt20764916	Barron & Calan Get Busy	\N	\N	original	\N	1
tt10579682	Donyaye Shirin	\N	\N	original	\N	1
tt10579682	Donyaye Shirin	IR	\N	\N	\N	0
tt5762262	Episode #1.860	\N	\N	original	\N	1
tt5762262	Episódio #1.860	PT	pt	\N	\N	0
tt5762262	एपिसोड #1.860	IN	hi	\N	\N	0
tt5762262	Épisode #1.860	FR	fr	\N	\N	0
tt5762262	Episodio #1.860	IT	it	\N	\N	0
tt5762262	Folge #1.860	DE	de	\N	\N	0
tt5762262	エピソード #1.860	JP	ja	\N	\N	0
tt5762262	Episodio #1.860	ES	es	\N	\N	0
tt12457138	Episode #76.94	\N	\N	original	\N	1
tt12457138	Episódio #76.94	PT	pt	\N	\N	0
tt12457138	एपिसोड #76.94	IN	hi	\N	\N	0
tt12457138	Épisode #76.94	FR	fr	\N	\N	0
tt12457138	Episodio #76.94	IT	it	\N	\N	0
tt12457138	Folge #76.94	DE	de	\N	\N	0
tt12457138	エピソード #76.94	JP	ja	\N	\N	0
tt12457138	Episodio #76.94	ES	es	\N	\N	0
tt15731634	Smallest Joys	\N	\N	original	\N	1
tt27130766	Episode #1.546	\N	\N	original	\N	1
tt27130766	Episódio #1.546	PT	pt	\N	\N	0
tt27130766	एपिसोड #1.546	IN	hi	\N	\N	0
tt27130766	Épisode #1.546	FR	fr	\N	\N	0
tt27130766	Episodio #1.546	IT	it	\N	\N	0
tt27130766	Folge #1.546	DE	de	\N	\N	0
tt27130766	エピソード #1.546	JP	ja	\N	\N	0
tt27130766	Episodio #1.546	ES	es	\N	\N	0
tt19368930	Episode #2.2	\N	\N	original	\N	1
tt19368930	Episódio #2.2	PT	pt	\N	\N	0
tt19368930	एपिसोड #2.2	IN	hi	\N	\N	0
tt19368930	Épisode #2.2	FR	fr	\N	\N	0
tt19368930	Episodio #2.2	IT	it	\N	\N	0
tt19368930	Folge #2.2	DE	de	\N	\N	0
tt19368930	エピソード #2.2	JP	ja	\N	\N	0
tt19368930	Episodio #2.2	ES	es	\N	\N	0
tt2699826	Maut Ki Lalkar	\N	\N	original	\N	1
tt2699826	Maut Ki Lalkar	IN	\N	\N	\N	0
tt4109186	Date Night	\N	\N	original	\N	1
tt12040496	Chi la fa l'aspetti!	\N	\N	original	\N	1
tt16451586	4. des. 2021 - Foreldre siktet etter skoleskyting	\N	\N	original	\N	1
tt0173115	Razboi fara arme	\N	\N	original	\N	1
tt0173115	Razboi fara arme	RO	\N	imdbDisplay	\N	0
tt0173115	War Without Weapons	XWW	en	\N	informal literal title	0
tt20518086	Thirst to be the First/The Fourth Bath	\N	\N	original	\N	1
tt32813893	Episode dated 5 July 2024	\N	\N	original	\N	1
tt32813893	Episódio datado de 5 Julho de 2024	PT	pt	\N	\N	0
tt32813893	5 जुलाई 2024 को प्रसारित एपिसोड	IN	hi	\N	\N	0
tt32813893	Épisode datant du 5 juillet 2024	FR	fr	\N	\N	0
tt32813893	Episodio datato 5 luglio 2024	IT	it	\N	\N	0
tt32813893	Folge vom 5. Juli 2024	DE	de	\N	\N	0
tt32813893	2024年7月5日 のエピソード	JP	ja	\N	\N	0
tt32813893	Episodio fechado 5 julio 2024	ES	es	\N	\N	0
tt11719276	On My Honour	\N	\N	original	\N	1
tt11719276	On My Honour	SG	\N	\N	\N	0
tt1442696	Shi Fu Huang/Paul Wong	\N	\N	original	\N	1
tt10610930	Episode #1.224	\N	\N	original	\N	1
tt10610930	Episódio #1.224	PT	pt	\N	\N	0
tt10610930	एपिसोड #1.224	IN	hi	\N	\N	0
tt10610930	Épisode #1.224	FR	fr	\N	\N	0
tt10610930	Episodio #1.224	IT	it	\N	\N	0
tt10610930	Folge #1.224	DE	de	\N	\N	0
tt10610930	エピソード #1.224	JP	ja	\N	\N	0
tt10610930	Episodio #1.224	ES	es	\N	\N	0
tt9566692	Trump Adminstration's first 20 month according to Nostradamus	\N	\N	original	\N	1
tt9566692	Trump Adminstration's first 20 month according to Nostradamus	US	\N	imdbDisplay	\N	0
tt27716240	Episode #87.88	\N	\N	original	\N	1
tt27716240	Episódio #87.88	PT	pt	\N	\N	0
tt27716240	एपिसोड #87.88	IN	hi	\N	\N	0
tt27716240	Épisode #87.88	FR	fr	\N	\N	0
tt27716240	Episodio #87.88	IT	it	\N	\N	0
tt27716240	Folge #87.88	DE	de	\N	\N	0
tt27716240	エピソード #87.88	JP	ja	\N	\N	0
tt27716240	Episodio #87.88	ES	es	\N	\N	0
tt12071826	Episode #22.14	\N	\N	original	\N	1
tt12071826	Episódio #22.14	PT	pt	\N	\N	0
tt12071826	एपिसोड #22.14	IN	hi	\N	\N	0
tt12071826	Épisode #22.14	FR	fr	\N	\N	0
tt12071826	Episodio #22.14	IT	it	\N	\N	0
tt12071826	Folge #22.14	DE	de	\N	\N	0
tt12071826	エピソード #22.14	JP	ja	\N	\N	0
tt12071826	Episodio #22.14	ES	es	\N	\N	0
tt14583032	Episode #1.382	\N	\N	original	\N	1
tt14583032	Episódio #1.382	PT	pt	\N	\N	0
tt14583032	एपिसोड #1.382	IN	hi	\N	\N	0
tt14583032	Épisode #1.382	FR	fr	\N	\N	0
tt14583032	Episodio #1.382	IT	it	\N	\N	0
tt14583032	Folge #1.382	DE	de	\N	\N	0
tt14583032	エピソード #1.382	JP	ja	\N	\N	0
tt14583032	Episodio #1.382	ES	es	\N	\N	0
tt6109374	Episode #6.38	\N	\N	original	\N	1
tt6109374	Episódio #6.38	PT	pt	\N	\N	0
tt6109374	एपिसोड #6.38	IN	hi	\N	\N	0
tt6109374	Épisode #6.38	FR	fr	\N	\N	0
tt6109374	Episodio #6.38	IT	it	\N	\N	0
tt6109374	Folge #6.38	DE	de	\N	\N	0
tt6109374	エピソード #6.38	JP	ja	\N	\N	0
tt6109374	Episodio #6.38	ES	es	\N	\N	0
tt11603920	Koppig als een Breton	\N	\N	original	\N	1
tt9808626	Episode #1.185	\N	\N	original	\N	1
tt9808626	Episódio #1.185	PT	pt	\N	\N	0
tt9808626	एपिसोड #1.185	IN	hi	\N	\N	0
tt9808626	Épisode #1.185	FR	fr	\N	\N	0
tt9808626	Episodio #1.185	IT	it	\N	\N	0
tt9808626	Folge #1.185	DE	de	\N	\N	0
tt9808626	エピソード #1.185	JP	ja	\N	\N	0
tt9808626	Episodio #1.185	ES	es	\N	\N	0
tt23031270	Mengalah Bukan Kalah? (Katanya)	\N	\N	original	\N	1
tt29426335	Crystal Meth Addict: Tabitha	\N	\N	original	\N	1
tt33398124	Episode dated 9 January 1993	\N	\N	original	\N	1
tt33398124	Episódio datado de 9 Janeiro de 1993	PT	pt	\N	\N	0
tt33398124	9 जनवरी 1993 को प्रसारित एपिसोड	IN	hi	\N	\N	0
tt33398124	Épisode datant du 9 janvier 1993	FR	fr	\N	\N	0
tt33398124	Episodio datato 9 gennaio 1993	IT	it	\N	\N	0
tt33398124	Folge vom 9. Januar 1993	DE	de	\N	\N	0
tt33398124	1993年1月9日 のエピソード	JP	ja	\N	\N	0
tt33398124	Episodio fechado 9 enero 1993	ES	es	\N	\N	0
tt9218950	Episode #1.69	\N	\N	original	\N	1
tt9218950	Episódio #1.69	PT	pt	\N	\N	0
tt9218950	एपिसोड #1.69	IN	hi	\N	\N	0
tt9218950	Épisode #1.69	FR	fr	\N	\N	0
tt9218950	Episodio #1.69	IT	it	\N	\N	0
tt9218950	Folge #1.69	DE	de	\N	\N	0
tt9218950	エピソード #1.69	JP	ja	\N	\N	0
tt9218950	Episodio #1.69	ES	es	\N	\N	0
tt16305888	Episode #1.27	\N	\N	original	\N	1
tt16305888	Episódio #1.27	PT	pt	\N	\N	0
tt16305888	एपिसोड #1.27	IN	hi	\N	\N	0
tt16305888	Épisode #1.27	FR	fr	\N	\N	0
tt16305888	Episodio #1.27	IT	it	\N	\N	0
tt16305888	Folge #1.27	DE	de	\N	\N	0
tt16305888	エピソード #1.27	JP	ja	\N	\N	0
tt16305888	Episodio #1.27	ES	es	\N	\N	0
tt33292647	Island: From Dreams to Ruin	\N	\N	original	\N	1
tt33292647	Island: From Dreams to Ruin	DE	\N	\N	\N	0
tt6895004	Episode #1.83	\N	\N	original	\N	1
tt6895004	Episódio #1.83	PT	pt	\N	\N	0
tt6895004	एपिसोड #1.83	IN	hi	\N	\N	0
tt6895004	Épisode #1.83	FR	fr	\N	\N	0
tt6895004	Episodio #1.83	IT	it	\N	\N	0
tt6895004	Folge #1.83	DE	de	\N	\N	0
tt6895004	エピソード #1.83	JP	ja	\N	\N	0
tt6895004	Episodio #1.83	ES	es	\N	\N	0
tt0423440	Un homme va être assassiné	\N	\N	original	\N	1
tt0423440	Un homme va être assassiné	FR	\N	imdbDisplay	\N	0
tt4614348	Floyd Mayweather	\N	\N	original	\N	1
tt9316852	Episode #1.87	\N	\N	original	\N	1
tt9316852	Episódio #1.87	PT	pt	\N	\N	0
tt9316852	एपिसोड #1.87	IN	hi	\N	\N	0
tt9316852	Épisode #1.87	FR	fr	\N	\N	0
tt9316852	Episodio #1.87	IT	it	\N	\N	0
tt9316852	Folge #1.87	DE	de	\N	\N	0
tt9316852	エピソード #1.87	JP	ja	\N	\N	0
tt9316852	Episodio #1.87	ES	es	\N	\N	0
tt13720628	Episode #1.12	\N	\N	original	\N	1
tt13720628	Episódio #1.12	PT	pt	\N	\N	0
tt13720628	एपिसोड #1.12	IN	hi	\N	\N	0
tt13720628	Épisode #1.12	FR	fr	\N	\N	0
tt13720628	Episodio #1.12	IT	it	\N	\N	0
tt13720628	Folge #1.12	DE	de	\N	\N	0
tt13720628	エピソード #1.12	JP	ja	\N	\N	0
tt13720628	Episodio #1.12	ES	es	\N	\N	0
tt19035206	Episode #1.5735	\N	\N	original	\N	1
tt19035206	Episódio #1.5735	PT	pt	\N	\N	0
tt19035206	एपिसोड #1.5735	IN	hi	\N	\N	0
tt19035206	Épisode #1.5735	FR	fr	\N	\N	0
tt19035206	Episodio #1.5735	IT	it	\N	\N	0
tt19035206	Folge #1.5735	DE	de	\N	\N	0
tt19035206	エピソード #1.5735	JP	ja	\N	\N	0
tt19035206	Episodio #1.5735	ES	es	\N	\N	0
tt12674950	Episode #14.178	\N	\N	original	\N	1
tt12674950	Episódio #14.178	PT	pt	\N	\N	0
tt12674950	एपिसोड #14.178	IN	hi	\N	\N	0
tt12674950	Épisode #14.178	FR	fr	\N	\N	0
tt12674950	Episodio #14.178	IT	it	\N	\N	0
tt12674950	Folge #14.178	DE	de	\N	\N	0
tt12674950	エピソード #14.178	JP	ja	\N	\N	0
tt12674950	Episodio #14.178	ES	es	\N	\N	0
tt16293802	Sternstunde Philosophie: Muschgs bilaterale Verhandlungen (01/04): Günter Grass	\N	\N	original	\N	1
tt21333468	Episode #1.440	\N	\N	original	\N	1
tt21333468	Episódio #1.440	PT	pt	\N	\N	0
tt21333468	एपिसोड #1.440	IN	hi	\N	\N	0
tt21333468	Épisode #1.440	FR	fr	\N	\N	0
tt21333468	Episodio #1.440	IT	it	\N	\N	0
tt21333468	Folge #1.440	DE	de	\N	\N	0
tt21333468	エピソード #1.440	JP	ja	\N	\N	0
tt21333468	Episodio #1.440	ES	es	\N	\N	0
tt16844416	ONE NIGHT STAND SIMULATOR Date Ariane (ft. PG & Rico The Giant)	\N	\N	original	\N	1
tt1380155	Minnie the Moocher	\N	\N	original	\N	1
tt1380155	Minnie the Moocher	US	\N	imdbDisplay	\N	0
tt10779734	Episode #1.67	\N	\N	original	\N	1
tt10779734	Episódio #1.67	PT	pt	\N	\N	0
tt10779734	एपिसोड #1.67	IN	hi	\N	\N	0
tt10779734	Épisode #1.67	FR	fr	\N	\N	0
tt10779734	Episodio #1.67	IT	it	\N	\N	0
tt10779734	Folge #1.67	DE	de	\N	\N	0
tt10779734	エピソード #1.67	JP	ja	\N	\N	0
tt10779734	Episodio #1.67	ES	es	\N	\N	0
tt12129522	Episode #1.205	\N	\N	original	\N	1
tt12129522	Episódio #1.205	PT	pt	\N	\N	0
tt12129522	एपिसोड #1.205	IN	hi	\N	\N	0
tt12129522	Épisode #1.205	FR	fr	\N	\N	0
tt12129522	Episodio #1.205	IT	it	\N	\N	0
tt12129522	Folge #1.205	DE	de	\N	\N	0
tt12129522	エピソード #1.205	JP	ja	\N	\N	0
tt12129522	Episodio #1.205	ES	es	\N	\N	0
tt2134439	National Mayhem 2011	\N	\N	original	\N	1
tt2134439	National Mayhem 2011	CA	\N	\N	\N	0
tt11258434	Episode #1.775	\N	\N	original	\N	1
tt11258434	Episódio #1.775	PT	pt	\N	\N	0
tt11258434	एपिसोड #1.775	IN	hi	\N	\N	0
tt11258434	Épisode #1.775	FR	fr	\N	\N	0
tt11258434	Episodio #1.775	IT	it	\N	\N	0
tt11258434	Folge #1.775	DE	de	\N	\N	0
tt11258434	エピソード #1.775	JP	ja	\N	\N	0
tt11258434	Episodio #1.775	ES	es	\N	\N	0
tt1649437	Voitures automobiles	\N	\N	original	\N	1
tt1649437	Voitures automobiles	DE	\N	imdbDisplay	\N	0
tt1649437	Voitures automobiles	FR	\N	imdbDisplay	\N	0
tt4268058	Episode #1.75	\N	\N	original	\N	1
tt4268058	Episódio #1.75	PT	pt	\N	\N	0
tt4268058	एपिसोड #1.75	IN	hi	\N	\N	0
tt4268058	Épisode #1.75	FR	fr	\N	\N	0
tt4268058	Episodio #1.75	IT	it	\N	\N	0
tt4268058	Folge #1.75	DE	de	\N	\N	0
tt4268058	エピソード #1.75	JP	ja	\N	\N	0
tt4268058	Episodio #1.75	ES	es	\N	\N	0
tt34766855	Episode #1.3019	\N	\N	original	\N	1
tt34766855	Episódio #1.3019	PT	pt	\N	\N	0
tt34766855	एपिसोड #1.3019	IN	hi	\N	\N	0
tt34766855	Épisode #1.3019	FR	fr	\N	\N	0
tt34766855	Episodio #1.3019	IT	it	\N	\N	0
tt34766855	Folge #1.3019	DE	de	\N	\N	0
tt34766855	エピソード #1.3019	JP	ja	\N	\N	0
tt34766855	Episodio #1.3019	ES	es	\N	\N	0
tt31835154	Amsterdam Empire	\N	\N	original	\N	1
tt31835154	Amsterdam Empire	ES	\N	imdbDisplay	\N	0
tt31835154	Amsterdam Empire	GB	\N	imdbDisplay	\N	0
tt31835154	Amsterdam Empire	JP	ja	imdbDisplay	\N	0
tt31835154	Amsterdam Empire	MX	\N	imdbDisplay	\N	0
tt31835154	Amsterdam Empire	US	\N	imdbDisplay	\N	0
tt31835154	Amsterdam Empire	NL	\N	\N	\N	0
tt19299112	Episode #13.97	\N	\N	original	\N	1
tt19299112	Episódio #13.97	PT	pt	\N	\N	0
tt19299112	एपिसोड #13.97	IN	hi	\N	\N	0
tt19299112	Épisode #13.97	FR	fr	\N	\N	0
tt19299112	Episodio #13.97	IT	it	\N	\N	0
tt19299112	Folge #13.97	DE	de	\N	\N	0
tt19299112	エピソード #13.97	JP	ja	\N	\N	0
tt19299112	Episodio #13.97	ES	es	\N	\N	0
tt13547672	Episode #1.1	\N	\N	original	\N	1
tt13547672	Episódio #1.1	PT	pt	\N	\N	0
tt13547672	एपिसोड #1.1	IN	hi	\N	\N	0
tt13547672	Épisode #1.1	FR	fr	\N	\N	0
tt13547672	Episodio #1.1	IT	it	\N	\N	0
tt13547672	Folge #1.1	DE	de	\N	\N	0
tt13547672	エピソード #1.1	JP	ja	\N	\N	0
tt13547672	Episodio #1.1	ES	es	\N	\N	0
tt6557360	Kim and I	\N	\N	original	\N	1
tt6557360	Kim and I	US	\N	imdbDisplay	\N	0
tt10354428	Episode #1.102	\N	\N	original	\N	1
tt10354428	Episódio #1.102	PT	pt	\N	\N	0
tt10354428	एपिसोड #1.102	IN	hi	\N	\N	0
tt10354428	Épisode #1.102	FR	fr	\N	\N	0
tt10354428	Episodio #1.102	IT	it	\N	\N	0
tt10354428	Folge #1.102	DE	de	\N	\N	0
tt10354428	エピソード #1.102	JP	ja	\N	\N	0
tt10354428	Episodio #1.102	ES	es	\N	\N	0
tt26916649	Episode #1.209	\N	\N	original	\N	1
tt26916649	Episódio #1.209	PT	pt	\N	\N	0
tt26916649	एपिसोड #1.209	IN	hi	\N	\N	0
tt26916649	Épisode #1.209	FR	fr	\N	\N	0
tt26916649	Episodio #1.209	IT	it	\N	\N	0
tt26916649	Folge #1.209	DE	de	\N	\N	0
tt26916649	エピソード #1.209	JP	ja	\N	\N	0
tt26916649	Episodio #1.209	ES	es	\N	\N	0
tt3369484	Working Boy	\N	\N	original	\N	1
tt15247144	Episode #1.947	\N	\N	original	\N	1
tt15247144	Episódio #1.947	PT	pt	\N	\N	0
tt15247144	एपिसोड #1.947	IN	hi	\N	\N	0
tt15247144	Épisode #1.947	FR	fr	\N	\N	0
tt15247144	Episodio #1.947	IT	it	\N	\N	0
tt15247144	Folge #1.947	DE	de	\N	\N	0
tt15247144	エピソード #1.947	JP	ja	\N	\N	0
tt15247144	Episodio #1.947	ES	es	\N	\N	0
tt35351398	Episode #1.69	\N	\N	original	\N	1
tt35351398	Episódio #1.69	PT	pt	\N	\N	0
tt35351398	एपिसोड #1.69	IN	hi	\N	\N	0
tt35351398	Folge #1.69	DE	de	\N	\N	0
tt35351398	エピソード #1.69	JP	ja	\N	\N	0
tt35351398	Episodio #1.69	ES	es	\N	\N	0
tt0973143	Episode #31.24	\N	\N	original	\N	1
tt0973143	Episódio #31.24	PT	pt	\N	\N	0
tt0973143	एपिसोड #31.24	IN	hi	\N	\N	0
tt0973143	Épisode #31.24	FR	fr	\N	\N	0
tt0973143	Episodio #31.24	IT	it	\N	\N	0
tt0973143	Folge #31.24	DE	de	\N	\N	0
tt0973143	エピソード #31.24	JP	ja	\N	\N	0
tt0973143	Episodio #31.24	ES	es	\N	\N	0
tt22783318	Episode #2.14	\N	\N	original	\N	1
tt22783318	Episódio #2.14	PT	pt	\N	\N	0
tt22783318	एपिसोड #2.14	IN	hi	\N	\N	0
tt22783318	Épisode #2.14	FR	fr	\N	\N	0
tt22783318	Episodio #2.14	IT	it	\N	\N	0
tt22783318	Folge #2.14	DE	de	\N	\N	0
tt22783318	エピソード #2.14	JP	ja	\N	\N	0
tt22783318	Episodio #2.14	ES	es	\N	\N	0
tt1983546	Devils, Wombats & Roos	\N	\N	original	\N	1
tt17320254	Cannabelle	\N	\N	original	\N	1
tt17320254	Cannabelle	US	\N	\N	\N	0
tt11173828	Episode #1.13	\N	\N	original	\N	1
tt11173828	Episódio #1.13	PT	pt	\N	\N	0
tt11173828	एपिसोड #1.13	IN	hi	\N	\N	0
tt11173828	Épisode #1.13	FR	fr	\N	\N	0
tt11173828	Episodio #1.13	IT	it	\N	\N	0
tt11173828	Folge #1.13	DE	de	\N	\N	0
tt11173828	エピソード #1.13	JP	ja	\N	\N	0
tt11173828	Episodio #1.13	ES	es	\N	\N	0
tt9032410	Mind of Fear	\N	\N	original	\N	1
tt9032410	Mind of Fear	US	\N	\N	\N	0
tt15526260	Feet Are a Battlefield	\N	\N	original	\N	1
tt12968796	Trump Drops His 2nd Term Agenda And Any Sane Person Would Agree With It, I Now Plan To Vote Trump	\N	\N	original	\N	1
tt2666112	Hollywood Hair	\N	\N	original	\N	1
tt2666112	Hollywood Hair	US	\N	imdbDisplay	\N	0
tt32103424	Episode #1.19	\N	\N	original	\N	1
tt32103424	Episódio #1.19	PT	pt	\N	\N	0
tt32103424	एपिसोड #1.19	IN	hi	\N	\N	0
tt32103424	Épisode #1.19	FR	fr	\N	\N	0
tt32103424	Episodio #1.19	IT	it	\N	\N	0
tt32103424	Folge #1.19	DE	de	\N	\N	0
tt32103424	エピソード #1.19	JP	ja	\N	\N	0
tt32103424	Episodio #1.19	ES	es	\N	\N	0
tt12362468	2009/10: 19/9/09	\N	\N	original	\N	1
tt24666788	Episode #1.561	\N	\N	original	\N	1
tt24666788	Episódio #1.561	PT	pt	\N	\N	0
tt24666788	एपिसोड #1.561	IN	hi	\N	\N	0
tt24666788	Épisode #1.561	FR	fr	\N	\N	0
tt24666788	Episodio #1.561	IT	it	\N	\N	0
tt24666788	Folge #1.561	DE	de	\N	\N	0
tt24666788	エピソード #1.561	JP	ja	\N	\N	0
tt24666788	Episodio #1.561	ES	es	\N	\N	0
tt7374892	Judith Light/Tina Campbell	\N	\N	original	\N	1
tt26628211	Grammata kai arithmoi	\N	\N	original	\N	1
tt26628211	Grammata kai arithmoi	GR	\N	\N	\N	0
tt11971386	Episode #1.403	\N	\N	original	\N	1
tt11971386	Episódio #1.403	PT	pt	\N	\N	0
tt11971386	एपिसोड #1.403	IN	hi	\N	\N	0
tt11971386	Épisode #1.403	FR	fr	\N	\N	0
tt11971386	Episodio #1.403	IT	it	\N	\N	0
tt11971386	Folge #1.403	DE	de	\N	\N	0
tt11971386	エピソード #1.403	JP	ja	\N	\N	0
tt11971386	Episodio #1.403	ES	es	\N	\N	0
tt12480920	Episode #1.4476	\N	\N	original	\N	1
tt12480920	Episódio #1.4476	PT	pt	\N	\N	0
tt12480920	एपिसोड #1.4476	IN	hi	\N	\N	0
tt12480920	Épisode #1.4476	FR	fr	\N	\N	0
tt12480920	Episodio #1.4476	IT	it	\N	\N	0
tt12480920	Folge #1.4476	DE	de	\N	\N	0
tt12480920	エピソード #1.4476	JP	ja	\N	\N	0
tt12480920	Episodio #1.4476	ES	es	\N	\N	0
tt35661309	Aphmau Plays Cupid	\N	\N	original	\N	1
tt3833682	Tinker'	\N	\N	original	\N	1
tt3833682	Tinker'	AU	\N	imdbDisplay	\N	0
tt3833682	Tinker'	CA	en	imdbDisplay	\N	0
tt3833682	Tinker'	CA	fr	imdbDisplay	\N	0
tt3833682	Tinker'	ES	\N	imdbDisplay	\N	0
tt3833682	Tinker'	GB	\N	imdbDisplay	\N	0
tt3833682	Tinker'	US	\N	imdbDisplay	\N	0
tt3833682	O Diário Secreto	BR	\N	tv	\N	0
tt29426348	At Issue with Mark Welp	\N	\N	original	\N	1
tt29426348	At Issue with Mark Welp	US	\N	\N	\N	0
tt5890218	The Boundaries Within	\N	\N	original	\N	1
tt5890218	À Margem de Nós Mesmos	\N	\N	alternative	\N	0
tt5890218	À Margem de Nós Mesmos	BR	\N	alternative	\N	0
tt5890218	The Boundaries Within	BR	\N	imdbDisplay	\N	0
tt5890218	The Boundaries Within	XWW	en	imdbDisplay	\N	0
tt7820026	Kaoyaku to bakudan musume	\N	\N	original	\N	1
tt7820026	Boss and the Explosive Daughter	XWW	en	alternative	\N	0
tt7820026	Leader of the Bomb Girls	XWW	en	alternative	\N	0
tt7820026	顔役と爆弾娘	JP	ja	imdbDisplay	\N	0
tt0652431	En viaje soñado	\N	\N	original	\N	1
tt0652431	En viaje soñado	MD	\N	\N	\N	0
tt13740204	Episode #1.2505	\N	\N	original	\N	1
tt13740204	Episódio #1.2505	PT	pt	\N	\N	0
tt13740204	एपिसोड #1.2505	IN	hi	\N	\N	0
tt13740204	Épisode #1.2505	FR	fr	\N	\N	0
tt13740204	Episodio #1.2505	IT	it	\N	\N	0
tt13740204	Folge #1.2505	DE	de	\N	\N	0
tt13740204	エピソード #1.2505	JP	ja	\N	\N	0
tt13740204	Episodio #1.2505	ES	es	\N	\N	0
tt27034988	Episode #1.1084	\N	\N	original	\N	1
tt27034988	Episódio #1.1084	PT	pt	\N	\N	0
tt27034988	एपिसोड #1.1084	IN	hi	\N	\N	0
tt27034988	Épisode #1.1084	FR	fr	\N	\N	0
tt27034988	Episodio #1.1084	IT	it	\N	\N	0
tt27034988	Folge #1.1084	DE	de	\N	\N	0
tt27034988	エピソード #1.1084	JP	ja	\N	\N	0
tt27034988	Episodio #1.1084	ES	es	\N	\N	0
tt11382658	A Weekend in Scarecrow Park	\N	\N	original	\N	1
tt35289244	Episode #5.15	\N	\N	original	\N	1
tt35289244	Episódio #5.15	PT	pt	\N	\N	0
tt35289244	एपिसोड #5.15	IN	hi	\N	\N	0
tt35289244	Épisode #5.15	FR	fr	\N	\N	0
tt35289244	Episodio #5.15	IT	it	\N	\N	0
tt35289244	Folge #5.15	DE	de	\N	\N	0
tt35289244	エピソード #5.15	JP	ja	\N	\N	0
tt35289244	Episodio #5.15	ES	es	\N	\N	0
tt20236540	Episode #4.119	\N	\N	original	\N	1
tt20236540	Episódio #4.119	PT	pt	\N	\N	0
tt20236540	एपिसोड #4.119	IN	hi	\N	\N	0
tt20236540	Épisode #4.119	FR	fr	\N	\N	0
tt20236540	Episodio #4.119	IT	it	\N	\N	0
tt20236540	Folge #4.119	DE	de	\N	\N	0
tt20236540	エピソード #4.119	JP	ja	\N	\N	0
tt20236540	Episodio #4.119	ES	es	\N	\N	0
tt16403092	Episode dated 17 December 2021	\N	\N	original	\N	1
tt16403092	Episódio datado de 17 Dezembro de 2021	PT	pt	\N	\N	0
tt16403092	17 दिसम्बर 2021 को प्रसारित एपिसोड	IN	hi	\N	\N	0
tt16403092	Épisode datant du 17 décembre 2021	FR	fr	\N	\N	0
tt16403092	Episodio datato 17 dicembre 2021	IT	it	\N	\N	0
tt16403092	Folge vom 17. Dezember 2021	DE	de	\N	\N	0
tt16403092	2021年12月17日 のエピソード	JP	ja	\N	\N	0
tt16403092	Episodio fechado 17 diciembre 2021	ES	es	\N	\N	0
tt8060214	Episode #1.26	\N	\N	original	\N	1
tt8060214	Episódio #1.26	PT	pt	\N	\N	0
tt8060214	एपिसोड #1.26	IN	hi	\N	\N	0
tt8060214	Épisode #1.26	FR	fr	\N	\N	0
tt8060214	Episodio #1.26	IT	it	\N	\N	0
tt8060214	Folge #1.26	DE	de	\N	\N	0
tt8060214	エピソード #1.26	JP	ja	\N	\N	0
tt8060214	Episodio #1.26	ES	es	\N	\N	0
tt33413595	Episode #2.5	\N	\N	original	\N	1
tt33413595	Episódio #2.5	PT	pt	\N	\N	0
tt33413595	एपिसोड #2.5	IN	hi	\N	\N	0
tt33413595	Épisode #2.5	FR	fr	\N	\N	0
tt33413595	Episodio #2.5	IT	it	\N	\N	0
tt33413595	Folge #2.5	DE	de	\N	\N	0
tt33413595	エピソード #2.5	JP	ja	\N	\N	0
tt33413595	Episodio #2.5	ES	es	\N	\N	0
tt10008500	Episode #1.2	\N	\N	original	\N	1
tt10008500	Episódio #1.2	PT	pt	\N	\N	0
tt10008500	एपिसोड #1.2	IN	hi	\N	\N	0
tt10008500	Épisode #1.2	FR	fr	\N	\N	0
tt10008500	Episodio #1.2	IT	it	\N	\N	0
tt10008500	Folge #1.2	DE	de	\N	\N	0
tt10008500	エピソード #1.2	JP	ja	\N	\N	0
tt10008500	Episodio #1.2	ES	es	\N	\N	0
tt20912518	Huggy Wuggy Has a Baby! Kissy Missy is Pregnant! Poppy Playtime Animation	\N	\N	original	\N	1
tt8688978	Wiosno wrócisz?	\N	\N	original	\N	1
tt8688978	Wiosno wrócisz?	PL	\N	\N	\N	0
tt8341294	Episode #1.57	\N	\N	original	\N	1
tt8341294	Episódio #1.57	PT	pt	\N	\N	0
tt8341294	एपिसोड #1.57	IN	hi	\N	\N	0
tt8341294	Épisode #1.57	FR	fr	\N	\N	0
tt8341294	Episodio #1.57	IT	it	\N	\N	0
tt8341294	Folge #1.57	DE	de	\N	\N	0
tt8341294	エピソード #1.57	JP	ja	\N	\N	0
tt8341294	Episodio #1.57	ES	es	\N	\N	0
tt4503454	Episode #5.4	\N	\N	original	\N	1
tt4503454	Episódio #5.4	PT	pt	\N	\N	0
tt4503454	एपिसोड #5.4	IN	hi	\N	\N	0
tt4503454	Épisode #5.4	FR	fr	\N	\N	0
tt4503454	Episodio #5.4	IT	it	\N	\N	0
tt4503454	Folge #5.4	DE	de	\N	\N	0
tt4503454	エピソード #5.4	JP	ja	\N	\N	0
tt4503454	Episodio #5.4	ES	es	\N	\N	0
tt6721530	Reifenwechsel auf zwei Rädern	\N	\N	original	\N	1
tt10501086	Episode #1.574	\N	\N	original	\N	1
tt10501086	Episódio #1.574	PT	pt	\N	\N	0
tt10501086	एपिसोड #1.574	IN	hi	\N	\N	0
tt10501086	Épisode #1.574	FR	fr	\N	\N	0
tt10501086	Episodio #1.574	IT	it	\N	\N	0
tt10501086	Folge #1.574	DE	de	\N	\N	0
tt10501086	エピソード #1.574	JP	ja	\N	\N	0
tt10501086	Episodio #1.574	ES	es	\N	\N	0
tt3271034	Flirting or Coquetry	\N	\N	original	\N	1
tt3271034	Flirting or Coquetry	US	\N	imdbDisplay	\N	0
tt16295072	All About Nimrat Kaur	\N	\N	original	\N	1
tt1141875	Episode #1.11	\N	\N	original	\N	1
tt1141875	Episódio #1.11	PT	pt	\N	\N	0
tt1141875	एपिसोड #1.11	IN	hi	\N	\N	0
tt1141875	Épisode #1.11	FR	fr	\N	\N	0
tt1141875	Episodio #1.11	IT	it	\N	\N	0
tt1141875	Folge #1.11	DE	de	\N	\N	0
tt1141875	エピソード #1.11	JP	ja	\N	\N	0
tt1141875	Episodio #1.11	ES	es	\N	\N	0
tt0535347	Episode dated 18 June 1983	\N	\N	original	\N	1
tt0535347	Episódio datado de 18 Junho de 1983	PT	pt	\N	\N	0
tt0535347	18 जून 1983 को प्रसारित एपिसोड	IN	hi	\N	\N	0
tt0535347	Épisode datant du 18 juin 1983	FR	fr	\N	\N	0
tt0535347	Episodio datato 18 giugno 1983	IT	it	\N	\N	0
tt0535347	Folge vom 18. Juni 1983	DE	de	\N	\N	0
tt0535347	1983年6月18日 のエピソード	JP	ja	\N	\N	0
tt0535347	Episodio fechado 18 junio 1983	ES	es	\N	\N	0
tt5267136	Episode dated 8 December 2015	\N	\N	original	\N	1
tt5267136	Episódio datado de 8 Dezembro de 2015	PT	pt	\N	\N	0
tt5267136	8 दिसम्बर 2015 को प्रसारित एपिसोड	IN	hi	\N	\N	0
tt5267136	Épisode datant du 8 décembre 2015	FR	fr	\N	\N	0
tt5267136	Episodio datato 8 dicembre 2015	IT	it	\N	\N	0
tt5267136	Folge vom 8. Dezember 2015	DE	de	\N	\N	0
tt5267136	2015年12月8日 のエピソード	JP	ja	\N	\N	0
tt5267136	Episodio fechado 8 diciembre 2015	ES	es	\N	\N	0
tt35616254	Episode #1.861	\N	\N	original	\N	1
tt35616254	Episódio #1.861	PT	pt	\N	\N	0
tt35616254	एपिसोड #1.861	IN	hi	\N	\N	0
tt35616254	Épisode #1.861	FR	fr	\N	\N	0
tt35616254	Episodio #1.861	IT	it	\N	\N	0
tt35616254	Folge #1.861	DE	de	\N	\N	0
tt35616254	エピソード #1.861	JP	ja	\N	\N	0
tt35616254	Episodio #1.861	ES	es	\N	\N	0
tt20190372	Episode #1.69	\N	\N	original	\N	1
tt20190372	Episódio #1.69	PT	pt	\N	\N	0
tt20190372	एपिसोड #1.69	IN	hi	\N	\N	0
tt20190372	Épisode #1.69	FR	fr	\N	\N	0
tt20190372	Episodio #1.69	IT	it	\N	\N	0
tt20190372	Folge #1.69	DE	de	\N	\N	0
tt20190372	エピソード #1.69	JP	ja	\N	\N	0
tt20190372	Episodio #1.69	ES	es	\N	\N	0
tt22471238	Designing the Prolific Game	\N	\N	original	\N	1
tt22471238	Designing the Prolific Game	GB	\N	\N	\N	0
tt2265025	Episode #1.72	\N	\N	original	\N	1
tt2265025	Episódio #1.72	PT	pt	\N	\N	0
tt2265025	एपिसोड #1.72	IN	hi	\N	\N	0
tt2265025	Épisode #1.72	FR	fr	\N	\N	0
tt2265025	Episodio #1.72	IT	it	\N	\N	0
tt2265025	Folge #1.72	DE	de	\N	\N	0
tt2265025	エピソード #1.72	JP	ja	\N	\N	0
tt2265025	Episodio #1.72	ES	es	\N	\N	0
tt0988679	Jupitersinfonie	\N	\N	original	\N	1
tt0988679	Jupitersinfonie	DDDE	\N	imdbDisplay	\N	0
tt9174832	Piloto	\N	\N	original	\N	1
tt9174832	Piloto	ES	\N	\N	\N	0
tt6822284	Campus Connection	\N	\N	original	\N	1
tt6822284	Campus Connection	US	\N	imdbDisplay	\N	0
tt1003213	Yao yuan de ai	\N	\N	original	\N	1
tt1003213	Amour lointain	FR	\N	imdbDisplay	\N	0
tt1003213	Yao yuan de ai	CN	\N	\N	\N	0
tt3509392	Episode #2.1	\N	\N	original	\N	1
tt3509392	Episódio #2.1	PT	pt	\N	\N	0
tt3509392	एपिसोड #2.1	IN	hi	\N	\N	0
tt3509392	Épisode #2.1	FR	fr	\N	\N	0
tt3509392	Episodio #2.1	IT	it	\N	\N	0
tt3509392	Folge #2.1	DE	de	\N	\N	0
tt3509392	エピソード #2.1	JP	ja	\N	\N	0
tt3509392	Episodio #2.1	ES	es	\N	\N	0
tt16973386	Episode #1.2189	\N	\N	original	\N	1
tt16973386	Episódio #1.2189	PT	pt	\N	\N	0
tt16973386	एपिसोड #1.2189	IN	hi	\N	\N	0
tt16973386	Épisode #1.2189	FR	fr	\N	\N	0
tt16973386	Episodio #1.2189	IT	it	\N	\N	0
tt16973386	Folge #1.2189	DE	de	\N	\N	0
tt16973386	エピソード #1.2189	JP	ja	\N	\N	0
tt16973386	Episodio #1.2189	ES	es	\N	\N	0
tt11655708	Episode #13.227	\N	\N	original	\N	1
tt11655708	Episódio #13.227	PT	pt	\N	\N	0
tt11655708	एपिसोड #13.227	IN	hi	\N	\N	0
tt11655708	Épisode #13.227	FR	fr	\N	\N	0
tt11655708	Episodio #13.227	IT	it	\N	\N	0
tt11655708	Folge #13.227	DE	de	\N	\N	0
tt11655708	エピソード #13.227	JP	ja	\N	\N	0
tt11655708	Episodio #13.227	ES	es	\N	\N	0
tt2657846	Ismael	\N	\N	original	\N	1
tt2657846	Ismael	MX	\N	imdbDisplay	\N	0
tt1583044	Episode dated 5 May 2005	\N	\N	original	\N	1
tt1583044	Episódio datado de 5 Maio de 2005	PT	pt	\N	\N	0
tt1583044	5 मई 2005 को प्रसारित एपिसोड	IN	hi	\N	\N	0
tt1583044	Épisode datant du 5 mai 2005	FR	fr	\N	\N	0
tt1583044	Episodio datato 5 maggio 2005	IT	it	\N	\N	0
tt1583044	Folge vom 5. Mai 2005	DE	de	\N	\N	0
tt1583044	2005年5月5日 のエピソード	JP	ja	\N	\N	0
tt1583044	Episodio fechado 5 mayo 2005	ES	es	\N	\N	0
tt28153227	Truffle Pig	\N	\N	original	\N	1
tt28153227	Truffle Pig	NZ	\N	\N	\N	0
tt8378948	Episode #1.62	\N	\N	original	\N	1
tt8378948	Episódio #1.62	PT	pt	\N	\N	0
tt8378948	एपिसोड #1.62	IN	hi	\N	\N	0
tt8378948	Épisode #1.62	FR	fr	\N	\N	0
tt8378948	Episodio #1.62	IT	it	\N	\N	0
tt8378948	Folge #1.62	DE	de	\N	\N	0
tt8378948	エピソード #1.62	JP	ja	\N	\N	0
tt8378948	Episodio #1.62	ES	es	\N	\N	0
tt32622133	Sarkaar 4 Episode 7	\N	\N	original	\N	1
tt32622133	Sarkaar 4 Episode 7	IN	\N	\N	\N	0
tt3191942	Episode dated 16 November 2006	\N	\N	original	\N	1
tt3191942	Episódio datado de 16 Novembro de 2006	PT	pt	\N	\N	0
tt3191942	16 नवम्बर 2006 को प्रसारित एपिसोड	IN	hi	\N	\N	0
tt3191942	Épisode datant du 16 novembre 2006	FR	fr	\N	\N	0
tt3191942	Episodio datato 16 novembre 2006	IT	it	\N	\N	0
tt3191942	Folge vom 16. November 2006	DE	de	\N	\N	0
tt3191942	2006年11月16日 のエピソード	JP	ja	\N	\N	0
tt3191942	Episodio fechado 16 noviembre 2006	ES	es	\N	\N	0
tt0433570	Hilary's Roman Adventure	\N	\N	original	\N	1
tt0433570	Hilary's Roman Adventure	US	\N	imdbDisplay	\N	0
tt13337830	Episode #1.407	\N	\N	original	\N	1
tt13337830	Episódio #1.407	PT	pt	\N	\N	0
tt13337830	एपिसोड #1.407	IN	hi	\N	\N	0
tt13337830	Épisode #1.407	FR	fr	\N	\N	0
tt13337830	Episodio #1.407	IT	it	\N	\N	0
tt13337830	Folge #1.407	DE	de	\N	\N	0
tt13337830	エピソード #1.407	JP	ja	\N	\N	0
tt13337830	Episodio #1.407	ES	es	\N	\N	0
tt0278788	Uchchi Veyil	\N	\N	original	\N	1
tt0278788	High Noon	XWW	en	\N	\N	0
tt0278788	Uchchi Veyil	IN	\N	\N	\N	0
tt12570470	Kiraneya in: The Secret Powers of Kiraneya	\N	\N	original	\N	1
tt15196124	Exploding Weed Seeds (28,546 fps Slow Motion)	\N	\N	original	\N	1
tt7915840	Cain's Island	\N	\N	original	\N	1
tt7915840	Cain's Island	IT	\N	\N	\N	0
tt14060846	Episode dated 15 February 2021	\N	\N	original	\N	1
tt14060846	Episódio datado de 15 Fevereiro de 2021	PT	pt	\N	\N	0
tt14060846	15 फ़रवरी 2021 को प्रसारित एपिसोड	IN	hi	\N	\N	0
tt14060846	Épisode datant du 15 février 2021	FR	fr	\N	\N	0
tt14060846	Episodio datato 15 febbraio 2021	IT	it	\N	\N	0
tt14060846	Folge vom 15. Februar 2021	DE	de	\N	\N	0
tt14060846	2021年2月15日 のエピソード	JP	ja	\N	\N	0
tt14060846	Episodio fechado 15 febrero 2021	ES	es	\N	\N	0
tt11483678	Morning Into Night	\N	\N	original	\N	1
tt11483678	Morning Into Night	US	\N	imdbDisplay	\N	0
tt1916818	The Heist	\N	\N	original	\N	1
tt2196723	Episode dated 10 November 1950	\N	\N	original	\N	1
tt2196723	Episódio datado de 10 Novembro de 1950	PT	pt	\N	\N	0
tt2196723	10 नवम्बर 1950 को प्रसारित एपिसोड	IN	hi	\N	\N	0
tt2196723	Épisode datant du 10 novembre 1950	FR	fr	\N	\N	0
tt2196723	Episodio datato 10 novembre 1950	IT	it	\N	\N	0
tt2196723	Folge vom 10. November 1950	DE	de	\N	\N	0
tt2196723	1950年11月10日 のエピソード	JP	ja	\N	\N	0
tt2196723	Episodio fechado 10 noviembre 1950	ES	es	\N	\N	0
tt13508726	Episode #1.118	\N	\N	original	\N	1
tt13508726	Episódio #1.118	PT	pt	\N	\N	0
tt13508726	एपिसोड #1.118	IN	hi	\N	\N	0
tt13508726	Épisode #1.118	FR	fr	\N	\N	0
tt13508726	Episodio #1.118	IT	it	\N	\N	0
tt13508726	Folge #1.118	DE	de	\N	\N	0
tt13508726	エピソード #1.118	JP	ja	\N	\N	0
tt13508726	Episodio #1.118	ES	es	\N	\N	0
tt30246749	Episode #1.172	\N	\N	original	\N	1
tt30246749	Episódio #1.172	PT	pt	\N	\N	0
tt30246749	एपिसोड #1.172	IN	hi	\N	\N	0
tt30246749	Épisode #1.172	FR	fr	\N	\N	0
tt30246749	Episodio #1.172	IT	it	\N	\N	0
tt30246749	Folge #1.172	DE	de	\N	\N	0
tt30246749	エピソード #1.172	JP	ja	\N	\N	0
tt30246749	Episodio #1.172	ES	es	\N	\N	0
tt8491464	Episode #1.117	\N	\N	original	\N	1
tt8491464	Episódio #1.117	PT	pt	\N	\N	0
tt8491464	एपिसोड #1.117	IN	hi	\N	\N	0
tt8491464	Épisode #1.117	FR	fr	\N	\N	0
tt8491464	Episodio #1.117	IT	it	\N	\N	0
tt8491464	Folge #1.117	DE	de	\N	\N	0
tt8491464	エピソード #1.117	JP	ja	\N	\N	0
tt8491464	Episodio #1.117	ES	es	\N	\N	0
tt1956753	Episode dated 4 November 1999	\N	\N	original	\N	1
tt1956753	Episódio datado de 4 Novembro de 1999	PT	pt	\N	\N	0
tt1956753	4 नवम्बर 1999 को प्रसारित एपिसोड	IN	hi	\N	\N	0
tt1956753	Épisode datant du 4 novembre 1999	FR	fr	\N	\N	0
tt1956753	Episodio datato 4 novembre 1999	IT	it	\N	\N	0
tt1956753	Folge vom 4. November 1999	DE	de	\N	\N	0
tt1956753	1999年11月4日 のエピソード	JP	ja	\N	\N	0
tt1956753	Episodio fechado 4 noviembre 1999	ES	es	\N	\N	0
tt2502264	Carefree Coastal Living in Tarifa, Spain	\N	\N	original	\N	1
tt14528300	Episode #1.25	\N	\N	original	\N	1
tt14528300	Episódio #1.25	PT	pt	\N	\N	0
tt14528300	एपिसोड #1.25	IN	hi	\N	\N	0
tt14528300	Épisode #1.25	FR	fr	\N	\N	0
tt14528300	Episodio #1.25	IT	it	\N	\N	0
tt14528300	Folge #1.25	DE	de	\N	\N	0
tt14528300	エピソード #1.25	JP	ja	\N	\N	0
tt14528300	Episodio #1.25	ES	es	\N	\N	0
tt4318198	Junglee Sherni	\N	\N	original	\N	1
tt4318198	Jungle Lioness	GB	\N	imdbDisplay	\N	0
tt4318198	Jungle Lioness	US	\N	imdbDisplay	\N	0
tt4318198	Jungle Lioness	XWW	en	imdbDisplay	\N	0
tt4318198	Junglee Sherni	IN	en	imdbDisplay	\N	0
tt5989082	Der Unfall	\N	\N	original	\N	1
tt5989082	Der Unfall	DE	\N	\N	\N	0
tt2314165	Jumalaa ei ole	\N	\N	original	\N	1
tt14435270	Episode #1.211	\N	\N	original	\N	1
tt14435270	Episódio #1.211	PT	pt	\N	\N	0
tt14435270	एपिसोड #1.211	IN	hi	\N	\N	0
tt14435270	Épisode #1.211	FR	fr	\N	\N	0
tt14435270	Episodio #1.211	IT	it	\N	\N	0
tt14435270	Folge #1.211	DE	de	\N	\N	0
tt14435270	エピソード #1.211	JP	ja	\N	\N	0
tt14435270	Episodio #1.211	ES	es	\N	\N	0
tt11788230	Episode #1.185	\N	\N	original	\N	1
tt11788230	Episódio #1.185	PT	pt	\N	\N	0
tt11788230	एपिसोड #1.185	IN	hi	\N	\N	0
tt11788230	Épisode #1.185	FR	fr	\N	\N	0
tt11788230	Episodio #1.185	IT	it	\N	\N	0
tt11788230	Folge #1.185	DE	de	\N	\N	0
tt11788230	エピソード #1.185	JP	ja	\N	\N	0
tt11788230	Episodio #1.185	ES	es	\N	\N	0
tt1284952	Captain Hooks and Aborigines	\N	\N	original	\N	1
tt31182969	Iki Balkon	\N	\N	original	\N	1
tt31182969	Iki Balkon	TR	\N	\N	\N	0
tt1199264	Trick and Treat	\N	\N	original	\N	1
tt27485673	TRAPPED IN THE ATTIC BY AN OBSESSED FAN!	\N	\N	original	\N	1
tt23771282	Teaching Theme Park People How to Paint - The Rogue Attraction	\N	\N	original	\N	1
tt33306826	Temple at Oklahoma	\N	\N	original	\N	1
tt33043193	The Perfect Day in Hollywood Studios Has Changed -- Lightning Lane Multi Pass	\N	\N	original	\N	1
tt29077591	Episode #1.327	\N	\N	original	\N	1
tt29077591	Episódio #1.327	PT	pt	\N	\N	0
tt29077591	एपिसोड #1.327	IN	hi	\N	\N	0
tt29077591	Épisode #1.327	FR	fr	\N	\N	0
tt29077591	Episodio #1.327	IT	it	\N	\N	0
tt29077591	Folge #1.327	DE	de	\N	\N	0
tt29077591	エピソード #1.327	JP	ja	\N	\N	0
tt29077591	Episodio #1.327	ES	es	\N	\N	0
tt0117784	Sunset Park	\N	\N	original	\N	1
tt0117784	L'allenatrice	IT	\N	\N	\N	0
tt0117784	L'équipe du collège	CA	fr	\N	\N	0
tt0117784	Liceul Sunset Park	RO	\N	\N	\N	0
tt0117784	Oi psiloi tou Brooklyn	GR	\N	video	\N	0
tt0117784	Sunset Park (Lecciones para ganar)	ES	\N	imdbDisplay	\N	0
tt0117784	Sunset Park: Una historia de ganadores	AR	\N	imdbDisplay	\N	0
tt0117784	The Coach	JP	en	video	\N	0
tt0117784	Парк Сансет	RU	\N	imdbDisplay	\N	0
tt0117784	Сънсет Парк	BG	bg	imdbDisplay	\N	0
tt0117784	Sunset Park	AU	\N	imdbDisplay	\N	0
tt0117784	Sunset Park	CA	en	imdbDisplay	\N	0
tt0117784	Sunset Park	EC	\N	imdbDisplay	\N	0
tt0117784	Sunset Park	US	\N	imdbDisplay	\N	0
tt0117784	Cara A Cara	BR	\N	imdbDisplay	\N	0
tt0117784	Coach	GB	\N	imdbDisplay	\N	0
tt0117784	Czarodziejka	PL	\N	imdbDisplay	\N	0
tt0117784	Égimeszelés	HU	\N	\N	\N	0
tt6335768	The Lone Wolf's Nightmare vs. Casey's Too Tall Lake House	\N	\N	original	\N	1
tt8621708	The Romance of Crime Fiction	\N	\N	original	\N	1
tt2044311	Episode dated 15 July 1997	\N	\N	original	\N	1
tt2044311	Episódio datado de 15 Julho de 1997	PT	pt	\N	\N	0
tt2044311	15 जुलाई 1997 को प्रसारित एपिसोड	IN	hi	\N	\N	0
tt2044311	Épisode datant du 15 juillet 1997	FR	fr	\N	\N	0
tt2044311	Episodio datato 15 luglio 1997	IT	it	\N	\N	0
tt2044311	Folge vom 15. Juli 1997	DE	de	\N	\N	0
tt2044311	1997年7月15日 のエピソード	JP	ja	\N	\N	0
tt2044311	Episodio fechado 15 julio 1997	ES	es	\N	\N	0
tt12304568	Episode dated 28 June 2006	\N	\N	original	\N	1
tt12304568	Episódio datado de 28 Junho de 2006	PT	pt	\N	\N	0
tt12304568	28 जून 2006 को प्रसारित एपिसोड	IN	hi	\N	\N	0
tt12304568	Épisode datant du 28 juin 2006	FR	fr	\N	\N	0
tt12304568	Episodio datato 28 giugno 2006	IT	it	\N	\N	0
tt12304568	Folge vom 28. Juni 2006	DE	de	\N	\N	0
tt12304568	2006年6月28日 のエピソード	JP	ja	\N	\N	0
tt12304568	Episodio fechado 28 junio 2006	ES	es	\N	\N	0
tt0614110	Ottumwa 52501	\N	\N	original	\N	1
tt0614110	Ottumwa 52501	US	\N	\N	\N	0
tt12111948	Eggs - Scrambled Eggs	\N	\N	original	\N	1
tt12111948	Eggs - Scrambled Eggs	AU	\N	\N	\N	0
tt1999822	Afghanistan, un état impossible?	\N	\N	original	\N	1
tt1999822	Afghanistan, un état impossible?	FR	\N	imdbDisplay	\N	0
tt4048860	Episode #1.9	\N	\N	original	\N	1
tt4048860	Episódio #1.9	PT	pt	\N	\N	0
tt4048860	एपिसोड #1.9	IN	hi	\N	\N	0
tt4048860	Épisode #1.9	FR	fr	\N	\N	0
tt4048860	Episodio #1.9	IT	it	\N	\N	0
tt4048860	Folge #1.9	DE	de	\N	\N	0
tt4048860	エピソード #1.9	JP	ja	\N	\N	0
tt4048860	Episodio #1.9	ES	es	\N	\N	0
\.


--
-- Data for Name: crew; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.crew (title_id, person_id, category, job, characters) FROM stdin;
tt4238836	nm1653294	self	\N	["Self - Co-Host"]
tt4238836	nm3123756	self	\N	["Self - Substitute Host"]
tt4238836	nm4227919	archive_sound	\N	["Self - New England Patriots"]
tt4238836	nm2118348	archive_footage	\N	["Self - New Orleans Saints Quarterback"]
tt4238836	nm4331956	archive_footage	\N	["Self - Washington Redkins Quarterback"]
tt4238836	nm6208249	archive_footage	\N	["Self - Washington Redkins Head Coach"]
tt4238836	nm1707986	self	\N	["Self - ESPN NFL Analyst"]
tt4238836	nm2713913	self	\N	["Self - Adrian Peterson's Attorney"]
tt4238836	nm1772667	self	\N	["Self - ESPN College Football Analyst"]
tt4238836	nm2388297	self	\N	["Self - His & Hers"]
tt20918690	nm13764610	actor	\N	["CIS Student"]
tt20918690	nm13764609	actor	\N	["CIS Site Coordinator"]
tt20918690	nm3332905	director	\N	\N
tt20918690	nm3332905	writer	\N	\N
tt20918690	nm8128804	producer	producer	\N
tt20918690	nm1484579	cinematographer	\N	\N
tt20918690	nm2105820	cinematographer	\N	\N
tt20918690	nm0868893	editor	\N	\N
tt35020055	nm0863906	self	\N	["Self - Host"]
tt12364528	nm2008973	actor	\N	["Bao Zheng"]
tt12364528	nm4477010	actress	\N	["Yin Yurou"]
tt12364528	nm0152061	actor	\N	["Zhao Heng - Emperor Zhenzong of Song Dynasty"]
tt12364528	nm2887021	actress	\N	["Sister-in-law of Bao Zheng"]
tt12364528	nm1279288	actor	\N	["Wang Yanling"]
tt12364528	nm5296606	actress	\N	["Liu E - Empress"]
tt12364528	nm5296606	actress	\N	["Empress Dowager"]
tt12364528	nm10802084	actor	\N	["Xia Huaimin"]
tt12364528	nm3302241	actor	\N	["Zhang Delin"]
tt12364528	nm2867494	actress	\N	["Qiao Yun"]
tt12364528	nm5576428	actor	\N	["Eighth Royal Highness"]
tt32667897	nm16066063	self	\N	["Self - Anchor"]
tt32667897	nm5022085	self	\N	["Self - Meteorologist"]
tt32667897	nm16283824	self	\N	["Self - Anchor"]
tt32667897	nm16066064	self	\N	["Self - Sportscaster"]
tt33317334	nm0898904	self	\N	["Self - Host"]
tt33317334	nm1674838	self	\N	["Self - Egghead"]
tt33317334	nm4014706	self	\N	["Self - Egghead"]
tt33317334	nm1668492	self	\N	["Self - Egghead"]
tt33317334	nm1675785	self	\N	["Self - Egghead"]
tt33317334	nm3320328	self	\N	["Self - Egghead"]
tt29059237	nm0288734	self	\N	["Self"]
tt29059237	nm0674002	self	\N	["Self - Host"]
tt29059237	nm1054839	director	\N	\N
tt29059237	nm0459379	writer	\N	\N
tt29059237	nm1054839	producer	producer	\N
tt29059237	nm0321053	composer	composer	\N
tt7539072	nm9361657	actor	\N	["The boy"]
tt7539072	nm6190849	actress	\N	["(voice)"]
tt7539072	nm6190848	actor	\N	["(voice)"]
tt7539072	nm0667942	actress	\N	["The lady"]
tt7539072	nm6961991	actor	\N	["Drug addicted"]
tt7539072	nm0188173	director	\N	\N
tt7539072	nm2854099	writer	\N	\N
tt7539072	nm0188173	producer	producer	\N
tt7539072	nm6976611	composer	\N	\N
tt7539072	nm0188173	cinematographer	\N	\N
tt4006356	nm0539016	self	\N	["Self - Host"]
tt4006356	nm16582723	writer	\N	\N
tt4006356	nm1493956	producer	producer	\N
tt2772922	nm4316297	self	\N	["Self - Host"]
tt2772922	nm5570570	director	\N	\N
tt2772922	nm4339540	writer	written by	\N
tt2772922	nm4316297	writer	written by	\N
tt2772922	nm3964161	cinematographer	\N	\N
tt2772922	nm11330933	cinematographer	\N	\N
tt2772922	nm7717908	cinematographer	\N	\N
tt2772922	nm3960006	editor	\N	\N
tt27766765	nm1486329	director	\N	\N
tt27766765	nm1486329	writer	\N	\N
tt27766765	nm6170554	producer	producer	\N
tt27766765	nm2986340	producer	producer	\N
tt27766765	nm1486329	cinematographer	\N	\N
tt27766765	nm1486329	editor	\N	\N
tt28537546	nm15094953	self	\N	["Self"]
tt28537546	nm15107699	self	\N	["Self"]
tt28537546	nm8212108	director	\N	\N
tt28537546	nm15103126	writer	collaborating writer	\N
tt28537546	nm8212108	writer	written by	\N
tt28537546	nm15094956	producer	producer	\N
tt28537546	nm15094957	producer	producer	\N
tt28537546	nm15103788	producer	producer	\N
tt28537546	nm15094959	cinematographer	cinematographer	\N
tt28537546	nm2726816	cinematographer	cinematographer	\N
tt28537546	nm2726816	editor	\N	\N
tt7408744	nm2174052	self	\N	["Self - Co-Host"]
tt7408744	nm2822590	self	\N	["Self - Co-Host"]
tt7408744	nm1805680	self	\N	["Self - Guest Co-Hostess"]
tt7408744	nm2020618	self	\N	["Self - Guest Co-Hostess"]
tt7408744	nm8642561	self	\N	["Self - Guest Co-Hostess"]
tt7408744	nm4083495	self	\N	["Self"]
tt7408744	nm8355596	producer	producer	\N
tt7408744	nm1052949	editor	editor	\N
tt15246970	nm12882781	self	\N	["Self"]
tt15246970	nm12882775	self	\N	["Self"]
tt15246970	nm12882778	self	\N	["Self"]
tt15246970	nm12882777	self	\N	["Self"]
tt15246970	nm12882771	self	\N	["Self"]
tt15246970	nm12882773	self	\N	["Self"]
tt15246970	nm12882780	self	\N	["Self"]
tt15246970	nm12960928	actress	\N	["Cafeteria Worker"]
tt15246970	nm12882774	self	\N	["Self"]
tt15246970	nm12882772	self	\N	["Self"]
tt15246970	nm2217296	director	\N	\N
tt15246970	nm7308920	cinematographer	\N	\N
tt15246970	nm1209355	editor	\N	\N
tt15246970	nm2776283	editor	\N	\N
tt15246970	nm1604151	editor	\N	\N
tt15246970	nm8900560	editor	\N	\N
tt10638084	nm5571966	self	\N	["Self - Host"]
tt9095990	nm2310344	actress	\N	["Verónica Ferreiro"]
tt9095990	nm3039689	actor	\N	["Piero"]
tt9095990	nm3039557	actor	\N	["Gílmer"]
tt9095990	nm2148989	actress	\N	["Laly"]
tt9095990	nm0107669	actress	\N	["Eugenia"]
tt9095990	nm3039446	actress	\N	["Jimena"]
tt9095990	nm3026260	actor	\N	["Alejandro"]
tt9095990	nm3039902	actor	\N	["César"]
tt9095990	nm1881231	actress	\N	\N
tt9095990	nm3025005	actress	\N	\N
tt9095990	nm1941476	director	\N	\N
tt9095990	nm2306184	director	\N	\N
tt9095990	nm1940343	writer	writer	\N
tt9095990	nm1942911	writer	dialogue	\N
tt9095990	nm2306184	writer	idea	\N
tt9095990	nm1938402	writer	dialogue	\N
tt9095990	nm1938788	producer	producer	\N
tt9095990	nm2306184	producer	producer	\N
tt9095990	nm3039793	composer	\N	\N
tt9095990	nm1582184	cinematographer	\N	\N
tt9095990	nm2316128	cinematographer	\N	\N
tt9095990	nm3039714	cinematographer	\N	\N
tt9095990	nm1516927	editor	\N	\N
tt0556919	nm0001654	actor	\N	["George Vest"]
tt0556919	nm0001654	actor	\N	["Self-Host"]
tt0556919	nm0177927	actor	\N	["Carter Johnson"]
tt0556919	nm0490961	actor	\N	["Judge"]
tt0556919	nm0600525	actor	\N	["Andrew Cody"]
tt0556919	nm0829558	actress	\N	["Mrs. Cody"]
tt0556919	nm0958451	actor	\N	["Sheriff"]
tt0556919	nm0111754	actor	\N	["Defense Attorney Collins"]
tt0556919	nm0259984	actor	\N	["Jury Foreman"]
tt0556919	nm0495396	actor	\N	["Joe Harper"]
tt0556919	nm0929116	actor	\N	["Dr. William Porter"]
tt0556919	nm0428195	director	\N	\N
tt0556919	nm2526029	writer	written by	\N
tt0556919	nm0820921	producer	producer	\N
tt0556919	nm0804165	composer	\N	\N
tt0556919	nm0192157	cinematographer	director of photography	\N
tt0556919	nm0182746	editor	\N	\N
tt0556919	nm0357619	casting_director	\N	\N
tt23811384	nm3884847	actress	\N	\N
tt23811384	nm11613030	actress	\N	\N
tt23811384	nm12098816	actress	\N	\N
tt23811384	nm7168699	actress	\N	\N
tt1717440	nm2651723	actress	\N	["Balsa"]
tt1717440	nm1135060	actor	\N	["Chagum"]
tt1717440	nm0875335	actor	\N	["Tanda"]
tt1717440	nm0038351	actress	\N	["Touya"]
tt1717440	nm1209923	actress	\N	["Saya"]
tt1717440	nm1203697	actor	\N	["Shuga"]
tt1717440	nm0411112	actor	\N	["Seidôshi"]
tt1717440	nm1054043	actor	\N	["The Emperor"]
tt1717440	nm1305522	actor	\N	["Mon"]
tt1717440	nm0648768	actor	\N	["Jin"]
tt1717440	nm2559182	director	\N	\N
tt1717440	nm0436784	director	\N	\N
tt1717440	nm4396873	director	director	\N
tt1717440	nm2282696	director	director	\N
tt1717440	nm0436784	writer	screenplay	\N
tt1717440	nm0715532	writer	adr script writer	\N
tt1717440	nm1371924	writer	\N	\N
tt1717440	nm2650961	writer	based on the novel by	\N
tt1717440	nm0559403	producer	producer	\N
tt1717440	nm2650602	producer	producer	\N
tt1717440	nm1754696	producer	producer	\N
tt1717440	nm0442766	composer	\N	\N
tt1717440	nm2013149	composer	\N	\N
tt1717440	nm1881467	cinematographer	director of photography	\N
tt1717440	nm0879963	editor	editor	\N
tt15080802	nm10625204	actor	\N	\N
tt15080802	nm1748770	actress	\N	\N
tt15080802	nm10625203	actress	\N	\N
tt15080802	nm11667265	director	\N	\N
tt15080802	nm11238208	writer	\N	\N
tt15080802	nm7933716	cinematographer	\N	\N
tt15080802	nm12640067	editor	\N	\N
tt2098935	nm2939921	actor	\N	["Quinn"]
tt2098935	nm4062075	actor	\N	["Judge Ross"]
tt2098935	nm4105334	actor	\N	["Bailiff"]
tt2098935	nm1487328	director	\N	\N
tt2098935	nm7038578	producer	producer	\N
tt2098935	nm2500582	producer	producer	\N
tt2098935	nm7038582	producer	producer	\N
tt2098935	nm3605609	producer	producer	\N
tt2098935	nm3353847	editor	\N	\N
tt2098935	nm1487328	editor	\N	\N
tt2098935	nm4104183	editor	\N	\N
tt33501010	nm5381994	self	\N	["Self - Co-Anchor"]
tt33501010	nm16548257	self	\N	["Self - Chief Meteorologist"]
tt33501010	nm16545593	self	\N	["Self - Sports Director"]
tt33501010	nm10505531	self	\N	["Self - Co-Anchor"]
tt1661414	nm3883377	self	\N	["Self - Presenter"]
tt1661414	nm3935530	self	\N	["Self - Presenter"]
tt1661414	nm2500933	director	\N	\N
tt1661414	nm3935530	producer	producer	\N
tt1661414	nm2500933	producer	producer	\N
tt1661414	nm2500933	cinematographer	\N	\N
tt1661414	nm2500933	editor	\N	\N
tt3381528	nm1778383	actor	\N	["Marcus"]
tt3381528	nm7517557	actress	\N	["Lilith"]
tt3381528	nm7822715	actress	\N	["Vanessa Price"]
tt3381528	nm6352041	actress	\N	["Searna Summers"]
tt3381528	nm5607513	actor	\N	["The Hunter"]
tt3381528	nm7822714	actress	\N	["Victoria Park"]
tt3381528	nm7822717	actress	\N	["Kat Hunter"]
tt3381528	nm7822713	actress	\N	["Hayley Montague"]
tt3381528	nm7815959	actor	\N	["Darius"]
tt3381528	nm7712117	actress	\N	["Natasha Lovecraft"]
tt3381528	nm5607513	director	\N	\N
tt3381528	nm5607513	writer	\N	\N
tt2159401	nm0005300	actor	\N	["C.J. Payne"]
tt2159401	nm1741905	actor	\N	["Curtis Payne"]
tt2159401	nm0204322	actress	\N	["Ella Payne"]
tt2159401	nm2342614	actor	\N	["Calvin Payne"]
tt2159401	nm2351246	actress	\N	["Janine Payne"]
tt2159401	nm0700443	actress	\N	["Miranda Payne"]
tt2159401	nm3204110	actor	\N	["Jeremy"]
tt2159401	nm1442928	actor	\N	["Deshawn"]
tt2159401	nm2950889	actor	\N	["Floyd"]
tt2159401	nm0934569	actor	\N	["T-Bone"]
tt2159401	nm1347153	director	\N	\N
tt2159401	nm3872614	writer	head writer	\N
tt2159401	nm4465556	writer	written by	\N
tt2159401	nm1347153	writer	creator	\N
tt2159401	nm3884187	producer	producer	\N
tt2159401	nm1725195	producer	producer	\N
tt2159401	nm6035510	editor	editor	\N
tt2159401	nm1253715	production_designer	\N	\N
tt2623294	nm0221046	actress	\N	["Jess Day"]
tt2623294	nm2159926	actor	\N	["Nick Miller"]
tt2623294	nm0339011	actor	\N	["Schmidt"]
tt2623294	nm2031358	actor	\N	["Winston Bishop"]
tt2623294	nm1924196	actress	\N	["Cece Parekh"]
tt2623294	nm1682319	actor	\N	["Edgar"]
tt2623294	nm0875641	actor	\N	["Martin"]
tt2623294	nm0123307	actress	\N	["Old Woman"]
tt2623294	nm0566931	actor	\N	["Ben"]
tt2623294	nm4263976	actress	\N	["Susie"]
tt2623294	nm1119645	director	\N	\N
tt2623294	nm2057975	writer	created by	\N
tt2623294	nm2072419	writer	written by	\N
tt2623294	nm2485374	writer	staff writer	\N
tt2623294	nm3106135	writer	staff writer	\N
tt2623294	nm0221046	producer	producer	\N
tt2623294	nm1503347	producer	producer	\N
tt2623294	nm2747257	producer	producer	\N
tt2623294	nm2057975	producer	executive producer	\N
tt2623294	nm3234869	composer	\N	\N
tt2623294	nm0022540	cinematographer	director of photography	\N
tt2623294	nm0580919	editor	\N	\N
tt2623294	nm0079056	casting_director	original casting director	\N
tt2623294	nm0172837	casting_director	\N	\N
tt2623294	nm1217440	casting_director	casting_director	\N
tt2623294	nm0946134	casting_director	original casting director	\N
tt2623294	nm0924115	production_designer	\N	\N
tt3361504	nm1493738	self	\N	["Self - Host"]
tt3361504	nm0717603	self	\N	["Self - Tafeldame"]
tt3361504	nm5665307	self	\N	["Self - Professor Moleculaire Oncologie"]
tt3361504	nm5327644	self	\N	["Self - Professor Economie VU"]
tt3361504	nm3947531	self	\N	["Self - Professor Theoretische Sterrenkunde"]
tt3361504	nm2626926	self	\N	["Self - Historicus"]
tt3361504	nm6115267	self	\N	["Self - Professor Nederlandse Gebarentaal UvA"]
tt3361504	nm0771795	composer	composer	\N
tt2833904	nm1598782	actor	\N	["Postman Pat"]
tt2833904	nm1598782	actor	\N	["Alf Thompson"]
tt2833904	nm1598782	actor	\N	["PC Selby"]
tt2833904	nm0101724	actress	\N	["Sara Clifton"]
tt2833904	nm0101724	actress	\N	["Mrs. Goggins"]
tt2833904	nm0315792	actor	\N	["Ajay Bains"]
tt2833904	nm2094033	actress	\N	["Julian Clifton"]
tt2833904	nm1249885	actress	\N	["Jess"]
tt2833904	nm0382506	actor	\N	["Various"]
tt2833904	nm0852123	director	\N	\N
tt2833904	nm2693805	writer	\N	\N
tt2833904	nm1789524	writer	series written	\N
tt2833904	nm1103739	producer	producer	\N
tt2833904	nm1378720	composer	composer	\N
tt2833904	nm2261339	composer	\N	\N
tt1584588	nm0703033	self	\N	["Self - Host"]
tt1584588	nm0240904	actor	\N	["Tom"]
tt1584588	nm0365786	actor	\N	["Jonathan"]
tt1584588	nm0397968	actor	\N	["Julian"]
tt1584588	nm0721573	actor	\N	["Faversham"]
tt1584588	nm0114268	producer	producer	\N
tt4205818	nm6823045	self	\N	["Self"]
tt7337888	nm0063232	actress	\N	["Trinidad Solovera (2011)"]
tt7337888	nm1336858	actress	\N	["Beatriz Solovera (2011)"]
tt7337888	nm1344955	actor	\N	["Juan Pablo Marticorena (2011)"]
tt7337888	nm3640898	actress	\N	["Esperanza Reyes (2011)"]
tt7337888	nm1416766	actress	\N	["Carmen Salazar (2011)"]
tt7337888	nm1450550	director	\N	\N
tt7337888	nm1452091	director	\N	\N
tt7337888	nm1419678	writer	written by	\N
tt7245680	nm0001170	self	\N	["Self - Host"]
tt7245680	nm0736411	self	\N	["Self - Host"]
tt26738850	nm14565416	actress	\N	["Lu Fang Ning [Young] ("]
tt26738850	nm5340022	actress	\N	["Lu Yue [Fang Ning's elder sister]"]
tt26738850	nm11166239	actress	\N	["Yu Shi Yi [Ling Rui's ex-classmate]"]
tt26738850	nm10306095	actor	\N	["Ling Rui"]
tt26738850	nm12702759	actress	\N	["[Ling Rui's mother]"]
tt26738850	nm14565418	actress	\N	["Assistant Jin"]
tt26738850	nm14565413	actress	\N	["Ling Yun Zhi [Ling Rui's eldest aunt]"]
tt26738850	nm9909666	actress	\N	["Tang Ping [Fang Ning's Frenemy]"]
tt26738850	nm10968648	actor	\N	["Peng Bo"]
tt26738850	nm10968648	actor	\N	["Juan Mao [Ling Rui's colleague]"]
tt26738850	nm11065938	actor	\N	["Assistant He"]
tt26738850	nm11549914	director	\N	\N
tt26738850	nm14273109	writer	\N	\N
tt26738850	nm11788480	writer	\N	\N
tt26738850	nm11549917	writer	\N	\N
tt26738850	nm11363999	producer	producer	\N
tt2192472	nm0392223	self	\N	["Self - Host"]
tt5829304	nm6530360	actress	\N	["Angel"]
tt5829304	nm6530360	actress	\N	["Gianna"]
tt5829304	nm6530360	actress	\N	["Zee"]
tt5829304	nm1242903	actress	\N	["Diedre Wrayne"]
tt5829304	nm1748530	actress	\N	["Black Harpy, Screamer of the Night"]
tt5829304	nm4646844	actress	\N	["The Frenemy"]
tt5829304	nm5430687	self	\N	["Self"]
tt14405152	nm6548767	actor	\N	["Sonny Slick"]
tt14405152	nm12468252	actor	\N	["Kurtis Bow"]
tt14405152	nm2090697	actor	\N	["Ray Haynes"]
tt14405152	nm10167268	actress	\N	["Sarah Kent"]
tt14405152	nm12468253	actor	\N	["Tommy Hammer"]
tt14405152	nm9849143	director	\N	\N
tt14405152	nm9849143	writer	screenplay	\N
tt14405152	nm6548767	producer	producer	\N
tt14405152	nm10208880	producer	producer	\N
tt14405152	nm2090697	producer	producer	\N
tt14405152	nm9849143	producer	producer	\N
tt14405152	nm11577142	composer	composer	\N
tt14405152	nm10208880	cinematographer	cinematographer	\N
tt14405152	nm10208880	editor	\N	\N
tt1998664	nm0163132	actress	\N	["Trudy Tack de Rixart de Waremme"]
tt1998664	nm5352461	actress	\N	["Verpleegster ziekenhuis"]
tt1998664	nm0221400	actor	\N	["Jan Van den Bossche"]
tt1998664	nm0311639	actress	\N	["Anna Dierckx"]
tt1998664	nm0427366	actress	\N	["Marie-Rose De Putter"]
tt1998664	nm0480911	actress	\N	["Rita Van den Bossche"]
tt1998664	nm0505447	actor	\N	["Peter Van den Bossche"]
tt1998664	nm0535434	actress	\N	["Mieke Van den Bossche"]
tt1998664	nm1009315	actor	\N	["Bart Van den Bossche"]
tt1998664	nm1012401	actress	\N	["Linda Desmet"]
tt1998664	nm1234589	director	\N	\N
tt1998664	nm1041792	director	\N	\N
tt1998664	nm1041858	writer	creator	\N
tt9748862	nm0237754	self	\N	["Self"]
tt9748862	nm3154869	self	\N	["Self"]
tt9748862	nm2018761	self	\N	["Self - Host"]
tt9748862	nm2189240	self	\N	["Self - Cook"]
tt3892090	nm3269739	actress	\N	["Female host"]
tt3892090	nm4447770	actor	\N	["Male host"]
tt3892090	nm2802539	director	\N	\N
tt3892090	nm2441363	producer	producer	\N
tt3892090	nm3855726	cinematographer	cinematographer	\N
tt3892090	nm3816059	editor	\N	\N
tt3892090	nm3268880	editor	\N	\N
tt11852564	nm2977423	actress	\N	\N
tt11852564	nm9959637	actress	\N	\N
tt11852564	nm11303437	actor	\N	\N
tt13870356	nm0929506	self	\N	["Self - Host"]
tt13870356	nm0929506	writer	created by	\N
tt1410265	nm0775812	actress	\N	["Lilli Lemcke"]
tt1410265	nm0937239	actor	\N	["Sebastian Vollenbrinck"]
tt1410265	nm0369264	actor	\N	["Klaus Böger"]
tt1410265	nm0632431	actor	\N	["Bernd Lemcke"]
tt1410265	nm0035532	actor	\N	["Gerd Grauberg"]
tt1410265	nm0013865	actress	\N	["Bärbel Dubois"]
tt1410265	nm1679805	actress	\N	["Yvonne Kurz"]
tt1410265	nm2563931	actress	\N	["Melanie Weber"]
tt1410265	nm0378914	actress	\N	["Rosa Lemcke"]
tt1410265	nm0477909	actor	\N	["Gaston Dubois"]
tt9851424	nm0317307	actress	\N	["Svetlana Bannerjee"]
tt9851424	nm0536821	actress	\N	["Ranjana Devi"]
tt9851424	nm1123937	actor	\N	["Rishabh Malhotra"]
tt9851424	nm1122077	actor	\N	["Karan"]
tt9851424	nm0048075	actor	\N	["Sunil (1995)"]
tt9851424	nm1024997	actor	\N	["Mahen Malhotra"]
tt9851424	nm0709359	actor	\N	["Tyagi (1995)"]
tt9851424	nm0969505	actress	\N	["Nishi Malhotra (1995)"]
tt9851424	nm0890622	actress	\N	["Devika (1995)"]
tt9851424	nm1690549	actress	\N	["Medha (1995)"]
tt9851424	nm0080315	director	\N	\N
tt9851424	nm0212544	writer	\N	\N
tt9851424	nm1199935	writer	\N	\N
tt9851424	nm0002695	producer	producer	\N
tt4727818	nm3743634	self	\N	["Self"]
tt4727818	nm7341617	self	\N	["Self"]
tt4727818	nm4420364	actress	\N	["The Bride"]
tt4727818	nm3743634	director	\N	\N
tt4727818	nm3743634	writer	\N	\N
tt4727818	nm7341617	writer	\N	\N
tt4727818	nm3743634	editor	\N	\N
tt10819096	nm2186650	actor	\N	\N
tt10819096	nm10919702	actress	\N	\N
tt10819096	nm9033171	director	\N	\N
tt8543800	nm2962727	actress	\N	["Hanna"]
tt8543800	nm0257969	actress	\N	["Marissa"]
tt8543800	nm1172478	actor	\N	["Erik"]
tt8543800	nm0852965	actor	\N	["Dr. Kunek"]
tt8543800	nm10441597	actress	\N	["Girl 242"]
tt8543800	nm5188575	actress	\N	["Girl 217"]
tt8543800	nm8356463	actress	\N	["Girl 249"]
tt8543800	nm3342825	actress	\N	["Carlsson"]
tt8543800	nm1465245	actor	\N	["Utrax Security Officer Jones"]
tt8543800	nm2043234	actor	\N	["Jerome Sawyer"]
tt8543800	nm0257775	director	\N	\N
tt8543800	nm1016333	writer	written by	\N
tt8543800	nm2605946	writer	based on the feature film written by	\N
tt8543800	nm2222681	producer	producer	\N
tt8543800	nm0057856	composer	\N	\N
tt8543800	nm1367927	composer	\N	\N
tt8543800	nm0666089	cinematographer	director of photography	\N
tt8543800	nm1551349	editor	\N	\N
tt8543800	nm0047071	casting_director	\N	\N
tt8543800	nm1552475	casting_director	casting_director	\N
tt8543800	nm1980860	production_designer	\N	\N
tt1503241	nm0570364	actor	\N	["Jeff Winger"]
tt1503241	nm1843026	actress	\N	["Britta Perry"]
tt1503241	nm2209821	actor	\N	["Abed Nadir"]
tt1503241	nm1304328	actress	\N	["Shirley Bennett"]
tt1503241	nm1555340	actress	\N	["Annie Edison"]
tt1503241	nm2255973	actor	\N	["Troy Barnes"]
tt1503241	nm0421822	actor	\N	["Ben Chang"]
tt1503241	nm0000331	actor	\N	["Pierce Hawthorne"]
tt1503241	nm0711110	actor	\N	["Dean Pelton"]
tt1503241	nm3112016	actress	\N	["Nervous Girl"]
tt1503241	nm0751648	director	\N	\N
tt1503241	nm1363595	writer	created by	\N
tt1503241	nm1560199	writer	story editor	\N
tt1503241	nm1819732	producer	producer	\N
tt1503241	nm0452527	producer	producer	\N
tt1503241	nm3799159	producer	producer	\N
tt1503241	nm3234869	composer	\N	\N
tt1503241	nm0370258	cinematographer	director of photography	\N
tt1503241	nm0116714	editor	\N	\N
tt1503241	nm0906601	casting_director	casting_director	\N
tt1503241	nm0384192	production_designer	\N	\N
tt0645345	nm0263496	actor	\N	["Dr. Joe Gannon"]
tt0645345	nm0198446	actor	\N	["Dr. Paul Lochner"]
tt0645345	nm0750640	actress	\N	["Claire"]
tt0645345	nm0001049	actress	\N	["Beverly Welton"]
tt0645345	nm0093780	actor	\N	["Assistant Doctor"]
tt0645345	nm0121826	actor	\N	["Bill Welton"]
tt0645345	nm0132930	actor	\N	["Marvin"]
tt0645345	nm0404533	actress	\N	["Nurse Courtland"]
tt0645345	nm0446205	actress	\N	["Mona"]
tt0645345	nm0449919	actor	\N	["Intern"]
tt0645345	nm0068691	director	\N	\N
tt0645345	nm0322819	writer	created by	\N
tt0645345	nm0911350	writer	created by	\N
tt0645345	nm0109608	writer	story consultant	\N
tt0645345	nm0207520	writer	story	\N
tt0645345	nm0738835	composer	\N	\N
tt0645345	nm0686642	cinematographer	\N	\N
tt0645345	nm0347739	editor	\N	\N
tt6233038	nm5581186	actor	\N	["Fortunato Soccorso"]
tt6233038	nm7270373	actress	\N	["Stoya Giugliani"]
tt6233038	nm3266446	actor	\N	["Giorgio"]
tt6233038	nm7285211	actress	\N	["Giuditta (2014)"]
tt6233038	nm4780646	actor	\N	["Francesco Maria"]
tt6233038	nm1400021	actor	\N	["Ektor"]
tt6233038	nm3701770	director	\N	\N
tt6233038	nm3275885	writer	\N	\N
tt6233038	nm3701770	writer	\N	\N
tt6233038	nm4423923	writer	\N	\N
tt6233038	nm5142166	composer	\N	\N
tt6233038	nm4215706	cinematographer	\N	\N
tt6233038	nm3701770	editor	\N	\N
tt7597456	nm7554748	actress	\N	\N
tt6073012	nm7275953	actor	\N	\N
tt6073012	nm8447014	actress	\N	\N
tt12549086	nm6425163	self	\N	["Self"]
tt12549086	nm6425163	director	\N	\N
tt12549086	nm6425163	writer	\N	\N
tt12549086	nm6425163	producer	producer	\N
tt14835916	nm5741914	self	\N	["Self - Host"]
tt14835916	nm5741914	director	\N	\N
tt14835916	nm5741914	writer	\N	\N
tt14835916	nm5741914	producer	producer	\N
tt14835916	nm5741914	editor	\N	\N
tt4864042	nm5366343	actress	\N	\N
tt11590702	nm1110046	self	\N	["Self - Host"]
tt11590702	nm2046042	self	\N	["Self - Commentator"]
tt11590702	nm3043098	self	\N	["Self - Announcer"]
tt11590702	nm3043472	self	\N	["Self - Lifeguard"]
tt11590702	nm3041633	self	\N	["Self - Lifeguard"]
tt11590702	nm4846029	self	\N	["Self"]
tt11590702	nm0453629	self	\N	["Self"]
tt22262504	nm14077321	actor	\N	\N
tt22262504	nm2499006	director	\N	\N
tt22262504	nm2499006	writer	\N	\N
tt22262504	nm1549110	producer	producer	\N
tt22262504	nm8422096	composer	\N	\N
tt22262504	nm2499006	cinematographer	\N	\N
tt22262504	nm2499006	editor	\N	\N
tt7438896	nm5402972	actress	\N	\N
tt7438896	nm0634553	actor	\N	\N
tt31414623	nm0844483	actor	\N	["Miklós Berényi"]
tt31414623	nm0889717	actress	\N	["Dr. Nóra Balogh"]
tt31414623	nm0863091	actor	\N	["László Novák"]
tt31414623	nm1380781	actress	\N	["Dr. Orsolya Ferenczy"]
tt31414623	nm0455633	actor	\N	["Imre Balassa"]
tt31414623	nm0222064	actress	\N	["Andrea Szilágyi"]
tt31414623	nm1886300	actress	\N	["Emma Harmathy"]
tt31414623	nm0302036	actor	\N	["Richárd Mátyás"]
tt31414623	nm1536926	actress	\N	["Kinga Nádor"]
tt31414623	nm1333780	actor	\N	["Antal Egresi"]
tt31414623	nm0617352	director	\N	\N
tt31414623	nm1907944	writer	\N	\N
tt31414623	nm1153649	writer	\N	\N
tt31414623	nm2139195	writer	\N	\N
tt31414623	nm14776121	writer	\N	\N
tt31414623	nm0435492	producer	producer	\N
tt31414623	nm0813749	composer	\N	\N
tt5776374	nm8188518	actress	\N	["The Woman"]
tt5776374	nm8188519	actress	\N	["Young Woman's Hand"]
tt5776374	nm8188520	actor	\N	["Young Man's Hand"]
tt5776374	nm8161794	director	\N	\N
tt5776374	nm8161798	writer	\N	\N
tt5776374	nm8161798	producer	producer	\N
tt5776374	nm8161794	cinematographer	\N	\N
tt5776374	nm8161794	editor	\N	\N
tt10095516	nm0558244	self	\N	["Self - Co-Host"]
tt10095516	nm0558950	self	\N	["Self - Co-Host"]
tt10095516	nm3730556	self	\N	["Self - Guest Co-Host"]
tt10095516	nm1336827	self	\N	["Self"]
tt10095516	nm0038680	self	\N	["Self"]
tt10095516	nm6037609	self	\N	["Self"]
tt10095516	nm2664965	self	\N	["Self"]
tt10095516	nm1722972	self	\N	["Self"]
tt10095516	nm10663934	self	\N	["Self"]
tt10095516	nm10663935	self	\N	["Self - Founder, Shoes That Fit"]
tt10095516	nm1237855	producer	producer	\N
tt10095516	nm3785921	producer	producer	\N
tt10095516	nm5400795	producer	producer	\N
tt10095516	nm5332631	producer	producer	\N
tt11922202	nm0284586	actor	\N	["Sluleka Lee"]
tt11922202	nm11720868	actress	\N	["Cebisa"]
tt11922202	nm0389415	writer	created by	\N
tt11922202	nm10476404	writer	written by	\N
tt11922202	nm10476405	writer	story editor	\N
tt11922202	nm1974030	writer	head writer	\N
tt11922202	nm0813401	composer	\N	\N
tt9694538	nm3056725	actor	\N	\N
tt9694538	nm1385118	actor	\N	\N
tt9694538	nm0315928	actress	\N	\N
tt9694538	nm0611540	actor	\N	\N
tt9694538	nm10472054	actor	\N	["Arjun"]
tt9694538	nm5974300	director	series director	\N
tt9694538	nm5054027	producer	producer	\N
tt6573900	nm4078056	director	\N	\N
tt6573900	nm4078056	writer	\N	\N
tt6573900	nm4078056	producer	producer	\N
tt29455600	nm0453385	self	\N	["Self"]
tt30331769	nm1719908	actress	\N	\N
tt30331769	nm15446309	actress	\N	\N
tt30331769	nm15446312	actor	\N	\N
tt30331769	nm11890086	actress	\N	\N
tt30331769	nm0707496	actor	\N	\N
tt30331769	nm15446311	actor	\N	\N
tt30331769	nm15446313	actor	\N	\N
tt30331769	nm15446314	actor	\N	\N
tt30331769	nm1182564	actor	\N	\N
tt30331769	nm10952186	actor	\N	\N
tt30331769	nm5727175	director	\N	\N
tt30331769	nm11118786	writer	\N	\N
tt30331769	nm15567241	writer	\N	\N
tt30331769	nm15250096	writer	\N	\N
tt30331769	nm11490209	writer	\N	\N
tt30331769	nm3586914	producer	producer	\N
tt30331769	nm11498437	cinematographer	\N	\N
tt30331769	nm15250100	editor	\N	\N
tt30331769	nm11498438	editor	\N	\N
tt28480766	nm11800181	self	\N	["Self - Host"]
tt28480766	nm11800181	director	\N	\N
tt28480766	nm11800181	writer	creator	\N
tt28480766	nm11800181	producer	producer	\N
tt28480766	nm13610000	cinematographer	\N	\N
tt7864088	nm8337341	self	\N	["Self - Host"]
tt7864088	nm9549722	self	\N	["Self - Caller Who Asks About Fasting"]
tt2949894	nm0436642	actor	\N	["Satoshi Itomura"]
tt2949894	nm1845696	actor	\N	["Keiichi Yokoyama"]
tt2949894	nm0644678	actor	\N	["Kaneko"]
tt2949894	nm0632761	actor	\N	["Sosuke morita"]
tt2949894	nm1040533	actor	\N	["Shigeru Muraki"]
tt2949894	nm0411721	actor	\N	["Tomigashi"]
tt2949894	nm4017258	actor	\N	["Domoto"]
tt2949894	nm3242973	actor	\N	["Horiuchi"]
tt2949894	nm0946580	actor	\N	["Sakuma"]
tt2949894	nm1102301	actor	\N	["Nagase"]
tt2949894	nm2715049	director	\N	\N
tt2949894	nm3412794	writer	teleplay	\N
tt2949894	nm1487461	producer	producer	\N
tt2949894	nm2556582	producer	producer	\N
tt2949894	nm4311686	producer	producer	\N
tt2949894	nm3051457	composer	\N	\N
tt10639480	nm0161684	actor	\N	\N
tt10639480	nm2602814	actress	\N	\N
tt10639480	nm1938919	actor	\N	["Gustavo"]
tt10639480	nm0845142	director	\N	\N
tt10639480	nm1860656	writer	\N	\N
tt10639480	nm1277089	writer	\N	\N
tt10639480	nm0702220	writer	\N	\N
tt10639480	nm1434496	cinematographer	\N	\N
tt10639480	nm1862855	cinematographer	\N	\N
tt10639480	nm1857464	cinematographer	director of photography	\N
tt10639480	nm1860878	editor	\N	\N
tt4824340	nm2753910	actor	\N	["Benjamin Aubergine"]
tt4824340	nm1052534	actor	\N	["Mark Rhyne"]
tt4824340	nm3289392	actor	\N	["Golden Mendelsohn"]
tt4824340	nm3660395	actress	\N	["Charlotte"]
tt4824340	nm2550377	actor	\N	["George"]
tt4824340	nm0426890	actress	\N	["Tammy Shingles"]
tt4824340	nm0500187	actor	\N	["Mr. Cartwright"]
tt4824340	nm4039914	actress	\N	["Sheila"]
tt4824340	nm3392409	actress	\N	["Busy Body One"]
tt4824340	nm7131294	actress	\N	["Busy Body Two"]
tt4824340	nm2753910	director	\N	\N
tt4824340	nm2753910	writer	\N	\N
tt4824340	nm6521305	producer	producer	\N
tt4824340	nm2753910	producer	producer	\N
tt4824340	nm3610885	composer	\N	\N
tt4824340	nm2331563	cinematographer	\N	\N
tt4824340	nm1052787	editor	\N	\N
tt22480418	nm1167049	self	\N	["Self - Host"]
tt22480418	nm5508866	director	\N	\N
tt22480418	nm4861878	writer	\N	\N
tt22480418	nm9650016	writer	\N	\N
tt22480418	nm1149111	writer	\N	\N
tt22480418	nm2611862	writer	writer	\N
tt22480418	nm3679310	producer	producer	\N
tt22480418	nm14104250	cinematographer	\N	\N
tt9865538	nm9129234	actress	\N	["Prarthna"]
tt9865538	nm15880133	actress	\N	["Prema"]
tt9865538	nm5810738	actress	\N	["Pari"]
tt9865538	nm3946281	actor	\N	["Mr.Kanhaiya Paanchal"]
tt9865538	nm9608017	actress	\N	["Pari's Mother"]
tt9865538	nm2366663	director	\N	\N
tt9865538	nm9818935	director	\N	\N
tt9865538	nm9430973	writer	writer	\N
tt9865538	nm5557400	writer	\N	\N
tt9865538	nm4433772	writer	\N	\N
tt9865538	nm4060831	writer	\N	\N
tt9865538	nm2273814	composer	\N	\N
tt9865538	nm3030844	production_designer	production_designer	\N
tt6306690	nm4908437	self	\N	["Self"]
tt6306690	nm7038371	self	\N	["Self"]
tt6306690	nm4959881	self	\N	["Self"]
tt27868019	nm14778881	actor	\N	\N
tt27868019	nm1747510	actor	\N	\N
tt27868019	nm12473893	actress	\N	\N
tt27868019	nm14894484	actress	\N	\N
tt27868019	nm14757332	actress	\N	\N
tt27868019	nm14888173	director	\N	\N
tt27868019	nm5430040	writer	\N	\N
tt27868019	nm12562879	writer	\N	\N
tt27868019	nm12562880	producer	producer	\N
tt27868019	nm12630911	producer	producer	\N
tt27868019	nm14894485	composer	\N	\N
tt27868019	nm12665719	composer	\N	\N
tt27868019	nm8523787	composer	\N	\N
tt9164742	nm0424103	self	\N	["Self - Host"]
tt9164742	nm1231899	self	\N	["Self - Guest"]
tt9164742	nm1372788	self	\N	["Self - Guest"]
tt9164742	nm0020039	producer	producer	\N
tt9164742	nm9139970	producer	producer	\N
tt9164742	nm10762660	producer	producer	\N
tt11724786	nm11323824	self	\N	["Self"]
tt11724786	nm1510873	producer	producer	\N
tt11724786	nm11217079	producer	producer	\N
tt0968456	nm0011408	actor	\N	["Dr. Neville Bywaters"]
tt0968456	nm0308634	actor	\N	["Dr. Matthew Armstrong"]
tt0968456	nm0428665	actor	\N	["Mr. William Parker Brown"]
tt9738958	nm5156123	actor	\N	["Krishna Singh"]
tt9738958	nm5156947	actress	\N	["Pratigyaa"]
tt9738958	nm5093034	actor	\N	["Angad"]
tt9738958	nm5565560	actor	\N	["Adarsh"]
tt9738958	nm5156799	director	\N	\N
tt9738958	nm1957846	director	\N	\N
tt9738958	nm3455896	writer	writer	\N
tt9738958	nm5156036	writer	\N	\N
tt9738958	nm5156799	writer	\N	\N
tt9738958	nm1875325	writer	\N	\N
tt9738958	nm3946582	composer	\N	\N
tt9738958	nm6176604	cinematographer	cinematographer	\N
tt9738958	nm2274684	editor	\N	\N
tt9738958	nm10884278	casting_director	casting director	\N
tt5224992	nm0710830	self	\N	["Self - Host"]
tt5224992	nm7750307	director	\N	\N
tt1035025	nm1026926	producer	producer	\N
tt1035025	nm1680308	producer	producer	\N
tt1035025	nm3552835	editor	\N	\N
tt1035025	nm1158083	editor	\N	\N
tt30270724	nm5693918	actor	\N	["Rekka Shirogane"]
tt30270724	nm4684860	actor	\N	["Hayato Kongôji"]
tt30270724	nm7634492	actor	\N	["Kurama Shindô"]
tt30270724	nm4646711	actor	\N	["Shiren Quartzheart"]
tt30270724	nm4303311	actor	\N	["Izuna Kokuyou"]
tt30270724	nm0465160	actor	\N	["Volcan"]
tt30270724	nm2491814	actress	\N	["Luminella Hotaru"]
tt30270724	nm5190250	actress	\N	["Sango Sakura"]
tt30270724	nm6233871	actress	\N	["Hisui Midori"]
tt30270724	nm1382972	actress	\N	["Kohaku Kongôji"]
tt2196934	nm1232742	self	\N	["Self - Host"]
tt2196934	nm5183412	self	\N	["Self - Designer"]
tt2196934	nm5183521	self	\N	["Self - Designer"]
tt2196934	nm5183600	self	\N	["Self - Architect"]
tt2196934	nm5183633	self	\N	["Self"]
tt2196934	nm5183502	self	\N	["Self"]
tt2196934	nm5183614	self	\N	["Self"]
tt2196934	nm3596097	director	\N	\N
tt2196934	nm2443048	director	director	\N
tt2196934	nm5140372	composer	\N	\N
tt2196934	nm4681681	composer	composer	\N
tt2196934	nm4076162	editor	\N	\N
tt14979026	nm7659285	actress	\N	\N
tt14979026	nm12728101	director	\N	\N
tt1374692	nm1663455	actor	\N	["Mike Van Notegem"]
tt1374692	nm0094531	actress	\N	["Yvette Backx"]
tt1374692	nm0267441	actor	\N	["Mo Fawzi"]
tt1374692	nm2637915	actress	\N	["Paulien Snackaert"]
tt1374692	nm0580474	actress	\N	["Simonne Bomans-Backx"]
tt1374692	nm0745596	actor	\N	["Geert Smeekens"]
tt1374692	nm0781754	actress	\N	["Rosa Kozinsky-Verbeeck"]
tt1374692	nm0862339	actress	\N	["Claire Bastiaens"]
tt1374692	nm0885641	actor	\N	["Waldek Kozinsky"]
tt1374692	nm0887163	actress	\N	["Peggy Verbeeck"]
tt1374692	nm1063087	cinematographer	\N	\N
tt11515280	nm0947833	archive_footage	\N	["Self"]
tt3315050	nm1272544	actor	\N	["Emile Tabard"]
tt3315050	nm6068200	actress	\N	["Bibi Kellman"]
tt3315050	nm0292019	actor	\N	["Lubin Kellman"]
tt3315050	nm2044702	actor	\N	["Albin Brisefour"]
tt3315050	nm3280148	actor	\N	["Wei Zhi"]
tt3315050	nm1601690	actor	\N	["Professeur Lotfi"]
tt3315050	nm6068201	actor	\N	["Le cuisinier"]
tt3315050	nm5314356	actor	\N	["Géraldine Fouillon"]
tt3315050	nm6068202	actor	\N	["Le grand Michel"]
tt3315050	nm6068203	actor	\N	["Roger"]
tt3315050	nm6068199	director	\N	\N
tt3315050	nm6068199	writer	\N	\N
tt3315050	nm6068202	cinematographer	\N	\N
tt11989454	nm11393376	actress	\N	["Zoe"]
tt11989454	nm8867293	actress	\N	["Paula"]
tt11989454	nm11430508	actress	\N	["Maja"]
tt11989454	nm11430509	actress	\N	["Zoes Cat"]
tt11989454	nm2791258	actress	\N	["Police 1"]
tt11989454	nm10202899	actress	\N	["Lady"]
tt11989454	nm9800729	actress	\N	["Police 2"]
tt11989454	nm11430510	actress	\N	["Girl 1"]
tt11989454	nm11430511	actress	\N	["Girl 2"]
tt11989454	nm11430512	actress	\N	["Girl 3"]
tt11989454	nm7327414	director	\N	\N
tt11989454	nm7327414	writer	\N	\N
tt11989454	nm7327414	producer	producer	\N
tt11989454	nm9800729	producer	producer	\N
tt11989454	nm4555841	producer	producer	\N
tt11989454	nm9730006	composer	\N	\N
tt11989454	nm9590625	cinematographer	\N	\N
tt11989454	nm4594915	editor	\N	\N
tt11989454	nm7327414	casting_director	\N	\N
tt11989454	nm9301574	production_designer	\N	\N
tt3888462	nm0792937	director	\N	\N
tt3888462	nm0866250	producer	producer	\N
tt14854768	nm4736837	actor	\N	\N
tt14854768	nm5471587	actor	\N	\N
tt14854768	nm0482285	actress	\N	\N
tt14854768	nm0576169	actress	\N	\N
tt14854768	nm6832989	actor	\N	\N
tt14854768	nm11482694	director	\N	\N
tt14854768	nm11271366	director	\N	\N
tt14854768	nm12583597	writer	\N	\N
tt14854768	nm12132193	writer	\N	\N
tt14854768	nm10573585	producer	producer	\N
tt14854768	nm12583599	editor	\N	\N
tt26777958	nm3123587	director	\N	\N
tt26777958	nm3123587	writer	\N	\N
tt26777958	nm14589066	writer	\N	\N
tt26777958	nm3123587	producer	producer	\N
tt26777958	nm2788559	cinematographer	\N	\N
tt26777958	nm7970551	editor	\N	\N
tt9542852	nm5782599	actor	\N	\N
tt9542852	nm8874681	actress	\N	\N
tt4047506	nm6014961	producer	producer	\N
tt4047506	nm10589890	producer	producer	\N
tt4047506	nm8397889	producer	producer	\N
tt13529240	nm1504988	self	\N	["Self - Presenter"]
tt13529240	nm12037912	director	\N	\N
tt13529240	nm6811641	director	\N	\N
tt13529240	nm1504988	writer	writer	\N
tt13529240	nm12037912	producer	producer	\N
tt13529240	nm6811641	producer	producer	\N
tt13529240	nm12037912	cinematographer	\N	\N
tt13529240	nm7960446	editor	\N	\N
tt9836520	nm6974864	actor	\N	["Samrat"]
tt9836520	nm1877410	actress	\N	["Anamika Ahuja"]
tt9836520	nm1261710	actor	\N	["Uday Ahuja"]
tt9836520	nm2763595	actor	\N	["Sanju Ahuja"]
tt9836520	nm1066022	actress	\N	["Naina Ahuja"]
tt9836520	nm12403639	director	director	\N
tt1519408	nm2160876	self	\N	["Self"]
tt1519408	nm3500444	producer	producer	\N
tt1519408	nm3263569	producer	producer	\N
tt1519408	nm2015888	producer	producer	\N
tt1519408	nm16492794	producer	producer	\N
tt1519408	nm0962764	composer	composer	\N
tt1519408	nm3500444	cinematographer	director of photography	\N
tt1519408	nm3500444	editor	editor	\N
tt31598246	nm1801652	actress	\N	["Pimala"]
tt31598246	nm1801652	actress	\N	["'Pim'"]
tt31598246	nm0969934	actor	\N	["Rerk"]
tt31598246	nm13771703	actress	\N	["Jai Rerng"]
tt31598246	nm2509128	actor	\N	["Terdpan"]
tt31598246	nm2509128	actor	\N	["'Terd'"]
tt31598246	nm2207312	actress	\N	["Pongsai"]
tt31598246	nm1669726	actor	\N	["Poj"]
tt31598246	nm5329466	actress	\N	["Malee"]
tt31598246	nm13130318	actor	\N	["Rerk's Younger Brother"]
tt31598246	nm2727342	actress	\N	\N
tt31598246	nm13783888	actress	\N	["Malaiwan"]
tt31598246	nm15894024	director	\N	\N
tt31598246	nm13504449	writer	story by	\N
tt31598246	nm13109386	writer	based on the novel by	\N
tt31598246	nm2952397	producer	producer	\N
tt0122242	nm0497749	director	\N	\N
tt0848446	nm2362432	actor	\N	\N
tt0848446	nm1108766	actor	\N	\N
tt0848446	nm2365981	actor	\N	\N
tt0848446	nm2368317	actor	\N	\N
tt0848446	nm2322481	actress	\N	\N
tt0848446	nm0451789	director	\N	\N
tt0848446	nm0341917	cinematographer	\N	\N
tt10998086	nm5776182	actress	\N	\N
tt10998086	nm3472277	actor	\N	\N
tt10998086	nm1100231	actor	\N	\N
tt10998086	nm1295504	actress	\N	\N
tt10998086	nm1258596	director	\N	\N
tt10998086	nm1295053	writer	\N	\N
tt10998086	nm1295053	producer	producer	\N
tt15281282	nm2693757	actress	\N	\N
tt15281282	nm6716590	actor	\N	\N
tt15281282	nm12870145	actor	\N	\N
tt15281282	nm2693766	actor	\N	\N
tt15281282	nm6716590	director	\N	\N
tt15281282	nm2693766	director	\N	\N
tt15137058	nm0760848	actor	\N	\N
tt15137058	nm0128851	writer	\N	\N
tt15137058	nm0760848	writer	created by	\N
tt21350172	nm13839398	actor	\N	["CBC Kids"]
tt21350172	nm13839398	actor	\N	["CBS"]
tt21350172	nm13839398	actor	\N	["Chippey"]
tt21350172	nm13839398	director	voice director	\N
tt21350172	nm13839398	writer	creator	\N
tt21350172	nm13839400	writer	\N	\N
tt21350172	nm13839401	producer	producer	\N
tt16260146	nm10213299	director	\N	\N
tt16260146	nm10213299	cinematographer	\N	\N
tt16260146	nm4649095	editor	editor	\N
tt16260146	nm10213299	editor	\N	\N
tt1213086	nm1797269	actor	\N	["Tatsunosuke Ogawa"]
tt1213086	nm1272563	actor	\N	["Jûbei Tateishi"]
tt1213086	nm0848984	actor	\N	["Mondo Emi"]
tt1213086	nm0464592	actress	\N	["His mother"]
tt1213086	nm0359248	actress	\N	["Kinu"]
tt1213086	nm1698884	actor	\N	["Jûzô Nagakura"]
tt1213086	nm2970633	actor	\N	["Heima Ishide"]
tt1213086	nm1283906	actor	\N	["Genjirô Shimizu"]
tt1213086	nm0812286	actor	\N	["Rihei at Kiraku-tei"]
tt1213086	nm1364645	actor	\N	["Kinai Onoda"]
tt1213086	nm1960093	director	\N	\N
tt1213086	nm0361674	writer	screenplay	\N
tt1213086	nm0651519	writer	story	\N
tt1213086	nm1914486	cinematographer	\N	\N
tt3266866	nm6465283	actor	\N	\N
tt3266866	nm8419811	actress	\N	\N
tt3266866	nm1278656	actress	\N	\N
tt3266866	nm8436933	actor	\N	\N
tt3266866	nm2286199	actor	\N	["Rami"]
tt3266866	nm5726315	actor	\N	["Ehab Farid"]
tt3266866	nm8674920	actress	\N	\N
tt3266866	nm0495477	actress	\N	["Kinda Habib"]
tt3266866	nm1955899	actor	\N	\N
tt3266866	nm6255951	actor	\N	\N
tt3266866	nm5725304	director	\N	\N
tt3266866	nm5726141	writer	\N	\N
tt3266866	nm5725013	producer	producer	\N
tt14776270	nm9732643	actress	\N	["Swanandi Deshpande"]
tt14776270	nm7931485	actress	\N	["Lalita Jahagirdar"]
tt14776270	nm7585694	actor	\N	["Neel Jahagirdar"]
tt14776270	nm9785742	director	\N	\N
tt14776270	nm7309931	writer	dialogue	\N
tt14776270	nm12392836	writer	screenplay	\N
tt14776270	nm12392837	writer	dialogue	\N
tt14776270	nm2983527	producer	producer	\N
tt14776270	nm3094497	composer	composer	\N
tt14776270	nm2127180	composer	composer	\N
tt14776270	nm10189551	cinematographer	director of photography	\N
tt14776270	nm4513020	editor	\N	\N
tt14776270	nm8079024	editor	\N	\N
tt0848569	nm2362566	self	\N	["Self"]
tt0848569	nm2169232	self	\N	["Self"]
tt0848569	nm2363237	self	\N	["Self"]
tt0848569	nm2363815	self	\N	["Self"]
tt0848569	nm2061926	self	\N	["Self"]
tt0848569	nm2364420	self	\N	["Self"]
tt0848569	nm1536764	self	\N	["Self"]
tt0848569	nm2364337	self	\N	["Self"]
tt0848569	nm1977755	self	\N	["Self"]
tt0848569	nm0001439	actor	\N	["Narration"]
tt0848569	nm2364350	director	\N	\N
tt0848569	nm2364350	writer	\N	\N
tt0848569	nm2363889	writer	\N	\N
tt0848569	nm2360941	producer	producer	\N
tt0848569	nm2364350	producer	producer	\N
tt0848569	nm0355888	producer	producer	\N
tt0848569	nm2362036	composer	\N	\N
tt0848569	nm1681893	cinematographer	\N	\N
tt0848569	nm2120283	editor	\N	\N
tt4792354	nm3783463	actress	\N	\N
tt4792354	nm3784081	actor	\N	\N
tt4792354	nm3783340	actress	\N	\N
tt4792354	nm3783387	actor	\N	\N
tt28145625	nm0458526	self	\N	["Self - Host"]
tt11745344	nm0430803	actor	\N	\N
tt11745344	nm6135703	actress	\N	["Isha"]
tt11745344	nm4382451	actor	\N	["Om"]
tt11745344	nm5217553	director	\N	\N
tt11745344	nm5112349	writer	\N	\N
tt11745344	nm4466029	producer	producer	\N
tt11745344	nm4289864	composer	composer	\N
tt11745344	nm9455361	editor	editor	\N
tt0816529	nm1100419	actor	\N	["Narrator"]
tt0816529	nm8485801	director	\N	\N
tt0816529	nm8485801	writer	\N	\N
tt0816529	nm2009375	composer	\N	\N
tt0816529	nm0270027	editor	\N	\N
tt19370734	nm13498770	self	\N	["Self - Dean"]
tt19370734	nm13498770	writer	\N	\N
tt2775302	nm5513832	self	\N	["Self"]
tt25380318	nm9313874	actress	\N	["Sayuri Sharma"]
tt25380318	nm4490004	actor	\N	["Krishna Choudhary"]
tt25380318	nm6908650	director	\N	\N
tt25380318	nm12461253	writer	story ideation	\N
tt25380318	nm3709528	producer	producer	\N
tt25380318	nm3486538	producer	producer	\N
tt25380318	nm4194046	composer	\N	\N
tt25380318	nm10638559	composer	\N	\N
tt25380318	nm5744240	editor	\N	\N
tt25380318	nm12465027	casting_director	\N	\N
tt6001760	nm0101221	actor	\N	["Pinky"]
tt6001760	nm0911389	actress	\N	["Panky"]
tt6001760	nm0911389	actress	\N	["Punkin"]
tt6001760	nm0528802	actress	\N	["Chatta"]
tt6001760	nm0240327	director	\N	\N
tt6001760	nm0502800	director	\N	\N
tt6001760	nm0881662	director	\N	\N
tt6001760	nm0220039	producer	producer	\N
tt6001760	nm0002886	composer	composer	\N
tt6001760	nm1200878	editor	\N	\N
tt6001760	nm0412299	editor	show editor	\N
tt6001760	nm0738849	casting_director	\N	\N
tt15766174	nm6776222	self	\N	["Self - Contributor"]
tt15766174	nm1877587	archive_footage	\N	["Self"]
tt15766174	nm9667478	self	\N	["Self - Maryland Congressman"]
tt15766174	nm1227121	archive_footage	\N	["Self"]
tt15766174	nm2665166	archive_footage	\N	["Self"]
tt15766174	nm13115146	archive_footage	\N	["Self - DHS Counterterrorism Coordinator"]
tt15766174	nm10714657	self	\N	["Self"]
tt15766174	nm4054885	self	\N	["Self - Contributor"]
tt15766174	nm13028963	self	\N	["Self - Brevard County FL School Board Member"]
tt15766174	nm6352987	self	\N	["Self - Contributor"]
tt7151686	nm0712980	self	\N	["Self - Chairman"]
tt7151686	nm0611350	self	\N	["Self - Team Captain"]
tt7151686	nm0578459	self	\N	["Self - Team Captain"]
tt7151686	nm0185670	self	\N	["Self"]
tt7151686	nm0265717	self	\N	["Self"]
tt7151686	nm0296484	self	\N	["Self"]
tt7151686	nm0557292	self	\N	["Self"]
tt7151686	nm0329382	writer	creator	\N
tt7151686	nm0865363	writer	creator	\N
tt7151686	nm0780750	producer	producer	\N
tt6023952	nm0536439	actor	\N	["Müslüm Maqomayev"]
tt6023952	nm0793430	actress	\N	["Tatyana Larina"]
tt6023952	nm1435868	director	\N	\N
tt6023952	nm0091633	writer	screenplay	\N
tt6023952	nm1435868	writer	screenplay	\N
tt6023952	nm0126490	composer	\N	\N
tt6023952	nm0091633	cinematographer	\N	\N
tt6023952	nm8405733	editor	\N	\N
tt6023952	nm8405734	editor	\N	\N
tt6023952	nm1049972	production_designer	production_designer	\N
tt6023952	nm0954368	production_designer	\N	\N
tt4226490	nm1399924	self	\N	["Self - Host"]
tt4226490	nm0100530	self	\N	["Self"]
tt4226490	nm0227570	self	\N	["Self"]
tt4226490	nm0435425	self	\N	["Self"]
tt5700008	nm0260041	actor	\N	["Various Characters"]
tt5700008	nm0373315	actor	\N	["Various Characters"]
tt5700008	nm0412938	actor	\N	["Various Characters"]
tt5700008	nm0501486	actor	\N	["Various Characters"]
tt5700008	nm0645252	actor	\N	["Various Characters"]
tt5700008	nm0758860	actor	\N	["Various Characters"]
tt5700008	nm0906344	actor	\N	["Various Characters"]
tt5700008	nm0878172	actress	\N	\N
tt5700008	nm0840016	actress	\N	\N
tt5700008	nm0714438	actor	\N	\N
tt5700008	nm0260041	writer	\N	\N
tt5700008	nm0373315	writer	\N	\N
tt5700008	nm0412938	writer	\N	\N
tt5700008	nm1441930	writer	\N	\N
tt5700008	nm0373315	composer	composer	\N
tt5700008	nm1441930	composer	\N	\N
tt0517796	nm0001234	actor	\N	["Bentley Gregg"]
tt0517796	nm0179321	actress	\N	["Kelly Gregg"]
tt0517796	nm0867257	actor	\N	["Peter Tong"]
tt0517796	nm0045651	actress	\N	["Vickie"]
tt0517796	nm0016781	actress	\N	["Martha"]
tt0517796	nm0936718	actress	\N	["Ginger Farrell"]
tt0517796	nm0936718	actress	\N	["Loomis"]
tt0517796	nm0936718	actress	\N	["Mitchell"]
tt0517796	nm1519446	actress	\N	["Helen"]
tt0517796	nm0437374	actress	\N	["Marcia"]
tt0517796	nm0602093	actress	\N	["Cynthia"]
tt0517796	nm0248712	actress	\N	["Gladys"]
tt0517796	nm0394409	director	\N	\N
tt0517796	nm0022492	writer	written by	\N
tt0517796	nm0597578	writer	written by	\N
tt0517796	nm0009974	producer	producer	\N
tt0517796	nm0005873	cinematographer	\N	\N
tt0517796	nm0864300	editor	\N	\N
tt5289806	nm4811268	actress	\N	["Lina"]
tt5289806	nm7806424	actor	\N	["Mysterious Man"]
tt5289806	nm4553679	actor	\N	["Trip"]
tt5289806	nm1368608	actor	\N	["Skip"]
tt5289806	nm3881271	director	\N	\N
tt5289806	nm4553679	writer	story by	\N
tt5289806	nm3881271	writer	story by	\N
tt5289806	nm3881271	producer	producer	\N
tt5289806	nm9222562	cinematographer	\N	\N
tt0595547	nm0718280	actor	\N	["Dr. Markus Kampmann"]
tt0595547	nm0511760	actor	\N	["Dr. Gregor Lüders"]
tt0595547	nm0559331	actor	\N	["Prof. Hermann Lüders"]
tt0595547	nm0061801	actress	\N	["Hilde Horn"]
tt0595547	nm0090100	actor	\N	["Stefan Maurer"]
tt0595547	nm0299161	actress	\N	["Dr. Charlotte Weiß"]
tt0595547	nm0299799	actress	\N	["Schwester Ina"]
tt0595547	nm1319085	actress	\N	["Raffaella"]
tt0595547	nm0427362	actress	\N	["Hilde Thomaschewski"]
tt0595547	nm0549239	actress	\N	["Schwester Sonja"]
tt28551561	nm3184973	actress	\N	["Meira Jasmine Aulia"]
tt28551561	nm3022035	actor	\N	["Farhan Sinatria"]
tt28551561	nm7217900	actor	\N	["Arya Dwipangga"]
tt28551561	nm15119186	actress	\N	["Lisa Anindita"]
tt28551561	nm13383070	actress	\N	["Renita"]
tt28551561	nm3545875	actress	\N	["Rosi Rosalia"]
tt28551561	nm13921630	actress	\N	["Arin"]
tt28551561	nm3160039	actress	\N	["Dina Anggraini"]
tt28551561	nm10409717	actress	\N	["Salma"]
tt28551561	nm12951887	actress	\N	["Lani"]
tt28551561	nm3278735	director	\N	\N
tt28551561	nm15119195	writer	novel "Bahagia Usai Bercerai"	\N
tt28551561	nm15119196	writer	screenplay	\N
tt28551561	nm9786041	producer	producer	\N
tt28551561	nm12293398	producer	producer	\N
tt28551561	nm1823633	composer	composer	\N
tt28551561	nm13433358	cinematographer	\N	\N
tt28551561	nm15116740	editor	editor	\N
tt28551561	nm15119189	editor	\N	\N
tt28551561	nm15119192	editor	\N	\N
tt28551561	nm15119190	editor	\N	\N
tt9794826	nm3460418	self	\N	["Self"]
tt9794826	nm2497545	self	\N	["Self - Host"]
tt9794826	nm2228010	self	\N	["Self"]
tt9794826	nm2821029	self	\N	["Self"]
tt9794826	nm2177040	self	\N	["Self"]
tt1194409	nm0780303	self	\N	["Self - Play-by-Play Announcer"]
tt1194409	nm0304792	self	\N	["Self - Color Commentator"]
tt1194409	nm0182471	self	\N	["Self - Pregame Host"]
tt1194409	nm1117332	self	\N	["Self - AL Manager"]
tt1194409	nm1757372	self	\N	["Self - AL Outfielder"]
tt1194409	nm0089990	self	\N	["Self - AL Pitcher"]
tt1194409	nm2941781	self	\N	["Self - AL Outfielder"]
tt1194409	nm1652212	self	\N	["Self - AL Third Baseman"]
tt1194409	nm1158526	self	\N	["Self - AL Outfielder"]
tt1194409	nm1821667	self	\N	["Self - NL First Baseman"]
tt1014787	nm2629129	actor	\N	\N
tt1014787	nm1638058	actor	\N	\N
tt1014787	nm2500077	actor	\N	\N
tt1014787	nm1567037	actor	\N	\N
tt1014787	nm2630508	actor	\N	\N
tt1014787	nm1567037	director	\N	\N
tt1014787	nm1567037	writer	\N	\N
tt1014787	nm2630219	producer	producer	\N
tt1014787	nm2626645	producer	producer	\N
tt1014787	nm2628361	producer	producer	\N
tt1014787	nm2632017	producer	producer	\N
tt1014787	nm2360124	cinematographer	\N	\N
tt1014787	nm2629242	editor	\N	\N
tt1014787	nm2632017	editor	\N	\N
tt1014787	nm2628819	editor	\N	\N
tt28712874	nm2799927	self	\N	["Self - Narrator"]
tt28712874	nm2799927	director	\N	\N
tt28712874	nm4565529	director	\N	\N
tt28712874	nm2799927	writer	\N	\N
tt28712874	nm4565529	writer	\N	\N
tt28712874	nm2799927	producer	producer	\N
tt28712874	nm4565529	producer	producer	\N
tt30316821	nm1310368	actress	\N	["Quinn O'Grady"]
tt30316821	nm0241049	actor	\N	["Staten Kirkland"]
tt30316821	nm4880922	actor	\N	["Kai Flores"]
tt30316821	nm5136434	actor	\N	["Jay"]
tt30316821	nm11752730	actress	\N	["Ashley"]
tt30316821	nm6358053	actress	\N	["Lauren Brigman"]
tt30316821	nm5852967	actor	\N	["Tim O'Grady"]
tt30316821	nm8279117	actor	\N	["Reid Collins"]
tt30316821	nm2151126	actor	\N	["Davis Collins"]
tt30316821	nm1877441	actor	\N	["Jake Longbow"]
tt30316821	nm0086194	writer	created by	\N
tt30316821	nm1663329	cinematographer	\N	\N
tt30316821	nm4871916	editor	\N	\N
tt30316821	nm0710661	casting_director	\N	\N
tt30316821	nm0624213	production_designer	\N	\N
tt14967056	nm12723983	actor	\N	["Nick"]
tt14967056	nm8012292	actor	\N	["Tobe"]
tt14967056	nm6190482	actress	\N	["Madame Medium"]
tt14967056	nm11042962	actor	\N	["Dealer"]
tt14967056	nm10877565	actor	\N	["Delivery Man"]
tt14967056	nm5950470	actor	\N	["Doorman"]
tt14967056	nm7365134	actress	\N	["Emily"]
tt14967056	nm11040921	actress	\N	["Ms. Raven"]
tt14967056	nm8526930	actor	\N	["Mr. Wolf"]
tt14967056	nm14961159	actor	\N	["Mr. Swan"]
tt14967056	nm5950470	writer	created by	\N
tt14967056	nm8012292	writer	created by	\N
tt5356630	nm1369959	self	\N	["Self - Presenter"]
tt5356630	nm0421023	self	\N	["Self - Judge"]
tt5356630	nm0931530	self	\N	["Self - Judge"]
tt5356630	nm5227443	self	\N	["Self - Judge"]
tt5356630	nm4798025	director	\N	\N
tt5356630	nm1369959	writer	\N	\N
tt5356630	nm0666313	producer	producer	\N
tt34625276	nm10325600	self	\N	["Self"]
tt34625276	nm9682932	self	\N	["Self"]
tt34625276	nm9682932	director	\N	\N
tt34625276	nm10325600	writer	\N	\N
tt34625276	nm9682932	writer	\N	\N
tt34625276	nm9682932	producer	producer	\N
tt6312672	nm0179413	director	\N	\N
tt6312672	nm0680460	writer	written by	\N
tt6312672	nm0633202	writer	written by	\N
tt6312672	nm0279416	producer	producer	\N
tt27662794	nm0877908	actor	\N	["Commentator"]
tt1934370	nm1068537	actor	\N	\N
tt1934370	nm0229349	actor	\N	\N
tt1934370	nm0417910	actress	\N	\N
tt1934370	nm0669614	actor	\N	\N
tt1934370	nm0685550	actor	\N	\N
tt1934370	nm0699574	actor	\N	\N
tt1934370	nm0725279	actor	\N	\N
tt1934370	nm0772184	actor	\N	\N
tt1934370	nm0821493	actor	\N	\N
tt1934370	nm0835336	actor	\N	\N
tt1934370	nm0473603	director	\N	\N
tt1934370	nm0899272	composer	\N	\N
tt3888132	nm0649638	actress	\N	["Valeria García Méndez de Salerno"]
tt3888132	nm0708599	actor	\N	["Diego Salerno Ortigoza"]
tt3888132	nm0274467	actor	\N	["Luciano Salerno alias Manuel Quiroga"]
tt3888132	nm0342143	actor	\N	["Alberto García Méndez"]
tt3888132	nm0246697	actor	\N	["Darío Servente"]
tt3888132	nm0532459	actor	\N	["Rubén Fernández"]
tt3888132	nm0776268	actress	\N	["Elena Flores"]
tt3888132	nm0148644	actor	\N	["Agustín García Méndez"]
tt3888132	nm0453174	actress	\N	["Martha de García Méndez"]
tt3888132	nm0546490	actress	\N	["Bertha Ortigoza de Marco"]
tt3888132	nm0546490	actress	\N	["Mercedes Ortigoza de Salerno"]
tt8720660	nm9419259	self	\N	["Self - Reporter"]
tt8720660	nm3025984	self	\N	["Self - Reporter"]
tt8720660	nm9422148	self	\N	["Self - Reporter"]
tt8720660	nm5646416	self	\N	["Self - Home Secretary"]
tt8720660	nm8252623	self	\N	["Self - Political Correspondent"]
tt8720660	nm9983472	self	\N	["Self - Weather Reporter"]
tt8720660	nm2077465	self	\N	["Self - Presenter"]
tt14018394	nm0038932	actor	\N	["Jack Deveraux"]
tt14018394	nm2628722	actress	\N	["Gabi DiMera"]
tt14018394	nm1553394	actor	\N	["Jake DiMera"]
tt14018394	nm4334664	actor	\N	["Chad DiMera"]
tt14018394	nm7874063	actor	\N	["Theo Carver"]
tt14018394	nm0425322	actor	\N	["Philip Kiriakis"]
tt14018394	nm7367497	actress	\N	["Ciara Brady"]
tt14018394	nm0467191	actress	\N	["Kate Roberts"]
tt14018394	nm0475986	actor	\N	["Justin Kiriakis"]
tt14018394	nm3304608	actress	\N	["Abigail Deveraux DiMera"]
tt14018394	nm0571983	director	\N	\N
tt14018394	nm1122050	writer	head writer	\N
tt14018394	nm1545348	writer	writer	\N
tt14018394	nm0110828	writer	writer	\N
tt14018394	nm1431618	writer	writer	\N
tt14018394	nm0240828	producer	producer	\N
tt26736246	nm11206116	actor	\N	["Logan Aultman"]
tt26736246	nm12553164	actress	\N	["Addison Jaymes Finley"]
tt26736246	nm12965224	actress	\N	["Brooklyn Fleming"]
tt26736246	nm14564491	actor	\N	["Weston Oliver"]
tt26736246	nm8195113	director	\N	\N
tt26736246	nm8195113	producer	producer	\N
tt26736246	nm8195113	editor	\N	\N
tt2635882	nm5444816	actor	\N	["Shoko"]
tt2635882	nm4603611	actor	\N	["Moti Haviv"]
tt2635882	nm4603611	actor	\N	["Prosper Azagi"]
tt2635882	nm4603611	actor	\N	["Shaul Eisenberg"]
tt2635882	nm5445928	actor	\N	["Shlomo Scharf"]
tt2635882	nm5445928	actor	\N	["Avi Luzon"]
tt2635882	nm5445928	actor	\N	["Shiyeh Faygenboim"]
tt2635882	nm5457627	actor	\N	["Ron Kofman"]
tt2635882	nm5457627	actor	\N	["Naor Zion"]
tt2635882	nm5457627	actor	\N	["Rafi Ginat"]
tt2635882	nm0946867	actor	\N	["Moshe Primo"]
tt2635882	nm0946867	actor	\N	["Avigail Sharabi"]
tt2635882	nm0946867	actor	\N	["Yaakov Shachar"]
tt2635882	nm2457883	actor	\N	["Raz Zehavi"]
tt2635882	nm2457883	actor	\N	["Yoav Katz"]
tt2635882	nm2457883	actor	\N	["Arie Maliniak"]
tt2635882	nm1654483	actor	\N	["Liora Hoshen"]
tt2635882	nm1654483	actor	\N	["Alona Barkat"]
tt2635882	nm1654483	actor	\N	["Avshalom Kor"]
tt2635882	nm2142951	self	\N	["Self - News Anchor"]
tt2635882	nm5512843	self	\N	["Self"]
tt2635882	nm5533839	actor	\N	["Eyal Berkovic"]
tt2635882	nm5533839	actor	\N	["Yaron Berlad"]
tt2635882	nm5444816	writer	creator	\N
tt21215940	nm2321533	self	\N	["Self - Host"]
tt21215940	nm2317602	self	\N	["Self - Host"]
tt21215940	nm4542563	self	\N	["Self - Host"]
tt21215940	nm2321533	editor	\N	\N
tt1755773	nm2275366	self	\N	["Self - Reporter"]
tt1755773	nm2504304	director	\N	\N
tt1755773	nm2275366	writer	writer	\N
tt1755773	nm2504304	producer	producer	\N
tt1755773	nm0447254	editor	\N	\N
tt13223530	nm0659250	actress	\N	\N
tt13223530	nm1086214	actress	\N	\N
tt13223530	nm0737737	actress	\N	\N
tt13223530	nm6164470	actor	\N	\N
tt13223530	nm3077807	actor	\N	\N
tt13223530	nm1139300	actor	\N	\N
tt13223530	nm1134660	director	\N	\N
tt13223530	nm0619656	producer	producer	\N
tt12657232	nm0689220	actor	\N	["Yangos Drakos"]
tt12657232	nm0028385	actor	\N	["Timos Drakos"]
tt12657232	nm1039266	actor	\N	["Linos Seretis"]
tt12657232	nm0032002	actor	\N	["Sevos Drakos"]
tt12657232	nm1361371	actor	\N	["Alexis Drakos"]
tt12657232	nm0989781	actress	\N	["Efi"]
tt12657232	nm0726816	actress	\N	["Tania Drakou"]
tt12657232	nm0287566	writer	creator	\N
tt25151784	nm10464505	actress	\N	["Fonkaew"]
tt25151784	nm13792548	actor	\N	["Chawin"]
tt25151784	nm12033834	actress	\N	["Avanti"]
tt25151784	nm13792462	actor	\N	["Dittha"]
tt25151784	nm13795467	actress	\N	["Dear"]
tt25151784	nm13795468	actress	\N	["Rinrong"]
tt25151784	nm4319246	actor	\N	["Chayut"]
tt25151784	nm5083066	actor	\N	["Chaiya"]
tt25151784	nm13783888	actress	\N	["Chuanjai"]
tt25151784	nm1670765	actor	\N	["Pholchai"]
tt25151784	nm4399063	director	\N	\N
tt25151784	nm13757711	writer	novel	\N
tt15072918	nm0688767	self	\N	["Self - Host"]
tt15072918	nm0457755	self	\N	["Self"]
tt15072918	nm0531508	self	\N	["Self"]
tt15072918	nm0672032	self	\N	["Self"]
tt15072918	nm1763172	self	\N	["Self"]
tt15072918	nm0802556	self	\N	["Self"]
tt15072918	nm0221141	director	\N	\N
tt0099311	nm0105672	actor	\N	["Jackie Robinson"]
tt0099311	nm0827663	actor	\N	["William Cline"]
tt0099311	nm0002039	actress	\N	["Jackie's mother"]
tt0099311	nm0789976	actor	\N	["Joe Louis"]
tt0099311	nm0233209	actor	\N	["Willy Bailey"]
tt0099311	nm0501435	actress	\N	["Rachel"]
tt0099311	nm0696430	actor	\N	["Wendell Smith"]
tt0099311	nm0338867	actor	\N	["Captain Dantley"]
tt0099311	nm0245653	actor	\N	["Colonel Paul L. Bates"]
tt0099311	nm0931736	actor	\N	["Satchel Paige"]
tt0099311	nm0670282	director	\N	\N
tt0099311	nm0164182	writer	story	\N
tt0099311	nm0242110	writer	story	\N
tt0099311	nm0296243	writer	teleplay	\N
tt0099311	nm0163857	writer	teleplay	\N
tt0099311	nm0164182	producer	producer	\N
tt0099311	nm0006010	composer	\N	\N
tt0099311	nm0121281	cinematographer	\N	\N
tt0099311	nm0780762	editor	\N	\N
tt0099311	nm0943828	editor	\N	\N
tt0099311	nm0024007	production_designer	\N	\N
tt12338814	nm10274907	actor	\N	["LS Mork"]
tt12338814	nm10274907	director	director	\N
tt12338814	nm10274907	writer	writer	\N
tt9845442	nm9673055	actress	\N	["Mitul Sengupta"]
tt9845442	nm7129302	actor	\N	["Siddharth Singh Khurana"]
tt9845442	nm1213227	actress	\N	["Durga Devi Patel"]
tt9845442	nm4541343	actor	\N	["Yash Mehra"]
tt9845442	nm8350840	actress	\N	["Ayesha"]
tt9845442	nm5011985	actress	\N	["Roshni Siddharth Singh Khurana"]
tt9845442	nm7129301	director	director	\N
tt9845442	nm5766923	director	\N	\N
tt9845442	nm5563885	director	director	\N
tt9845442	nm7129303	writer	screenplay	\N
tt9845442	nm0474774	writer	created by	\N
tt9845442	nm7129304	writer	dialogue	\N
tt9845442	nm5170389	writer	created by	\N
tt9845442	nm0474774	producer	producer	\N
tt9845442	nm6998775	producer	producer	\N
tt9845442	nm5170389	producer	producer	\N
tt9845442	nm2273814	composer	\N	\N
tt9845442	nm4576851	cinematographer	director of photography	\N
tt9845442	nm4990122	casting_director	\N	\N
tt9845442	nm12007728	casting_director	casting_director	\N
tt9845442	nm3030844	production_designer	production_designer	\N
tt5298464	nm3360195	actor	\N	["Haruya Asagi"]
tt5298464	nm4501035	actress	\N	["Miu Noumi"]
tt5298464	nm2959118	actor	\N	\N
tt5298464	nm6325495	actress	\N	["Aoi Sakamoto"]
tt5298464	nm4314748	actor	\N	["Toshiki Shinohara"]
tt5298464	nm7699669	actress	\N	\N
tt5298464	nm4723667	actress	\N	\N
tt5298464	nm5840275	actress	\N	\N
tt5298464	nm0880319	actor	\N	\N
tt5298464	nm0847395	actress	\N	\N
tt5298464	nm0464599	director	\N	\N
tt5298464	nm4149358	director	\N	\N
tt5298464	nm7275944	writer	based on the novel by	\N
tt5298464	nm4380420	writer	teleplay	\N
tt5298464	nm13544503	writer	screenplay	\N
tt5298464	nm2957814	producer	producer	\N
tt5298464	nm5629688	producer	producer	\N
tt5298464	nm7438664	producer	producer	\N
tt5298464	nm1129506	producer	producer	\N
tt5298464	nm3758252	composer	\N	\N
tt10270220	nm0726034	actor	\N	["Samuel Leroy"]
tt10270220	nm7065096	actress	\N	["Billie"]
tt10270220	nm2058024	actor	\N	["Bob Franck"]
tt10270220	nm3531774	actor	\N	["Nassim Khaoulani"]
tt10270220	nm2038578	actor	\N	["K4oS"]
tt10270220	nm2038578	actor	\N	["Antoine Chappard"]
tt10270220	nm9272573	actress	\N	["Alice Meerks"]
tt10270220	nm5020632	actor	\N	["Jeff"]
tt10270220	nm0857682	actress	\N	["Hélène Janssens"]
tt10270220	nm2179794	actress	\N	["Youlia Doubinski"]
tt10270220	nm4017948	actress	\N	["Jade Jablokov"]
tt10270220	nm0600700	director	\N	\N
tt10270220	nm1903257	writer	writer	\N
tt10270220	nm1876843	writer	\N	\N
tt10270220	nm0257099	producer	producer	\N
tt10270220	nm6444300	composer	\N	\N
tt10270220	nm3729732	composer	\N	\N
tt10270220	nm9886139	cinematographer	\N	\N
tt10270220	nm2103936	editor	\N	\N
tt10270220	nm5839579	casting_director	\N	\N
tt10270220	nm5589010	production_designer	\N	\N
tt10270220	nm2373623	production_designer	\N	\N
tt8514626	nm5057049	actress	\N	["Carol"]
tt8514626	nm2476029	actor	\N	["Noah The All Knowing"]
tt8514626	nm5999783	actor	\N	["Goose"]
tt8514626	nm2170373	actress	\N	["Jacqui"]
tt8514626	nm4919713	actor	\N	["Ace"]
tt8514626	nm3675059	actress	\N	["Nora"]
tt8514626	nm8153235	actor	\N	["Brandon"]
tt8514626	nm2599188	actor	\N	["Benny"]
tt8514626	nm4019838	actor	\N	["Spencer"]
tt8514626	nm2752699	actress	\N	["Megan"]
tt8514626	nm2817300	director	\N	\N
tt8514626	nm2599188	writer	\N	\N
tt8514626	nm8435835	editor	\N	\N
tt8514626	nm7488717	editor	\N	\N
tt6818168	nm5298178	director	director	\N
tt6818168	nm5298178	writer	writer	\N
tt1886422	nm2498668	self	\N	["Self - Host"]
tt1886422	nm1486462	self	\N	["Self"]
tt1886422	nm1484144	self	\N	["Self"]
tt1886422	nm0629212	self	\N	["Self"]
tt1886422	nm0827372	self	\N	["Self"]
tt1886422	nm0900184	self	\N	["Self"]
tt30737907	nm1146704	actor	\N	["Narrátor"]
tt30737907	nm9418531	director	\N	\N
tt30737907	nm9418531	writer	\N	\N
tt30737907	nm9395208	cinematographer	\N	\N
tt30737907	nm9418531	cinematographer	\N	\N
tt30737907	nm15657887	editor	\N	\N
tt30737907	nm2555592	editor	\N	\N
tt14913300	nm1916895	self	\N	["Self"]
tt14913300	nm9502936	self	\N	["Self"]
tt8658644	nm0377578	director	\N	\N
tt8658644	nm4437031	director	\N	\N
tt8658644	nm0377578	writer	\N	\N
tt8658644	nm4437031	writer	\N	\N
tt8658644	nm0377578	producer	producer	\N
tt8658644	nm4437031	producer	producer	\N
tt8658644	nm0377578	composer	\N	\N
tt8658644	nm0377578	cinematographer	\N	\N
tt8658644	nm4437031	cinematographer	\N	\N
tt8658644	nm0377578	editor	\N	\N
tt8658644	nm4437031	editor	\N	\N
tt27074230	nm0680460	writer	written by	\N
tt27074230	nm1116661	producer	producer	\N
tt34153151	nm0832853	self	\N	["Self - Commentator"]
tt34153151	nm0706347	director	\N	\N
tt34153151	nm14077674	producer	producer	\N
tt7650018	nm1481309	self	\N	["Self - Programledare"]
tt7650018	nm1495610	self	\N	["Self - Presentatör"]
tt7650018	nm0351401	self	\N	["Self"]
tt7650018	nm0845632	self	\N	["Self - Gäst"]
tt7650018	nm5280830	writer	writer	\N
tt0602307	nm0186314	actor	\N	["Col. Hogan"]
tt0602307	nm0459252	actor	\N	["Col. Klink"]
tt0602307	nm0052308	actor	\N	["Sgt. Schultz"]
tt0602307	nm0165145	actor	\N	["LeBeau"]
tt0602307	nm0206241	actor	\N	["Newkirk"]
tt0602307	nm0397051	actor	\N	["Carter"]
tt0602307	nm0913485	actor	\N	["Baker"]
tt0602307	nm0398466	actor	\N	["General Wexler"]
tt0602307	nm0833628	actor	\N	["Karl"]
tt0602307	nm0605401	actor	\N	["Gestapo Officer"]
tt0602307	nm0518719	director	\N	\N
tt0602307	nm0548893	writer	written by	\N
tt0602307	nm0270640	writer	creator	\N
tt0602307	nm0748665	writer	creator	\N
tt0602307	nm0130004	producer	producer	\N
tt0602307	nm0432924	cinematographer	director of photography	\N
tt0602307	nm0954771	editor	\N	\N
tt3173212	nm1727073	self	\N	["Self - Host"]
tt3173212	nm0342533	self	\N	["Self - Jury"]
tt3173212	nm4260984	self	\N	["Self - Jury"]
tt3173212	nm5926673	self	\N	["Self - Jury"]
tt3173212	nm5957647	director	\N	\N
tt3173212	nm8319216	director	\N	\N
tt3173212	nm5957651	writer	\N	\N
tt3173212	nm5957649	writer	\N	\N
tt3173212	nm5957650	writer	\N	\N
tt4085854	nm5828592	self	\N	["Self"]
tt6842868	nm8667073	actor	\N	["Jon"]
tt6842868	nm8961448	actress	\N	\N
tt6842868	nm8667073	director	\N	\N
tt6842868	nm8667073	writer	\N	\N
tt6842868	nm2148639	composer	\N	\N
tt6842868	nm8556492	cinematographer	\N	\N
tt6842868	nm8961448	editor	editor	\N
tt6445822	nm0568711	actor	\N	["Phil Mitchell"]
tt6445822	nm0908707	actress	\N	["Kat Slater"]
tt6445822	nm1119001	actress	\N	["Sam Mitchell"]
tt6445822	nm0212853	actress	\N	["Sharon Watts"]
tt6445822	nm0851899	actress	\N	["Kathy Beale"]
tt6445822	nm0144231	actress	\N	["Sonia Fowler"]
tt6445822	nm0111910	actress	\N	["Janine Butcher"]
tt6445822	nm0245705	actor	\N	["Mick Carter"]
tt6445822	nm0109156	actress	\N	["Linda Carter"]
tt6445822	nm0668698	actress	\N	["Eve Unwin"]
tt6445822	nm1512410	director	\N	\N
tt6445822	nm0321244	writer	written by	\N
tt6445822	nm0808850	writer	series created by	\N
tt6445822	nm0390852	writer	series created by	\N
tt6445822	nm12528268	writer	story editor	\N
tt6445822	nm13235847	editor	\N	\N
tt6445822	nm1369760	casting_director	casting_director	\N
tt6445822	nm0186224	casting_director	casting_director	\N
tt6445822	nm0240138	production_designer	series designer	\N
tt6445822	nm1253921	production_designer	designer	\N
tt10637370	nm10830822	self	\N	["Self - Host"]
tt10637370	nm4058310	self	\N	["Self - Host"]
tt10637370	nm10830823	actor	\N	["Mr. 97 - Self"]
tt10637370	nm10847512	self	\N	["Self"]
tt10637370	nm10830822	writer	\N	\N
tt10637370	nm4058310	writer	\N	\N
tt10637370	nm10830823	producer	producer	\N
tt29273868	nm15293029	self	\N	["Self - Co-Host"]
tt29273868	nm15292922	self	\N	["Self - Co-Host"]
tt3637698	nm0005277	self	\N	["Self - Host"]
tt3637698	nm0725200	self	\N	["Self - Co-Host"]
tt3637698	nm0001484	self	\N	["Self - Guest"]
tt3637698	nm0001824	self	\N	["Self - Guest"]
tt3637698	nm1626784	self	\N	["Themselves - Musical Guest"]
tt3637698	nm2923086	self	\N	["Themselves - House Band"]
tt0595110	nm0586003	actor	\N	["Edward Elric"]
tt0595110	nm0586003	actor	\N	["Edward Elric"]
tt0595110	nm1309787	actor	\N	["Alphonse Elric"]
tt0595110	nm1309787	actor	\N	["Alphonse Elric"]
tt0595110	nm0992184	actor	\N	["Roy Mustang"]
tt0595110	nm0992184	actor	\N	["Roy Mustang"]
tt0595110	nm0163806	actor	\N	["Scar"]
tt0595110	nm0163806	actor	\N	["Scar"]
tt0595110	nm0754526	actor	\N	["Alex Louis Armstrong"]
tt0595110	nm0754526	actor	\N	["Alex Louis Armstrong"]
tt0595110	nm0833185	actor	\N	["Maes Hughes"]
tt0595110	nm0833185	actor	\N	["Maes Hughes"]
tt0595110	nm1513684	actress	\N	["Riza Hawkeye"]
tt0595110	nm1513684	actress	\N	["Riza Hawkeye"]
tt0595110	nm0566787	actress	\N	["Maria Ross"]
tt0595110	nm0566787	actress	\N	["Maria Ross"]
tt0595110	nm1154161	actress	\N	["Lust"]
tt0595110	nm1154161	actress	\N	["Lust"]
tt0595110	nm0143801	actor	\N	["Gluttony"]
tt0595110	nm0143801	actor	\N	["Gluttony"]
tt0595110	nm1159782	director	\N	\N
tt0595110	nm2977109	director	director	\N
tt0595110	nm2282696	director	director	\N
tt0595110	nm1562522	director	director	\N
tt0595110	nm0014556	writer	story editor	\N
tt0595110	nm2086079	writer	writer	\N
tt0595110	nm1890325	writer	english adaptation	\N
tt0595110	nm1159296	writer	\N	\N
tt0595110	nm1857237	producer	producer	\N
tt0595110	nm0590915	producer	producer	\N
tt0595110	nm1857377	producer	producer	\N
tt0595110	nm0651914	composer	\N	\N
tt0595110	nm2365577	cinematographer	director of photography	\N
tt0595110	nm2680117	cinematographer	director of photography	\N
tt0595110	nm2628849	editor	\N	\N
tt0595110	nm0032925	production_designer	\N	\N
tt7956220	nm0246735	actor	\N	["Óscar Leal (2008-)"]
tt7956220	nm0555101	actress	\N	["Tatiana Gómez (2008-)"]
tt7956220	nm0581763	actor	\N	["Rodolfo Castañeda (2008-)"]
tt7956220	nm1400129	actress	\N	["Jessica Antonieta Morales (2008-)"]
tt7956220	nm1875953	actor	\N	["Alberto 'Vaselino' (2008-)"]
tt7956220	nm0033040	actor	\N	\N
tt7956220	nm3350191	actor	\N	\N
tt7956220	nm0133189	actress	\N	["Nicole Aguilar (2008-)"]
tt7956220	nm3014753	actor	\N	["Nardo"]
tt7956220	nm3349091	actress	\N	\N
tt7956220	nm1629056	director	\N	\N
tt7956220	nm1160067	director	\N	\N
tt7956220	nm0273256	writer	creator	\N
tt7956220	nm1397144	writer	writer	\N
tt7956220	nm1142046	writer	creator	\N
tt7956220	nm0702220	writer	writer	\N
tt7956220	nm0897852	producer	producer	\N
tt7956220	nm10519309	composer	\N	\N
tt7956220	nm9881654	production_designer	\N	\N
tt8817384	nm0275182	actor	\N	["Anestis Peskostas"]
tt8817384	nm0080107	actor	\N	["Nikolas Deligiannis"]
tt8817384	nm0874656	actress	\N	["Amalia Parisi"]
tt8817384	nm0888937	actor	\N	["Papous Manthos"]
tt8817384	nm0064828	actress	\N	["Areti"]
tt8817384	nm0307944	actor	\N	["Notis Parisis"]
tt8817384	nm0323320	actress	\N	["Olympia Parisi"]
tt8817384	nm0900605	actress	\N	["Voula"]
tt8817384	nm1130143	actress	\N	["Athina"]
tt8817384	nm8686080	actor	\N	["Mikros Manthos"]
tt8817384	nm0260642	director	\N	\N
tt8817384	nm0407049	writer	\N	\N
tt8817384	nm1168290	producer	producer	\N
tt8817384	nm1082536	composer	\N	\N
tt8817384	nm1243996	cinematographer	\N	\N
tt8817384	nm1463435	editor	\N	\N
tt8817384	nm1005109	production_designer	\N	\N
tt28578224	nm0403569	writer	created by	\N
tt28578224	nm0403568	writer	created by	\N
tt28578224	nm0047143	writer	head writer	\N
tt28578224	nm0600353	producer	producer	\N
tt26446160	nm7622554	editor	editor	\N
tt26446160	nm11231158	editor	editor	\N
tt26446160	nm14502740	editor	editor	\N
tt0781472	nm0654637	actress	\N	["Lulu"]
tt0781472	nm0962476	actress	\N	["Nana"]
tt0781472	nm1927097	actress	\N	\N
tt0781472	nm1976879	actress	\N	\N
tt0781472	nm0394676	actor	\N	\N
tt0781472	nm1689927	actress	\N	["Natsuo"]
tt0781472	nm0440573	actor	\N	["Tenpei"]
tt0781472	nm2118647	actress	\N	\N
tt0781472	nm2601586	actor	\N	\N
tt0781472	nm1118888	actress	\N	\N
tt0781472	nm0950834	director	\N	\N
tt0781472	nm0766263	writer	writer	\N
tt0781472	nm1119061	composer	\N	\N
tt0781472	nm0298018	cinematographer	\N	\N
tt0781472	nm0408039	editor	\N	\N
tt27199631	nm12112560	actor	\N	["Bhoominathan Mahadevan"]
tt27199631	nm13339202	actress	\N	["Muthuazhagu"]
tt27199631	nm9930602	actress	\N	\N
tt27199631	nm11730546	actress	\N	["Pechiammal"]
tt27199631	nm13796582	director	\N	\N
tt27199631	nm13796581	writer	\N	\N
tt27199631	nm13796583	producer	producer	\N
tt1063739	nm1600031	actress	\N	["Violet Wilson"]
tt1063739	nm0183067	actor	\N	["Sean Tully"]
tt1063739	nm0165905	actress	\N	["Eileen Grimshaw"]
tt1063739	nm1152688	actor	\N	["Jamie Baldwin"]
tt1063739	nm0339998	actor	\N	["Steve McDonald"]
tt1063739	nm0153002	actor	\N	["Lloyd Mullaney"]
tt1063739	nm0200538	actress	\N	["Leanne Battersby"]
tt1063739	nm0258203	actress	\N	["Janice Battersby"]
tt1063739	nm0564037	actress	\N	["Fiz Brown"]
tt1063739	nm0381420	actress	\N	["Hayley Cropper"]
tt1063739	nm0275470	writer	written by	\N
tt1063739	nm0912726	writer	creator	\N
tt1063739	nm1068239	producer	producer	\N
tt0613729	nm0000912	self	\N	["Self"]
tt0613729	nm0001362	self	\N	["Self"]
tt0613729	nm0924964	actor	\N	["Talent Agent Weber"]
tt0613729	nm0012441	actress	\N	["Weber's Secretary"]
tt0613729	nm1087211	actor	\N	["Jimmy Durante as a boy"]
tt0613729	nm0425003	actor	\N	["Juggler"]
tt0613729	nm0568483	actor	\N	["Two-Headed Man"]
tt0613729	nm1041594	actor	\N	["Vaudeville Barbershop Quartet"]
tt0613729	nm0208111	director	\N	\N
tt0613729	nm0674768	writer	written by	\N
tt0613729	nm0051332	writer	written by	\N
tt0613729	nm0329958	writer	written by	\N
tt0613729	nm0325784	writer	written by	\N
tt0613729	nm0208111	producer	producer	\N
tt0613729	nm0581220	composer	\N	\N
tt0613729	nm0002228	cinematographer	director of photography	\N
tt0613729	nm0926597	editor	\N	\N
tt1377507	nm2655018	actress	\N	["Girlfriend"]
tt1377507	nm3311409	actor	\N	["Guy"]
tt1377507	nm2565857	actor	\N	["Detective"]
tt1377507	nm3320623	actor	\N	["Detective"]
tt1377507	nm2349008	director	\N	\N
tt1377507	nm2349008	writer	\N	\N
tt1377507	nm2349008	editor	\N	\N
tt0320300	nm0710012	director	\N	\N
tt0320300	nm0710012	writer	\N	\N
tt0320300	nm4046361	cinematographer	\N	\N
tt0320300	nm1185842	editor	\N	\N
tt4218926	nm4515899	actress	\N	["Melanie"]
tt4218926	nm6929622	actor	\N	["Richard"]
tt4218926	nm6929621	actress	\N	["Gina"]
tt4218926	nm6929623	writer	writer	\N
tt1900675	nm2817178	self	\N	["Self"]
tt1900675	nm2822590	self	\N	["Self"]
tt1900675	nm2821773	self	\N	["Self"]
tt1900675	nm2174052	self	\N	["Self"]
tt1900675	nm0379458	director	\N	\N
tt1900675	nm1048947	producer	producer	\N
tt1900675	nm0251041	composer	composer	\N
tt1900675	nm5134013	editor	\N	\N
tt1900675	nm1052949	editor	editor	\N
tt1900675	nm2348925	editor	\N	\N
tt1900675	nm2480954	editor	\N	\N
tt7543426	nm1972944	self	\N	["Self - Host"]
tt7543426	nm5267120	composer	composer	\N
tt13192086	nm0931354	self	\N	["Self - Host"]
tt0011342	nm0269771	actress	\N	["The Blacksmith's Daughter"]
tt0011342	nm0079645	actor	\N	["The Daughter's Sweetheart"]
tt0011342	nm0026342	actor	\N	["The Blacksmith"]
tt0011342	nm0035627	actor	\N	["The New Beau"]
tt0011342	nm0547956	actor	\N	["The Child"]
tt0011342	nm1275393	actor	\N	["Teddy the Dog"]
tt0011342	nm0020623	actress	\N	["Minor Role"]
tt0011342	nm0446384	actress	\N	["Minor Role"]
tt0011342	nm0446756	actor	\N	["Minor Role"]
tt0011342	nm0570230	actress	\N	["Minor Role"]
tt0011342	nm0809467	director	\N	\N
tt0011342	nm0784407	producer	producer	\N
tt0011342	nm0263120	cinematographer	\N	\N
tt0011342	nm0413164	cinematographer	\N	\N
tt6859608	nm1554515	actor	\N	\N
tt6859608	nm3374810	actor	\N	\N
tt6859608	nm2081663	actor	\N	\N
tt6859608	nm2082188	actress	\N	\N
tt6859608	nm2532752	actress	\N	\N
tt6859608	nm4748250	actor	\N	\N
tt6859608	nm2607312	actress	\N	\N
tt6859608	nm1782800	actor	\N	\N
tt6859608	nm4768978	actress	\N	\N
tt6859608	nm0826320	director	\N	\N
tt6859608	nm0346351	writer	screenplay	\N
tt6859608	nm9854799	writer	writer	\N
tt6859608	nm1512930	writer	story	\N
tt6859608	nm0736031	producer	producer	\N
tt3127864	nm7792451	self	\N	["Self - District Attorney"]
tt3127864	nm7792449	self	\N	["Self - Defense Attorney"]
tt3127864	nm7792450	self	\N	["Self - District Attorney"]
tt3127864	nm7954395	self	\N	["Self"]
tt3127864	nm7792448	self	\N	["Self - Defendant"]
tt3127864	nm7790377	self	\N	["Self - Judge"]
tt3218850	nm2126101	actor	\N	["Damián Fabré"]
tt3218850	nm4047805	actress	\N	["Marina Reverte"]
tt3218850	nm4047805	actress	\N	["Magdalena"]
tt3218850	nm1669154	actor	\N	["Hernán Saldaña"]
tt3218850	nm0959926	actor	\N	["Fulgencio Salazar"]
tt3218850	nm0739715	actress	\N	["Mercedes Artiga"]
tt3218850	nm0784589	actress	\N	["Úrsula"]
tt3218850	nm0758382	actress	\N	["Rebeca"]
tt3218850	nm0406406	actor	\N	["Bagre"]
tt3218850	nm0722042	actor	\N	["Comandante Robles"]
tt3218850	nm0207010	actor	\N	["Nereo"]
tt3218850	nm0586069	director	\N	\N
tt3218850	nm0602600	director	\N	\N
tt3218850	nm0647222	writer	original story	\N
tt3218850	nm0009484	writer	writer	\N
tt3218850	nm1294113	writer	story editor	\N
tt3218850	nm7434564	writer	literary advisor	\N
tt3218850	nm9386987	composer	composer	\N
tt3218850	nm1355084	cinematographer	cinematographer	\N
tt3218850	nm0638955	cinematographer	cinematographer	\N
tt3218850	nm1355053	editor	editor	\N
tt3218850	nm1356348	editor	editor	\N
tt35319700	nm16898256	self	\N	["Self - Guest"]
tt35319700	nm16895469	self	\N	["Self - Guest"]
tt0456813	nm1644076	actor	\N	["Various Characters"]
tt0456813	nm0616504	actor	\N	["Various Characters"]
tt0456813	nm0652187	actress	\N	["Various Characters"]
tt0456813	nm1901822	actress	\N	["Various Characters"]
tt0456813	nm1876504	actress	\N	["Various Characters"]
tt0456813	nm1130854	actor	\N	["Various Characters"]
tt0456813	nm1437967	actress	\N	["Various Characters"]
tt0456813	nm1799835	actress	\N	["Various Characters"]
tt0456813	nm1433610	actor	\N	["Various Characters"]
tt0456813	nm0176182	actress	\N	["Various Characters"]
tt16235608	nm0173667	self	\N	["Self - Host"]
tt16235608	nm0939712	self	\N	["Self - Announcer"]
tt16235608	nm0271573	director	\N	\N
tt16235608	nm0271588	producer	producer	\N
tt18072628	nm13025061	self	\N	["Self - Host"]
tt18072628	nm13027758	self	\N	["Self - Co-Host"]
tt18072628	nm12846446	self	\N	["Self - Guest"]
tt18072628	nm13027821	self	\N	["Self - Guest"]
tt18072628	nm13073439	self	\N	["Self - Guest"]
tt11630922	nm8088184	actor	\N	["SuperCop Jai"]
tt11630922	nm11062125	actor	\N	["Sub Inspector Aditya"]
tt11630922	nm4480587	actress	\N	["SuperCop Shaina"]
tt11630922	nm5450009	actress	\N	["Adonia, the Vampire Princess"]
tt11630922	nm6216582	actor	\N	["Veer, the Vampire Prince"]
tt11630922	nm11239202	actor	\N	["(2012)"]
tt11630922	nm6842937	director	director	\N
tt11630922	nm1855392	director	\N	\N
tt11630922	nm5307766	writer	\N	\N
tt11630922	nm1855392	writer	created by	\N
tt11630922	nm3575029	writer	\N	\N
tt11630922	nm1247173	writer	created by	\N
tt11630922	nm1855392	producer	producer	\N
tt11630922	nm1247173	producer	producer	\N
tt11630922	nm9379213	cinematographer	director of photography	\N
tt3287444	nm1716881	self	\N	["Self - Co-Host"]
tt3287444	nm1972944	self	\N	["Self - Co-Host"]
tt1921364	nm0438496	actor	\N	["Byomkesh Bakshi"]
tt1921364	nm0706953	actor	\N	["Ajit Kumar Banerji"]
tt1921364	nm4432541	actor	\N	["Punti Ram"]
tt1921364	nm1098018	actress	\N	["Satyavati"]
tt1921364	nm1168073	actor	\N	["Inspector Sen"]
tt1921364	nm5034831	actor	\N	["Motilal"]
tt1921364	nm6395387	actor	\N	["Makhan Lal"]
tt1921364	nm5034859	actor	\N	["Chunni Lal"]
tt1921364	nm1240831	actor	\N	["Sukumar"]
tt1921364	nm0154113	director	director	\N
tt1921364	nm0051779	writer	story	\N
tt1921364	nm0154113	writer	screenplay	\N
tt1921364	nm2058759	writer	screenplay	\N
tt1921364	nm1160316	composer	\N	\N
tt1921364	nm1657965	cinematographer	\N	\N
tt1921364	nm2392563	editor	\N	\N
tt12163244	nm0304265	actor	\N	\N
tt12163244	nm5182167	actor	\N	\N
tt12163244	nm7021588	director	\N	\N
tt12163244	nm10785618	writer	\N	\N
tt12163244	nm0049335	producer	producer	\N
tt5608490	nm7265004	self	\N	["Self - Play-by-Play Announcer"]
tt5608490	nm7265005	self	\N	["Self - Color Commentator"]
tt5608490	nm2026184	self	\N	["Self - Winnipeg Blue Bombers Head Coach"]
tt5608490	nm7524705	self	\N	["Self - Hamilton Tiger-Cats Head Coach"]
tt0847203	nm0821048	self	\N	["Self"]
tt0847203	nm1796216	actor	\N	["Kyle Stack"]
tt0847203	nm2388621	actress	\N	["Camila Stack"]
tt0847203	nm1927322	actor	\N	["Jordan, the boyfriend"]
tt0847203	nm0185361	actress	\N	["Mimi Stack"]
tt2101793	nm3988727	self	\N	["Self"]
tt2101793	nm3574961	actor	\N	["Reenactment"]
tt2101793	nm4884436	actor	\N	["Reenactment"]
tt2101793	nm4884845	actress	\N	["Reenactment"]
tt2101793	nm2801334	actress	\N	["Reenactment"]
tt2101793	nm4884999	actor	\N	["Reenactment"]
tt2101793	nm2052565	actor	\N	["Reenactment"]
tt2101793	nm4034668	actor	\N	["Reenactment"]
tt2101793	nm3034735	actor	\N	["Reenactment"]
tt2101793	nm4749394	actor	\N	["Renactment"]
tt2101793	nm0850387	producer	producer	\N
tt2101793	nm2213174	producer	producer	\N
tt2101793	nm0017002	cinematographer	\N	\N
tt2101793	nm9227454	cinematographer	\N	\N
tt2101793	nm2532484	editor	\N	\N
tt2101793	nm2564194	editor	editor	\N
tt2101793	nm2883089	editor	\N	\N
tt2101793	nm1536072	editor	\N	\N
tt2101793	nm0003119	casting_director	\N	\N
tt2101793	nm0573076	casting_director	casting_director	\N
tt10537660	nm0002010	actor	\N	["Jean Boulin"]
tt10537660	nm0688143	actor	\N	["Le baron Claude Tranchant"]
tt10537660	nm0508293	actor	\N	["Yves Lamarque"]
tt10537660	nm1569942	actor	\N	["Cyril, le chef cuisinier"]
tt10537660	nm0658041	actress	\N	["Carmen Moreno"]
tt10537660	nm1720035	actress	\N	["La baronne Éliane Tranchant"]
tt10537660	nm0220798	actor	\N	["Andreas Kalamannis"]
tt10537660	nm0108431	actor	\N	["Jacquot"]
tt10537660	nm0000367	actor	\N	["Maurice Lefranc, le directeur général de la P.J."]
tt10537660	nm7307741	actress	\N	["Laura"]
tt10537660	nm1318381	director	\N	\N
tt10537660	nm0002010	writer	screenplay	\N
tt10537660	nm0355213	writer	screenplay	\N
tt10537660	nm0688585	writer	screenplay	\N
tt10537660	nm0216635	producer	producer	\N
tt10537660	nm6249597	composer	\N	\N
tt10537660	nm4315422	composer	\N	\N
tt10537660	nm0346665	cinematographer	\N	\N
tt10537660	nm4150464	editor	\N	\N
tt10537660	nm1055024	casting_director	\N	\N
tt10537660	nm0248355	production_designer	\N	\N
tt11611354	nm0360564	writer	writer	\N
tt11611354	nm8254218	producer	producer	\N
tt11611354	nm11019762	producer	producer	\N
tt11611354	nm7152800	producer	producer	\N
tt11611354	nm1014326	producer	producer	\N
tt11611354	nm5493796	editor	\N	\N
tt30276030	nm6650425	self	\N	["Self - Co-Anchor"]
tt30276030	nm6732293	self	\N	["Self - Meteorologist"]
tt30276030	nm15576824	self	\N	["Self - Sportscaster"]
tt30276030	nm15576286	self	\N	["Self - Co-Anchor"]
tt0510524	nm0865435	actor	\N	["Dr. Eberhard Scheu"]
tt0510524	nm0871156	actor	\N	["Dr. Robert M. Voss"]
tt0510524	nm0778081	actress	\N	["Dr. Maria Jaspers"]
tt0510524	nm0806833	actor	\N	["Dr. Farouk Bennacef"]
tt0510524	nm0004077	actor	\N	["Dr. Lars Vonderwerth"]
tt0510524	nm0257120	actress	\N	["Gisela Ebert"]
tt0510524	nm0439952	actor	\N	["Helmut Brenneke"]
tt0510524	nm0867661	actress	\N	["Veronica Bleibtreu"]
tt0510524	nm0257130	actress	\N	["Dorothea Wegener"]
tt0510524	nm1482180	actress	\N	["Charlotte Marquardt"]
tt0510524	nm0634882	director	\N	\N
tt0510524	nm0921423	writer	\N	\N
tt0510524	nm0775645	producer	producer	\N
tt0510524	nm0485998	composer	\N	\N
tt0510524	nm0776154	composer	\N	\N
tt0510524	nm1003218	cinematographer	\N	\N
tt0510524	nm0461398	editor	\N	\N
tt0510524	nm0880214	casting_director	\N	\N
tt0510524	nm0530704	production_designer	\N	\N
tt28549748	nm2381962	director	\N	\N
tt28549748	nm0406774	producer	producer	\N
tt18073740	nm0441972	actress	\N	["Sazae Fuguta"]
tt18073740	nm0605713	director	\N	\N
tt18073740	nm7740131	writer	\N	\N
tt18073740	nm4002004	writer	\N	\N
tt18073740	nm1261208	writer	\N	\N
tt18073740	nm1618384	producer	producer	\N
tt18073740	nm5095280	producer	producer	\N
tt18073740	nm5321127	producer	producer	\N
tt18073740	nm6071465	producer	producer	\N
tt18073740	nm7432707	cinematographer	\N	\N
tt18073740	nm7432711	editor	\N	\N
tt18073740	nm7432710	editor	\N	\N
tt18073740	nm0538639	editor	\N	\N
tt18073740	nm1159969	editor	\N	\N
tt3413830	nm1393016	self	\N	["Self - Host"]
tt3413830	nm0283836	self	\N	["Self - Host"]
tt8553926	nm9904356	director	\N	\N
tt8553926	nm4536886	writer	\N	\N
tt8553926	nm4536886	producer	producer	\N
tt8553926	nm0354981	cinematographer	cinematographer	\N
tt8553926	nm0544159	editor	\N	\N
tt0929487	nm1188213	director	\N	\N
tt0929487	nm0436591	director	\N	\N
tt0929487	nm1188213	producer	producer	\N
tt0929487	nm0436591	producer	producer	\N
tt0929487	nm0436591	cinematographer	\N	\N
tt14021866	nm8124134	self	\N	["Self"]
tt14021866	nm10591204	actress	\N	\N
tt28655501	nm0327076	actor	\N	["Ricardo"]
tt28655501	nm1285140	actor	\N	["Tsong"]
tt28655501	nm0261824	actor	\N	["John"]
tt28655501	nm1856341	actress	\N	\N
tt28655501	nm1230029	actress	\N	\N
tt28655501	nm1008648	actor	\N	\N
tt28655501	nm0739418	actress	\N	\N
tt28655501	nm0898062	actress	\N	\N
tt28655501	nm1203430	director	\N	\N
tt28655501	nm8820487	writer	\N	\N
tt28655501	nm1310983	writer	\N	\N
tt28655501	nm1628344	writer	\N	\N
tt28655501	nm0419494	writer	\N	\N
tt14792880	nm12638835	actress	\N	["Rekha"]
tt14792880	nm12638836	actress	\N	["Shibz"]
tt14792880	nm8873223	director	\N	\N
tt14792880	nm8873223	writer	screenplay	\N
tt14792880	nm9556868	producer	producer	\N
tt14792880	nm9556867	composer	\N	\N
tt14792880	nm9556866	composer	\N	\N
tt14792880	nm9101187	cinematographer	director of photography	\N
tt14792880	nm8873223	editor	\N	\N
tt0563260	nm0863790	actor	\N	["Dr. Brendan 'Mac' McGuire"]
tt0563260	nm0188780	actress	\N	["Kate McGuire"]
tt0563260	nm0926982	actress	\N	["Dr. Helen Thompson"]
tt0563260	nm0124719	actor	\N	["Dr. Marc Eliot"]
tt0563260	nm0048159	actor	\N	["Dr. Benjamin Kwarme"]
tt0563260	nm0730220	actress	\N	["Dr. Jude Carlyle"]
tt0563260	nm0038018	actress	\N	["Kali Hamanda"]
tt0563260	nm1054175	actress	\N	["Faith Walker"]
tt0563260	nm0905632	actress	\N	["Katrina Bullen"]
tt0563260	nm0236071	actor	\N	["Alex North"]
tt0563260	nm1020303	director	director	\N
tt0563260	nm1140638	writer	written by	\N
tt0563260	nm0873703	producer	producer	\N
tt0563260	nm1366563	cinematographer	director of photography	\N
tt0563260	nm0731453	editor	\N	\N
tt1323446	nm2119736	self	\N	["Self - Host"]
tt1323446	nm3168045	self	\N	["Self - Camera Operator"]
tt1323446	nm0071176	self	\N	["Self - Host"]
tt1323446	nm0208194	self	\N	["Self"]
tt1323446	nm0320938	director	\N	\N
tt1323446	nm3168503	writer	story	\N
tt1323446	nm0320938	cinematographer	cinematographer	\N
tt4121898	nm6845384	actor	\N	["Presenter 1"]
tt4121898	nm6845383	actor	\N	["Presenter 2"]
tt4121898	nm6479269	actor	\N	["Presenter 3"]
tt4121898	nm6845382	director	\N	\N
tt4121898	nm6479269	writer	collaborating writer	\N
tt4121898	nm6845382	writer	writer	\N
tt4121898	nm6047851	producer	producer	\N
tt4121898	nm6845385	composer	composer	\N
tt4121898	nm6845386	editor	lead editor	\N
tt15801560	nm9111300	self	\N	["Self - Host"]
tt15801560	nm13045076	director	\N	\N
tt15801560	nm13045075	writer	\N	\N
tt15801560	nm13045077	editor	\N	\N
tt3300460	nm0007746	self	\N	["Self"]
tt3300460	nm0031317	self	\N	["Self"]
tt3300460	nm0033420	self	\N	["Self"]
tt3300460	nm1374448	self	\N	["Self"]
tt3300460	nm0045751	self	\N	["Self"]
tt3300460	nm0078057	self	\N	["Self"]
tt3300460	nm0081722	self	\N	["Self"]
tt3300460	nm2401304	self	\N	["Self"]
tt3300460	nm0094717	self	\N	["Self"]
tt3300460	nm0094730	self	\N	["Self"]
tt3300460	nm2546221	director	\N	\N
tt3300460	nm6054203	director	\N	\N
tt3300460	nm2546221	writer	\N	\N
tt3300460	nm6054203	producer	producer	\N
tt3300460	nm0820034	composer	\N	\N
tt3300460	nm0007749	cinematographer	\N	\N
tt3300460	nm6054205	editor	\N	\N
tt3300460	nm6054203	editor	\N	\N
tt15254298	nm10730102	director	\N	\N
tt15254298	nm10730102	writer	\N	\N
tt15254298	nm3826010	writer	\N	\N
tt15254298	nm1701930	cinematographer	\N	\N
tt1738052	nm0493067	director	\N	\N
tt1738052	nm4109111	producer	producer	\N
tt15132940	nm1563271	self	\N	["Self - Anchor"]
tt15132940	nm0211722	self	\N	["Self"]
tt15132940	nm1563399	self	\N	["Self - Reporter"]
tt15132940	nm3004584	self	\N	["Self"]
tt15132940	nm2933502	self	\N	["Self"]
tt13651344	nm1047419	self	\N	["Self"]
tt13651344	nm1047419	self	\N	["Host"]
tt4116048	nm1930273	actor	\N	\N
tt4116048	nm3639013	actress	\N	\N
tt4116048	nm3912387	actor	\N	\N
tt4116048	nm4254152	actor	\N	\N
tt4116048	nm4697862	actress	\N	\N
tt4116048	nm0253748	actress	\N	\N
tt4116048	nm3878628	actor	\N	\N
tt4116048	nm3462502	actor	\N	\N
tt4116048	nm5357691	actor	\N	\N
tt4116048	nm4862149	actress	\N	\N
tt4116048	nm3156345	director	\N	\N
tt4116048	nm1476237	writer	\N	\N
tt4116048	nm0283905	writer	\N	\N
tt4116048	nm2079484	producer	producer	\N
tt4116048	nm3889830	cinematographer	\N	\N
tt4116048	nm6636114	editor	\N	\N
tt1099850	nm1505539	producer	producer	\N
tt1099850	nm1416165	producer	producer	\N
tt1099850	nm0897590	producer	producer	\N
tt1099850	nm3328646	composer	\N	\N
tt1099850	nm1013680	editor	\N	\N
tt11843952	nm0684840	actress	\N	["Patrícia"]
tt11843952	nm0890394	actor	\N	["Vudu"]
tt11843952	nm0051678	director	\N	\N
tt11843952	nm1065581	writer	\N	\N
tt11843952	nm1065952	writer	\N	\N
tt4568854	nm5232957	actress	\N	["Kar"]
tt4568854	nm5963653	actor	\N	["Jhett Dimes"]
tt4568854	nm6767303	actress	\N	["Luce"]
tt4568854	nm6767303	director	\N	\N
tt4568854	nm5232957	writer	writer	\N
tt4568854	nm6767303	writer	\N	\N
tt1377041	nm0000268	self	\N	["Self"]
tt1377041	nm1635586	director	\N	\N
tt1377041	nm0742589	director	segment director	\N
tt13622092	nm10323265	self	\N	["Self"]
tt13622092	nm3987922	self	\N	["Self - Host"]
tt13622092	nm12137211	writer	\N	\N
tt13622092	nm12137212	writer	\N	\N
tt9489942	nm3766090	self	\N	["Self"]
tt9489942	nm3766090	director	\N	\N
tt9489942	nm3766090	writer	\N	\N
tt9489942	nm3766090	producer	producer	\N
tt9489942	nm3766090	editor	\N	\N
tt3972084	nm1411610	actress	\N	["Alicia"]
tt3972084	nm1268637	actor	\N	["Javi"]
tt3972084	nm5936677	actress	\N	["Alma"]
tt3972084	nm0231365	actor	\N	["Camarero"]
tt3972084	nm0284759	director	\N	\N
tt3972084	nm0284759	writer	writer	\N
tt3972084	nm1298574	producer	executive producer	\N
tt3972084	nm1955573	cinematographer	\N	\N
tt3972084	nm1252389	editor	\N	\N
tt3469120	nm11251043	actress	\N	["Mickey"]
tt3469120	nm1200444	director	\N	\N
tt3469120	nm1200444	writer	story editor	\N
tt3469120	nm4298935	producer	producer	\N
tt3469120	nm0180391	production_designer	\N	\N
tt4970204	nm1829292	self	\N	["Self - Host"]
tt4970204	nm11062183	actor	\N	["Detective 1"]
tt4970204	nm12237685	actress	\N	["Jane Carpenter"]
tt4970204	nm4527107	actor	\N	["Coroner"]
tt4970204	nm6634826	actor	\N	["Michael Chalkey"]
tt4970204	nm3746917	actress	\N	["Mavis Chalkey"]
tt4970204	nm4835879	actor	\N	["Carl Carpenter"]
tt4970204	nm0121036	director	\N	\N
tt4970204	nm2275681	writer	\N	\N
tt4970204	nm1948775	producer	producer	\N
tt4970204	nm2064328	cinematographer	\N	\N
tt4970204	nm1712316	cinematographer	\N	\N
tt4970204	nm1358043	editor	\N	\N
tt4970204	nm1339464	casting_director	\N	\N
tt12233736	nm0676318	self	\N	["Self - Presenter"]
tt12233736	nm0285328	self	\N	["Self - Presenter"]
tt12233736	nm3147626	self	\N	["Themselves"]
tt12233736	nm0068386	self	\N	["Self"]
tt12233736	nm0205823	self	\N	["Self"]
tt12233736	nm0800043	self	\N	["Self"]
tt12233736	nm1016385	self	\N	["Self - Voiceover"]
tt12233736	nm2311223	self	\N	["Themselves"]
tt12233736	nm0572112	self	\N	["Self"]
tt12233736	nm1051121	self	\N	["Self"]
tt8670340	nm0534809	actress	\N	["Ester Dellamare"]
tt8670340	nm0039916	actor	\N	["Inácio Sobral"]
tt8670340	nm0267403	actor	\N	["Barão Henrique Sobral"]
tt8670340	nm0079343	actor	\N	["Higino Ventura"]
tt8670340	nm0009334	actress	\N	["Olívia"]
tt8670340	nm0013214	actor	\N	["Manoel"]
tt8670340	nm0023999	actress	\N	["Anita"]
tt8670340	nm0031277	actress	\N	["Violeta"]
tt8670340	nm0033371	actor	\N	\N
tt8670340	nm0041957	actor	\N	["Eurico Navarro"]
tt8670340	nm0033288	director	\N	\N
tt8670340	nm0131258	director	\N	\N
tt8670340	nm0541027	director	\N	\N
tt8670340	nm0276919	director	\N	\N
tt8670340	nm0103819	writer	writer	\N
tt8670340	nm0305349	writer	writer	\N
tt8670340	nm0634036	writer	writer	\N
tt8670340	nm0560429	producer	executive producer	\N
tt8670340	nm1119125	producer	producer	\N
tt8670340	nm0667257	producer	producer	\N
tt8670340	nm0261884	cinematographer	\N	\N
tt1957978	nm4502707	director	\N	\N
tt6862016	nm1164862	actor	\N	["Nick"]
tt6862016	nm0302965	actor	\N	["Well Dressed Man"]
tt6862016	nm0174566	actor	\N	["Cruz"]
tt6862016	nm1312476	actress	\N	["Angela"]
tt6862016	nm3514480	actress	\N	["Helen"]
tt6862016	nm5015390	actress	\N	["Delilah"]
tt6862016	nm0553604	actor	\N	["Mindoro Police Chief"]
tt6862016	nm1493666	actress	\N	["Gloria"]
tt6862016	nm7044552	actor	\N	["Tito"]
tt6862016	nm3137185	actor	\N	["Dark Man"]
tt6862016	nm1639176	director	\N	\N
tt6862016	nm1639176	writer	\N	\N
tt6862016	nm3332604	producer	producer	\N
tt6862016	nm9421154	producer	producer	\N
tt6862016	nm7793986	composer	\N	\N
tt6862016	nm0339704	composer	\N	\N
tt6862016	nm0768179	cinematographer	\N	\N
tt6862016	nm11342010	editor	\N	\N
tt6862016	nm5698360	editor	\N	\N
tt6151298	nm5110271	actor	\N	["Phil"]
tt6151298	nm5864006	actress	\N	["Natalie"]
tt6151298	nm4465743	actor	\N	["Devon"]
tt6151298	nm5107518	actress	\N	["Ashley"]
tt6151298	nm4677687	actor	\N	["Walter"]
tt6151298	nm8920928	actress	\N	["Bianca"]
tt6151298	nm5110271	director	\N	\N
tt6151298	nm4465743	writer	\N	\N
tt6151298	nm5110271	writer	\N	\N
tt6151298	nm5110271	editor	\N	\N
tt6151298	nm5107518	editor	\N	\N
tt7652348	nm0299192	actor	\N	["Piccolo"]
tt7652348	nm0394690	actor	\N	["Vegeta"]
tt7652348	nm0411879	actress	\N	["Android No.18"]
tt7652348	nm0412628	actor	\N	["Shanpa"]
tt7652348	nm1377139	actor	\N	["Kyabe"]
tt7652348	nm7375875	actress	\N	["Ribriane"]
tt7652348	nm1211536	actress	\N	["Caulifla"]
tt7652348	nm0465631	actress	\N	["Zen'o"]
tt7652348	nm1752885	actress	\N	["Caulifla"]
tt7652348	nm1752885	actress	\N	["Caulifla"]
tt7652348	nm0585640	actor	\N	["Tenshinhan"]
tt21054968	nm3983990	self	\N	["Self"]
tt21054968	nm5955634	self	\N	["Self - Host"]
tt21054968	nm5955634	director	\N	\N
tt21054968	nm5955634	writer	\N	\N
tt21054968	nm5955634	producer	producer	\N
tt35277076	nm10558176	self	\N	["Self - Host"]
tt35277076	nm10694461	self	\N	["Self"]
tt35277076	nm12659263	director	\N	\N
tt9335082	nm1616485	actor	\N	["Nandlal Agarwal"]
tt9335082	nm9367136	actor	\N	["Shiv Agarwal"]
tt9335082	nm9367135	actress	\N	["Aastha"]
tt9335082	nm12143373	director	\N	\N
tt9335082	nm7989777	writer	dialogue writer	\N
tt9335082	nm10020704	producer	producer	\N
tt9335082	nm1941818	producer	producer	\N
tt9335082	nm13212057	casting_director	\N	\N
tt22502976	nm1042831	actor	\N	["Mr. Jinx"]
tt22502976	nm1042831	actor	\N	["Mr. Jinx"]
tt3551418	nm3063047	actress	\N	["Brynne"]
tt3551418	nm4252685	actress	\N	["Tyler"]
tt3551418	nm1902165	actress	\N	["Jessica"]
tt3551418	nm3228798	actress	\N	["Angela"]
tt3551418	nm2544291	actor	\N	["MIchael"]
tt3551418	nm2217626	writer	writer	\N
tt3551418	nm3313809	producer	producer	\N
tt3551418	nm1435730	composer	composer	\N
tt4138122	nm2361799	actress	\N	["Bubs"]
tt4138122	nm7150837	actor	\N	["Cosmo"]
tt4138122	nm1048007	actor	\N	["Grumpy Lumpy"]
tt8086740	nm0025457	actor	\N	\N
tt8086740	nm1417512	actor	\N	\N
tt8086740	nm0258710	actress	\N	\N
tt8086740	nm0830634	director	\N	\N
tt8086740	nm7794979	writer	\N	\N
tt8086740	nm0422988	writer	\N	\N
tt27482522	nm4596896	self	\N	["Self - Host"]
tt5731836	nm1633258	writer	writer	\N
tt5731836	nm8191667	editor	\N	\N
tt5731836	nm0932743	casting_director	\N	\N
tt5731836	nm2506145	production_designer	\N	\N
tt10664536	nm0749476	actor	\N	["Charle Ruggles"]
tt10664536	nm0076403	actor	\N	["Chuck Ruggles"]
tt10664536	nm0278646	actor	\N	\N
tt10664536	nm0370151	actor	\N	["Donald Ruggles"]
tt10664536	nm0449905	actress	\N	["Sharon Ruggles"]
tt10664536	nm0518885	actress	\N	["Mary Ann"]
tt10664536	nm0637803	actress	\N	["Donna Ruggles"]
tt10664536	nm0128608	director	\N	\N
tt10664536	nm0680461	writer	\N	\N
tt10664536	nm0397301	writer	writer	\N
tt10664536	nm3182759	producer	producer	\N
tt3960290	nm2283958	actor	\N	["Eli"]
tt3960290	nm2656018	actress	\N	["Alissa"]
tt3960290	nm2280435	actor	\N	["Nick"]
tt3960290	nm2157767	director	\N	\N
tt3960290	nm2280435	writer	\N	\N
tt3960290	nm1761254	producer	producer	\N
tt3960290	nm1548440	cinematographer	\N	\N
tt7187398	nm1464979	self	\N	["Self - Presenter"]
tt15419914	nm12940615	self	\N	["Self"]
tt15419914	nm8243924	self	\N	["Self"]
tt15419914	nm12152750	self	\N	["Self"]
tt15419914	nm12940617	self	\N	["Self"]
tt15419914	nm12152836	self	\N	["Self"]
tt15419914	nm4559951	self	\N	["Self"]
tt15419914	nm8579046	self	\N	["Self"]
tt15419914	nm12940618	self	\N	["Self"]
tt15419914	nm7173647	self	\N	["Self"]
tt15419914	nm3277191	editor	\N	\N
tt17678208	nm0683342	self	\N	["Self - Host"]
tt0500733	nm1859889	actor	\N	["Singer"]
tt0500733	nm1859563	actor	\N	["Singer"]
tt0500733	nm1859675	actor	\N	["Singer"]
tt0500733	nm1859894	actor	\N	["Singer"]
tt0500733	nm1645892	actor	\N	["Singer"]
tt0500733	nm1859892	actor	\N	["Singer"]
tt0500733	nm1854837	producer	producer	\N
tt0918116	nm1757492	actor	\N	["Vinnie Martino"]
tt0918116	nm1176320	director	\N	\N
tt0918116	nm1568353	writer	writer	\N
tt0918116	nm1135742	composer	\N	\N
tt0918116	nm0615426	casting_director	\N	\N
tt28658425	nm13072626	actor	\N	["Justin Cosby"]
tt28658425	nm11846227	actor	\N	["MSP Detective"]
tt28658425	nm12102990	actor	\N	["Surgeon"]
tt28658425	nm7281113	actor	\N	["Blayn"]
tt28658425	nm6267863	actor	\N	["Detective Jack Crowley"]
tt28658425	nm10958778	actress	\N	["Kit Carroll"]
tt28658425	nm6719863	producer	producer	\N
tt0989024	nm1574483	actor	\N	\N
tt0989024	nm1300696	actor	\N	\N
tt0989024	nm2102155	actress	\N	\N
tt0989024	nm2155651	actor	\N	\N
tt0989024	nm2411891	actor	\N	\N
tt0989024	nm2115987	actor	\N	\N
tt0989024	nm2148650	actor	\N	\N
tt0989024	nm2364632	actor	\N	\N
tt0989024	nm2595120	actor	\N	\N
tt0989024	nm2276942	director	\N	\N
tt0989024	nm2187526	producer	producer	\N
tt0989024	nm2195556	producer	producer	\N
tt14717216	nm0479886	actor	\N	\N
tt14717216	nm11960945	director	\N	\N
tt14717216	nm11960945	writer	\N	\N
tt2350455	nm1715201	self	\N	["Self - Hostess"]
tt2350455	nm1422904	self	\N	["Self - Hostess"]
tt2350455	nm1856804	director	\N	\N
tt2350455	nm3710204	cinematographer	director of photography	\N
tt28565287	nm4776841	self	\N	["Self - Host"]
tt28565287	nm10409933	self	\N	["Self"]
tt5729504	nm8150263	actor	\N	["Thirsty boy"]
tt5729504	nm8150262	actor	\N	["Thirsty man"]
tt5729504	nm8123596	director	\N	\N
tt5729504	nm8123596	writer	\N	\N
tt5729504	nm8123596	producer	producer	\N
tt5729504	nm8123596	composer	\N	\N
tt5729504	nm8123596	cinematographer	\N	\N
tt5729504	nm8123596	editor	\N	\N
tt2794440	nm0008819	actress	\N	["Bianca Bouwhuis"]
tt2794440	nm0115836	actress	\N	["Janine Elschot"]
tt2794440	nm0212231	actor	\N	["Ludo Sanders"]
tt2794440	nm3458600	actor	\N	["Lucas Sanders"]
tt2794440	nm0271627	actor	\N	["Noud Alberts"]
tt2794440	nm0450653	actress	\N	["Maxime Sanders"]
tt2794440	nm2256574	actor	\N	["Alex"]
tt2794440	nm2629899	actress	\N	["Lorena Gonzalez"]
tt2794440	nm0785755	actor	\N	["Anton Bouwhuis"]
tt2794440	nm3132140	actor	\N	["Sjoerd Bouwhuis"]
tt2794440	nm0914844	writer	original idea	\N
tt2794440	nm4591432	casting_director	\N	\N
tt0346778	nm0731054	actress	\N	["Jean"]
tt0346778	nm1301043	actress	\N	["Betty"]
tt0346778	nm0545147	actress	\N	["Miss Preston"]
tt0346778	nm0071132	actor	\N	["Professor Grayson"]
tt0346778	nm0446017	director	\N	\N
tt0346778	nm0139636	writer	scenario	\N
tt0873148	nm1401831	self	\N	["Self"]
tt0873148	nm1824346	self	\N	["Self"]
tt0873148	nm1775614	archive_footage	\N	["Daniel"]
tt0873148	nm1401831	director	\N	\N
tt0873148	nm1894594	director	\N	\N
tt2559248	nm4817603	self	\N	["Self"]
tt2559248	nm7502835	self	\N	["Self"]
tt2559248	nm1407493	director	\N	\N
tt2559248	nm2894616	director	\N	\N
tt2559248	nm0578525	writer	\N	\N
tt2559248	nm3147046	cinematographer	\N	\N
tt2559248	nm0322099	editor	\N	\N
tt2559248	nm0383412	editor	\N	\N
tt2559248	nm2214926	editor	\N	\N
tt2559248	nm0797030	editor	\N	\N
tt2559248	nm4017926	casting_director	\N	\N
tt2559248	nm2277787	casting_director	\N	\N
tt2559248	nm3951564	casting_director	\N	\N
tt2559248	nm3563568	casting_director	\N	\N
tt0434722	nm0417970	actor	\N	["Timo de Brauw"]
tt0434722	nm0388952	actress	\N	["Max Noordhof"]
tt0434722	nm1778814	actor	\N	["Kevin de Jong"]
tt0434722	nm0888052	actress	\N	["Rossi Goedhart"]
tt0434722	nm0087538	actress	\N	["Heleen Mateur"]
tt0434722	nm0851227	actor	\N	["Nick van Dam"]
tt0434722	nm0210008	actor	\N	["Raymond Berger"]
tt0434722	nm0886402	actress	\N	["Sarah Nauta"]
tt0434722	nm0277329	actor	\N	["Man van Technische Recherche"]
tt0434722	nm0196723	actor	\N	["Laurens Faber"]
tt10856380	nm9967834	actor	\N	["Ning Que"]
tt10856380	nm7862567	actress	\N	["Sang Sang"]
tt10856380	nm10935694	actress	\N	["Mo Shan Shan"]
tt10856380	nm7626790	actress	\N	["Hao Tian"]
tt10856380	nm7626790	actress	\N	["Tian Nu"]
tt10856380	nm0155532	actor	\N	["Fu Zi (Sage Master)"]
tt10856380	nm10234073	actor	\N	["Prince Long Qing of Yan"]
tt10856380	nm0648499	actor	\N	["Chao Xiao Shu"]
tt10856380	nm2038966	actor	\N	["Jun Mo (2nd Brother)"]
tt10856380	nm0910948	actor	\N	["Master Qi Shan"]
tt10856380	nm10935695	actress	\N	["Yu Lian (3rd Sister)"]
tt10856380	nm8611398	writer	creator: based on web novel by	\N
tt12785856	nm5836811	actress	\N	["Éile"]
tt12785856	nm6919834	actor	\N	["Fjall"]
tt12785856	nm10939187	actress	\N	["Merwyn"]
tt12785856	nm0377901	actor	\N	["Balor"]
tt12785856	nm4753860	actor	\N	["Eredin"]
tt12785856	nm5438541	actor	\N	["Jaskier"]
tt12785856	nm10277998	actor	\N	["Syndril"]
tt12785856	nm12181413	actress	\N	["Zacaré"]
tt12785856	nm8557225	actor	\N	["Brother Death"]
tt12785856	nm3957824	actress	\N	["Meldof"]
tt12785856	nm2564973	director	\N	\N
tt12785856	nm1835160	writer	written by	\N
tt12785856	nm4409961	writer	written by	\N
tt12785856	nm1274355	writer	series created by	\N
tt12785856	nm1140292	writer	based on the universe and characters created by	\N
tt12785856	nm0365310	producer	producer	\N
tt12785856	nm10617113	producer	producer	\N
tt12785856	nm0566970	composer	\N	\N
tt12785856	nm1700053	cinematographer	\N	\N
tt12785856	nm0820987	cinematographer	director of photography	\N
tt12785856	nm5253245	casting_director	\N	\N
tt12785856	nm0493115	production_designer	\N	\N
tt9659602	nm1530005	self	\N	["Self - Investigator"]
tt9659602	nm2570873	self	\N	["Self - Investigator"]
tt9659602	nm10747585	self	\N	["Self - Historian"]
tt9659602	nm10747586	self	\N	["Self - Groundskeeper"]
tt9659602	nm3870961	director	\N	\N
tt9659602	nm6668963	editor	\N	\N
tt9659602	nm5244928	editor	\N	\N
tt0342135	nm0107543	actor	\N	["The Younger Brother"]
tt0342135	nm0790137	actor	\N	["The Older Brother - the Detective"]
tt0342135	nm0486041	actress	\N	["The Mother"]
tt0342135	nm0107543	director	\N	\N
tt0342135	nm1282724	writer	scenario	\N
tt0342135	nm0480674	producer	producer	\N
tt1011941	nm0361665	actress	\N	\N
tt1011941	nm1280637	actress	\N	\N
tt0439950	nm0639684	actress	\N	["Maggie Bradley"]
tt0439950	nm0007217	actor	\N	["Johnny Martin"]
tt0439950	nm0805790	actor	\N	["Count Von Slezak"]
tt0439950	nm0833645	actor	\N	\N
tt0439950	nm0934798	actress	\N	["Angela Talbot"]
tt0439950	nm0000748	actor	\N	["Mark Bradley"]
tt0439950	nm0663183	actor	\N	\N
tt0439950	nm12520126	actor	\N	["Leo von Slezak"]
tt0439950	nm0516093	actor	\N	["Hotel manager"]
tt0439950	nm0041598	actress	\N	\N
tt4796112	nm3047951	actress	\N	["Maite"]
tt4796112	nm2619300	director	\N	\N
tt4796112	nm2619300	writer	writer	\N
tt4796112	nm2169061	producer	producer	\N
tt4796112	nm3160488	cinematographer	\N	\N
tt4796112	nm2619300	editor	\N	\N
tt4796112	nm5618599	production_designer	\N	\N
tt6104550	nm0001170	self	\N	["Self - Host"]
tt6104550	nm0803021	self	\N	["Self - Host"]
tt6104550	nm8455886	director	\N	\N
tt6104550	nm0343135	producer	producer	\N
tt6104550	nm5199957	editor	\N	\N
tt21399842	nm3393656	actor	\N	["Sasha"]
tt21399842	nm3392199	actor	\N	["Silvestr Sergeev"]
tt21399842	nm3395987	actress	\N	["Tanya"]
tt21399842	nm1399303	actor	\N	["Gena"]
tt21399842	nm3392634	writer	creator	\N
tt21399842	nm2955009	writer	creator	\N
tt21399842	nm3392634	producer	producer	\N
tt9828132	nm4801681	director	\N	\N
tt32296243	nm0004742	actress	\N	\N
tt32296243	nm2482391	actress	\N	\N
tt32296243	nm3033378	actress	\N	\N
tt32296243	nm1123840	actor	\N	\N
tt32296243	nm4788100	actor	\N	\N
tt32296243	nm1389480	actor	\N	["Abdul Himawan"]
tt32296243	nm1030658	actor	\N	\N
tt32296243	nm3899743	actress	\N	["Client in a bathrobe"]
tt32296243	nm8604412	director	\N	\N
tt32296243	nm0798062	writer	\N	\N
tt32296243	nm0798065	producer	producer	\N
tt32296243	nm3115492	production_designer	\N	\N
tt35403804	nm16537616	actress	\N	["Noluntu"]
tt35403804	nm16537695	actor	\N	["Gloria"]
tt35403804	nm16914815	writer	writer	\N
tt35403804	nm16914813	composer	\N	\N
tt35403804	nm16592188	cinematographer	\N	\N
tt35403804	nm16914816	editor	\N	\N
tt7314942	nm2542118	actress	\N	["Emma"]
tt7314942	nm5250195	actor	\N	["Clark"]
tt7314942	nm5224212	actress	\N	["Alex"]
tt7314942	nm4181215	actor	\N	["Josh"]
tt7314942	nm5358125	actress	\N	["Grace"]
tt7314942	nm7724722	actor	\N	["Davis"]
tt7314942	nm2761728	actress	\N	["Sophie"]
tt7314942	nm0645781	actress	\N	["Dean Jennifer Simpson"]
tt7314942	nm0141696	director	\N	\N
tt7314942	nm2241963	writer	writer	\N
tt7314942	nm1171843	writer	story consultant	\N
tt7314942	nm4109908	composer	\N	\N
tt7314942	nm2306220	cinematographer	\N	\N
tt7314942	nm1564879	editor	\N	\N
tt7314942	nm6235908	production_designer	\N	\N
tt2329014	nm0188205	self	\N	["Self - Host"]
tt2329014	nm3821464	self	\N	["Self - Comedian"]
tt2329014	nm1649782	self	\N	["Self - Comedian"]
tt2329014	nm0188205	writer	writer	\N
tt2329014	nm3821464	writer	writer	\N
tt2329014	nm1649782	writer	writer	\N
tt0387591	nm0000965	actor	\N	["Presenter"]
tt0387591	nm0001021	self	\N	["Self"]
tt0387591	nm0318429	self	\N	["Self"]
tt0387591	nm0000631	self	\N	["Self"]
tt0387591	nm0000244	self	\N	["Self"]
tt0387591	nm1226527	director	\N	\N
tt0387591	nm1226527	writer	\N	\N
tt0387591	nm1271052	producer	producer	\N
tt0387591	nm2081669	cinematographer	\N	\N
tt0387591	nm0805665	editor	\N	\N
tt31417485	nm10277011	actor	\N	["Jigo"]
tt31417485	nm12352550	actor	\N	["Ayushi"]
tt31417485	nm15850085	actress	\N	["Ayushi"]
tt31417485	nm6204616	actor	\N	["Vikram"]
tt31417485	nm13568301	actor	\N	["Rathwa"]
tt31417485	nm13721568	actor	\N	["Rohan"]
tt31417485	nm15850083	actress	\N	["Vidhya"]
tt31417485	nm13339772	actress	\N	["Saloni"]
tt31417485	nm7360355	actor	\N	["Neeta"]
tt31417485	nm9437971	actor	\N	["Vikee"]
tt31417485	nm7246824	director	\N	\N
tt31417485	nm15119313	writer	writer	\N
tt31417485	nm15850086	producer	producer	\N
tt31417485	nm4419841	cinematographer	\N	\N
tt31417485	nm3175760	editor	\N	\N
tt7002484	nm5093125	actress	\N	\N
tt7002484	nm2844388	actor	\N	\N
tt12689750	nm0124889	actor	\N	["Loopy De Loop"]
tt12689750	nm0124889	actor	\N	["Bon-Bon"]
tt12689750	nm0124889	actor	\N	["Filbert"]
tt12689750	nm0582106	actor	\N	["Little Pig #1"]
tt12689750	nm0582106	actor	\N	["Little Pig #2"]
tt12689750	nm0053484	director	\N	\N
tt12689750	nm0360253	director	\N	\N
tt12689750	nm0761902	writer	story	\N
tt12689750	nm0053484	producer	producer	\N
tt12689750	nm0360253	producer	producer	\N
tt12689750	nm0500380	editor	editor	\N
tt3580762	nm2612271	self	\N	["Self"]
tt3580762	nm1941592	director	creative director	\N
tt3580762	nm1272317	cinematographer	\N	\N
tt3580762	nm1941592	editor	\N	\N
tt20876436	nm13737359	actress	\N	\N
tt20876436	nm1172522	actor	\N	\N
tt20876436	nm0413135	actor	\N	\N
tt20876436	nm13737360	actress	\N	\N
tt20876436	nm13737361	actress	\N	\N
tt20876436	nm13737362	actress	\N	\N
tt20876436	nm1187031	actor	\N	\N
tt20876436	nm0435837	actor	\N	\N
tt20876436	nm1187275	actress	\N	\N
tt20876436	nm0604704	director	\N	\N
tt20876436	nm0771175	writer	\N	\N
tt20876436	nm0845737	cinematographer	\N	\N
tt33703890	nm16548106	director	\N	\N
tt33703890	nm16548106	writer	\N	\N
tt32919395	nm2873893	self	\N	["Self - Sportscaster"]
tt32919395	nm16351196	self	\N	["Self - Co-Anchor"]
tt32919395	nm16351195	self	\N	["Self - Co-Anchor"]
tt32919395	nm16348508	self	\N	["Self - Meteorologist"]
tt11148068	nm0111480	self	\N	["Self - Panellist"]
tt11148068	nm1649195	self	\N	["Self - Panellist"]
tt11148068	nm0147687	self	\N	["Self - Panellist"]
tt11148068	nm0330961	self	\N	["Self - Panellist"]
tt11148068	nm0611193	self	\N	["Self - Question-Master"]
tt11148068	nm0299033	producer	producer	\N
tt1519237	nm0774080	self	\N	["Self - Host (1995-1996)"]
tt1519237	nm1922694	self	\N	["Self (1995)"]
tt1519237	nm0770043	self	\N	["Self (1995)"]
tt1519237	nm0800697	self	\N	["Self (1995)"]
tt10171526	nm1080915	actor	\N	["Rudolf - judge"]
tt10171526	nm10835180	actor	\N	["Jeffrey - swindler"]
tt10171526	nm7642660	director	\N	\N
tt10171526	nm7642660	writer	screenplay	\N
tt10171526	nm7640721	writer	screenplay	\N
tt10171526	nm7642660	producer	producer	\N
tt10171526	nm8112903	composer	original music composer	\N
tt10171526	nm10645407	cinematographer	\N	\N
tt10171526	nm7642660	editor	\N	\N
tt0861404	nm0173416	archive_footage	\N	["Goofy"]
tt0861404	nm0173416	actor	\N	["Goofy"]
tt0861404	nm0173416	actor	\N	["Goofy"]
tt0861404	nm0000370	archive_footage	\N	["Mickey Mouse"]
tt0861404	nm0000370	actor	\N	["Mickey Mouse"]
tt0861404	nm0000370	actor	\N	["Mickey Mouse"]
tt0861404	nm0293659	archive_footage	\N	["Ludwig Von Drake"]
tt0861404	nm0293659	actor	\N	["Ludwig Von Drake"]
tt0861404	nm0293659	actor	\N	["Ludwig Von Drake"]
tt0861404	nm0317970	archive_footage	\N	["Willie the Giant"]
tt0861404	nm0317970	actor	\N	["Willie the Giant"]
tt0861404	nm0317970	actor	\N	["Willie the Giant"]
tt0861404	nm0329993	archive_footage	\N	["Singing Harp"]
tt0861404	nm0329993	actress	\N	["Singing Harp"]
tt0861404	nm0329993	actress	\N	["Singing Harp"]
tt0861404	nm0621699	archive_footage	\N	["Donald Duck"]
tt0861404	nm0621699	actor	\N	["Donald Duck"]
tt0861404	nm0621699	actor	\N	["Donald Duck"]
tt0861404	nm1288777	archive_footage	\N	["Singers"]
tt0861404	nm1288777	actor	\N	["Singers"]
tt0861404	nm1288777	actor	\N	["Singers"]
tt0861404	nm0527217	director	director	\N
tt0861404	nm0433143	director	segment director	\N
tt0861404	nm0718627	director	segment director	\N
tt0861404	nm0730860	director	segment director	\N
tt0861404	nm0109205	writer	story	\N
tt0861404	nm0670328	writer	story	\N
tt0861404	nm0727370	writer	story	\N
tt0861404	nm0005980	composer	\N	\N
tt0861404	nm1345229	composer	composer	\N
tt0861404	nm0006337	composer	\N	\N
tt9397578	nm5381535	actor	\N	["Driver"]
tt9397578	nm1444462	actor	\N	["Magnus Mitchell"]
tt9397578	nm0717227	actress	\N	["Zillah Stewart"]
tt9397578	nm3180285	actor	\N	["Bartender"]
tt9397578	nm0005389	actress	\N	["Jacqueline Mitchell"]
tt9397578	nm7503307	actress	\N	["Jilly Mitchell"]
tt9397578	nm0820426	actress	\N	["Sophie"]
tt9397578	nm5866074	actor	\N	["Paul Kibebe Roth"]
tt9397578	nm1441689	producer	producer	\N
tt9397578	nm0808914	cinematographer	\N	\N
tt9397578	nm0038145	casting_director	\N	\N
tt3328042	nm14624683	director	director	\N
tt3328042	nm4345177	writer	story by	\N
tt3328042	nm7477079	cinematographer	director of photography	\N
tt3328042	nm3804289	editor	editor	\N
tt3328042	nm7032481	casting_director	casting_director	\N
tt3328042	nm4100411	casting_director	\N	\N
tt22173936	nm2406271	self	\N	["Self"]
tt22173936	nm2406271	director	director	\N
tt22173936	nm2406271	writer	written by	\N
tt22173936	nm13730171	editor	supervising editor	\N
tt22173936	nm14159068	editor	editor	\N
tt22173936	nm14159026	editor	editor	\N
tt19366840	nm0860726	self	\N	["Self"]
tt19366840	nm0860726	self	\N	["Ranger Stacy"]
tt10685242	nm0051469	self	\N	["Self"]
tt10685242	nm1089569	actress	\N	\N
tt10685242	nm0051469	writer	\N	\N
tt10685242	nm1089569	writer	\N	\N
tt10685242	nm6276846	producer	producer	\N
tt10685242	nm2789671	cinematographer	\N	\N
tt10685242	nm10861084	editor	\N	\N
tt10685242	nm3482712	production_designer	\N	\N
tt1488643	nm0760659	actress	\N	["Ana Rivas"]
tt1488643	nm0051706	actor	\N	["Ramón Rivas"]
tt1488643	nm1794425	actor	\N	["Marcelino"]
tt1488643	nm3106959	actress	\N	["Celia"]
tt1488643	nm0191149	actor	\N	["Bruno"]
tt1488643	nm2185716	actor	\N	["Sebas"]
tt1488643	nm0479590	actress	\N	["Rosario"]
tt1488643	nm0515652	actor	\N	["Don Senén"]
tt1488643	nm0592110	actress	\N	["Manolita"]
tt1488643	nm1071392	actor	\N	["Juanito el Grande"]
tt1488643	nm2558117	director	\N	\N
tt1488643	nm4273440	writer	writer	\N
tt1488643	nm2316038	writer	\N	\N
tt1488643	nm2966752	writer	\N	\N
tt1620046	nm1440225	actor	\N	["Graham"]
tt1620046	nm0317113	actress	\N	["Mildred"]
tt1620046	nm1441993	actor	\N	["William"]
tt1620046	nm1443307	actor	\N	["Lux"]
tt1620046	nm0671676	actor	\N	["Robert"]
tt1620046	nm1442042	actor	\N	["Keith"]
tt1620046	nm0178058	actor	\N	["Uncle Ben"]
tt1620046	nm0200676	actor	\N	["Farmer"]
tt1620046	nm0083467	actor	\N	["Pete"]
tt1620046	nm3237143	actor	\N	["Fred"]
tt1620046	nm0289136	director	\N	\N
tt1620046	nm1444443	writer	writer	\N
tt1620046	nm0655570	production_designer	designer	\N
tt15546426	nm4363721	writer	\N	\N
tt15546426	nm4517295	producer	producer	\N
tt15546426	nm3302735	editor	\N	\N
tt9348060	nm5557972	self	\N	["Self - Host"]
tt9348060	nm2162916	self	\N	["Self"]
tt9348060	nm3612206	director	\N	\N
tt9348060	nm3634232	cinematographer	\N	\N
tt9348060	nm10287286	editor	\N	\N
tt18250548	nm1043164	self	\N	["Self"]
tt18250548	nm8666797	actress	\N	["The Body"]
tt18250548	nm11272995	actor	\N	["The Body"]
tt18250548	nm0005517	self	\N	["Self"]
tt18250548	nm1862367	self	\N	["Self - Host"]
tt18250548	nm7879806	producer	producer	\N
tt18250548	nm11315217	composer	\N	\N
tt18250548	nm2249649	cinematographer	cinematographer	\N
tt9740696	nm2639935	actress	\N	["Kripa Sharma"]
tt9740696	nm2639935	actress	\N	["Tanya"]
tt9740696	nm1655805	actress	\N	["Mishti Bose"]
tt9740696	nm1511891	actor	\N	["Angad Khanna"]
tt9740696	nm1511891	actor	\N	["Zaib"]
tt9740696	nm2088950	actor	\N	["Prithvi Bose"]
tt9740696	nm1381801	actor	\N	["Nishant"]
tt9740696	nm7129301	director	\N	\N
tt9740696	nm10604490	director	\N	\N
tt9740696	nm1966600	director	creative director	\N
tt9740696	nm6177447	writer	writer	\N
tt9740696	nm13353446	writer	\N	\N
tt9740696	nm0438471	writer	created by	\N
tt9740696	nm5443466	writer	\N	\N
tt9740696	nm0438471	producer	producer	\N
tt9740696	nm0438506	producer	producer	\N
tt9740696	nm0784014	composer	\N	\N
tt9740696	nm4824342	cinematographer	\N	\N
tt9740696	nm2754321	editor	\N	\N
tt9740696	nm2754248	editor	\N	\N
tt9740696	nm2761947	editor	\N	\N
tt4042080	nm1465001	actor	\N	["Saburo"]
tt4042080	nm1679934	actress	\N	["Nohime"]
tt4042080	nm1697606	actor	\N	["Tokichiro Kinoshita"]
tt4042080	nm2976492	actress	\N	["Oichi"]
tt4042080	nm2944424	actor	\N	["Ikeda Tsuneoki"]
tt4042080	nm0468711	actor	\N	["Katsuie Shigeta"]
tt4042080	nm2567228	actor	\N	["Toshiie Maeda"]
tt4042080	nm1399925	actor	\N	["Narimasa Sassa"]
tt4042080	nm3340306	actor	\N	["Nagahide Niwa"]
tt4042080	nm6482540	actor	\N	["Takugen"]
tt4042080	nm6774570	director	\N	\N
tt4042080	nm6492225	writer	manga	\N
tt4042080	nm0847176	writer	teleplay	\N
tt4042080	nm3625350	producer	producer	\N
tt4042080	nm2805410	producer	producer	\N
tt4042080	nm3701367	composer	\N	\N
tt1157067	nm0248364	actor	\N	["Juan"]
tt1157067	nm0180580	actor	\N	["Chus"]
tt1157067	nm0599539	actress	\N	["Rosario"]
tt1157067	nm1362912	actress	\N	["Laura"]
tt1157067	nm0509811	actor	\N	\N
tt1157067	nm0891892	actress	\N	\N
tt1157067	nm0893941	actress	\N	\N
tt1157067	nm0913401	actress	\N	["Emi"]
tt1157067	nm0785508	director	\N	\N
tt1157067	nm0597604	writer	writer	\N
tt1157067	nm0679228	editor	editor	\N
tt22010336	nm0029406	actor	\N	["Efrain Herreros (1991)"]
tt22010336	nm0351032	actress	\N	["Etelvina López"]
tt22010336	nm0380164	actress	\N	["Florentina Herreros"]
tt22010336	nm0873916	actor	\N	["Juan Herreros"]
tt22010336	nm0874192	actress	\N	["Francisca García Muriel"]
tt22010336	nm0025457	director	\N	\N
tt22010336	nm0577215	writer	novel	\N
tt22010336	nm7106350	writer	adaptation	\N
tt22010336	nm0786333	composer	composer	\N
tt2451782	nm2739771	actor	\N	["Paul Kobak"]
tt2451782	nm2336324	director	\N	\N
tt2451782	nm0002418	producer	producer	\N
tt2451782	nm2336324	producer	producer	\N
tt2451782	nm3281715	composer	\N	\N
tt2451782	nm2320374	cinematographer	\N	\N
tt2451782	nm2336324	editor	\N	\N
tt4032518	nm0001329	archive_footage	\N	["Various"]
tt4032518	nm0000545	self	\N	["Self"]
tt4032518	nm0835916	actress	\N	["Narrator"]
tt4032518	nm0498756	director	\N	\N
tt4032518	nm0498756	producer	producer	\N
tt4032518	nm1626662	cinematographer	cinematographer	\N
tt4032518	nm0112372	cinematographer	cinematographer	\N
tt4032518	nm15172383	cinematographer	cinematographer	\N
tt4032518	nm1493982	cinematographer	cinematographer	\N
tt4032518	nm15172388	editor	\N	\N
tt2128049	nm0035605	actor	\N	["Brian Lane"]
tt2128049	nm0714985	actress	\N	["Det.Supt.Sandra Pullman"]
tt2128049	nm0913993	actor	\N	["Gerry Standing"]
tt2128049	nm0493200	actor	\N	["Steve McAndrew"]
tt2128049	nm0417075	actress	\N	["Esther Lane"]
tt2128049	nm3528737	actor	\N	["Gerry Junior"]
tt2128049	nm2414018	actor	\N	["News reporter"]
tt2128049	nm5062699	actress	\N	["Alice Kemp"]
tt2128049	nm0533594	actress	\N	["Fawn Brammall"]
tt2128049	nm0048035	actress	\N	["Irina Brammall"]
tt2128049	nm0792012	director	\N	\N
tt2128049	nm0881378	writer	written by	\N
tt2128049	nm0593697	writer	creator	\N
tt2128049	nm0567010	writer	creator	\N
tt2128049	nm2222681	producer	producer	\N
tt2128049	nm0004603	composer	\N	\N
tt2128049	nm0039674	cinematographer	director of photography	\N
tt2128049	nm0192194	editor	\N	\N
tt2128049	nm0240390	casting_director	\N	\N
tt2128049	nm5253245	casting_director	\N	\N
tt2128049	nm0137510	production_designer	\N	\N
tt21432634	nm13902499	director	\N	\N
tt21432634	nm12010720	writer	\N	\N
tt21432634	nm7764826	writer	\N	\N
tt21432634	nm12527053	composer	\N	\N
tt21432634	nm13322590	composer	\N	\N
tt15556682	nm12928555	actor	\N	\N
tt15556682	nm8421389	actor	\N	\N
tt15556682	nm8519686	actor	\N	\N
tt15556682	nm12810186	actor	\N	\N
tt15556682	nm12969088	actor	\N	\N
tt15556682	nm8421389	director	\N	\N
tt15556682	nm8421389	writer	\N	\N
tt15556682	nm8421389	composer	\N	\N
tt9562714	nm7737982	self	\N	["Self - Indiana Congressman"]
tt9562714	nm2114214	self	\N	["Self - Security Analyst"]
tt9562714	nm7438531	self	\N	["Self - Correspondent"]
tt9562714	nm2131044	self	\N	["Self - Political Analyst"]
tt9562714	nm4824045	self	\N	["Self - Host"]
tt9562714	nm8461722	self	\N	["Self - Correspondent"]
tt9562714	nm7043423	self	\N	["Self - Law Enforcement Analyst"]
tt9562714	nm6518091	self	\N	["Self - Washington Congresswoman"]
tt9562714	nm0501500	self	\N	["Self - Host"]
tt9562714	nm5040744	self	\N	["Self - Counterterrorism Analyst"]
tt9562714	nm10382774	director	\N	\N
tt9562714	nm10382775	director	\N	\N
tt9562714	nm10382777	director	\N	\N
tt9562714	nm10382776	director	\N	\N
tt9562714	nm10380891	producer	producer	\N
tt9562714	nm5535745	producer	producer	\N
tt9562714	nm10382783	producer	producer	\N
tt9562714	nm10380890	producer	producer	\N
tt5528154	nm2937745	self	\N	["Self"]
tt5528154	nm4008748	self	\N	["Self"]
tt5528154	nm1497410	self	\N	["Self"]
tt5528154	nm7629488	self	\N	["Self"]
tt5528154	nm7629491	self	\N	["Self"]
tt5528154	nm7629492	self	\N	["Self"]
tt5528154	nm7629489	self	\N	["Self"]
tt5528154	nm7629490	self	\N	["Self"]
tt5528154	nm0005429	self	\N	["Self"]
tt22515600	nm10051021	actor	\N	\N
tt22515600	nm12553385	actress	\N	\N
tt23980592	nm14214674	actor	\N	\N
tt23980592	nm14300920	actor	\N	\N
tt23980592	nm2935601	actor	\N	["Shukracharya"]
tt23980592	nm2935601	actor	\N	["Vashishth"]
tt23980592	nm2935601	actor	\N	["Dadhichi"]
tt23980592	nm12243434	director	creative director	\N
tt23980592	nm11359669	director	creative director	\N
tt23980592	nm11359669	producer	producer	\N
tt6079884	nm8453957	self	\N	["Self"]
tt6079884	nm4115205	producer	producer	\N
tt6079884	nm4117120	producer	producer	\N
tt6079884	nm4117120	cinematographer	\N	\N
tt6079884	nm4115205	editor	\N	\N
tt6079884	nm4117120	editor	\N	\N
tt8523010	nm0211482	self	\N	["Self - Host"]
tt8523010	nm3514816	self	\N	["Self - Host"]
tt8523010	nm7412582	self	\N	["Self - Chef"]
tt8523010	nm7233991	self	\N	["Self - Chef"]
tt8523010	nm7412583	self	\N	["Self - Chef"]
tt8523010	nm7471734	self	\N	["Self - Political Columnist"]
tt8523010	nm7209820	self	\N	["Self - Police & Crimes Columnist"]
tt8523010	nm1918841	self	\N	["Self - Gossip Columnist"]
tt8523010	nm7294634	self	\N	["Self - Sports Columnist"]
tt8523010	nm9878764	self	\N	["Self - Sports Columnist"]
tt7691376	nm1972177	actress	\N	["Micaela Gómez"]
tt7691376	nm1179713	actor	\N	["Santiago Reverón (2010)"]
tt7691376	nm0541533	actress	\N	["Gala Moncada (2010)"]
tt7691376	nm1183123	actor	\N	["Larry Corona (2010)"]
tt7691376	nm1132126	actress	\N	["Eva Gómez (2010)"]
tt7691376	nm8905785	actress	\N	["Renata Vulcan"]
tt7691376	nm8905785	actress	\N	["Renata Vulcan"]
tt7691376	nm0093505	director	\N	\N
tt7691376	nm1281831	director	\N	\N
tt7691376	nm3253005	writer	writer	\N
tt7691376	nm1046369	writer	\N	\N
tt7691376	nm1562849	producer	producer	\N
tt7691376	nm3978938	composer	\N	\N
tt7691376	nm3913156	composer	\N	\N
tt7691376	nm0273565	cinematographer	\N	\N
tt7691376	nm3977782	cinematographer	\N	\N
tt7691376	nm0575711	cinematographer	\N	\N
tt7691376	nm3978554	editor	\N	\N
tt7691376	nm3978873	editor	\N	\N
tt7691376	nm3978832	editor	\N	\N
tt1442481	nm1679372	actor	\N	["Raghu"]
tt1442481	nm2782609	actress	\N	["Neetha"]
tt1442481	nm5665490	actress	\N	["Radha"]
tt1442481	nm3013862	actor	\N	["Kailasanathayya"]
tt1442481	nm5675977	actor	\N	["Ramanath"]
tt1442481	nm1693209	actor	\N	["Kashinath"]
tt1442481	nm3837488	actor	\N	["Vishwanath aka Gandharva"]
tt1442481	nm6007119	actor	\N	["Arun"]
tt1442481	nm0755992	actor	\N	["Guruji"]
tt1442481	nm2639493	actress	\N	["Seethadevi"]
tt1442481	nm15590726	director	\N	\N
tt1442481	nm15590725	director	\N	\N
tt1442481	nm1679372	director	\N	\N
tt1442481	nm15590739	writer	written by	\N
tt1442481	nm3367804	writer	screenplay, dialogue	\N
tt1442481	nm15590732	producer	producer	\N
tt1442481	nm5679040	producer	producer	\N
tt1442481	nm1679372	producer	producer	\N
tt1442481	nm0080230	composer	\N	\N
tt1442481	nm3188800	cinematographer	\N	\N
tt1442481	nm15590723	cinematographer	\N	\N
tt1442481	nm2312619	editor	\N	\N
tt11746020	nm3153013	actor	\N	["Dirinya Sendir"]
tt11746020	nm3152004	actor	\N	["Tigor"]
tt11746020	nm3153566	actor	\N	["Sarmila"]
tt11746020	nm3153042	actor	\N	["Garry"]
tt11746020	nm2148934	actor	\N	["Dadang"]
tt11746020	nm3153454	actress	\N	["Sarmilila"]
tt11746020	nm3153224	actress	\N	["Sheila"]
tt11746020	nm3151853	actor	\N	["Pretty"]
tt11746020	nm3152206	actress	\N	["Deswita"]
tt11746020	nm3152384	actor	\N	["Sarmili"]
tt11746020	nm1238991	director	\N	\N
tt11746020	nm1099515	producer	producer	\N
tt6671550	nm0599840	self	\N	["Self - Hostess"]
tt9262768	nm1246742	actress	\N	["Jillian"]
tt9262768	nm2049965	actor	\N	["TJ"]
tt9262768	nm0643590	actor	\N	["Jonathan"]
tt9262768	nm1381977	actress	\N	["Trizie"]
tt9262768	nm0704289	director	\N	\N
tt9262768	nm4568101	writer	contributing writer	\N
tt9262768	nm0498080	writer	head writer	\N
tt9262768	nm0704289	writer	written by	\N
tt9262768	nm2263182	editor	editor	\N
tt9262768	nm2219898	editor	editor	\N
tt1102658	nm0314305	actor	\N	["Dieter Krause"]
tt1102658	nm0777585	actress	\N	["Lisbeth Krause"]
tt1102658	nm0475354	actress	\N	["Carmen Krause"]
tt1102658	nm0825398	actor	\N	["Tommie Krause"]
tt1102658	nm0097043	actor	\N	["Notarzt"]
tt1102658	nm1102372	actor	\N	["Chinese"]
tt1102658	nm1150872	director	\N	\N
tt1102658	nm0314305	writer	writer	\N
tt1102658	nm0910419	producer	producer	\N
tt1102658	nm0059359	composer	\N	\N
tt1102658	nm0836754	composer	\N	\N
tt1102658	nm0802004	editor	\N	\N
tt1102658	nm0079623	casting_director	\N	\N
tt1102658	nm0676484	production_designer	\N	\N
tt22485744	nm8942381	actress	\N	["Josie Klee"]
tt22485744	nm8668075	actor	\N	["Paul Lindbergh"]
tt22485744	nm2043905	actor	\N	["Robert Saalfeld"]
tt22485744	nm0303368	actor	\N	["Werner Saalfeld"]
tt22485744	nm0353362	actress	\N	["Hildegard Sonnbichler"]
tt22485744	nm0770292	actor	\N	["Alfons Sonnbichler"]
tt22485744	nm0045303	actor	\N	["Christoph Saalfeld"]
tt22485744	nm1452282	actor	\N	["Erik Vogt"]
tt22485744	nm1778105	actor	\N	["Michael Niederbühl"]
tt22485744	nm0529518	actor	\N	["André Konopka"]
tt22485744	nm5256835	director	\N	\N
tt22485744	nm1490804	director	\N	\N
tt22485744	nm0477804	writer	head writer	\N
tt22485744	nm2087483	writer	dramaturge	\N
tt22485744	nm12100947	writer	dramaturge	\N
tt22485744	nm11929429	writer	dramaturge	\N
tt22485744	nm1104102	producer	producer	\N
tt22485744	nm7591422	editor	\N	\N
tt22485744	nm8340758	editor	\N	\N
tt22485744	nm6062423	casting_director	\N	\N
tt21025742	nm2866701	actress	\N	\N
tt21025742	nm2844388	actor	\N	\N
tt21025742	nm7108983	actress	\N	\N
tt11462094	nm10120013	actress	\N	["Chandu and Karuna"]
tt11462094	nm0004471	actor	\N	["Koti"]
tt11462094	nm4685592	actress	\N	["Archana and Jayanthi"]
tt11462094	nm1667633	director	director	\N
tt11929294	nm4489288	self	\N	["Self"]
tt11929294	nm6456058	self	\N	["Self"]
tt11929294	nm7098956	self	\N	["Self"]
tt11929294	nm10508160	self	\N	["Self"]
tt11929294	nm9906191	self	\N	["Self"]
tt11929294	nm9910648	self	\N	["Self"]
tt11929294	nm9924519	self	\N	["Self"]
tt11929294	nm4489288	director	\N	\N
tt11929294	nm4489288	writer	creator	\N
tt2097975	nm0370567	actor	\N	["Shin'ichi Yamazaki"]
tt2097975	nm0407433	actress	\N	["Sayoko"]
tt2097975	nm0435299	actress	\N	["Natsuko"]
tt2097975	nm4750725	actor	\N	["Kentarô"]
tt2097975	nm0442709	actor	\N	["Kuroki"]
tt2097975	nm0443238	actress	\N	["Hideko"]
tt2097975	nm0559385	actress	\N	["Yuriko Shiroyama"]
tt2097975	nm0612638	actress	\N	["Takako"]
tt2097975	nm0613561	actress	\N	["Chiyo Ôsawa"]
tt2097975	nm0648682	actress	\N	["Kaori Shiroyama"]
tt8575766	nm1778686	actress	\N	["Doraemon"]
tt8575766	nm1874163	actress	\N	["Nobita"]
tt8575766	nm0435358	actress	\N	["Shizuka"]
tt8575766	nm0782840	actor	\N	["Suneo"]
tt8575766	nm1878161	actor	\N	["Gian"]
tt8575766	nm9904148	actress	\N	["Doraemon"]
tt8575766	nm0419248	actor	\N	["Additional Voices"]
tt8575766	nm9915277	actress	\N	["Shizuka"]
tt8575766	nm9915277	actress	\N	["Jingxiang"]
tt8575766	nm9915274	actress	\N	["Nobita"]
tt8575766	nm9915274	actress	\N	["Daxiong"]
tt8575766	nm0628236	actor	\N	["Shizuka's Grandpa"]
tt8575766	nm0628236	actor	\N	["Shizuka's Grandpa"]
tt8575766	nm1160764	director	director	\N
tt8575766	nm0297742	writer	creator	\N
tt8575766	nm2139169	composer	\N	\N
tt4680650	nm7323478	actor	\N	["Alex"]
tt4680650	nm7323479	actress	\N	["Gina"]
tt4680650	nm7323477	director	\N	\N
tt4680650	nm7323477	writer	\N	\N
tt4680650	nm7323477	producer	producer	\N
tt4680650	nm7323477	composer	\N	\N
tt4680650	nm7323477	cinematographer	\N	\N
tt4680650	nm7323477	editor	\N	\N
tt10758690	nm0027882	actor	\N	["Jeff Morgan"]
tt10758690	nm0005385	actress	\N	["Mary Morgan"]
tt10758690	nm0636011	actress	\N	["Kitty Morgan"]
tt10758690	nm0201328	director	\N	\N
tt10758690	nm0397935	director	\N	\N
tt10758690	nm0179413	writer	creator	\N
tt10758690	nm0823551	writer	writer	\N
tt10758690	nm0892939	writer	\N	\N
tt10758690	nm0053846	producer	producer	\N
tt35505147	nm14995003	self	\N	["Self - Host"]
tt35505147	nm16913100	self	\N	["Self - Host"]
tt35505147	nm13680986	self	\N	["Self - Host"]
tt35505147	nm12301237	self	\N	["Self - Host"]
tt35505147	nm14995003	director	\N	\N
tt35505147	nm16913100	director	\N	\N
tt35505147	nm13680986	director	\N	\N
tt35505147	nm12301237	director	director	\N
tt35505147	nm14995003	writer	creator	\N
tt35505147	nm16913100	writer	creator	\N
tt35505147	nm13680986	writer	creator	\N
tt35505147	nm12301237	writer	creator	\N
tt35505147	nm14995003	producer	producer	\N
tt35505147	nm16913100	producer	producer	\N
tt35505147	nm13680986	producer	producer	\N
tt35505147	nm12301237	producer	producer	\N
tt0677744	nm0001518	actor	\N	["Bobby Donnell"]
tt0677744	nm0045937	actor	\N	["Jimmy Berluti"]
tt0677744	nm0004800	actress	\N	["Jamie Stringer"]
tt0677744	nm0004986	actress	\N	["Rebecca Washington"]
tt0677744	nm0004996	actor	\N	["Eugene Young"]
tt0677744	nm0005179	actress	\N	["Ellenor Frutt"]
tt0677744	nm0005448	actress	\N	["Lucy Hatcher"]
tt0677744	nm0005559	actress	\N	["Lindsay Dole"]
tt0677744	nm0001223	actress	\N	["A.D.A. Helen Gamble"]
tt0677744	nm0810488	actor	\N	["A.D.A. Kenneth Walsh"]
tt0677744	nm0615818	director	director	\N
tt0677744	nm0005082	writer	created by	\N
tt0677744	nm1236705	writer	written by	\N
tt0677744	nm0074403	producer	producer	\N
tt0677744	nm0461799	producer	producer	\N
tt0677744	nm0936574	producer	producer	\N
tt0677744	nm0001937	composer	\N	\N
tt0677744	nm0807932	cinematographer	director of photography	\N
tt0677744	nm0485919	editor	\N	\N
tt0677744	nm0319536	casting_director	\N	\N
tt0677744	nm0566296	casting_director	\N	\N
tt0677744	nm0481357	production_designer	\N	\N
tt29768105	nm13402014	actor	\N	\N
tt29768105	nm15434291	actor	\N	\N
tt29768105	nm13484462	actor	\N	\N
tt29768105	nm13485072	actress	\N	\N
tt29768105	nm13403498	actor	\N	\N
tt29768105	nm13420398	actress	\N	\N
tt29768105	nm13401979	actress	\N	\N
tt29768105	nm13402570	actor	\N	\N
tt29768105	nm15434292	actress	\N	\N
tt29768105	nm13484468	actress	\N	\N
tt29768105	nm13502879	director	\N	\N
tt29768105	nm13402570	cinematographer	\N	\N
tt29768105	nm13502879	cinematographer	\N	\N
tt29768105	nm13408726	cinematographer	\N	\N
tt29768105	nm13408725	cinematographer	\N	\N
tt29768105	nm13402570	editor	\N	\N
tt29768105	nm13502879	editor	\N	\N
tt29768105	nm13408726	editor	\N	\N
tt13419618	nm1197882	self	\N	["Self - Host"]
tt10601554	nm8858086	actor	\N	["Benjamin Taalasmaa"]
tt10601554	nm0287017	actress	\N	["Ritu"]
tt10601554	nm0344956	actor	\N	["Gunnar Mustavaara"]
tt10601554	nm10821215	actress	\N	["Tepa"]
tt10601554	nm10281566	actress	\N	["Nella Tamminen"]
tt10601554	nm0678885	actress	\N	["Ulla Taalasmaa"]
tt10601554	nm8572195	actor	\N	["Severi Sievinen"]
tt10601554	nm0851539	actor	\N	["Kari Taalasmaa"]
tt10601554	nm9862811	actor	\N	["Jonne"]
tt10601554	nm1680181	actress	\N	["Viola Helenius"]
tt10601554	nm3189512	director	\N	\N
tt10601554	nm3189512	writer	story	\N
tt10601554	nm4083742	writer	dialogue	\N
tt10601554	nm1564517	producer	producer	\N
tt10601554	nm1572846	producer	producer	\N
tt10601554	nm2102264	cinematographer	cinematographer	\N
tt10601554	nm3851117	editor	\N	\N
tt0859781	nm0625651	actor	\N	["Ozzie Nelson"]
tt0859781	nm0384948	actress	\N	["Harriet Nelson"]
tt0859781	nm0625287	actor	\N	["David Nelson"]
tt0859781	nm0625699	actor	\N	["Ricky Nelson"]
tt0859781	nm0214529	actor	\N	["Thorny"]
tt0859781	nm0878354	actress	\N	["Store Complaints Clerk"]
tt0859781	nm0752512	actor	\N	["Delivery Man"]
tt0859781	nm0837986	actor	\N	["Delivery Man"]
tt0859781	nm0676635	actor	\N	["Delivery Man"]
tt0859781	nm0474628	actor	\N	["Delivery Man"]
tt0859781	nm0625651	director	\N	\N
tt0859781	nm0625316	writer	television play	\N
tt0859781	nm0202567	writer	television play	\N
tt0859781	nm0314836	writer	television play	\N
tt0859781	nm0625651	writer	television play	\N
tt0859781	nm0625651	producer	producer	\N
tt0859781	nm0012088	composer	\N	\N
tt0859781	nm0005794	cinematographer	director of photography	\N
tt0859781	nm0933452	editor	\N	\N
tt8569992	nm4451811	self	\N	["Self - Pelines"]
tt8569992	nm0110036	self	\N	["Self - Pelines"]
tt8569992	nm0127925	self	\N	["Self - Pelines"]
tt8569992	nm0156030	self	\N	["Self - Pelines"]
tt8569992	nm0658602	self	\N	["Self - Host (1989-1990)"]
tt7738656	nm7182973	actress	\N	["Layal"]
tt7738656	nm4152661	actress	\N	["Roxy"]
tt7738656	nm7439576	director	\N	\N
tt7738656	nm9482274	cinematographer	cinematographer	\N
tt4792384	nm7285260	self	\N	["Self"]
tt4792384	nm6852658	self	\N	["Self"]
tt4792384	nm6803358	self	\N	["Self"]
tt4792384	nm6852644	self	\N	["Self"]
tt4792384	nm6928141	self	\N	["Self - The Witch"]
tt4792384	nm6852659	self	\N	["Self"]
tt4792384	nm6852660	self	\N	["Self"]
tt4792384	nm4492923	self	\N	["Self - Host"]
tt4792384	nm6852662	self	\N	["Self - Host"]
tt4792384	nm4492923	director	director	\N
tt4792384	nm6803358	writer	dialogue	\N
tt4792384	nm4492923	writer	creator	\N
tt4792384	nm5870567	producer	producer	\N
tt4792384	nm6803358	producer	producer	\N
tt4792384	nm4492923	producer	producer	\N
tt4792384	nm6803358	cinematographer	cinematographer	\N
tt4792384	nm4492923	editor	editor	\N
tt31638715	nm0001757	actor	\N	["Ricardo"]
tt31638715	nm1997480	actor	\N	["Christian Lightly"]
tt31638715	nm1342461	actress	\N	["Grace Lightly"]
tt31638715	nm12480802	actress	\N	["Charity Lightly"]
tt31638715	nm0140755	actor	\N	["Officer Noble"]
tt31638715	nm4910435	actor	\N	["Truman Lightly"]
tt31638715	nm8288992	actress	\N	["Chastity"]
tt31638715	nm2060194	actor	\N	["Camino"]
tt31638715	nm0189311	actress	\N	["Star"]
tt31638715	nm10675106	actor	\N	["Earnest"]
tt31638715	nm1381646	director	\N	\N
tt31638715	nm1381646	writer	\N	\N
tt31638715	nm1383543	producer	producer	\N
tt31638715	nm1381646	producer	producer	\N
tt31638715	nm0024715	cinematographer	\N	\N
tt31638715	nm0899604	casting_director	\N	\N
tt9385690	nm1137883	actor	\N	["Tristan"]
tt9385690	nm1137883	actor	\N	["Panday (2005-2006)"]
tt9385690	nm1216382	actress	\N	["Eden Roxas (2005-2006)"]
tt9385690	nm2087284	director	\N	\N
tt9385690	nm0622350	director	\N	\N
tt9385690	nm1171770	writer	character	\N
tt9385690	nm2193694	composer	composer	\N
tt9385690	nm1201812	composer	composer	\N
tt9385690	nm2243916	editor	\N	\N
tt9385690	nm2245012	editor	\N	\N
tt9385690	nm2264983	editor	\N	\N
tt9385690	nm2219898	editor	editor	\N
tt26407927	nm12726045	actress	\N	["Emma"]
tt26407927	nm10449292	actor	\N	["Gunner"]
tt26407927	nm6458099	actress	\N	["Gretta's Sister"]
tt26407927	nm8645641	actress	\N	["Extra"]
tt26407927	nm14919395	actress	\N	["Madam St. Clair"]
tt26407927	nm4217490	actor	\N	["Sid"]
tt26407927	nm10275151	actress	\N	["Amazing"]
tt26407927	nm14766800	actress	\N	["Mercedes"]
tt26407927	nm3250535	actress	\N	["Kelly"]
tt26407927	nm10597309	actor	\N	["Detective Bruce"]
tt26407927	nm10449292	director	\N	\N
tt26407927	nm10449292	writer	screenplay	\N
tt26407927	nm12842839	writer	writer	\N
tt26407927	nm12842839	producer	producer	\N
tt26407927	nm10449292	composer	composer	\N
tt26407927	nm14731269	cinematographer	\N	\N
tt26407927	nm14786584	cinematographer	director of photography	\N
tt26407927	nm10449292	casting_director	\N	\N
tt26407927	nm12842839	casting_director	\N	\N
tt0942967	nm1495498	self	\N	["Self - Programledare"]
tt0942967	nm1617659	self	\N	["Self - Programledare"]
tt0942967	nm1232841	self	\N	["Self"]
tt0942967	nm2504060	self	\N	["Self - Programledare"]
tt0942967	nm0458039	self	\N	["Self - Gäst"]
tt0942967	nm1847197	self	\N	["Self - Programledare"]
tt0942967	nm0443463	self	\N	["Self - Programledare"]
tt8729732	nm0023999	actress	\N	["Veridiana"]
tt8729732	nm0108854	actress	\N	["Dedina"]
tt8729732	nm0139177	actor	\N	["André"]
tt8729732	nm0174465	actor	\N	["Marcelo"]
tt8729732	nm0208056	actor	\N	["Otto Damasceno"]
tt8729732	nm0224892	actress	\N	["Palmira Damasceno"]
tt8729732	nm0224892	actress	\N	["Sandra"]
tt8729732	nm0244835	actress	\N	["Lenita Albuquerque Medeiros"]
tt8729732	nm0320543	actor	\N	["Paulo Bacelar"]
tt8729732	nm0532136	actress	\N	["Rosana"]
tt8729732	nm0535527	actress	\N	["Elvira"]
tt8729732	nm0028491	director	\N	\N
tt8729732	nm0754474	director	\N	\N
tt8729732	nm0537334	writer	writer	\N
tt2029103	nm1028283	director	\N	\N
tt2029103	nm2376112	producer	producer	\N
tt2029103	nm1210980	composer	\N	\N
tt2029103	nm2768610	composer	composer	\N
tt13864070	nm11337540	actor	\N	["Number 10"]
tt13864070	nm4883969	actor	\N	["Director Griffin"]
tt13864070	nm12651299	actor	\N	["Eugene Sanders"]
tt13864070	nm12241667	actor	\N	["Eugene Sanders"]
tt13864070	nm12241668	actor	\N	["Miles Sanders"]
tt13864070	nm11337540	director	director	\N
tt13864070	nm11337540	writer	\N	\N
tt13864070	nm12241670	composer	\N	\N
tt13864070	nm12241669	composer	\N	\N
tt13864070	nm12241672	cinematographer	\N	\N
tt13864070	nm11337540	cinematographer	\N	\N
tt13864070	nm12241667	cinematographer	\N	\N
tt13864070	nm12241671	cinematographer	\N	\N
tt7964934	nm0246735	actor	\N	["Óscar Leal (2008-)"]
tt7964934	nm0555101	actress	\N	["Tatiana Gómez (2008-)"]
tt7964934	nm0581763	actor	\N	["Rodolfo Castañeda (2008-)"]
tt7964934	nm1400129	actress	\N	["Jessica Antonieta Morales (2008-)"]
tt7964934	nm1875953	actor	\N	["Alberto 'Vaselino' (2008-)"]
tt7964934	nm0033040	actor	\N	\N
tt7964934	nm3350191	actor	\N	\N
tt7964934	nm0133189	actress	\N	["Nicole Aguilar (2008-)"]
tt7964934	nm3014753	actor	\N	["Nardo"]
tt7964934	nm3349091	actress	\N	\N
tt7964934	nm1629056	director	\N	\N
tt7964934	nm1160067	director	\N	\N
tt7964934	nm0273256	writer	creator	\N
tt7964934	nm1397144	writer	writer	\N
tt7964934	nm1142046	writer	creator	\N
tt7964934	nm0702220	writer	writer	\N
tt7964934	nm0897852	producer	producer	\N
tt7964934	nm10519309	composer	\N	\N
tt7964934	nm9881654	production_designer	\N	\N
tt11453472	nm4349273	actor	\N	\N
tt11453472	nm6114230	actress	\N	["Rashmoni Dasi"]
tt11453472	nm10631069	director	\N	\N
tt11453472	nm11192095	writer	developed by	\N
tt11453472	nm6366452	writer	\N	\N
tt11453472	nm7080784	writer	\N	\N
tt11453472	nm3089203	producer	producer	\N
tt11453472	nm11192097	producer	producer	\N
tt11453472	nm5144760	producer	producer	\N
tt11453472	nm1905131	producer	producer	\N
tt11453472	nm4736179	composer	\N	\N
tt11453472	nm9208992	cinematographer	\N	\N
tt11453472	nm5752804	editor	\N	\N
tt27862030	nm3773654	self	\N	["Self"]
tt27862030	nm0050959	self	\N	["Self"]
tt27862030	nm0563301	self	\N	["Self"]
tt27862030	nm6320863	self	\N	["Self"]
tt27862030	nm9958453	self	\N	["Self"]
tt27862030	nm0424534	self	\N	["Self"]
tt27862030	nm8165602	self	\N	["Self"]
tt27862030	nm1684869	self	\N	["Self"]
tt27862030	nm0468374	self	\N	["Self"]
tt27862030	nm1617568	self	\N	["Self"]
tt4836258	nm4309059	actress	\N	["Caro"]
tt4836258	nm1340345	actor	\N	["Diego"]
tt4836258	nm4575283	actress	\N	["Sol"]
tt4836258	nm1339662	actress	\N	["Maju"]
tt4836258	nm0667287	actor	\N	["Julian"]
tt4836258	nm3759797	actress	\N	["Luna"]
tt4836258	nm1421927	actress	\N	["Leni"]
tt4836258	nm3727432	actor	\N	["Lucas"]
tt4836258	nm0327244	director	\N	\N
tt4836258	nm1020310	director	\N	\N
tt4836258	nm4081003	writer	writer	\N
tt4836258	nm5880714	writer	\N	\N
tt4836258	nm4081115	writer	\N	\N
tt4836258	nm1509262	producer	executive producer	\N
tt4836258	nm1638737	producer	producer	\N
tt4836258	nm7444173	composer	\N	\N
tt4836258	nm0213066	cinematographer	cinematographer	\N
tt4836258	nm3131632	editor	\N	\N
tt4836258	nm7444167	editor	\N	\N
tt1090245	nm0080557	actress	\N	\N
tt1090245	nm1655660	actress	\N	\N
tt1090245	nm1051348	actress	\N	\N
tt1090245	nm1671702	actress	\N	\N
tt1090245	nm2758081	actress	\N	\N
tt1090245	nm1123413	actress	\N	\N
tt1090245	nm3508460	actor	\N	\N
tt1090245	nm1845154	actor	\N	\N
tt1090245	nm1155550	actor	\N	\N
tt1090245	nm10514036	actress	\N	\N
tt1090245	nm1664097	director	\N	\N
tt1469806	nm0054837	self	\N	["Self - Host"]
tt1469806	nm0356775	self	\N	["Self - Model"]
tt1469806	nm0647692	self	\N	["Self - Announcer"]
tt1469806	nm0662833	self	\N	["Self - Model"]
tt1469806	nm0672176	self	\N	["Self - Model"]
tt1469806	nm0107757	director	\N	\N
tt1469806	nm0435664	composer	\N	\N
tt9366082	nm1107230	actress	\N	\N
tt9366082	nm1943671	actress	\N	\N
tt9366082	nm0015846	director	\N	\N
tt9366082	nm8015960	director	\N	\N
tt9366082	nm0422357	director	\N	\N
tt9366082	nm1516827	producer	executive producer	\N
tt9366082	nm0209660	composer	\N	\N
tt6512960	nm5258649	actor	\N	["Edison"]
tt6512960	nm3562326	actress	\N	["Elettra"]
tt6512960	nm8732664	actor	\N	["Tony"]
tt6512960	nm8732958	actor	\N	["Mao"]
tt6512960	nm6125876	actress	\N	["Fulminata"]
tt6512960	nm8043282	actor	\N	["Voice off"]
tt6512960	nm8732957	actress	\N	["Ria"]
tt6512960	nm8726208	director	\N	\N
tt6512960	nm8726208	writer	\N	\N
tt6512960	nm8726208	cinematographer	director of photography	\N
tt6512960	nm8726208	editor	\N	\N
tt11767638	nm10453857	actress	\N	["Ryder Forrest"]
tt11767638	nm1088623	actor	\N	["Clive Forrest"]
tt11767638	nm10453857	director	\N	\N
tt11767638	nm10453857	writer	story by	\N
tt11767638	nm10453857	producer	producer	\N
tt11767638	nm8430511	producer	producer	\N
tt11767638	nm10343559	composer	\N	\N
tt11767638	nm7513597	cinematographer	\N	\N
tt11767638	nm4541981	editor	editor	\N
tt33363660	nm15247380	self	\N	["Self - Newscaster"]
tt21203940	nm1399243	self	\N	["Self - Host"]
tt21203940	nm13559548	self	\N	["Self - Contestant"]
tt1056429	nm0476202	actress	\N	\N
tt1056429	nm5844871	actor	\N	\N
tt1056429	nm0811443	actor	\N	\N
tt1056429	nm2136359	director	\N	\N
tt1056429	nm0476202	writer	scenario	\N
tt1056429	nm2136359	cinematographer	\N	\N
tt1056429	nm2136359	editor	\N	\N
tt1775731	nm0067497	actress	\N	\N
tt1775731	nm0109329	actress	\N	\N
tt1775731	nm0332344	actor	\N	\N
tt1775731	nm0383322	actor	\N	\N
tt1775731	nm0424678	actor	\N	\N
tt1775731	nm0466050	actor	\N	\N
tt1775731	nm0497339	actor	\N	\N
tt1775731	nm0478345	actress	\N	\N
tt1775731	nm0621786	actor	\N	\N
tt1775731	nm0628091	actor	\N	\N
tt1775731	nm0186733	director	supervising director	\N
tt1775731	nm0438394	director	director	\N
tt1775731	nm0589636	director	director	\N
tt1775731	nm0423132	writer	created by	\N
tt1775731	nm0383322	writer	writer	\N
tt1775731	nm0574509	writer	story editor	\N
tt1775731	nm0769095	writer	writer	\N
tt3586696	nm1812267	actor	\N	["Joe"]
tt3586696	nm5096253	actress	\N	["Jessica"]
tt3586696	nm6356195	actor	\N	["MyChonny"]
tt3586696	nm6344480	actor	\N	["Press"]
tt3586696	nm6344480	actor	\N	["Frontbencher"]
tt3586696	nm6344480	actor	\N	["Passerby"]
tt3586696	nm1131579	actor	\N	\N
tt3586696	nm5059164	actor	\N	["Reporter"]
tt3586696	nm4992560	actor	\N	["Camera man (2014)"]
tt11061646	nm0865578	self	\N	["Self - Host"]
tt11061646	nm1164030	self	\N	["Self - Segment Host"]
tt11061646	nm0552771	self	\N	["Self - Interviewee"]
tt15363798	nm0177672	actor	\N	["Mr. Dressup"]
tt15363798	nm0492858	actress	\N	["Casey"]
tt15363798	nm0492858	actress	\N	["Finnegan"]
tt15363798	nm0177672	writer	created by	\N
tt15363798	nm11367792	producer	producer	\N
tt0472390	nm0221509	actress	\N	["Liesl - Comtesse Heiterstein"]
tt0472390	nm0687226	actress	\N	["Miß Moissi - ihre Gouvernante"]
tt0472390	nm0618164	actor	\N	["Cölestin Graf Heiterstein - Liesls Vater"]
tt0472390	nm0810856	actor	\N	["Leutnant Zacharias Zach"]
tt0472390	nm0667546	actor	\N	["Rittmeister Theodor Freiherr von Schlipps"]
tt0472390	nm0333675	actor	\N	["Paul Polizzer"]
tt0472390	nm0291020	actress	\N	["Berta Bibiana Karoline Doppelhopp"]
tt0472390	nm1148689	actor	\N	["Rudi Doppelhopp - ihr Sohn"]
tt0472390	nm1117459	actor	\N	["General Freiherr von Hassensassa"]
tt0472390	nm0002161	actor	\N	\N
tt0472390	nm0910446	director	\N	\N
tt0472390	nm0245459	director	director	\N
tt0472390	nm0653250	writer	\N	\N
tt0472390	nm0281556	writer	\N	\N
tt0472390	nm0059341	composer	\N	\N
tt0472390	nm0005736	cinematographer	\N	\N
tt27853071	nm0403569	writer	head writer	\N
tt27853071	nm0403568	writer	head writer	\N
tt27853071	nm13740511	producer	producer	\N
tt20427582	nm5706265	self	\N	["Self"]
tt20230648	nm5511771	actor	\N	["Boyfriend"]
tt20230648	nm5511771	writer	written by	\N
tt20230648	nm5511771	producer	producer	\N
tt20255790	nm12518317	actor	\N	["August"]
tt20255790	nm13672883	actor	\N	["Danny"]
tt20255790	nm13672884	actor	\N	["Will"]
tt20255790	nm13672885	actor	\N	["Ali"]
tt20255790	nm13672887	actor	\N	["Danny's Mom"]
tt20255790	nm13672886	actor	\N	["YouTuber"]
tt20255790	nm12936316	director	\N	\N
tt20255790	nm12936316	writer	writer	\N
tt20255790	nm7756372	producer	producer	\N
tt20255790	nm12936316	producer	producer	\N
tt20255790	nm12464276	composer	\N	\N
tt20255790	nm7756372	cinematographer	\N	\N
tt20255790	nm5514840	editor	\N	\N
tt19880574	nm3915901	actor	\N	["Sonic"]
tt19880574	nm5211041	actress	\N	["Amy"]
tt19880574	nm1004585	actor	\N	["Mr. Sega"]
tt19880574	nm1004585	actor	\N	["Tails"]
tt19880574	nm0587989	actor	\N	["Narrator"]
tt1846858	nm4202562	actor	\N	["Mister French Taste"]
tt1846858	nm4345611	actress	\N	["Lady at the party"]
tt1846858	nm4346567	actress	\N	["Lady at the party"]
tt1846858	nm2351385	actress	\N	["The woman"]
tt1846858	nm4336999	actor	\N	["The hairdresser"]
tt1846858	nm3802258	director	\N	\N
tt1846858	nm1245512	cinematographer	\N	\N
tt32143484	nm1736956	actress	\N	["Lydia Miller"]
tt32143484	nm3990650	actress	\N	["Sofia Del La Rosa"]
tt32143484	nm1218860	actor	\N	["Nelson Wilson"]
tt32143484	nm3818800	actress	\N	["Callie Brand"]
tt32143484	nm3083316	actress	\N	["Leslie MIller"]
tt32143484	nm12432099	actress	\N	["Marie Lopez"]
tt32143484	nm16049788	actor	\N	["Molly Reynolds"]
tt32143484	nm0360705	director	\N	\N
tt32143484	nm3990650	writer	\N	\N
tt32143484	nm0360705	producer	producer	\N
tt32143484	nm12446485	composer	\N	\N
tt32143484	nm5544212	cinematographer	\N	\N
tt32143484	nm4596402	editor	\N	\N
tt32143484	nm10471506	production_designer	\N	\N
tt14219894	nm0016175	actor	\N	["Ramiro"]
tt14219894	nm0207605	actress	\N	["Donatella"]
tt14219894	nm4468419	actor	\N	["Antônio"]
tt14219894	nm2780552	actress	\N	["Poderosa"]
tt14219894	nm1772923	actor	\N	["Tobias"]
tt14219894	nm5856354	actor	\N	["Miguel"]
tt14219894	nm0481195	director	\N	\N
tt14219894	nm8781407	director	\N	\N
tt14219894	nm4534540	director	\N	\N
tt14219894	nm12307401	writer	\N	\N
tt14219894	nm12307402	writer	\N	\N
tt14219894	nm4497810	writer	\N	\N
tt14219894	nm0294906	writer	\N	\N
tt11392830	nm9783834	actress	\N	\N
tt11392830	nm2583241	actor	\N	\N
tt11392830	nm11173454	director	\N	\N
tt11392830	nm2276803	writer	\N	\N
tt11392830	nm11173455	producer	producer	\N
tt11392830	nm11072915	cinematographer	\N	\N
tt11392830	nm6434907	cinematographer	\N	\N
tt11392830	nm11173456	editor	\N	\N
tt11141946	nm0652200	director	\N	\N
tt11141946	nm4031157	casting_director	casting_director	\N
tt6271738	nm1239305	actor	\N	["Pablo"]
tt6271738	nm5738712	actress	\N	["Maia"]
tt6271738	nm0312121	actress	\N	["Antonia"]
tt6271738	nm0495426	actor	\N	["Othón"]
tt6271738	nm0130753	actor	\N	["Rafael"]
tt6271738	nm2335571	actress	\N	["Carmen"]
tt6271738	nm0305876	actor	\N	["Ismael"]
tt6271738	nm0401241	actress	\N	["Tulia"]
tt6271738	nm0615249	actor	\N	["Eligio"]
tt6271738	nm1400129	actress	\N	["Cindy"]
tt6271738	nm0198852	director	\N	\N
tt6271738	nm0304650	director	\N	\N
tt6271738	nm0616443	director	\N	\N
tt6271738	nm0661114	director	\N	\N
tt6271738	nm1640027	writer	original story	\N
tt6271738	nm1883542	writer	original story	\N
tt6271738	nm1298604	writer	adaptation	\N
tt6271738	nm1681044	writer	adaptation	\N
tt6271738	nm1299310	cinematographer	\N	\N
tt6271738	nm6863140	cinematographer	cinematographer	\N
tt6271738	nm0844779	cinematographer	\N	\N
tt6271738	nm3091068	editor	editor	\N
tt6271738	nm5775058	editor	\N	\N
tt6271738	nm2957609	editor	editor	\N
tt31037164	nm12559901	actress	\N	["Narrator"]
tt31037164	nm15465020	actress	\N	["Bernadette"]
tt31037164	nm6881724	self	\N	["Self"]
tt31037164	nm13473245	actress	\N	["Lois"]
tt31037164	nm11011110	self	\N	["Self"]
tt31037164	nm15353469	self	\N	["Self"]
tt31037164	nm15755944	actor	\N	["Bartender"]
tt31037164	nm2604079	director	\N	\N
tt31037164	nm14742986	director	expert interviews director	\N
tt31037164	nm1311453	director	expert interviews director	\N
tt31037164	nm9971263	writer	\N	\N
tt31037164	nm7903328	writer	story editor	\N
tt31037164	nm1794019	producer	producer	\N
tt31037164	nm2604079	producer	producer	\N
tt31037164	nm1357175	composer	\N	\N
tt31037164	nm12531506	cinematographer	\N	\N
tt31037164	nm14047265	editor	\N	\N
tt5246612	nm1157232	actress	\N	["Svetlana Nyklová"]
tt5246612	nm7550942	actress	\N	["Julie Stránská"]
tt5246612	nm5836605	actor	\N	["Grigor"]
tt5246612	nm2066270	actress	\N	["Monika Farská"]
tt5246612	nm0352937	actress	\N	["Ruzena Habartová"]
tt5246612	nm0361526	actor	\N	["Antonín Hlozánek"]
tt5246612	nm0404942	actress	\N	["Eva Touzimská"]
tt5246612	nm0413065	actress	\N	["Denisa Mastná"]
tt5246612	nm0419354	actor	\N	["Bedrich Liska"]
tt5246612	nm0470494	actress	\N	["Anna Lisková"]
tt33074220	nm16426421	self	\N	["Self - Weather"]
tt33074220	nm0830815	self	\N	["Self - Sports"]
tt33074220	nm16290103	self	\N	["Self - Anchor"]
tt21849144	nm1215961	actor	\N	["Host"]
tt21849144	nm0504656	actor	\N	["Musical director"]
tt21849144	nm1215961	director	\N	\N
tt21849144	nm1215961	writer	\N	\N
tt21849144	nm1218331	producer	producer	\N
tt21849144	nm0463055	production_designer	production_designer	\N
tt6661132	nm0015943	self	\N	["Self - Host"]
tt6661132	nm1538204	actress	\N	\N
tt6661132	nm0158225	self	\N	["Self"]
tt6661132	nm2135161	actor	\N	\N
tt6661132	nm3853235	actor	\N	["Puppet"]
tt6661132	nm3851531	actor	\N	["Puppet"]
tt6661132	nm0923936	actor	\N	\N
tt6661132	nm7024164	director	\N	\N
tt6661132	nm1684901	writer	script	\N
tt6661132	nm1702240	writer	script	\N
tt6661132	nm7024165	producer	producer	\N
tt11768570	nm1801973	actress	\N	["Kinga Zukowska"]
tt11768570	nm11448639	actress	\N	["Marlena Domanska"]
tt11768570	nm11448640	actress	\N	["Marlena Domanska"]
tt11768570	nm1738471	actress	\N	["Sabina Weksler"]
tt11768570	nm2351357	actress	\N	["Pamela Kulas"]
tt11768570	nm2244371	actress	\N	["Jagoda Rogalska"]
tt11768570	nm0310718	actress	\N	["Ewa Nowak"]
tt11768570	nm6702518	actress	\N	["Amelia 'Melka' Dlugosz"]
tt11768570	nm2539223	actor	\N	["Bartosz Miedzianowski"]
tt11768570	nm0645690	actor	\N	["Marian Smialek"]
tt11768570	nm2361839	director	supervising director	\N
tt11768570	nm3166235	director	director	\N
tt11768570	nm3623039	director	director	\N
tt11768570	nm4939712	director	director	\N
tt11768570	nm9684468	writer	screenplay	\N
tt11768570	nm8009607	writer	head writer	\N
tt11768570	nm4039229	writer	screenplay	\N
tt11768570	nm1249176	writer	screenplay	\N
tt8871964	nm0145437	actor	\N	\N
tt8871964	nm0500630	actor	\N	\N
tt8871964	nm1218695	actor	\N	\N
tt8871964	nm0520326	actress	\N	\N
tt8871964	nm0561244	actor	\N	\N
tt8871964	nm0722802	actor	\N	\N
tt8871964	nm0561244	director	\N	\N
tt8871964	nm0798618	writer	writer	\N
tt8871964	nm0764147	producer	producer	\N
tt7462896	nm8837013	actor	\N	["Gopi"]
tt7462896	nm9862066	actress	\N	\N
tt7462896	nm10963452	director	promo director	\N
tt7462896	nm3084686	writer	dialogue	\N
tt7462896	nm3476984	writer	screenplay	\N
tt7462896	nm4607871	writer	story	\N
tt7462896	nm3083935	writer	created by	\N
tt7462896	nm3085186	producer	producer	\N
tt7462896	nm1921694	producer	producer	\N
tt7462896	nm2273814	composer	\N	\N
tt7462896	nm3203921	casting_director	\N	\N
tt14857528	nm6045536	actress	\N	["Lucy"]
tt14857528	nm7228705	actress	\N	["Summer"]
tt14857528	nm0788218	actor	\N	["Gil"]
tt14857528	nm3838034	actor	\N	["Quinn"]
tt14857528	nm9412217	actress	\N	["Emmy"]
tt14857528	nm5074027	actor	\N	["Ethan"]
tt14857528	nm9608958	actress	\N	["Val"]
tt14857528	nm5136877	actor	\N	["Brian"]
tt14857528	nm0006692	actress	\N	["Kendra"]
tt14857528	nm0113357	actor	\N	["Sheriff Myers"]
tt14857528	nm1680829	director	\N	\N
tt14857528	nm3208182	writer	screenplay	\N
tt14857528	nm1680829	writer	screenplay	\N
tt14857528	nm1396390	producer	producer	\N
tt14857528	nm0484907	producer	producer	\N
tt14857528	nm4844181	composer	\N	\N
tt14857528	nm0592598	cinematographer	director of photography	\N
tt14857528	nm0085923	editor	\N	\N
tt14857528	nm0484498	editor	\N	\N
tt14857528	nm0467873	casting_director	\N	\N
tt14857528	nm0140428	production_designer	\N	\N
tt32003302	nm0092728	self	\N	["Self"]
tt32003302	nm16002300	self	\N	["Self"]
tt1078593	nm1410191	actor	\N	["Ricky Cooper"]
tt1078593	nm1462159	actor	\N	["Tony"]
tt1078593	nm2734312	actor	\N	["Frank"]
tt1078593	nm1706797	actor	\N	["Man attacked by Banana"]
tt1078593	nm1864844	actor	\N	["Agent 2"]
tt1078593	nm2733262	actor	\N	["Bar Patron"]
tt1078593	nm1909886	actor	\N	["Tommy"]
tt1078593	nm2508344	actor	\N	["Timmy Whittaker"]
tt1078593	nm1789296	actress	\N	["Bartender"]
tt1078593	nm1660410	actor	\N	["Football Announcer 1"]
tt1078593	nm1662992	director	\N	\N
tt1078593	nm1410191	writer	\N	\N
tt1078593	nm1662992	writer	\N	\N
tt1078593	nm1410191	producer	producer	\N
tt1078593	nm1662992	producer	producer	\N
tt1078593	nm1662723	cinematographer	\N	\N
tt1078593	nm1662992	editor	\N	\N
tt1078593	nm1410191	casting_director	\N	\N
tt3185008	nm0014353	actor	\N	["Kjell"]
tt3185008	nm0029258	actor	\N	["Lennart"]
tt3185008	nm0082599	actor	\N	["Matts"]
tt3185008	nm0088975	actress	\N	["Sara"]
tt3185008	nm0111423	actor	\N	["Daniel"]
tt3185008	nm0188681	actress	\N	["Ylva"]
tt3185008	nm0230869	actor	\N	["Roffe"]
tt3185008	nm0245580	actress	\N	["Tina"]
tt3185008	nm4036257	actor	\N	["Valde"]
tt3185008	nm0252493	actor	\N	["Frank"]
tt3185008	nm0252484	director	\N	\N
tt3185008	nm0265904	writer	series writer	\N
tt3185008	nm0648120	writer	series writer	\N
tt3185008	nm5926707	writer	episode writer	\N
tt3185008	nm0624388	composer	\N	\N
tt3185008	nm0105579	editor	\N	\N
tt3185008	nm0252484	editor	\N	\N
tt10576374	nm1286983	actor	\N	["Romeo Valentino"]
tt10576374	nm1373129	actress	\N	["Julie Matahimik-Valentino"]
tt10576374	nm2614485	actor	\N	["Lino"]
tt10576374	nm1293867	director	\N	\N
tt10576374	nm2756229	writer	\N	\N
tt10576374	nm5942686	writer	\N	\N
tt6806954	nm0572349	self	\N	["Self - Host"]
tt30272245	nm6650425	self	\N	["Self - Co-Anchor"]
tt30272245	nm6732293	self	\N	["Self - Meteorologist"]
tt30272245	nm15576824	self	\N	["Self - Sportscaster"]
tt30272245	nm15576286	self	\N	["Self - Co-Anchor"]
tt9630990	nm9148891	actress	\N	\N
tt9630990	nm5074744	actor	\N	\N
tt0512119	nm0643505	actress	\N	["Ana García Palermo"]
tt0512119	nm0959575	actor	\N	["Fernando Hidalgo"]
tt0512119	nm0596750	actor	\N	["Tony Gutiérrez"]
tt0512119	nm0551397	actress	\N	["Alexia Vázquez de Castro"]
tt0512119	nm0419512	actor	\N	["Bruno"]
tt0512119	nm0293842	actor	\N	["David Hidalgo"]
tt0512119	nm1288683	actress	\N	["Manuela"]
tt0512119	nm0704112	actor	\N	["Don Nicolás"]
tt0512119	nm1289497	actress	\N	["Sharon"]
tt0512119	nm0596670	actress	\N	["Carolina Hidalgo"]
tt0512119	nm0429557	director	\N	\N
tt0512119	nm0010205	writer	story coordinator	\N
tt0512119	nm0643505	writer	idea	\N
tt0512119	nm0018528	producer	producer	\N
tt0512119	nm0721432	composer	\N	\N
tt0512119	nm0596716	cinematographer	cinematographer	\N
tt0512119	nm1234420	editor	\N	\N
tt0512119	nm0844623	editor	editor	\N
tt0512119	nm0190237	casting_director	\N	\N
tt13849900	nm1729422	self	\N	["Self - Host"]
tt2592776	nm3163054	self	\N	["Themselves"]
tt2592776	nm0000309	self	\N	["Self"]
tt2592776	nm0300169	self	\N	["Self"]
tt2592776	nm5443349	self	\N	["Self"]
tt2592776	nm0758113	self	\N	["Self"]
tt2592776	nm2271838	self	\N	["Self"]
tt2592776	nm0230964	director	\N	\N
tt2592776	nm0743949	director	\N	\N
tt2592776	nm0619582	editor	\N	\N
tt2766738	nm4400261	actress	\N	["Isobel Jacobs"]
tt2766738	nm4449145	actress	\N	["Jessica MacLean"]
tt2766738	nm5629479	actress	\N	["Mama Achupa"]
tt2766738	nm5568363	actress	\N	["Rachel"]
tt2766738	nm5567958	actress	\N	["Mama Esther"]
tt2766738	nm5568270	actor	\N	["Heinrich"]
tt2766738	nm5630766	actress	\N	["Lone Girl"]
tt2766738	nm5567941	actor	\N	["Michael Odhiambo"]
tt2766738	nm5629440	actress	\N	["Mama Temba"]
tt2766738	nm5568069	actress	\N	["Grace"]
tt2766738	nm1821306	director	\N	\N
tt2766738	nm1821306	writer	writer	\N
tt2766738	nm1379101	producer	producer	\N
tt2766738	nm1198952	producer	producer	\N
tt2766738	nm4445496	composer	\N	\N
tt2766738	nm0494093	cinematographer	\N	\N
tt2766738	nm3106539	editor	\N	\N
tt7419208	nm5186222	producer	producer	\N
tt7419208	nm6653205	producer	producer	\N
tt7419208	nm7640380	producer	producer	\N
tt7419208	nm2157074	editor	\N	\N
tt35662168	nm1333017	actress	\N	\N
tt35662168	nm15943005	actor	\N	\N
tt35662168	nm7903847	actress	\N	\N
tt35662168	nm10509708	actor	\N	\N
tt35662168	nm16976522	actress	\N	\N
tt35662168	nm4706056	actress	\N	\N
tt35662168	nm16976524	actress	\N	\N
tt35662168	nm16976523	actor	\N	\N
tt35662168	nm3257776	director	director	\N
tt29763055	nm2273169	actor	\N	["Hans Reiser"]
tt29763055	nm3617315	actress	\N	["Lisa Kirchberger"]
tt29763055	nm0286208	actress	\N	["Sissy Allgeier"]
tt29763055	nm0496046	actor	\N	["Alois Stadler"]
tt29763055	nm5063143	actress	\N	["Clara Hiller"]
tt29763055	nm1143649	actor	\N	["Imam Kilic"]
tt29763055	nm0084543	actor	\N	["Paul Kirchberger"]
tt29763055	nm2782465	actress	\N	["Gerlinde Moll"]
tt29763055	nm0826071	actor	\N	["Kardinal Georg Brunnenmayr"]
tt29763055	nm4313580	actress	\N	["Frau Öztunali"]
tt29763055	nm0091843	director	director	\N
tt29763055	nm0079497	writer	screenplay	\N
tt29763055	nm0091843	writer	screenplay	\N
tt29763055	nm8464773	writer	book	\N
tt29763055	nm4132642	writer	collaboration	\N
tt29763055	nm2628307	producer	producer	\N
tt29763055	nm7651677	producer	producer	\N
tt29763055	nm1852263	producer	producer	\N
tt29763055	nm5548566	composer	\N	\N
tt29763055	nm0309983	cinematographer	\N	\N
tt29763055	nm1543920	editor	\N	\N
tt29763055	nm0866056	casting_director	\N	\N
tt29763055	nm2213712	production_designer	\N	\N
tt12416946	nm1532234	self	\N	["Self - Host"]
tt12416946	nm7884873	self	\N	["Self (Duplex)"]
tt12416946	nm2732796	self	\N	["Self"]
tt12416946	nm8639669	self	\N	["Self"]
tt12416946	nm3260406	self	\N	["Self - Panelist"]
tt12416946	nm3411672	self	\N	["Self"]
tt12416946	nm7156286	self	\N	["Self"]
tt12416946	nm3002951	self	\N	["Self - Panelist"]
tt12416946	nm7114124	self	\N	["Self - Panelist"]
tt5948646	nm1564197	actress	\N	["Jung Soon-Im"]
tt5948646	nm0655918	actor	\N	["Han Yong-Jin"]
tt5948646	nm0453737	actress	\N	["Cha Hye-Ran"]
tt5948646	nm1195120	actress	\N	["Cha Young-Rim"]
tt5948646	nm3483014	actress	\N	["Han In-Seo"]
tt5948646	nm1165901	actress	\N	["Han Kyung-seo (2010)"]
tt5948646	nm2920466	actor	\N	["Lee Dong-Joo"]
tt5948646	nm6286167	actress	\N	["Jang Ha-Ni"]
tt5948646	nm3781277	actor	\N	["Cha Sung-Joon"]
tt5948646	nm1307485	actor	\N	["Jang Jae-yong"]
tt5661452	nm0388700	actress	\N	["Juni Anker-Hansen"]
tt5661452	nm1569865	actress	\N	["Eva Rosenkrantz"]
tt5661452	nm1100578	actor	\N	["Pelle Krogstad"]
tt5661452	nm4902057	actress	\N	["Amanda Anker.Hansen"]
tt5661452	nm2180639	actor	\N	["Storm Anker-Hansen"]
tt5661452	nm2055276	actor	\N	["Harshad Kapoor"]
tt5661452	nm1650029	actress	\N	["Ninni Krogstad"]
tt5661452	nm1435930	actor	\N	["Jonas Bøe"]
tt5661452	nm4207941	actress	\N	["Beate Krogstad"]
tt5661452	nm4936424	actress	\N	["Jenny Anker-Hansen"]
tt5661452	nm3133207	director	\N	\N
tt5661452	nm7905450	writer	storyline	\N
tt5661452	nm8189469	writer	storyline	\N
tt5661452	nm8189468	writer	storyline	\N
tt5661452	nm8189471	writer	storyline	\N
tt5661452	nm1266069	producer	producer	\N
tt5661452	nm1401580	composer	\N	\N
tt5661452	nm1780369	composer	\N	\N
tt5661452	nm0624388	composer	\N	\N
tt5661452	nm2403574	cinematographer	\N	\N
tt5661452	nm2278946	editor	\N	\N
tt5661452	nm1272545	casting_director	\N	\N
tt5661452	nm8187335	production_designer	\N	\N
tt7760258	nm1326845	actress	\N	["Estefanía Gallardo"]
tt7760258	nm1025137	actor	\N	["Luis Alberto Seijas 'El Guácharo'"]
tt7760258	nm0647138	actor	\N	["Julio César Ordóñez"]
tt7760258	nm0735868	actor	\N	["Pedro Escobar"]
tt7760258	nm0093505	director	\N	\N
tt7760258	nm0549373	director	\N	\N
tt7760258	nm1265194	writer	screenplay	\N
tt7760258	nm0127917	writer	writer	\N
tt7760258	nm1329517	writer	screenplay	\N
tt7760258	nm1398631	writer	screenplay	\N
tt7760258	nm0093505	producer	producer	\N
tt3648730	nm2830785	director	\N	\N
tt3648730	nm2831416	producer	producer	\N
tt3648730	nm2830785	producer	producer	\N
tt3648730	nm2463589	editor	\N	\N
tt34671460	nm14620784	actress	\N	\N
tt34671460	nm10804878	actor	\N	\N
tt34671460	nm10729126	actress	\N	\N
tt34671460	nm0889150	actress	\N	\N
tt34671460	nm14750248	actor	\N	\N
tt34671460	nm12773584	actor	\N	\N
tt34671460	nm3294569	actor	\N	\N
tt34671460	nm16742186	actor	\N	\N
tt34671460	nm14116511	actress	\N	\N
tt34671460	nm8185913	actress	\N	\N
tt34671460	nm8240725	director	\N	\N
tt34671460	nm11468916	director	\N	\N
tt34671460	nm16742189	writer	\N	\N
tt34671460	nm16742190	writer	\N	\N
tt34671460	nm16742187	writer	\N	\N
tt34671460	nm16742188	writer	\N	\N
tt34671460	nm3586914	producer	producer	\N
tt34671460	nm12589493	producer	producer	\N
tt34671460	nm16166775	cinematographer	\N	\N
tt34671460	nm16166774	cinematographer	\N	\N
tt34671460	nm11857327	editor	\N	\N
tt34671460	nm14907059	editor	\N	\N
tt11664918	nm1511891	actor	\N	["Rudr Singh Rawat"]
tt11664918	nm3796791	actress	\N	["Gauri Sharma"]
tt11664918	nm3796791	actress	\N	["Gauri Singh Rawat"]
tt11664918	nm6982079	director	\N	\N
tt11664918	nm4516707	director	\N	\N
tt11664918	nm5050736	director	\N	\N
tt11664918	nm1957846	director	\N	\N
tt11664918	nm4516834	writer	\N	\N
tt11664918	nm2767267	writer	\N	\N
tt11664918	nm1756885	producer	producer	\N
tt11664918	nm2959697	composer	main title composer	\N
tt11664918	nm6271888	editor	editor	\N
tt11664918	nm13859221	casting_director	\N	\N
tt2914258	nm2297693	actress	\N	["Lena Sander"]
tt2914258	nm1863418	actor	\N	["David von Arensberg"]
tt2914258	nm0509326	actress	\N	["Amelie von Arensberg"]
tt2914258	nm1290335	actor	\N	["Tony Weiss"]
tt2914258	nm0282303	actress	\N	["Vanessa Meyer"]
tt2914258	nm0433823	actress	\N	["Pia Sander"]
tt2914258	nm0704659	actor	\N	["Frank Sander"]
tt2914258	nm0719013	actor	\N	["Rafael von Arensberg"]
tt2914258	nm0889654	actress	\N	["Linda Behrendt"]
tt2914258	nm0772696	actress	\N	["Gaby Keller"]
tt2914258	nm1601654	director	director	\N
tt2914258	nm10243949	writer	adaptation	\N
tt2914258	nm1574478	writer	writer	\N
tt2914258	nm0073875	producer	producer	\N
tt2914258	nm2024518	producer	producer	\N
tt2914258	nm2909227	producer	producer	\N
tt2914258	nm0776846	producer	producer	\N
tt2914258	nm1318802	casting_director	\N	\N
tt2914258	nm0880214	casting_director	\N	\N
tt31307672	nm1369452	actor	\N	\N
tt31307672	nm1372630	actor	\N	\N
tt31307672	nm2129922	actor	\N	\N
tt31307672	nm15826604	actor	\N	\N
tt31307672	nm15826603	actor	\N	\N
tt31307672	nm1372933	actor	\N	\N
tt31307672	nm7316140	actor	\N	\N
tt31307672	nm1243620	actor	\N	\N
tt31307672	nm1301379	actor	\N	\N
tt31307672	nm0522895	actor	\N	\N
tt31307672	nm0383510	director	\N	\N
tt31307672	nm0383510	writer	\N	\N
tt31307672	nm0383510	producer	producer	\N
tt31307672	nm1062819	composer	\N	\N
tt31307672	nm0383510	cinematographer	\N	\N
tt31307672	nm2133953	editor	\N	\N
tt31307672	nm5080509	editor	editor	\N
tt31307672	nm2763348	editor	\N	\N
tt1332982	nm0855496	self	\N	["Self - Host"]
tt1332982	nm0764339	self	\N	["Self - Guest"]
tt27758943	nm3036071	self	\N	["Self - Host"]
tt27758943	nm15730919	self	\N	["Self - Housemate"]
tt27758943	nm1044665	self	\N	["Self - Housemate"]
tt27758943	nm15730930	self	\N	["Self - Housemate"]
tt27758943	nm15730929	self	\N	["Self - Housemate"]
tt27758943	nm15730922	self	\N	["Self - Housemate"]
tt27758943	nm13539948	self	\N	["Self - Housemate"]
tt27758943	nm15730920	self	\N	["Self - Housemate"]
tt27758943	nm15730932	self	\N	["Self - Housemate"]
tt27758943	nm1795347	self	\N	["Self - Housemate"]
tt27758943	nm0596393	writer	\N	\N
tt27758943	nm13176447	producer	producer	\N
tt14300608	nm4146405	actor	\N	["Macit Arcaoglu"]
tt14300608	nm3744351	actress	\N	["Neriman"]
tt14300608	nm5068051	actor	\N	["Sinasi"]
tt14300608	nm4145308	actress	\N	["Pelin"]
tt14300608	nm3667998	actress	\N	["Rüya"]
tt14300608	nm5964397	actress	\N	["Fahriye"]
tt14300608	nm2598542	actress	\N	["Sahika"]
tt14300608	nm16016978	actor	\N	["Özgür"]
tt14300608	nm0260539	actress	\N	["Inci Arcaoglu"]
tt14300608	nm2368105	actress	\N	["Gülter"]
tt14300608	nm1760741	director	\N	\N
tt14300608	nm5964399	writer	\N	\N
tt14300608	nm1764838	producer	producer	\N
tt14300608	nm2586767	composer	\N	\N
tt14300608	nm1680779	composer	\N	\N
tt14300608	nm2586534	composer	\N	\N
tt14300608	nm2640563	cinematographer	\N	\N
tt14300608	nm4251276	editor	editor	\N
tt12322766	nm0023927	self	\N	["Self - Host"]
tt1153299	nm2084710	actor	\N	["Guarda Ramalho"]
tt1153299	nm0347313	actress	\N	["Diana Vilhena"]
tt1153299	nm0056671	actress	\N	["Fani"]
tt1153299	nm0069385	actress	\N	["Marta Barbosa"]
tt1153299	nm0106895	actress	\N	\N
tt1153299	nm0134611	actor	\N	\N
tt1153299	nm0139554	actress	\N	\N
tt1153299	nm0144887	actor	\N	["Manolo"]
tt1153299	nm0145451	actor	\N	["Lopes"]
tt1153299	nm0146672	actor	\N	\N
tt1153299	nm0297591	director	\N	\N
tt1153299	nm0182196	director	\N	\N
tt1153299	nm2084867	writer	writer	\N
tt1153299	nm0553769	writer	writer	\N
tt1153299	nm2043312	writer	writer	\N
tt1153299	nm0346081	producer	producer	\N
tt1153299	nm3143022	producer	producer	\N
tt1153299	nm0051690	composer	\N	\N
tt1153299	nm1671660	composer	\N	\N
tt1153299	nm0763275	cinematographer	\N	\N
tt1153299	nm1825529	editor	\N	\N
tt1153299	nm0609483	editor	\N	\N
tt1153299	nm0143724	production_designer	\N	\N
tt1153299	nm0627383	production_designer	\N	\N
tt12377228	nm0636354	self	\N	["Self - Anchor"]
tt12377228	nm4209639	self	\N	["Self"]
tt12377228	nm13970296	writer	story coordinator	\N
tt12377228	nm0251041	composer	\N	\N
tt11071286	nm2817027	actress	\N	["Senior Inspector Chandramukhi Chautala"]
tt11071286	nm2214392	actor	\N	["Constable Mulayam Singh Gulgule"]
tt11071286	nm1584260	actor	\N	["Constable Gopinath Gandotra"]
tt11071286	nm1269330	actor	\N	["Bajrang Pandey"]
tt11071286	nm4466033	actor	\N	\N
tt11071286	nm1669693	actor	\N	\N
tt11071286	nm14320119	actress	\N	\N
tt11071286	nm1516405	actor	\N	\N
tt11071286	nm8379803	actress	\N	\N
tt11071286	nm5460792	director	\N	\N
tt11071286	nm3811969	writer	\N	\N
tt11071286	nm15908969	writer	assistant dialogue writer	\N
tt11071286	nm7053950	producer	producer	\N
tt11071286	nm7053951	producer	producer	\N
tt11071286	nm4290562	cinematographer	\N	\N
tt11071286	nm11022530	editor	\N	\N
tt28351416	nm0529893	actor	\N	\N
tt28351416	nm0738139	actress	\N	\N
tt28351416	nm0032802	actor	\N	\N
tt28351416	nm0613669	actor	\N	\N
tt28351416	nm0600190	actress	\N	\N
tt28351416	nm0261298	actress	\N	\N
tt28351416	nm0136051	actor	\N	\N
tt28351416	nm0342791	actress	\N	\N
tt28351416	nm0349464	actress	\N	\N
tt28351416	nm0599965	actor	\N	\N
tt28351416	nm0052486	director	\N	\N
tt28351416	nm0007186	writer	story	\N
tt28351416	nm0898247	writer	\N	\N
tt28351416	nm0683788	producer	producer	\N
tt12282948	nm7550132	actress	\N	["Ganga"]
tt12282948	nm7550132	actress	\N	["Nandhini (2017)"]
tt12282948	nm1171296	director	\N	\N
tt12282948	nm5237351	writer	dialogue	\N
tt12282948	nm1326535	writer	story	\N
tt12282948	nm8928211	writer	dialogue	\N
tt12282948	nm7017265	writer	screenplay	\N
tt12282948	nm1326535	producer	producer	\N
tt12282948	nm1001243	producer	producer	\N
tt12282948	nm5657066	composer	main title composer	\N
tt12282948	nm1894813	composer	composer	\N
tt12282948	nm3605018	cinematographer	director of photography	\N
tt12282948	nm3164793	editor	editor	\N
tt14670512	nm0155947	actor	\N	\N
tt14670512	nm0469107	actress	\N	\N
tt14670512	nm0451925	director	\N	\N
tt6158740	nm1064687	actor	\N	["Don"]
tt6158740	nm5793222	actress	\N	["Christina"]
tt6158740	nm0126921	actress	\N	["Amanda"]
tt6158740	nm7961707	actor	\N	\N
tt6158740	nm2916096	actress	\N	["Iris"]
tt6158740	nm1412176	actor	\N	["Peter"]
tt6158740	nm4031829	actress	\N	["Iris's Friend"]
tt6158740	nm7213893	director	\N	\N
tt6158740	nm7213893	writer	story	\N
tt6158740	nm7961707	writer	writer	\N
tt6158740	nm7213893	producer	producer	\N
tt6158740	nm0126921	producer	producer	\N
tt6158740	nm7961528	cinematographer	\N	\N
tt6158740	nm7213893	editor	\N	\N
tt22939126	nm7570435	self	\N	["Self - announcer"]
tt22939126	nm9533244	self	\N	["Self - announcer"]
tt22939126	nm3306776	self	\N	["Self - Announcer"]
tt22939126	nm6719942	director	\N	\N
tt22939126	nm3306776	producer	producer	\N
tt26677468	nm7686061	self	\N	["Self - Presenter"]
tt26677468	nm11098879	self	\N	["Self - Guest"]
tt26677468	nm14304653	director	\N	\N
tt0788857	nm0517978	actor	\N	["Uuno Turhapuro"]
tt0788857	nm0707231	actress	\N	["Elisabeth Turhapuro"]
tt0788857	nm0405545	actor	\N	["Vuoristoneuvos Hugo Tuura"]
tt0788857	nm0634962	actress	\N	["Rouva Tuura"]
tt0788857	nm0758741	actor	\N	["Insinööri Sörsselssön"]
tt0788857	nm0145745	actress	\N	["Unelma Säleikkö"]
tt0788857	nm0899419	director	\N	\N
tt0788857	nm0664218	producer	producer	\N
tt0788857	nm0758832	composer	\N	\N
tt9188754	nm0032643	actress	\N	["Diana Benipayo"]
tt9188754	nm0095007	actress	\N	["Sophia Borromeo"]
tt9188754	nm1216382	actress	\N	["Margaret Benipayo"]
tt9188754	nm1034352	actress	\N	["Stephanie Borromeo"]
tt9188754	nm1698752	actor	\N	["Harry Silayan"]
tt9188754	nm1698752	actor	\N	["Andrew Florendo"]
tt9188754	nm0519983	director	\N	\N
tt9188754	nm1760842	director	director	\N
tt9188754	nm1288308	writer	created by	\N
tt9188754	nm0764188	writer	\N	\N
tt9188754	nm2268723	editor	\N	\N
tt9188754	nm2243916	editor	\N	\N
tt9188754	nm2219898	editor	editor	\N
tt3830482	nm2319690	actress	\N	["Janine"]
tt3830482	nm6596190	actor	\N	["Sam the Flower Seller"]
tt3830482	nm0604850	actor	\N	["Howard"]
tt3830482	nm1026195	director	\N	\N
tt3830482	nm1026195	writer	writer	\N
tt3830482	nm6596192	producer	producer	\N
tt3830482	nm4733435	producer	producer	\N
tt3830482	nm1769222	cinematographer	\N	\N
tt3830482	nm1026195	editor	\N	\N
tt3830482	nm3744998	production_designer	\N	\N
tt0770166	nm2090702	actor	\N	["Tony"]
tt0770166	nm3465763	actress	\N	["Tony's Girlfriend"]
tt0770166	nm0455476	actress	\N	["Tony's Mother"]
tt0770166	nm3465991	actor	\N	["Boy on Train"]
tt0770166	nm1479450	actor	\N	["Man on Train"]
tt0770166	nm2150748	actor	\N	["Conductor"]
tt0770166	nm2013693	director	\N	\N
tt0770166	nm2013693	writer	\N	\N
tt0770166	nm2013693	producer	producer	\N
tt0770166	nm3465464	composer	composer	\N
tt0770166	nm2155421	cinematographer	\N	\N
tt0770166	nm2155421	editor	\N	\N
tt0770166	nm2013693	editor	\N	\N
tt6749720	nm2844388	actor	\N	\N
tt6749720	nm3164115	actress	\N	\N
tt27852182	nm10208612	self	\N	["Self - Guest"]
tt27852182	nm14881701	self	\N	["Self - Host"]
tt28804769	nm3451533	actor	\N	\N
tt28804769	nm4785268	actor	\N	\N
tt28804769	nm4981613	actress	\N	\N
tt28804769	nm5626595	actor	\N	\N
tt28804769	nm4976617	actress	\N	\N
tt28804769	nm5626016	actress	\N	\N
tt28804769	nm5626496	actor	\N	\N
tt28804769	nm5626503	actor	\N	\N
tt28804769	nm13458258	writer	\N	\N
tt28804769	nm4742832	writer	\N	\N
tt28804769	nm5536309	producer	producer	\N
tt33344071	nm16504440	actor	\N	["Homme de main"]
tt33344071	nm16504460	actor	\N	["Macaque"]
tt33344071	nm16504442	actor	\N	["Chef du gang adverse"]
tt33344071	nm16504456	actor	\N	["Pickpocket"]
tt33344071	nm16504453	actor	\N	["Jeune drogué"]
tt33344071	nm16504451	actor	\N	["Chef du gang de Diego"]
tt33344071	nm4777228	actor	\N	["Dzaomalaza"]
tt33344071	nm16504447	actress	\N	["Vola"]
tt33344071	nm16504444	actor	\N	["Professeur de lycée"]
tt33344071	nm16504445	actress	\N	["Cousine de Vola"]
tt33344071	nm4776983	director	\N	\N
tt33344071	nm4777290	director	\N	\N
tt33344071	nm16504441	producer	producer	\N
tt33344071	nm10755608	composer	\N	\N
tt33344071	nm11404033	composer	\N	\N
tt33344071	nm4776983	composer	\N	\N
tt33344071	nm4776983	cinematographer	\N	\N
tt33344071	nm4776983	editor	\N	\N
tt33344071	nm4777290	editor	\N	\N
tt7485318	nm9086029	actress	\N	\N
tt7485318	nm9307456	actor	\N	\N
tt7485318	nm3743316	actor	\N	\N
tt7485318	nm6916408	director	director	\N
tt7485318	nm9184019	writer	\N	\N
tt7485318	nm6916408	producer	producer	\N
tt7485318	nm9184025	composer	composer	\N
tt7485318	nm9174849	cinematographer	director of photography	\N
tt7485318	nm9174850	editor	vfx and film editor	\N
tt6646754	nm4653382	director	\N	\N
tt6646754	nm4653382	writer	\N	\N
tt11013382	nm5776182	actress	\N	\N
tt11013382	nm3472277	actor	\N	\N
tt11013382	nm1100231	actor	\N	\N
tt11013382	nm1295504	actress	\N	\N
tt11013382	nm1258596	director	\N	\N
tt11013382	nm1295053	writer	\N	\N
tt11013382	nm1295053	producer	producer	\N
tt1447574	nm2601168	actor	\N	["12 Pack"]
tt1447574	nm3370263	actress	\N	["Music Photographer Judge"]
tt1447574	nm2970136	self	\N	["Self"]
tt1447574	nm0705146	self	\N	["Self"]
tt1447574	nm4220262	actor	\N	["Big Rig"]
tt1447574	nm1149535	director	\N	\N
tt1447574	nm0009312	writer	\N	\N
tt1447574	nm0188782	writer	\N	\N
tt1447574	nm0114224	producer	producer	\N
tt1447574	nm1534484	producer	producer	\N
tt1447574	nm4240433	producer	producer	\N
tt1447574	nm1692501	producer	producer	\N
tt1447574	nm1206592	composer	composer	\N
tt1447574	nm1874764	cinematographer	\N	\N
tt1447574	nm1133572	editor	editor	\N
tt1447574	nm0089232	editor	\N	\N
tt1447574	nm1039620	editor	\N	\N
tt1447574	nm1271463	editor	\N	\N
tt1447574	nm3581905	casting_director	\N	\N
tt1447574	nm3616412	casting_director	\N	\N
tt1447574	nm1467413	casting_director	\N	\N
tt2006696	nm3525581	actress	\N	["Rebecca & Victoria"]
tt2006696	nm4098003	actor	\N	\N
tt2006696	nm1328791	actor	\N	\N
tt2006696	nm4278168	writer	writer	\N
tt2006696	nm3338893	producer	producer	\N
tt2006696	nm3440852	composer	composer	\N
tt2006696	nm1743314	cinematographer	\N	\N
tt2006696	nm1743437	editor	\N	\N
tt12386854	nm0886691	actor	\N	["Meneer Jacob de Uil (1968-1989)"]
tt12386854	nm0886691	actor	\N	["Willem Bever (1968-1989)"]
tt12386854	nm0886691	actor	\N	["Momfer de Mol (1968-1989)"]
tt12386854	nm0807109	actor	\N	["Crox de Raaf"]
tt12386854	nm0807109	actor	\N	["Ed Bever"]
tt12386854	nm0807109	actor	\N	["Meindert het Paard"]
tt12386854	nm0771070	actress	\N	["Jodokus de Marmot (1968-75)"]
tt12386854	nm0771070	actress	\N	["Flora Nachtegaal (1968)"]
tt12386854	nm0771070	actress	\N	["Greta 2 (1972)"]
tt12386854	nm0028373	director	\N	\N
tt12386854	nm0884811	writer	writer	\N
tt12386854	nm0209234	writer	writer	\N
tt12386854	nm0151943	producer	producer	\N
tt12386854	nm1583303	producer	producer	\N
tt12386854	nm0097700	composer	\N	\N
tt12386854	nm0301999	editor	\N	\N
tt1608197	nm0001373	actress	\N	["Narrator"]
tt1608197	nm3819961	actress	\N	["Woman walking in beauty"]
tt1608197	nm0630071	director	\N	\N
tt1608197	nm0630071	writer	written by	\N
tt1608197	nm0396689	writer	written by	\N
tt1608197	nm0630071	producer	producer	\N
tt1608197	nm0487267	composer	\N	\N
tt1608197	nm2412766	composer	\N	\N
tt1608197	nm0630071	cinematographer	\N	\N
tt1608197	nm0630071	editor	\N	\N
tt2372868	nm3679889	actor	\N	["Spectator"]
tt2372868	nm0287842	director	\N	\N
tt2372868	nm0046806	writer	written by	\N
tt2372868	nm0480782	writer	created by	\N
tt2372868	nm0368754	composer	composer	\N
tt1661341	nm2447181	self	\N	["Self - Play-by-Play Announcer"]
tt1661341	nm2449276	self	\N	["Self - Color Commentator"]
tt1661341	nm2802299	self	\N	["Self - Iowa Hawkeyes Linebackers Coach"]
tt1661341	nm3511174	self	\N	["Self - Iowa Hawkeyes Kicker"]
tt1661341	nm3931102	self	\N	["Self - Arizona St. Sun Devils Quarterback"]
tt1661341	nm3930593	self	\N	["Self - Iowa Hawkeyes Wide Receiver"]
tt1661341	nm1763090	self	\N	["Self - Iowa Hawkeyes Head Coach"]
tt1661341	nm3758678	self	\N	["Self - Arizona St. Sun Devils Wide Receiver"]
tt1661341	nm3920885	self	\N	["Self - Arizona St. Sun Devils Running Back"]
tt1661341	nm3758598	self	\N	["Self - Arizona St. Sun Devils Kicker"]
tt3263246	nm0028996	actress	\N	["Hélène Toucas"]
tt3263246	nm0078355	actor	\N	\N
tt3263246	nm0147730	actress	\N	["Jeanne Lavrade"]
tt3263246	nm0189507	actor	\N	["Le docteur Venel"]
tt3263246	nm0408130	actress	\N	["Félicie Venel"]
tt3263246	nm0730234	actor	\N	["Nans"]
tt3263246	nm1186143	actor	\N	["Le papet"]
tt3263246	nm0765056	actor	\N	["Firmin"]
tt3263246	nm0771756	actress	\N	["Pascaline"]
tt3263246	nm0883576	actor	\N	["Toucas"]
tt3263246	nm0076424	director	\N	\N
tt3263246	nm0598366	writer	novel Les Desmichels	\N
tt3263246	nm0756694	writer	adaptation & dialogue	\N
tt3263246	nm0929712	composer	\N	\N
tt3263246	nm0953064	cinematographer	\N	\N
tt3263246	nm0969628	production_designer	\N	\N
tt31521526	nm1161994	self	\N	["Self - Presenter"]
tt31521526	nm13995462	self	\N	["Self"]
tt31521526	nm1627405	director	\N	\N
tt31521526	nm1875917	cinematographer	director of photography	\N
tt31521526	nm12951094	editor	\N	\N
tt29622278	nm15400164	self	\N	["Self"]
tt29622278	nm2200841	self	\N	["Self - Host"]
tt0917825	nm0683342	self	\N	["Self - Host"]
tt0917825	nm2429830	self	\N	["Self"]
tt0917825	nm1347791	production_designer	production_designer	\N
tt6841546	nm2679466	self	\N	["Self - Host"]
tt6841546	nm4455635	self	\N	["Self - Panellist, The Daily Telegraph"]
tt6841546	nm3648525	archive_footage	\N	["Self - Deputy Prime Minister"]
tt6841546	nm2451972	archive_footage	\N	["Self"]
tt6841546	nm1701992	archive_footage	\N	["Self"]
tt6841546	nm8410471	self	\N	["Self - Panellist, Herald Sun"]
tt12841228	nm1675134	actor	\N	\N
tt12841228	nm0710545	actress	\N	\N
tt12841228	nm11537103	director	\N	\N
tt12841228	nm11537104	director	\N	\N
tt12841228	nm11536873	director	\N	\N
tt12841228	nm11118791	director	\N	\N
tt12841228	nm0438471	writer	created by	\N
tt12841228	nm11118786	writer	written by	\N
tt12841228	nm10716231	writer	based on the film by	\N
tt12841228	nm0438471	producer	producer	\N
tt12841228	nm0438506	producer	producer	\N
tt32583227	nm0448367	self	\N	["Self - Host"]
tt32583227	nm0140946	self	\N	["Self"]
tt32583227	nm0363217	self	\N	["Self - Announcer"]
tt32583227	nm0408733	self	\N	["Self"]
tt14903798	nm3874608	actor	\N	\N
tt14903798	nm6374532	actress	\N	\N
tt14903798	nm2778815	actor	\N	\N
tt14903798	nm6219447	actor	\N	\N
tt14903798	nm7920316	actor	\N	\N
tt14903798	nm7920316	director	director	\N
tt14903798	nm7920316	writer	writer	\N
tt14903798	nm1001181	producer	producer	\N
tt14649272	nm1591006	writer	screenplay	\N
tt15338250	nm0017246	director	\N	\N
tt15338250	nm0121435	writer	\N	\N
tt13410454	nm4407282	composer	composer	\N
tt13410454	nm0130340	cinematographer	\N	\N
tt13410454	nm4091440	cinematographer	\N	\N
tt13410454	nm0183942	editor	\N	\N
tt10440792	nm0532535	actor	\N	["Dionizy Zlotopolski"]
tt10440792	nm0434239	actor	\N	["Marek Zlotopolski"]
tt10440792	nm0245913	director	\N	\N
tt10440792	nm1384904	director	\N	\N
tt10440792	nm0686136	director	\N	\N
tt10440792	nm0701051	writer	\N	\N
tt10440792	nm0213579	composer	\N	\N
tt10440792	nm0354703	cinematographer	\N	\N
tt10440792	nm1554086	editor	\N	\N
tt30134520	nm15512726	actress	\N	\N
tt30134520	nm1370592	actress	\N	\N
tt30134520	nm1813312	actor	\N	["Fabian Sabinelli"]
tt30134520	nm3177821	actress	\N	\N
tt30134520	nm2319853	actress	\N	\N
tt30134520	nm0783387	actor	\N	\N
tt30134520	nm15512725	actor	\N	\N
tt30134520	nm1827120	actor	\N	\N
tt30134520	nm2317952	director	\N	\N
tt30134520	nm1939706	director	\N	\N
tt30134520	nm4273440	writer	writer	\N
tt30134520	nm2316038	writer	\N	\N
tt30134520	nm4194448	writer	dialogue	\N
tt30134520	nm15512728	composer	\N	\N
tt30134520	nm15512727	composer	\N	\N
tt30134520	nm1303933	cinematographer	\N	\N
tt11212068	nm0128346	self	\N	["Self - Host"]
tt11212068	nm3700159	self	\N	["Self"]
tt11212068	nm0656932	self	\N	["Self"]
tt11212068	nm0959202	self	\N	["Self"]
tt11212068	nm0180869	self	\N	["Self"]
tt11212068	nm0374766	self	\N	["Self"]
tt11212068	nm0559737	self	\N	["Self"]
tt1262791	nm0719144	actress	\N	["Rachel Levy"]
tt1262791	nm0395229	actress	\N	["Blanche Marci"]
tt1262791	nm0281886	actress	\N	["Mirta Torres"]
tt1262791	nm0179558	actor	\N	["Roland Marci"]
tt1262791	nm1715242	actress	\N	["Johanna Marci"]
tt1262791	nm0584793	actor	\N	["Rudy Torres"]
tt1262791	nm1534356	actress	\N	["Ninon Chaumette"]
tt1262791	nm1717593	actress	\N	["Mélanie Rinato"]
tt1262791	nm1566420	actress	\N	["Luna Torres"]
tt1262791	nm2979821	actor	\N	["Benoît Cassagne"]
tt1262791	nm1163510	director	\N	\N
tt1262791	nm0622934	director	\N	\N
tt1262791	nm1738748	writer	characters	\N
tt1262791	nm1932068	writer	adaptation	\N
tt1262791	nm0078855	writer	idea	\N
tt1262791	nm1569740	writer	adaptation	\N
tt1262791	nm0688071	producer	producer	\N
tt1262791	nm0677549	composer	\N	\N
tt1262791	nm1718252	composer	\N	\N
tt1262791	nm1768492	cinematographer	\N	\N
tt1262791	nm1972408	cinematographer	\N	\N
tt1262791	nm1197920	casting_director	\N	\N
tt1262791	nm1109240	casting_director	\N	\N
tt1262791	nm1189498	casting_director	\N	\N
tt5560176	nm8004719	actor	\N	["Derek"]
tt5560176	nm8004720	actor	\N	["Tom"]
tt5560176	nm8013816	actor	\N	["Fred"]
tt5560176	nm7888499	actor	\N	["Steve"]
tt5560176	nm7253404	director	\N	\N
tt5560176	nm7888499	director	\N	\N
tt5560176	nm7253404	writer	\N	\N
tt5560176	nm7253404	producer	executive producer	\N
tt5560176	nm7888499	producer	producer	\N
tt5560176	nm7253404	cinematographer	\N	\N
tt21237734	nm1154588	self	\N	["Self - Host"]
tt1231037	nm0068552	actor	\N	["Frank Ross"]
tt1231037	nm0265497	actress	\N	["Eve Ross"]
tt1231037	nm0189468	actor	\N	["Chris Cottle"]
tt1231037	nm0774530	actress	\N	["Cimmie Vincent"]
tt1231037	nm0736178	actor	\N	["Det. Insp. Bryce"]
tt1231037	nm0550789	actor	\N	["Hallam"]
tt1231037	nm0004051	actor	\N	["McGrath"]
tt1231037	nm0640299	actor	\N	["John Pavey"]
tt1231037	nm0432729	actor	\N	["Ralph Veneker"]
tt1231037	nm0107339	actor	\N	["Sam Fine"]
tt1231037	nm0323795	director	\N	\N
tt1231037	nm0696506	writer	written by	\N
tt1231037	nm0361194	producer	producer	\N
tt1231037	nm0006070	composer	\N	\N
tt1231037	nm0005793	cinematographer	director of photography	\N
tt1231037	nm0791072	editor	\N	\N
tt1231037	nm0276075	casting_director	\N	\N
tt8004590	nm1040210	actress	\N	["Inés Duarte"]
tt8004590	nm0194579	actor	\N	["Andrés Martan"]
tt8004590	nm0959516	actor	\N	\N
tt8004590	nm0087254	actress	\N	\N
tt8004590	nm1326660	actress	\N	\N
tt8004590	nm0351237	director	\N	\N
tt8004590	nm1580764	director	\N	\N
tt8004590	nm1265194	writer	\N	\N
tt8004590	nm0275585	writer	\N	\N
tt12266198	nm1050684	actor	\N	["Deputy Chief Theocharis (1994-2005)"]
tt12266198	nm1081425	actress	\N	["Ilektra Theoxari"]
tt12266198	nm1080600	actress	\N	["Xenia Archou"]
tt12266198	nm1147663	actress	\N	["Tonia"]
tt12266198	nm0036912	actor	\N	["Chief Leventagas (1994-2006)"]
tt12266198	nm0260641	actor	\N	\N
tt12266198	nm1152625	actor	\N	["Chief of the Police"]
tt12266198	nm0306633	actor	\N	\N
tt12266198	nm0313793	actor	\N	["Leonidas Archos"]
tt12266198	nm1149365	actor	\N	["Nakos (1994-2000)"]
tt12266198	nm0287566	director	\N	\N
tt12266198	nm0287566	writer	\N	\N
tt12266198	nm2169050	writer	dialogue	\N
tt12266198	nm1227914	writer	dialogue	\N
tt12266198	nm1749095	writer	dialogue	\N
tt12266198	nm1203311	editor	editor	\N
tt32571245	nm0031669	actress	\N	["Ranjitham"]
tt32571245	nm14705061	actor	\N	["Naresh"]
tt32571245	nm14705062	actor	\N	["Viji"]
tt32571245	nm11613244	actress	\N	["Swetha"]
tt32571245	nm0490058	actress	\N	["Maragatham"]
tt32571245	nm12593474	actor	\N	\N
tt32571245	nm10595249	actress	\N	\N
tt32571245	nm14705064	director	\N	\N
tt32571245	nm11764861	writer	\N	\N
tt32571245	nm11482207	producer	producer	\N
tt32571245	nm16243299	cinematographer	\N	\N
tt32571245	nm13977072	editor	\N	\N
tt10102514	nm1665577	self	\N	["Self - Host"]
tt10102514	nm4231346	self	\N	["Self - Harvard Economics Professor"]
tt9161154	nm1560201	actress	\N	["Rosela Atilado"]
tt9161154	nm0148644	actor	\N	["Fernando"]
tt9161154	nm0948230	actor	\N	["Rodelio"]
tt9161154	nm0349412	actor	\N	["Kapitan Minong"]
tt9161154	nm0010500	director	\N	\N
tt9161154	nm0721342	director	\N	\N
tt9161154	nm2531535	writer	\N	\N
tt9161154	nm1840982	writer	\N	\N
tt9161154	nm1628335	writer	\N	\N
tt9161154	nm1311586	composer	\N	\N
tt1060340	nm1555323	self	\N	["Self - Performer"]
tt1060340	nm0256658	self	\N	["Self - Performer"]
tt1060340	nm0420079	self	\N	["Self - Performer"]
tt1060340	nm0716933	producer	producer	\N
tt28718363	nm10652080	self	\N	["Self"]
tt28718363	nm15177270	self	\N	["Self"]
tt28718363	nm10835849	actor	\N	\N
tt28718363	nm10652080	writer	\N	\N
tt28718363	nm10652080	producer	producer	\N
tt0588612	nm0743896	actress	\N	["Joan Clayton"]
tt0588612	nm0112001	actress	\N	["Maya Wilkes"]
tt0588612	nm0925316	actress	\N	["Lynn Searcy"]
tt0588612	nm0428382	actress	\N	["Antoinette 'Toni' Marie Childress Garrett"]
tt0588612	nm0371196	actor	\N	["William Jerome Dent"]
tt0588612	nm0435074	actor	\N	["Darnell Wilkes"]
tt0588612	nm0496980	actress	\N	["Ms. Wilkes"]
tt0588612	nm0507338	actress	\N	["Veretta Childs"]
tt0588612	nm0502015	actor	\N	["Earl"]
tt0588612	nm1335496	actor	\N	["Jabari Wilkes"]
tt0588612	nm0258405	director	\N	\N
tt0588612	nm0015327	writer	created by	\N
tt0588612	nm0114208	writer	writer	\N
tt0588612	nm0480629	writer	writer	\N
tt0588612	nm5539439	writer	writing trainee	\N
tt0588612	nm0240794	producer	producer	\N
tt0588612	nm0267972	composer	\N	\N
tt0588612	nm0604625	cinematographer	director of photography	\N
tt0588612	nm0610586	editor	\N	\N
tt12474486	nm2049386	actress	\N	["Dineo Tlaole"]
tt12474486	nm10303895	actor	\N	["Senzo Dhlomo"]
tt12474486	nm1081983	actor	\N	["Sibusiso Dlomo"]
tt12474486	nm0781066	actor	\N	["Kenneth Mashaba"]
tt12474486	nm1083609	director	\N	\N
tt12474486	nm1550118	director	\N	\N
tt12474486	nm0904436	writer	\N	\N
tt12474486	nm1622319	producer	producer	\N
tt12474486	nm0823169	producer	producer	\N
tt8557030	nm2188804	actress	\N	["Marion"]
tt8557030	nm2018861	actor	\N	["Cédric"]
tt8557030	nm0440149	actress	\N	["Liliane"]
tt8557030	nm0099704	actor	\N	["José"]
tt8557030	nm0303900	actress	\N	["Huguette"]
tt8557030	nm0379587	actor	\N	["Raymond"]
tt8557030	nm1644323	actress	\N	["Emma"]
tt8557030	nm4720887	actor	\N	["Fabien"]
tt8557030	nm4867042	actress	\N	["Camille"]
tt8557030	nm1071149	actor	\N	["Philippe"]
tt8557030	nm0011612	director	\N	\N
tt8557030	nm1498915	director	\N	\N
tt8557030	nm0243626	director	supervising director	\N
tt8557030	nm3296910	writer	supervising writer	\N
tt8557030	nm2030678	writer	writer	\N
tt8557030	nm1055655	writer	adaptation	\N
tt8557030	nm10218346	writer	\N	\N
tt8557030	nm3658698	producer	producer	\N
tt8557030	nm1055655	producer	producer	\N
tt8557030	nm3175264	editor	senior editor	\N
tt14189116	nm9925543	actor	\N	["William Birchall"]
tt14189116	nm9925542	actor	\N	["Thomas Birchall"]
tt14189116	nm12606025	actress	\N	["Sian Laurent"]
tt14189116	nm12342777	actor	\N	["David Bugle"]
tt14189116	nm12380821	actor	\N	["Alfie Gigglesburg"]
tt14189116	nm12342779	actor	\N	["The College Fryer"]
tt14189116	nm12380822	actor	\N	["Bruce Wong"]
tt14189116	nm12380823	actor	\N	["Hugh Milton"]
tt14189116	nm12818180	actress	\N	["Mia Agrinya"]
tt14189116	nm9925544	actor	\N	["Jerry Potkin"]
tt14189116	nm9925541	director	\N	\N
tt14189116	nm11814469	cinematographer	\N	\N
tt14189116	nm6711309	cinematographer	\N	\N
tt14189116	nm9925541	editor	\N	\N
tt14189116	nm12365462	editor	\N	\N
tt0356541	nm1317814	actor	\N	["Don Giovanni"]
tt0356541	nm0128000	actor	\N	["Leporello"]
tt0356541	nm1358419	actor	\N	["Masetto"]
tt0356541	nm0655809	actor	\N	["Don Ottavio"]
tt0356541	nm1333679	actress	\N	["Donna Anna"]
tt0356541	nm0217950	actress	\N	["Donna Elvira"]
tt0356541	nm0489234	actress	\N	["Zerlina"]
tt0356541	nm0652023	actor	\N	["Il Commendatore"]
tt0356541	nm4936778	actor	\N	["Choeur"]
tt0356541	nm1337394	self	\N	["Self - Direction musicale"]
tt0356541	nm0060667	director	director	\N
tt0356541	nm0196153	writer	libretto	\N
tt0356541	nm0701447	production_designer	\N	\N
tt3352606	nm0318114	self	\N	["Self - Announcer"]
tt3352606	nm0871618	self	\N	["Self - Host"]
tt3352606	nm0565214	director	\N	\N
tt28272315	nm7782778	actor	\N	["Laios"]
tt28272315	nm5693865	actress	\N	["Marcille"]
tt28272315	nm8267203	actress	\N	["Chilchuck"]
tt28272315	nm0619904	actor	\N	["Senshi"]
tt28272315	nm2977461	actress	\N	["Falin"]
tt28272315	nm15754188	actress	\N	["Namari"]
tt28272315	nm1694008	actor	\N	["Shuro"]
tt28272315	nm3283701	actor	\N	["Narrator"]
tt28272315	nm2426043	actor	\N	["Senshi"]
tt28272315	nm2426043	actor	\N	["Senshi"]
tt28272315	nm4515899	actress	\N	["Adventurer"]
tt28272315	nm4515899	actress	\N	["Adventurer"]
tt28272315	nm8256291	director	\N	\N
tt28272315	nm9044570	director	\N	\N
tt28272315	nm13922267	writer	manga	\N
tt28272315	nm4540287	writer	composition	\N
tt28272315	nm9579307	producer	producer	\N
tt28272315	nm16265227	producer	producer	\N
tt28272315	nm9015943	producer	executive producer	\N
tt28272315	nm13552579	producer	producer	\N
tt28272315	nm0594056	composer	composer	\N
tt28272315	nm4414447	composer	composer	\N
tt28272315	nm7963960	cinematographer	director of photography	\N
tt28272315	nm6075239	editor	editor	\N
tt0265680	nm0182711	actor	\N	["Stefan"]
tt0265680	nm0185629	actress	\N	["Aurora Serafim"]
tt0265680	nm1426926	actress	\N	["Elvira"]
tt0265680	nm0227708	actor	\N	["Liviu Runcan"]
tt0265680	nm0396147	actor	\N	["Horia Mihail"]
tt0265680	nm16444201	actor	\N	["Nina"]
tt0265680	nm16444200	actor	\N	["Mircea"]
tt0265680	nm16444199	actor	\N	["Bogdan"]
tt0265680	nm0492242	actor	\N	["Neacsu"]
tt0265680	nm0493668	actress	\N	["Vecina lui Neacsu"]
tt0265680	nm0176098	director	\N	\N
tt0265680	nm0176098	writer	\N	\N
tt0265680	nm0691048	composer	\N	\N
tt0265680	nm2169021	cinematographer	\N	\N
tt0265680	nm0596479	production_designer	\N	\N
tt14346444	nm10525179	actor	\N	["Manu"]
tt14346444	nm10525178	actress	\N	["Mallika Prathapan"]
tt14346444	nm6299058	actress	\N	["Anjana"]
tt14346444	nm10488688	director	\N	\N
tt14346444	nm10525181	producer	producer	\N
tt14346444	nm1324517	producer	producer	\N
tt14346444	nm10525183	cinematographer	\N	\N
tt14346444	nm10525185	cinematographer	\N	\N
tt14346444	nm11579049	editor	\N	\N
tt14346444	nm12292372	editor	\N	\N
tt27796652	nm0546220	self	\N	["Self - Presenter"]
tt27796652	nm2568502	director	\N	\N
tt27796652	nm0596393	writer	\N	\N
tt27796652	nm2343953	producer	producer	\N
tt27796652	nm0345991	composer	\N	\N
tt27796652	nm4502456	editor	video editor	\N
tt1583288	nm1949808	actress	\N	\N
tt1583288	nm0855442	actor	\N	\N
tt1583288	nm0865081	actress	\N	\N
tt1583288	nm0945515	actor	\N	\N
tt1583288	nm0256861	actor	\N	["Dog trainer Ryoichi, Kyoko's father"]
tt1583288	nm0038273	actress	\N	\N
tt1583288	nm1163219	actor	\N	\N
tt1583288	nm0386294	actor	\N	\N
tt1583288	nm3437812	actor	\N	["Mitsuo Yamaguchi"]
tt1583288	nm3225064	actress	\N	["Niina"]
tt1583288	nm2464576	director	\N	\N
tt1583288	nm3764130	writer	screenplay	\N
tt1583288	nm3764126	writer	screenplay	\N
tt1583288	nm3554553	producer	producer	\N
tt1583288	nm0369076	composer	\N	\N
tt1583288	nm4294038	casting_director	\N	\N
tt21929312	nm1695705	actress	\N	["Natalia"]
tt21929312	nm1794425	actor	\N	["Marcelino Gómez"]
tt21929312	nm0592110	actress	\N	["Manolita Sanabria"]
tt21929312	nm0380007	actor	\N	["Pelayo Gómez"]
tt21929312	nm1066971	actor	\N	["Gabriel"]
tt21929312	nm5622764	actor	\N	["Carlos"]
tt21929312	nm0044150	actress	\N	["Ascensión"]
tt21929312	nm0379446	actor	\N	["Domingo"]
tt21929312	nm0016864	actor	\N	["Alfonso"]
tt21929312	nm3882184	actress	\N	["María"]
tt21929312	nm1996203	composer	composer	\N
tt1065505	nm1588274	actor	\N	\N
tt1065505	nm1617488	actress	\N	\N
tt1065505	nm1120190	actor	\N	\N
tt1065505	nm0257585	actor	\N	\N
tt1065505	nm0392056	actor	\N	\N
tt1065505	nm0461112	actress	\N	\N
tt1065505	nm1555562	actress	\N	\N
tt1065505	nm1188092	actress	\N	\N
tt1065505	nm2438077	actress	\N	\N
tt1065505	nm1256007	actor	\N	\N
tt1065505	nm3466120	editor	\N	\N
tt0488784	nm2099958	actor	\N	["Emanuele"]
tt0488784	nm1798418	actor	\N	\N
tt0488784	nm2104925	director	\N	\N
tt0488784	nm1492316	writer	\N	\N
tt0488784	nm2104925	writer	\N	\N
tt0488784	nm1495139	writer	\N	\N
tt0488784	nm2101111	cinematographer	\N	\N
tt0488784	nm1998405	editor	editor	\N
tt7406470	nm9282604	actor	\N	\N
tt7406470	nm9291488	self	\N	["Self"]
tt7406470	nm9282605	actress	\N	\N
tt7406470	nm9282604	cinematographer	\N	\N
tt7406470	nm9282605	cinematographer	\N	\N
tt12587368	nm0005277	self	\N	["Self - Host"]
tt12587368	nm0725200	self	\N	["Self - Co-Host"]
tt12587368	nm0000209	self	\N	["Self - Guest"]
tt12587368	nm0000452	self	\N	["Self - Guest"]
tt12587368	nm0822555	self	\N	["Self - Guest"]
tt12587368	nm2923086	self	\N	["Themselves - House Band"]
tt8278224	nm0694411	director	\N	\N
tt8278224	nm0606662	producer	producer	\N
tt8278224	nm0934239	cinematographer	\N	\N
tt17279806	nm0045303	actor	\N	["Dr. Bruno Freytag"]
tt17279806	nm0386151	actor	\N	["Lukas Burkhart"]
tt17279806	nm0535431	actress	\N	["Dr. Heike Burkhart"]
tt17279806	nm0387153	actor	\N	["Prof. Dr. Hajo Baer"]
tt17279806	nm1242910	actress	\N	["Pamela Baer"]
tt17279806	nm0955969	actress	\N	["Sibylle Baer"]
tt17279806	nm0344149	actress	\N	["Caroline Baer"]
tt17279806	nm1076138	actor	\N	["Arnold Edel"]
tt17279806	nm0678487	actor	\N	["Fritz Dollinger"]
tt17279806	nm0127003	actor	\N	["Thorsten Kladow"]
tt7212038	nm2811859	director	\N	\N
tt32314643	nm16115259	self	\N	["Self"]
tt32314643	nm16115259	director	\N	\N
tt32314643	nm16115259	editor	\N	\N
tt14937828	nm0309740	self	\N	["Self - Host"]
tt14937828	nm1501268	self	\N	["Self - Host"]
tt14937828	nm0471387	self	\N	["Self - Host"]
tt14937828	nm8457691	director	\N	\N
tt14937828	nm0954698	director	\N	\N
tt14937828	nm7160298	writer	\N	\N
tt14937828	nm9672059	producer	producer	\N
tt15377674	nm7798390	actor	\N	["Karna"]
tt15377674	nm1882837	actor	\N	["Yuvraj Duryodhan"]
tt15377674	nm1410332	actor	\N	["Maharaj Dhritarashtra"]
tt15377674	nm1024591	actress	\N	["Rajmata Kunti"]
tt15377674	nm1831269	actor	\N	["Krishna"]
tt15377674	nm2332280	actor	\N	["Bheeshm"]
tt9556120	nm3198510	actress	\N	\N
tt9556120	nm3907183	actress	\N	\N
tt9556120	nm3165490	actress	\N	\N
tt9556120	nm2745099	actress	\N	\N
tt9556120	nm4080582	actress	\N	\N
tt9556120	nm2266814	actress	\N	\N
tt9556120	nm2646237	actor	\N	\N
tt9556120	nm3471640	actress	\N	\N
tt9556120	nm3350874	actress	\N	\N
tt9556120	nm3010594	actress	\N	\N
tt12665608	nm0310221	actress	\N	\N
tt12665608	nm9735029	actor	\N	\N
tt12665608	nm1347553	actor	\N	\N
tt12665608	nm5654909	actress	\N	\N
tt12665608	nm9735028	director	director	\N
tt12665608	nm9735030	writer	written by	\N
tt12665608	nm8139562	producer	producer	\N
tt5552732	nm1045684	actor	\N	["Jin Sang-pil"]
tt5552732	nm1032826	actress	\N	["Choi In-kyung"]
tt5552732	nm4641488	actor	\N	["Kim Kyu-hwan"]
tt5552732	nm2197560	actress	\N	["Chun No-shim"]
tt5552732	nm3797192	actor	\N	["Im Gyu-Tae"]
tt5552732	nm1486994	actor	\N	["Baek Do-hyun"]
tt5552732	nm0839293	actor	\N	["Byun Sung-ki"]
tt5552732	nm3294507	actor	\N	["Jo Woong-kyu"]
tt5552732	nm1371115	actress	\N	["Hong Chan-mi"]
tt5552732	nm1468275	actor	\N	["Kang Sang-ho"]
tt5552732	nm7658714	writer	\N	\N
tt5552732	nm6547221	producer	producer	\N
tt5552732	nm8084270	composer	\N	\N
tt5552732	nm8084268	cinematographer	\N	\N
tt5552732	nm8084269	cinematographer	\N	\N
tt5552732	nm8084278	editor	\N	\N
tt5552732	nm8084279	editor	\N	\N
tt5552732	nm8081421	casting_director	\N	\N
tt5552732	nm8084267	casting_director	\N	\N
tt5552732	nm8084288	production_designer	\N	\N
tt5552732	nm8084289	production_designer	\N	\N
tt0359907	nm0754480	actress	\N	["Samiha"]
tt0359907	nm0357491	actor	\N	["Mohsen Abdel Latif"]
tt0359907	nm0957668	actor	\N	["Raafat"]
tt0359907	nm0015658	actor	\N	["Secretary"]
tt0359907	nm0252857	actress	\N	["Suad"]
tt0359907	nm0252823	actor	\N	\N
tt0359907	nm0623434	actor	\N	["Hosny"]
tt0359907	nm1027702	actress	\N	["Maid"]
tt0359907	nm10520293	actress	\N	\N
tt0359907	nm8979578	actress	\N	["Journalist"]
tt0359907	nm0958575	director	\N	\N
tt0359907	nm4455043	writer	story	\N
tt0359907	nm0324737	writer	screenplay and dialogue	\N
tt0359907	nm0958573	producer	producer	\N
tt0359907	nm0957668	producer	producer	\N
tt0359907	nm0025578	composer	\N	\N
tt7492390	nm7346349	self	\N	["Self"]
tt5664906	nm8098837	actress	\N	\N
tt6142420	nm7510000	actress	\N	\N
tt11007452	nm10861133	director	\N	\N
tt11007452	nm10861133	writer	\N	\N
tt11007452	nm10861223	producer	producer	\N
tt11007452	nm10924193	cinematographer	\N	\N
tt11007452	nm10861133	editor	\N	\N
tt6882594	nm1224530	actor	\N	["Kim Seong-ryong"]
tt6882594	nm1508878	actress	\N	["Yoon Ha-kyeong"]
tt6882594	nm5675066	actor	\N	["Seo Yool"]
tt6882594	nm7045018	actress	\N	["Hong Ga-eun"]
tt6882594	nm3787759	actor	\N	["Choo Nam-ho"]
tt6882594	nm6916576	actor	\N	["Lee Jae-joon"]
tt6882594	nm8468703	actor	\N	["Won Gi-ok"]
tt6882594	nm10060572	actress	\N	["Bing Hee-jin"]
tt6882594	nm9170918	actor	\N	["Seon Sang-tae"]
tt6882594	nm1031876	actor	\N	["Park Hyeon-do"]
tt6882594	nm7670272	director	\N	\N
tt6882594	nm11684941	director	\N	\N
tt6882594	nm6728876	writer	screenwriter	\N
tt11799310	nm0163863	self	\N	["Self - Host"]
tt11799310	nm0711880	self	\N	["Self - Celebrity Contestant"]
tt11799310	nm0504531	self	\N	["Self - Celebrity Contestant"]
tt11799310	nm0331564	self	\N	["Self - Announcer"]
tt11799310	nm0122222	director	\N	\N
tt11799310	nm0773400	producer	producer	\N
tt31613783	nm12451982	actor	\N	["Alex"]
tt31613783	nm10490075	actress	\N	["Figure"]
tt31613783	nm11519854	director	\N	\N
tt31613783	nm11519854	writer	\N	\N
tt31613783	nm11011661	producer	producer	\N
tt31613783	nm11519854	cinematographer	\N	\N
tt31613783	nm11025961	editor	\N	\N
tt33505950	nm2882021	self	\N	["Self - Guest"]
tt33505950	nm0969695	self	\N	["Self - chef"]
tt33505950	nm2971313	self	\N	["Self - chef"]
tt33505950	nm1010407	self	\N	["Self"]
tt33505950	nm3044982	self	\N	["Self - Presenter"]
tt34378891	nm1860506	self	\N	["Self - Presenter"]
tt0959645	nm1942425	producer	producer	\N
tt3253548	nm0415773	actor	\N	["Ramarajan"]
tt3253548	nm3223429	actress	\N	["Jayashree"]
tt3253548	nm2536215	actor	\N	["Ganesh"]
tt3253548	nm3561501	actor	\N	["Gopi"]
tt3253548	nm5408510	actor	\N	["Krishna"]
tt3253548	nm1007581	actor	\N	["Naradhar"]
tt3253548	nm4082417	actor	\N	["Paramasivan"]
tt3253548	nm1420794	actor	\N	["Ramarajan's Father"]
tt3253548	nm0794478	actor	\N	["Jayashree's Father"]
tt3253548	nm2697818	actor	\N	["Gopi's Father"]
tt3253548	nm5965104	director	\N	\N
tt3253548	nm5965104	writer	\N	\N
tt3253548	nm3342464	producer	producer	\N
tt3253548	nm3344486	producer	producer	\N
tt3253548	nm3342685	producer	producer	\N
tt3253548	nm6009316	composer	\N	\N
tt3253548	nm6009317	cinematographer	\N	\N
tt3253548	nm3595566	editor	\N	\N
tt3616530	nm1405339	self	\N	["Self - Host"]
tt3616530	nm2908439	self	\N	["Self - Reporter"]
tt3616530	nm4257835	director	series director	\N
tt21228384	nm0661432	actress	\N	["Chas Dingle"]
tt21228384	nm0223327	actress	\N	["Faith Dingle"]
tt21228384	nm0724174	actor	\N	["Bear Wolf"]
tt21228384	nm0116623	actor	\N	["Paddy Dingle"]
tt21228384	nm1183224	actor	\N	["Al Chapman"]
tt21228384	nm1731521	actress	\N	["Kerry Wyatt"]
tt21228384	nm7021016	actress	\N	["Angelica King"]
tt21228384	nm0587207	actor	\N	["Jimmy King"]
tt21228384	nm0923928	actress	\N	["Nicola King"]
tt21228384	nm0242459	actress	\N	["Brenda Walker"]
tt21228384	nm1939577	director	director	\N
tt21228384	nm0642235	writer	written by	\N
tt21228384	nm0480782	writer	series created by	\N
tt21228384	nm9733382	producer	producer	\N
tt21228384	nm2796381	producer	producer	\N
tt21228384	nm0518930	editor	\N	\N
tt35496897	nm1115954	self	\N	["Self - Host"]
tt14649086	nm9896214	self	\N	["Self - Host"]
tt14649086	nm9896214	director	\N	\N
tt14649086	nm9896214	writer	\N	\N
tt14649086	nm9896214	producer	producer	\N
tt23630322	nm10786130	writer	adaptation	\N
tt15162908	nm1247937	actress	\N	["Suhasini Kamal Goenka"]
tt15162908	nm4061978	archive_footage	\N	["Sheela Mukesh Rathore"]
tt15162908	nm10410713	actor	\N	["Child Vansh Goenka"]
tt15162908	nm1261710	actor	\N	["Akhilesh Goenka"]
tt15162908	nm3496716	actress	\N	["Swarna Manish Goenka"]
tt15162908	nm7812857	actress	\N	["Sirat Shekhawat"]
tt15162908	nm6383558	archive_footage	\N	["Riya"]
tt15162908	nm5068824	actor	\N	["Kartik Goenka"]
tt15162908	nm9583444	actress	\N	["Gayatri (Gayu) Samarth Goenka"]
tt15162908	nm2586773	archive_footage	\N	["Kalavati Agarwal"]
tt0886298	nm1803295	actress	\N	["Dancer"]
tt0886298	nm1803295	actress	\N	["Model"]
tt0886298	nm0005435	self	\N	["Self - Host"]
tt0886298	nm0962616	actress	\N	\N
tt0886298	nm3015806	writer	writer	\N
tt0886298	nm2477449	writer	writer	\N
tt0886298	nm0289927	writer	writer	\N
tt0886298	nm0507702	writer	writer	\N
tt20232790	nm4529335	self	\N	["Self - Host"]
tt8571698	nm1518940	actress	\N	["Magriet Prinsloo"]
tt8571698	nm9913310	actor	\N	["Klaas Ferreira"]
tt8571698	nm4328620	actor	\N	["Jason"]
tt8571698	nm0168800	director	\N	\N
tt8571698	nm8879864	writer	story and screenplay	\N
tt8571698	nm9835778	producer	producer	\N
tt8571698	nm7079188	composer	\N	\N
tt8571698	nm7455813	cinematographer	\N	\N
tt8571698	nm3169975	editor	\N	\N
tt12851260	nm1403456	actor	\N	["Tenma Kudô"]
tt12851260	nm1403456	actor	\N	["Sazer Tarious (Fire Tribe)"]
tt12851260	nm1404540	actress	\N	["Mika Shidô"]
tt12851260	nm1404540	actress	\N	["Sazer Mithras (Fire Tribe)"]
tt12851260	nm1403631	actor	\N	["Ken Shidô"]
tt12851260	nm1403631	actor	\N	["Sazer Lion (Fire Tribe)"]
tt12851260	nm1403466	actor	\N	["Akira Dentsûin"]
tt12851260	nm1403466	actor	\N	["Sazer Remls (Wind Tribe)"]
tt12851260	nm1404435	actress	\N	["Ryôko Amemiya"]
tt12851260	nm1404435	actress	\N	["Sazer Velsou (Wind Tribe)"]
tt12851260	nm1178851	actor	\N	["Jin Hakariya"]
tt12851260	nm1178851	actor	\N	["Sazer Dail (Wind Tribe)"]
tt12851260	nm1403630	actor	\N	["Naoto Matsuzaka"]
tt12851260	nm1403630	actor	\N	["Sazer Tawlon (Earth Tribe)"]
tt12851260	nm1402449	actress	\N	["Ran Saotome"]
tt12851260	nm1402449	actress	\N	["Sazer Visuel (Earth Tribe)"]
tt12851260	nm1402852	actor	\N	["Gô Kamiya"]
tt12851260	nm1402852	actor	\N	["Sazer Tragos (Earth Tribe)"]
tt12851260	nm1402638	actor	\N	["Atsushi Misonogi (Chief of Defense)"]
tt12851260	nm1031504	director	\N	\N
tt12851260	nm1402606	writer	\N	\N
tt9898808	nm4489288	actor	\N	["Xephos"]
tt9898808	nm4755526	actor	\N	["Honeydew"]
tt9898808	nm4489288	director	\N	\N
tt9898808	nm4489288	writer	creator	\N
tt9898808	nm4755526	writer	creator	\N
tt9898808	nm6956134	writer	creator	\N
tt33891233	nm4948556	actress	\N	\N
tt33891233	nm5641275	actress	\N	\N
tt33891233	nm15602423	actress	\N	\N
tt33891233	nm15802388	actress	\N	\N
tt33891233	nm11479439	actress	\N	\N
tt33891233	nm11490208	actor	\N	\N
tt33891233	nm11556689	actress	\N	\N
tt33891233	nm15802389	actor	\N	\N
tt33891233	nm4088593	director	\N	\N
tt33891233	nm15802387	director	creative director	\N
tt33891233	nm15802387	producer	producer	\N
tt18550394	nm0523529	actor	\N	["Presented by"]
tt18550394	nm1245343	actor	\N	["Presented by"]
tt18550394	nm13410198	director	\N	\N
tt0593671	nm0238445	actress	\N	["Babs Hooten"]
tt0593671	nm0588903	actor	\N	["Bill Hooten"]
tt0593671	nm0619798	actor	\N	["Hawkeye"]
tt0593671	nm0301886	actress	\N	["Jessica"]
tt0593671	nm0548240	actor	\N	["Brook Hooten"]
tt0593671	nm0599344	actor	\N	["Rocky"]
tt0593671	nm0635839	actress	\N	["Gloria Rhodes"]
tt0593671	nm0397220	writer	creator	\N
tt15242844	nm3826010	actress	\N	["Self-Presenter"]
tt15242844	nm10730102	director	\N	\N
tt15242844	nm10730102	writer	\N	\N
tt15242844	nm3826010	writer	\N	\N
tt15242844	nm1701930	cinematographer	\N	\N
tt23038242	nm0730841	self	\N	["Self - Host"]
tt23038242	nm3266252	producer	producer	\N
tt23038242	nm9907945	producer	producer	\N
tt23038242	nm3266252	editor	\N	\N
tt23038242	nm9907945	editor	\N	\N
tt32311504	nm15533577	actor	\N	\N
tt32311504	nm15533573	actor	\N	\N
tt32311504	nm6414973	actress	\N	\N
tt32311504	nm15533576	actress	\N	\N
tt32311504	nm13368455	actress	\N	\N
tt32311504	nm13262848	actress	\N	\N
tt32311504	nm15533572	actor	\N	\N
tt32311504	nm15533574	actor	\N	\N
tt32311504	nm10890227	actress	\N	\N
tt32311504	nm15533575	actress	\N	\N
tt3285806	nm1005287	self	\N	["Self - Presenter"]
tt3285806	nm0561753	self	\N	["Self - Presenter"]
tt3285806	nm0601327	self	\N	["Self - Presenter"]
tt3285806	nm0567805	self	\N	["Self - Presenter"]
tt3285806	nm0001058	self	\N	["Self"]
tt3285806	nm2048172	self	\N	["Self"]
tt18972796	nm7897562	actress	\N	["Youmna"]
tt18972796	nm13527811	actor	\N	\N
tt18972796	nm13527820	actor	\N	\N
tt18972796	nm13527863	actress	\N	\N
tt18972796	nm13527862	actress	\N	\N
tt18972796	nm9655056	actress	\N	\N
tt18972796	nm13527865	actor	\N	\N
tt18972796	nm8946791	actor	\N	\N
tt18972796	nm13527856	actor	\N	\N
tt18972796	nm13527861	actress	\N	\N
tt18972796	nm7897561	director	\N	\N
tt18972796	nm7897561	writer	creator	\N
tt18972796	nm7897561	producer	producer	\N
tt1219030	nm0603065	actress	\N	\N
tt1219030	nm0734958	actor	\N	\N
tt1219030	nm0734958	director	\N	\N
tt1219030	nm0734958	writer	screenplay	\N
tt1219030	nm0024464	producer	producer	\N
tt0402177	nm0783152	producer	producer	\N
tt1543912	nm2431809	director	\N	\N
tt1543912	nm3689940	director	\N	\N
tt1543912	nm2431809	producer	producer	\N
tt1543912	nm1697283	composer	\N	\N
tt1543912	nm3690842	cinematographer	\N	\N
tt1543912	nm3688800	editor	\N	\N
tt21847944	nm13964041	actor	\N	["Mohan"]
tt21847944	nm13935209	director	director	\N
tt21847944	nm13935209	writer	writer	\N
tt21847944	nm13965788	cinematographer	\N	\N
tt21847944	nm13776720	cinematographer	\N	\N
tt15430796	nm12797142	actress	\N	\N
tt15430796	nm2247767	actress	\N	\N
tt15430796	nm12102009	actor	\N	\N
tt15430796	nm5674678	director	\N	\N
tt15430796	nm12797139	writer	\N	\N
tt15430796	nm12797138	writer	\N	\N
tt15430796	nm12797140	writer	\N	\N
tt15430796	nm12797141	producer	producer	\N
tt15430796	nm11112003	producer	producer	\N
tt15536550	nm0361753	actress	\N	["Narrator"]
tt15536550	nm12989552	self	\N	["Self"]
tt0932489	nm0850634	self	\N	["Self - Host"]
tt0932489	nm0988776	self	\N	["Self - Contestant"]
tt0932489	nm0582038	self	\N	["Self - Contestant"]
tt0932489	nm0601327	self	\N	["Self - Contestant"]
tt0932489	nm1541521	self	\N	["Self - Contestant"]
tt27543327	nm0704839	actress	\N	["Rikke"]
tt27543327	nm1245598	director	\N	\N
tt27543327	nm1245598	writer	\N	\N
tt27543327	nm0804791	writer	\N	\N
tt27543327	nm1245598	producer	producer	\N
tt27543327	nm1214274	cinematographer	\N	\N
tt35694555	nm1127862	actor	\N	["Arthur Parchet"]
tt35694555	nm9019253	actress	\N	["Antoinette Cornut"]
tt35694555	nm12490775	director	\N	\N
tt35694555	nm12490775	writer	\N	\N
tt35694555	nm17008057	producer	producer	\N
tt35694555	nm12490775	producer	producer	\N
tt35694555	nm17008056	composer	\N	\N
tt35694555	nm2205794	cinematographer	\N	\N
tt35694555	nm9241906	editor	\N	\N
tt35666315	nm10320478	self	\N	["Self"]
tt35666315	nm15831581	self	\N	["Self"]
tt35666315	nm10325645	self	\N	["Self - Host"]
tt14209750	nm5528429	actress	\N	\N
tt14209750	nm6783918	actor	\N	\N
tt14209750	nm0692586	actor	\N	\N
tt14209750	nm10346132	actor	\N	\N
tt14209750	nm13383949	actor	\N	\N
tt14209750	nm5624098	actor	\N	\N
tt14209750	nm2210188	actor	\N	\N
tt14209750	nm12130798	actor	\N	["Rahul Bali"]
tt14209750	nm2058013	director	\N	\N
tt14209750	nm2058013	writer	screenplay	\N
tt14209750	nm9489622	writer	dialogue	\N
tt14209750	nm8346574	producer	producer	\N
tt14209750	nm0788886	composer	\N	\N
tt14209750	nm2330732	cinematographer	cinematographer	\N
tt14209750	nm5158362	cinematographer	cinematographer	\N
tt14209750	nm1156659	editor	\N	\N
tt5204928	nm2553713	self	\N	["Self - Host"]
tt5204928	nm2790013	self	\N	["Self - Host"]
tt5204928	nm0030714	self	\N	["Self - Panelist"]
tt5204928	nm2944145	self	\N	["Self - Panelist"]
tt5204928	nm2433900	self	\N	["Self - Guest"]
tt5204928	nm1913150	self	\N	["Self - Reporter"]
tt5204928	nm7069577	self	\N	["Self"]
tt5204928	nm4066643	self	\N	["Self - Panelist"]
tt5204928	nm4129202	self	\N	["Self - Reporter"]
tt5204928	nm5572528	self	\N	["Self - Panelist"]
tt5204928	nm3897046	director	\N	\N
tt0497649	nm0106576	actress	\N	\N
tt0497649	nm1028973	actor	\N	\N
tt0497649	nm1233351	actor	\N	["Paul Salem"]
tt0497649	nm1180614	actor	\N	\N
tt0497649	nm0833993	actress	\N	\N
tt0497649	nm1233021	director	\N	\N
tt0497649	nm1233556	director	\N	\N
tt0497649	nm1233556	writer	\N	\N
tt0497649	nm1233021	producer	producer	\N
tt0497649	nm2126908	composer	\N	\N
tt0497649	nm0746657	cinematographer	\N	\N
tt0497649	nm1233021	editor	\N	\N
tt23775892	nm0013525	actor	\N	\N
tt23775892	nm0025954	actress	\N	["Gladys"]
tt23775892	nm0070748	actor	\N	\N
tt23775892	nm0087003	actress	\N	\N
tt23775892	nm0599965	actor	\N	["Rodolfo"]
tt23775892	nm0614971	actor	\N	["Principe"]
tt23775892	nm0657992	actress	\N	\N
tt23775892	nm0209555	actress	\N	["Janina"]
tt23775892	nm0022172	director	\N	\N
tt23775892	nm3522617	writer	\N	\N
tt23775892	nm0022172	producer	producer	\N
tt8791338	nm8802492	actress	\N	["Anna"]
tt8791338	nm8136554	actor	\N	["Plumber"]
tt8791338	nm10829391	self	\N	["Self"]
tt8791338	nm6746911	actress	\N	["Marie"]
tt8791338	nm4468349	actor	\N	["Ed"]
tt8791338	nm8488577	actor	\N	["Officer Dietrich"]
tt8791338	nm7615687	actress	\N	["Drama Annie"]
tt8791338	nm9289228	actor	\N	["Shadow Figure"]
tt8791338	nm10519798	actress	\N	["Sharon"]
tt8791338	nm5150974	actor	\N	["Len"]
tt8791338	nm2086668	director	\N	\N
tt8791338	nm5634732	writer	\N	\N
tt8791338	nm5457967	composer	\N	\N
tt16392986	nm2549258	self	\N	["Self - Host"]
tt16392986	nm11692334	self	\N	["Self - Panelist"]
tt16392986	nm0599840	self	\N	["Self - Panelist"]
tt16392986	nm6152279	self	\N	["Self - Panelist"]
tt16392986	nm6152279	self	\N	["Second Shopper"]
tt16392986	nm6152279	self	\N	["Elizabeth Warren"]
tt16392986	nm0879129	self	\N	["Self - Panelist"]
tt16392986	nm3695423	actor	\N	["First Shopper"]
tt6212638	nm0483821	actress	\N	["Her"]
tt6212638	nm2312906	actor	\N	["Him"]
tt6212638	nm7338255	director	\N	\N
tt6212638	nm7338255	cinematographer	\N	\N
tt6212638	nm7338255	editor	\N	\N
tt1953696	nm0004804	self	\N	["Self - Host"]
tt1953696	nm1591784	self	\N	["Self - Announcer"]
tt1953696	nm0651658	self	\N	["Self - Model"]
tt1953696	nm1757601	self	\N	["Self - Model"]
tt1953696	nm0792799	self	\N	["Self - Model"]
tt1953696	nm0260619	director	\N	\N
tt1953696	nm0435664	composer	\N	\N
tt15331130	nm0836761	self	\N	["Self - Co-Host"]
tt15331130	nm0424203	self	\N	["Self - Co-Host"]
tt15331130	nm0041676	self	\N	["Self - Co-Host"]
tt15331130	nm0162486	self	\N	["Self - Musician"]
tt15331130	nm0228457	self	\N	["Self - Musician"]
tt15331130	nm0380220	self	\N	["Self - Musician"]
tt15331130	nm0511450	self	\N	["Self - Musician"]
tt15331130	nm5641070	self	\N	["Self - Musician"]
tt15331130	nm0449832	director	director	\N
tt12919508	nm11515017	actress	\N	\N
tt12919508	nm1426682	actor	\N	\N
tt12919508	nm5030928	director	\N	\N
tt12919508	nm5030928	writer	\N	\N
tt12919508	nm11515021	producer	producer	\N
tt12919508	nm11515022	producer	producer	\N
tt12919508	nm11511726	producer	producer	\N
tt12919508	nm11515024	cinematographer	\N	\N
tt12919508	nm11515023	cinematographer	\N	\N
tt12919508	nm11515025	editor	\N	\N
tt33089346	nm16423037	actor	\N	\N
tt33089346	nm9956130	actor	\N	\N
tt33089346	nm15089168	director	\N	\N
tt33089346	nm15089168	writer	\N	\N
tt33089346	nm16423036	composer	\N	\N
tt33089346	nm2484139	cinematographer	\N	\N
tt32194594	nm11695750	actor	\N	["Constable Musa"]
tt32194594	nm9726907	actress	\N	["Inspector Miss Guguli"]
tt32194594	nm11695749	actor	\N	["Constable Gunduchi"]
tt32194594	nm10606192	actor	\N	\N
tt32194594	nm11695748	actor	\N	["Mr. Nonsense"]
tt32194594	nm11695751	actor	\N	\N
tt32194594	nm11695753	actress	\N	\N
tt32194594	nm11695752	actor	\N	\N
tt32194594	nm10298980	actor	\N	["Gabbar"]
tt32194594	nm11695747	actor	\N	\N
tt32194594	nm7346575	director	\N	\N
tt32194594	nm10606192	writer	\N	\N
tt32194594	nm11695748	writer	writer	\N
tt32194594	nm11695747	writer	\N	\N
tt32194594	nm11695754	producer	producer	\N
tt1453138	nm3459772	self	\N	["Self - Panelist"]
tt1453138	nm0401239	self	\N	["Self - Panelist"]
tt1453138	nm2802016	self	\N	["Self - American Socialist Leader"]
tt9431514	nm10052196	self	\N	["Self - India"]
tt9431514	nm10052195	self	\N	["Self - India"]
tt9431514	nm2224747	self	\N	["Self - Australia"]
tt9431514	nm10059369	self	\N	["Self"]
tt9431514	nm10174134	self	\N	["Self"]
tt0209238	nm2717032	actor	\N	["Fierson"]
tt0209238	nm0132322	actor	\N	["Curator"]
tt0209238	nm0179275	actor	\N	["Technician"]
tt0209238	nm0179275	actor	\N	["Shape Machine"]
tt0209238	nm0203013	actor	\N	\N
tt0209238	nm0254918	actor	\N	["Computer"]
tt0209238	nm0070216	actor	\N	["Kraa"]
tt0209238	nm0274511	actor	\N	["Monroe"]
tt0209238	nm0298942	actor	\N	["Patrolman Garth"]
tt0209238	nm0517844	actress	\N	["Patrolman Curtis"]
tt0209238	nm0545424	actress	\N	["Alma James"]
tt0209238	nm0563650	director	\N	\N
tt0209238	nm0139605	writer	screenplay	\N
tt0209238	nm0360936	producer	producer	\N
tt0209238	nm0467086	composer	\N	\N
tt0209238	nm0059001	cinematographer	director of photography	\N
tt0209238	nm0561732	cinematographer	director of photography	\N
tt0209238	nm0761568	editor	\N	\N
tt0209238	nm0120096	casting_director	\N	\N
tt0209238	nm0531894	casting_director	\N	\N
tt0209238	nm0168164	production_designer	\N	\N
tt0209238	nm0367782	production_designer	\N	\N
tt21820818	nm0798296	self	\N	["Self"]
tt21820818	nm0798296	self	\N	["Presenter"]
tt21820818	nm1154937	writer	\N	\N
tt21820818	nm13827624	writer	\N	\N
tt21820818	nm0889375	writer	\N	\N
tt21820818	nm12137266	producer	producer	\N
tt21820818	nm8179306	producer	producer	\N
tt19783884	nm7493968	actress	\N	\N
tt19783884	nm13594474	actor	\N	\N
tt19783884	nm11244104	actress	\N	\N
tt19783884	nm10224167	director	\N	\N
tt19783884	nm9768269	writer	\N	\N
tt26520924	nm0746298	actress	\N	["Andrea Moncayo"]
tt26520924	nm1109077	actor	\N	["Gabriel Serrano"]
tt26520924	nm0944583	actor	\N	\N
tt26520924	nm0023693	actor	\N	\N
tt26520924	nm1345879	actor	\N	\N
tt26520924	nm1925249	actress	\N	\N
tt26520924	nm0617699	actress	\N	\N
tt26520924	nm1111773	actor	\N	\N
tt26520924	nm1937472	writer	story	\N
tt34881417	nm8004195	self	\N	["Self"]
tt34881417	nm16795899	self	\N	["Self"]
tt34881417	nm8004195	producer	producer	\N
tt34881417	nm16795899	producer	producer	\N
tt5718344	nm1007169	actor	\N	["Tero Kuusla"]
tt5718344	nm2841817	actor	\N	["Ylilääkäri"]
tt5718344	nm1436199	actress	\N	["Sonja Ollila"]
tt5718344	nm0538028	actor	\N	["Asko Haavisto"]
tt5718344	nm2074427	actor	\N	["Lauri Kallio"]
tt5718344	nm1971749	actress	\N	["Minna Alajoki"]
tt5718344	nm3400969	actress	\N	["Ilona Koivumaa"]
tt5718344	nm0753609	actress	\N	["Marika Ruuskanen-Kuusla"]
tt5718344	nm0758721	actor	\N	["Jukka Hiltunen"]
tt5718344	nm4077881	actress	\N	["Krista Kortelainen"]
tt5718344	nm0899455	director	\N	\N
tt5718344	nm0720080	writer	head writer	\N
tt5718344	nm1455462	producer	producer	\N
tt5718344	nm3009050	producer	producer	\N
tt5718344	nm0450224	production_designer	\N	\N
tt4250698	nm2125780	actor	\N	["James"]
tt4250698	nm5988252	actor	\N	["Steve"]
tt4250698	nm4330276	actor	\N	\N
tt4250698	nm5549554	actor	\N	\N
tt4250698	nm5221215	actress	\N	\N
tt4250698	nm1226598	actor	\N	\N
tt4250698	nm6955242	actor	\N	\N
tt4250698	nm3094312	actor	\N	\N
tt4250698	nm14838307	actor	\N	["Bar Patron"]
tt4250698	nm0608931	actor	\N	\N
tt4250698	nm3432404	director	\N	\N
tt4250698	nm2125780	writer	\N	\N
tt4250698	nm3432404	writer	\N	\N
tt4250698	nm2125780	producer	producer	\N
tt4250698	nm3432404	producer	producer	\N
tt4250698	nm3596970	cinematographer	\N	\N
tt4250698	nm3596970	editor	\N	\N
tt13039288	nm1523587	actress	\N	["Amaia"]
tt13039288	nm10302273	actress	\N	["June"]
tt13039288	nm0046162	actress	\N	["Edurne"]
tt13039288	nm2222485	actor	\N	["Aitor"]
tt13039288	nm0881561	actor	\N	["Gorka"]
tt13039288	nm6043143	actor	\N	["Iker"]
tt13039288	nm3891436	actress	\N	["Ane"]
tt13039288	nm2113937	actress	\N	["Leire"]
tt13039288	nm2375408	actress	\N	["Emakumea tabernan"]
tt13039288	nm10625402	actress	\N	["Maite"]
tt13039288	nm4053711	director	\N	\N
tt13039288	nm1644621	writer	created by	\N
tt13039288	nm2799071	writer	written by	\N
tt13039288	nm9698135	composer	composer	\N
tt13039288	nm5376592	cinematographer	director of photography	\N
tt13039288	nm8348488	editor	\N	\N
tt23873022	nm3719465	actor	\N	["Yusuf"]
tt23873022	nm4591521	actress	\N	["Kerime"]
tt23873022	nm1076381	actress	\N	["Ayse"]
tt23873022	nm4567501	actor	\N	["Tekin"]
tt23873022	nm3299226	actress	\N	["Ayfer"]
tt23873022	nm3751944	actor	\N	["Recep"]
tt23873022	nm9566650	actress	\N	["Gamze"]
tt23873022	nm10537731	actress	\N	["Belgin"]
tt23873022	nm11486487	actor	\N	["Gökhan"]
tt23873022	nm11825882	actress	\N	\N
tt23873022	nm4363547	composer	\N	\N
tt23873022	nm9925358	composer	\N	\N
tt23873022	nm9214923	composer	\N	\N
tt23873022	nm4057668	composer	\N	\N
tt23873022	nm5422687	cinematographer	cinematographer	\N
tt27351845	nm0022132	actress	\N	["Anita"]
tt27351845	nm1384966	actor	\N	["Raúl"]
tt27351845	nm0023693	actor	\N	\N
tt27351845	nm1959766	actress	\N	["Doña Delfina"]
tt27351845	nm1833646	actress	\N	\N
tt27351845	nm1689331	actress	\N	\N
tt27351845	nm0274068	actor	\N	\N
tt27351845	nm0378049	actress	\N	\N
tt27351845	nm0535394	actor	\N	\N
tt27351845	nm11381354	writer	writer	\N
tt24636338	nm10457017	actor	\N	["Karthik"]
tt24636338	nm10484384	actor	\N	["Vikram"]
tt24636338	nm2215965	actor	\N	["Kalaivanan"]
tt24636338	nm4546429	actress	\N	["Sathyabama (2017)"]
tt24636338	nm7246678	actor	\N	["Arjun"]
tt24636338	nm10484385	actress	\N	["Nandhini"]
tt24636338	nm10468826	director	\N	\N
tt24636338	nm10484387	writer	script	\N
tt24636338	nm10468826	writer	screenplay	\N
tt24636338	nm10468831	producer	producer	\N
tt24636338	nm10484389	composer	composer	\N
tt24636338	nm3630471	cinematographer	director of photography	\N
tt24636338	nm6596020	editor	\N	\N
tt0843215	nm6754195	self	\N	["Self - Host"]
tt0843215	nm1778986	actor	\N	["Expert (2006)"]
tt0843215	nm1500831	actor	\N	["Host"]
tt0843215	nm0077505	actor	\N	["Host"]
tt0843215	nm2024360	actress	\N	["Host"]
tt14693764	nm1815569	actor	\N	["Alex Beker"]
tt14693764	nm9576702	actor	\N	["Tomás Oravec"]
tt14693764	nm3190970	actor	\N	["Marek Bobula"]
tt14693764	nm1816711	actor	\N	["Vladimír 'Vlado' Bielik"]
tt14693764	nm1818043	director	\N	\N
tt14693764	nm9576701	director	\N	\N
tt14693764	nm7418837	writer	\N	\N
tt14693764	nm9885415	writer	\N	\N
tt14693764	nm3572859	writer	\N	\N
tt14693764	nm6650531	writer	\N	\N
tt14693764	nm0226075	producer	producer	\N
tt14693764	nm12510702	producer	producer	\N
tt14693764	nm2679188	producer	producer	\N
tt14693764	nm12510699	producer	producer	\N
tt14693764	nm6650531	composer	\N	\N
tt14693764	nm2319214	cinematographer	\N	\N
tt14693764	nm2410205	editor	\N	\N
tt1840061	nm0246418	self	\N	["Self - Hostess"]
tt1840061	nm0013587	self	\N	["Self"]
tt1840061	nm1039499	self	\N	["Self"]
tt1840061	nm0259768	self	\N	["Self"]
tt1840061	nm0453897	self	\N	["Self - Comedian"]
tt1840061	nm0481463	self	\N	["Self - Comedian"]
tt1840061	nm0721386	self	\N	["Self - Comedian"]
tt1137806	nm0096539	director	\N	\N
tt1137806	nm0297591	director	\N	\N
tt1137806	nm2043312	writer	writer	\N
tt1137806	nm0352354	producer	producer	\N
tt1137806	nm0763275	cinematographer	\N	\N
tt1137806	nm2666679	editor	\N	\N
tt10299134	nm10677335	actor	\N	\N
tt10299134	nm10677334	director	\N	\N
tt10299134	nm10677337	writer	\N	\N
tt10299134	nm10677334	cinematographer	\N	\N
tt10299134	nm10677334	editor	\N	\N
tt0006470	nm0717066	actress	\N	["Mignon - As a Child"]
tt0006470	nm0581499	actress	\N	["Mignon - As an Adult"]
tt0006470	nm0289797	actor	\N	["Kong Hee"]
tt0006470	nm0799744	actor	\N	["Bruce King"]
tt0006470	nm0808220	actor	\N	["Foo Shai"]
tt0006470	nm0245802	actor	\N	["The Captain"]
tt0006470	nm0659947	actor	\N	["Carleton Demarest"]
tt0006470	nm0666240	actress	\N	["Mrs. Demarest"]
tt0006470	nm0308848	actor	\N	["Lawrence Demarest"]
tt0006470	nm0838270	actor	\N	["Mike"]
tt0006470	nm0002271	director	\N	\N
tt0006470	nm0002271	writer	scenario	\N
tt0006470	nm0801726	cinematographer	\N	\N
tt18182704	nm7484397	actor	\N	["Rojak"]
tt18182704	nm12954644	actor	\N	["Sutisna"]
tt18182704	nm12954645	actor	\N	["Purnomo"]
tt18182704	nm4775181	actress	\N	["Maesaroh"]
tt18182704	nm1499075	actor	\N	["Ferdi"]
tt18182704	nm8153874	actress	\N	["Amirah"]
tt18182704	nm13393534	actress	\N	["Uyuy"]
tt18182704	nm13395648	actress	\N	["Aliya"]
tt18182704	nm2934664	actor	\N	["Yuli"]
tt18182704	nm13387116	actor	\N	["Naim"]
tt18182704	nm12954643	director	\N	\N
tt18182704	nm10357998	writer	story	\N
tt18182704	nm5595067	writer	screenplay	\N
tt18182704	nm13393540	writer	screenplay	\N
tt18182704	nm13393543	writer	screenplay	\N
tt18182704	nm10358028	composer	\N	\N
tt18182704	nm13387121	editor	\N	\N
tt18182704	nm13387120	editor	\N	\N
tt18182704	nm13393231	editor	\N	\N
tt18182704	nm13393539	editor	\N	\N
tt4351608	nm6666413	actor	\N	["host-Himself"]
tt4351608	nm1745831	director	\N	\N
tt4351608	nm3721841	writer	created by	\N
tt4351608	nm3602179	writer	head writer	\N
tt4351608	nm6666413	writer	\N	\N
tt4351608	nm4427276	producer	executive producer	\N
tt4351608	nm1745831	editor	\N	\N
tt33306919	nm1779335	self	\N	["Self - Host"]
tt33306919	nm16481231	self	\N	["Self"]
tt1851545	nm3026085	self	\N	["Self - Conducted by"]
tt1851545	nm0281765	self	\N	["Self - Host"]
tt1851545	nm2557623	self	\N	["Self - Special Correspondent"]
tt1851545	nm2559651	actor	\N	["Mime"]
tt1851545	nm3584567	actor	\N	["Siegfried"]
tt1851545	nm0855561	actor	\N	["The Wanderer"]
tt1851545	nm1139175	actor	\N	["Alberich"]
tt1851545	nm4107272	actor	\N	["Fafner"]
tt1851545	nm4341501	actress	\N	["The Forest Bird"]
tt1851545	nm1012692	actress	\N	["Erda"]
tt1851545	nm0357143	director	director	\N
tt1851545	nm1562691	producer	producer	\N
tt1851545	nm2471165	producer	producer	\N
tt1851545	nm0411075	editor	\N	\N
tt1851545	nm1158937	production_designer	\N	\N
tt4532816	nm7089991	self	\N	["Self - Host"]
tt4532816	nm2099808	self	\N	["Self"]
tt4532816	nm0791288	composer	composer	\N
tt33307384	nm0139607	archive_footage	\N	\N
tt33307384	nm15247150	archive_footage	\N	\N
tt33307384	nm11552854	archive_footage	\N	\N
tt33307384	nm15531238	archive_footage	\N	\N
tt0065067	nm0477570	actor	\N	["Pelikán József, gátõr"]
tt0065067	nm0960236	actor	\N	["Virág Árpád"]
tt0065067	nm0299586	actor	\N	["Dániel Zoltán"]
tt0065067	nm0098487	actor	\N	["Bástya elvtárs"]
tt0065067	nm0581644	actress	\N	["Potocsni elvtársnõ (beszédtanár; szerep-betanító)"]
tt0065067	nm0753587	actor	\N	["Operettszínész"]
tt0065067	nm0081094	actor	\N	["Gulyás Elemér"]
tt0065067	nm0598406	actress	\N	["Gizi"]
tt0065067	nm0904623	actor	\N	["Idegorvos"]
tt0065067	nm0890221	actress	\N	["Gogolák elvtársnõ"]
tt0065067	nm0045880	director	\N	\N
tt0065067	nm0045880	writer	writer	\N
tt0065067	nm0880294	writer	writer	\N
tt0065067	nm0006091	composer	\N	\N
tt0065067	nm0904397	composer	\N	\N
tt0065067	nm0958183	cinematographer	\N	\N
tt0065067	nm0097197	editor	\N	\N
tt0065067	nm0891387	production_designer	\N	\N
tt6640976	nm6197421	self	\N	["Self - Host"]
tt6640976	nm8839032	director	\N	\N
tt6640976	nm6197421	producer	producer	\N
tt6640976	nm8839033	cinematographer	\N	\N
tt1086983	nm2382330	self	\N	["Self"]
tt1086983	nm0379128	self	\N	["Self - Host"]
tt1086983	nm0001424	self	\N	["Self"]
tt1086983	nm1859734	self	\N	["Self"]
tt1086983	nm1889843	self	\N	["Self"]
tt1086983	nm0754149	self	\N	["Self"]
tt1086983	nm1019044	self	\N	["Self - Host"]
tt1086983	nm0889654	self	\N	["Self"]
tt18685564	nm0523529	actor	\N	["Presented by"]
tt18685564	nm1245343	actor	\N	["Presented by"]
tt18685564	nm13410198	director	\N	\N
tt7110126	nm0145708	actress	\N	["Mariana Villareal"]
tt7110126	nm0346080	actor	\N	["Luis Alberto Salvatierra Izaguirre"]
tt7110126	nm0070748	actor	\N	["Alberto Salvatierra"]
tt7110126	nm0135122	actor	\N	["Beto"]
tt7110126	nm0140025	actress	\N	["Felipa"]
tt7110126	nm0617732	actress	\N	["Ramona Pérez"]
tt7110126	nm0149412	actress	\N	["(1979)"]
tt7110126	nm0165411	actress	\N	["Chole Lopez (1979)"]
tt7110126	nm0328132	actress	\N	["Marisabel (1979)"]
tt7110126	nm0181578	actor	\N	["Juan Manuel"]
tt14654960	nm1734602	actor	\N	["Hasan Bozkirli (Dayi)"]
tt14654960	nm0022044	actor	\N	["Kudret Yildirim (Sabbah)"]
tt14654960	nm8927784	actress	\N	["Damla"]
tt14654960	nm8237692	actor	\N	["Derman Tasci"]
tt14654960	nm5890167	actor	\N	["Fatih Keskin"]
tt14654960	nm2013266	actor	\N	["Kor Yakup"]
tt14654960	nm3273956	actor	\N	["Afran"]
tt14654960	nm4246039	actor	\N	["Hatem"]
tt14654960	nm1855361	actor	\N	["Yadigar"]
tt14654960	nm3113711	actress	\N	["Handan"]
tt14654960	nm1672531	director	\N	\N
tt14654960	nm6869215	writer	\N	\N
tt14654960	nm8189485	writer	\N	\N
tt14654960	nm1866070	writer	writer	\N
tt14654960	nm9159451	writer	\N	\N
tt0053284	nm0459315	actress	\N	["Helena Pokorná"]
tt0053284	nm0555494	actor	\N	["Josef Pokorný - Helena's father"]
tt0053284	nm0381940	actor	\N	["Sleeping man"]
tt0053284	nm0959149	actor	\N	["Kovár - chief of unionist"]
tt0053284	nm0447515	actor	\N	["Officer Dvorák"]
tt0053284	nm0080015	actor	\N	["Barber"]
tt0053284	nm1185278	actress	\N	["Greengrocer"]
tt0053284	nm0841362	actress	\N	["Neighbour Pechácková"]
tt0053284	nm1146245	actor	\N	["Pepusa"]
tt0053284	nm2217866	actress	\N	["Didi"]
tt0053284	nm0954713	director	\N	\N
tt0053284	nm0440359	writer	screenplay	\N
tt0053284	nm0954713	writer	screenplay	\N
tt0053284	nm0882959	composer	\N	\N
tt0053284	nm0005884	cinematographer	\N	\N
tt0053284	nm0229771	editor	\N	\N
tt0053284	nm1561310	editor	\N	\N
tt1923649	nm0281936	actor	\N	["Karl Kennedy"]
tt1923649	nm0597236	actor	\N	["Toadfish Rebecchi"]
tt1923649	nm2892142	actress	\N	["Jade Mitchell"]
tt1923649	nm2405902	actor	\N	["Callum Jones"]
tt1923649	nm0219558	actor	\N	["Paul Robinson"]
tt1923649	nm2356851	actor	\N	["Andrew Robinson"]
tt1923649	nm2454818	actress	\N	["Summer Hoyland"]
tt1923649	nm1505296	actress	\N	["Kate Ramsay"]
tt1923649	nm0538214	actor	\N	["Lucas Fitzgerald"]
tt1923649	nm0936087	actor	\N	["Michael Williams"]
tt1923649	nm0642611	director	\N	\N
tt1923649	nm0287914	writer	written by	\N
tt1923649	nm0914844	writer	creator	\N
tt1923649	nm1691250	writer	story editor	\N
tt1923649	nm0455593	producer	producer	\N
tt1923649	nm1043398	casting_director	\N	\N
tt3159556	nm5919031	director	\N	\N
tt3159556	nm5919031	writer	writer	\N
tt3159556	nm5919030	cinematographer	\N	\N
tt17053136	nm1203430	director	\N	\N
tt17053136	nm1203430	writer	\N	\N
tt0620419	nm0383482	actor	\N	["Ted Bullpitt"]
tt0620419	nm0268034	actress	\N	["Thelma Bullpitt"]
tt0620419	nm0279734	actor	\N	["Craig Bullpitt"]
tt0620419	nm0569669	actress	\N	["Greta Bertolucci"]
tt0620419	nm0547876	actor	\N	["Bruno Bertolucci"]
tt0620419	nm0276872	actor	\N	["Jack Stubbs"]
tt0620419	nm0123383	director	\N	\N
tt0620419	nm0717685	writer	devised by	\N
tt0620419	nm0766440	writer	devised by	\N
tt0620419	nm0249949	writer	written by	\N
tt0620419	nm1761014	writer	written by	\N
tt0620419	nm0717685	producer	producer	\N
tt0620419	nm0766440	producer	producer	\N
tt0620419	nm0673849	composer	\N	\N
tt0620419	nm0103698	editor	editor	\N
tt32143010	nm16049522	self	\N	["Self"]
tt32143010	nm16049523	self	\N	["Self"]
tt19265202	nm0765031	self	\N	["Self - Host"]
tt19265202	nm0765031	director	\N	\N
tt19265202	nm2175096	writer	writer	\N
tt19265202	nm3124952	writer	\N	\N
tt19265202	nm7329359	writer	\N	\N
tt19265202	nm0190478	producer	producer	\N
tt19265202	nm1420945	producer	producer	\N
tt19265202	nm0537714	producer	producer	\N
tt19265202	nm1351110	cinematographer	\N	\N
tt14447986	nm7917574	actress	\N	["Manjiri Satyajit Mudholkar"]
tt14447986	nm2346665	actor	\N	["Satyajit Mudholkar"]
tt14447986	nm4450871	actress	\N	["Priya Mohite"]
tt14447986	nm12393366	director	director	\N
tt14447986	nm7814129	writer	dialogue	\N
tt14447986	nm2346665	writer	screenplay	\N
tt14447986	nm12282168	producer	producer	\N
tt14447986	nm14187655	composer	\N	\N
tt14447986	nm2154834	composer	\N	\N
tt14447986	nm12282169	cinematographer	director of photography	\N
tt14447986	nm2538198	cinematographer	director of photography	\N
tt14447986	nm12393371	editor	\N	\N
tt14447986	nm12393370	editor	\N	\N
tt14447986	nm12393369	editor	\N	\N
tt11641994	nm10625141	actor	\N	\N
tt11641994	nm10679412	actress	\N	\N
tt11641994	nm6171985	director	\N	\N
tt11641994	nm6171985	writer	\N	\N
tt11641994	nm10679414	producer	producer	\N
tt4403386	nm0035413	actor	\N	\N
tt4403386	nm3200565	actor	\N	\N
tt4403386	nm0508249	actress	\N	\N
tt4403386	nm7089698	actress	\N	\N
tt4403386	nm1416661	actor	\N	\N
tt4403386	nm0850017	actor	\N	\N
tt4403386	nm3209889	actress	\N	\N
tt4403386	nm0059595	director	\N	\N
tt4403386	nm2826755	director	\N	\N
tt4403386	nm0053967	writer	\N	\N
tt4403386	nm1371608	writer	\N	\N
tt4403386	nm2098462	writer	\N	\N
tt0610558	nm0005279	actor	\N	["Chief William O. 'Bill' Gillespie"]
tt0610558	nm0738415	actor	\N	["Chief of Detectives Virgil Tibbs"]
tt0610558	nm0042641	actor	\N	["Capt. V.L. 'Bubba' Skinner"]
tt0610558	nm0424509	actress	\N	["Althea Tibbs"]
tt0610558	nm0366231	actor	\N	["Cpl. Parker Williams"]
tt0610558	nm0861382	actor	\N	["Sgt. Wilson Sweet"]
tt0610558	nm0640356	actor	\N	["Lt. Lonnie Jamison"]
tt0610558	nm0629370	actress	\N	["Harriet DeLong"]
tt0610558	nm0486277	actress	\N	["Megan Fowler"]
tt0610558	nm0324658	actor	\N	["Garth Watkins"]
tt0610558	nm0463926	director	\N	\N
tt0610558	nm0057157	writer	developed for television by	\N
tt0610558	nm0773958	writer	written by	\N
tt0610558	nm0050398	writer	based on the characters from the novel by	\N
tt0610558	nm0304461	producer	producer	\N
tt0610558	nm0777123	composer	composer	\N
tt0610558	nm0589941	cinematographer	director of photography	\N
tt0610558	nm0109499	editor	\N	\N
tt0610558	nm0752764	editor	editor	\N
tt0610558	nm0321832	casting_director	\N	\N
tt0610558	nm0737530	production_designer	\N	\N
tt6561598	nm1141177	self	\N	["Self - Host"]
tt6561598	nm8800049	self	\N	["Self - Host"]
tt6561598	nm6368271	self	\N	["Self"]
tt6561598	nm8800511	self	\N	["Self"]
tt6561598	nm6368049	self	\N	["Self"]
tt6561598	nm8800011	archive_footage	\N	["Self"]
tt6561598	nm5476051	archive_footage	\N	["Self"]
tt6561598	nm8800087	archive_footage	\N	["Self"]
tt6561598	nm6384936	archive_footage	\N	["Self"]
tt6561598	nm6384939	archive_footage	\N	["Self"]
tt6561598	nm1141177	editor	\N	\N
tt28267345	nm0342533	actress	\N	\N
tt28267345	nm1874829	actor	\N	\N
tt28267345	nm10982828	actor	\N	\N
tt28267345	nm0180822	actor	\N	\N
tt28267345	nm7585329	actress	\N	\N
tt28267345	nm0218643	actress	\N	\N
tt28267345	nm0302172	actress	\N	\N
tt28267345	nm0575661	actor	\N	\N
tt28267345	nm0604125	actress	\N	\N
tt28267345	nm7569743	actress	\N	\N
tt28267345	nm5185912	director	\N	\N
tt28267345	nm15003776	writer	\N	\N
tt28267345	nm10982830	writer	\N	\N
tt27218612	nm0083142	self	\N	["Self - Host"]
tt27218612	nm0036817	director	\N	\N
tt27218612	nm0509052	producer	producer	\N
tt27218612	nm0774782	composer	\N	\N
tt27218612	nm2958285	cinematographer	\N	\N
tt27218612	nm2356160	cinematographer	\N	\N
tt27218612	nm0755239	cinematographer	\N	\N
tt27218612	nm2670086	cinematographer	\N	\N
tt27218612	nm10218349	editor	\N	\N
tt27218612	nm2040653	editor	\N	\N
tt27218612	nm1712404	editor	\N	\N
tt27218612	nm2042139	editor	\N	\N
tt7872180	nm1060633	actress	\N	["Roodkapje"]
tt7872180	nm2675966	actress	\N	["Additional voices"]
tt7872180	nm1982779	actor	\N	["Additional voices"]
tt7872180	nm2668967	actress	\N	["Additional voices"]
tt7872180	nm0993101	actress	\N	["Additional voices"]
tt7872180	nm0465615	actor	\N	["Sprookjesboom"]
tt7872180	nm1882925	actor	\N	["Ezeltje Strekje"]
tt7872180	nm1133733	actor	\N	["Langnek"]
tt7872180	nm0597039	actress	\N	["Assepoester"]
tt7872180	nm1553828	actress	\N	["Additional voices"]
tt28781963	nm6367707	actor	\N	["Handjob"]
tt28781963	nm11250035	actor	\N	["Tad Nightingale"]
tt28781963	nm6885637	actor	\N	["Bill"]
tt28781963	nm6367710	actor	\N	["Viper"]
tt28781963	nm15353647	actor	\N	["Katie the Heartbreaker"]
tt28781963	nm6367707	director	\N	\N
tt28781963	nm6367707	writer	\N	\N
tt28781963	nm6367707	producer	producer	\N
tt28781963	nm14883198	composer	\N	\N
tt28781963	nm15417183	composer	\N	\N
tt28781963	nm6367707	cinematographer	\N	\N
tt28781963	nm6885637	cinematographer	\N	\N
tt28781963	nm6367707	editor	\N	\N
tt13794292	nm10624020	self	\N	["Self"]
tt13794292	nm1415323	self	\N	["Self"]
tt13794292	nm1454411	actor	\N	["Band"]
tt13794292	nm2409665	self	\N	["Self"]
tt0890496	nm0011119	self	\N	["Self - Presenter"]
tt0890496	nm0634243	self	\N	["Self - Presenter"]
tt0890496	nm0614719	self	\N	["Self - Presenter"]
tt0890496	nm0919538	self	\N	["Self - Presenter"]
tt0890496	nm2443286	self	\N	["Self"]
tt0890496	nm0430639	self	\N	["Self"]
tt0890496	nm0722619	self	\N	["Self"]
tt0890496	nm3481780	composer	\N	\N
tt10740900	nm3747347	self	\N	["Self - Host"]
tt10740900	nm10846744	self	\N	["Self - Host"]
tt10740900	nm10882640	self	\N	["Self - Model"]
tt10740900	nm5614738	self	\N	["Self - Host"]
tt10740900	nm10846743	self	\N	["Self - Host"]
tt10740900	nm10849355	producer	producer	\N
tt15150880	nm3240771	actress	\N	["Katie"]
tt15150880	nm5067227	actress	\N	["Leo"]
tt15150880	nm3768112	actor	\N	["Ranger Rocky"]
tt15150880	nm9411358	actress	\N	["Zari"]
tt15150880	nm3060230	director	\N	\N
tt15150880	nm9192697	writer	writer	\N
tt15150880	nm11164388	producer	producer	\N
tt21115914	nm13789446	actor	\N	["Juan"]
tt21115914	nm6357723	actor	\N	["Juan (joven)"]
tt21115914	nm4502713	actor	\N	["Jorge"]
tt21115914	nm4410679	actress	\N	["Alba"]
tt21115914	nm6394587	actress	\N	["Carolina"]
tt21115914	nm13789448	actor	\N	["Alejandro (bebé)"]
tt21115914	nm8940637	actor	\N	["Mario"]
tt21115914	nm13789445	actor	\N	["Rosario (joven)"]
tt21115914	nm13789447	actor	\N	["Laura"]
tt21115914	nm8205568	director	\N	\N
tt21115914	nm8205568	writer	\N	\N
tt21115914	nm4142789	producer	producer	\N
tt21115914	nm4399956	cinematographer	\N	\N
tt21115914	nm6805263	editor	\N	\N
tt15554138	nm9872497	actor	\N	["Oliver"]
tt15554138	nm7465545	actress	\N	["Kenzie"]
tt15554138	nm1001923	director	\N	\N
tt32612686	nm1317785	self	\N	["Self - Host"]
tt32612686	nm16277397	self	\N	["Self - Kim Kardashian expert"]
tt32612686	nm16277398	self	\N	["Self - Skyhooks expert"]
tt32612686	nm16277400	self	\N	["Self - Geocaching expert"]
tt32612686	nm16277399	self	\N	["Self - Mr. Olympia contest expert"]
tt32612686	nm10825212	writer	writer	\N
tt1027850	nm0019427	actor	\N	\N
tt1027850	nm0025389	actor	\N	\N
tt1027850	nm1526433	actress	\N	\N
tt1027850	nm0201955	actress	\N	\N
tt1027850	nm1030225	actor	\N	\N
tt1027850	nm0451383	actor	\N	\N
tt1027850	nm0457410	actor	\N	\N
tt1027850	nm0505323	actor	\N	\N
tt1027850	nm1167157	actor	\N	\N
tt1027850	nm1060788	actress	\N	\N
tt1027850	nm1328135	director	\N	\N
tt1102857	nm0000558	actor	\N	["Lt. Price Adams"]
tt1102857	nm0256364	actor	\N	["Wallace Baker"]
tt1102857	nm0813827	actress	\N	["Selma Baker"]
tt1102857	nm0666201	actress	\N	["Mrs. Honeyman"]
tt1102857	nm0454651	actor	\N	["Herbert Joy"]
tt1102857	nm0073217	actor	\N	["Sgt. Vince Cavelli"]
tt1102857	nm0164818	actor	\N	["Off. Joe Huddleston"]
tt1102857	nm0738690	actor	\N	["Off. Pete Garcia"]
tt1102857	nm0607465	actor	\N	["Capt. Keith Gregory"]
tt1102857	nm0572897	actor	\N	["Henry Joy"]
tt1102857	nm0336139	director	director	\N
tt1102857	nm0780733	writer	creator	\N
tt1102857	nm0336139	producer	producer	\N
tt1102857	nm0629885	cinematographer	director of photography	\N
tt1102857	nm0372675	editor	\N	\N
tt1102857	nm0514257	casting_director	\N	\N
tt1102857	nm0002679	casting_director	\N	\N
tt4558196	nm0072328	director	\N	\N
tt4558196	nm7223125	writer	writer	\N
tt4558196	nm0072328	producer	producer	\N
tt4558196	nm1109157	cinematographer	\N	\N
tt8354154	nm6701319	actress	\N	["Pinkalicious"]
tt8354154	nm7752601	actor	\N	["Peter Pinkerton"]
tt8354154	nm1029506	actress	\N	["Ms.Penny"]
tt8354154	nm2404202	director	\N	\N
tt8354154	nm0059718	director	director	\N
tt8354154	nm1303197	writer	writer	\N
tt8354154	nm3175903	producer	producer	\N
tt8354154	nm5647541	composer	\N	\N
tt8354154	nm10829166	editor	\N	\N
tt11882154	nm4224187	actress	\N	\N
tt11882154	nm10662677	actor	\N	\N
tt11882154	nm10625384	director	\N	\N
tt11882154	nm11373137	writer	\N	\N
tt11882154	nm10625384	producer	producer	\N
tt5928890	nm8013772	actor	\N	["Mugger"]
tt5928890	nm6976648	actor	\N	["Marv"]
tt5928890	nm5056359	director	\N	\N
tt5928890	nm5056359	writer	\N	\N
tt5928890	nm6341627	cinematographer	\N	\N
tt5928890	nm5056359	editor	\N	\N
tt0233746	nm0216311	actor	\N	\N
tt5858950	nm9061201	actor	\N	["Blue Tribe"]
tt5858950	nm8733540	actress	\N	["Red Tribe"]
tt5858950	nm9061203	actor	\N	["Blue Tribe"]
tt5858950	nm3500018	actress	\N	["Green Tribe"]
tt5858950	nm9061207	actress	\N	["Green Tribe"]
tt5858950	nm6341616	actor	\N	["Blue Tribe Warrior"]
tt5858950	nm8226020	actor	\N	["Green Tribe"]
tt5858950	nm9301906	actor	\N	["Red Tribe"]
tt5858950	nm9061212	actress	\N	["Red Tribe"]
tt5858950	nm9061213	actress	\N	["Red Tribe"]
tt5858950	nm8264629	director	\N	\N
tt5858950	nm8264629	writer	\N	\N
tt5858950	nm8264629	producer	producer	\N
tt5858950	nm6219953	producer	producer	\N
tt5858950	nm8182447	producer	producer	\N
tt5858950	nm9061224	composer	\N	\N
tt5858950	nm7987001	editor	\N	\N
tt5858950	nm8182447	casting_director	\N	\N
tt1610647	nm1726097	self	\N	["Self - Host"]
tt1610647	nm2212054	writer	writer	\N
tt1610647	nm2317283	writer	writer	\N
tt1610647	nm2212054	producer	producer	\N
tt1610647	nm0284112	editor	editor	\N
tt15533722	nm10151558	actor	\N	["Samuel"]
tt15533722	nm13591175	actress	\N	["Stella"]
tt15533722	nm10746200	actor	\N	["Lukas"]
tt15533722	nm10151559	actor	\N	["Noah"]
tt15533722	nm10151553	actress	\N	["Oda"]
tt15533722	nm1097997	actress	\N	["Stellas mor"]
tt15533722	nm10151556	actor	\N	["Erik"]
tt15533722	nm10151557	actress	\N	["Sofie"]
tt15533722	nm10151551	director	\N	\N
tt15533722	nm10151551	writer	\N	\N
tt15533722	nm1681247	editor	\N	\N
tt11529056	nm6491406	actress	\N	["Baste Sebastian (2018)"]
tt11529056	nm4467592	actress	\N	["Jade Flores-Bartolome"]
tt11529056	nm2049965	actor	\N	["Ace Corpuz"]
tt11529056	nm1137883	actor	\N	["Catalino 'Lino' Bartolome"]
tt11529056	nm4039466	actress	\N	["Jacqueline 'Jacky' Montefalco-Corpuz"]
tt11529056	nm4028954	director	director	\N
tt11529056	nm2770647	director	director	\N
tt11529056	nm4765440	writer	\N	\N
tt11529056	nm3530207	writer	\N	\N
tt11529056	nm3187410	writer	\N	\N
tt11529056	nm9460113	writer	\N	\N
tt11529056	nm4568437	producer	producer	\N
tt11529056	nm2794391	editor	\N	\N
tt11529056	nm12272475	editor	video editor	\N
tt3516158	nm5753521	actor	\N	\N
tt3516158	nm12924276	actor	\N	\N
tt3516158	nm13438621	actor	\N	["Mahdi Ski"]
tt3516158	nm6264176	actress	\N	["Maruna"]
tt3516158	nm2489612	actor	\N	["Abdol-salam"]
tt3516158	nm10178122	actor	\N	\N
tt3516158	nm16145699	actor	\N	\N
tt3516158	nm13662549	actor	\N	["Rashid"]
tt3516158	nm6264178	actor	\N	["Ghafour"]
tt3516158	nm6264177	actor	\N	["Sahebi"]
tt3516158	nm6264175	director	\N	\N
tt3516158	nm6264175	writer	writer	\N
tt3516158	nm6264179	writer	writer	\N
tt3516158	nm6264179	producer	producer	\N
tt3516158	nm6264180	composer	composer	\N
tt3516158	nm2772026	cinematographer	director of photography	\N
tt3516158	nm2345207	editor	editor	\N
tt3516158	nm5006183	production_designer	\N	\N
tt17347984	nm13329636	self	\N	["Self"]
tt17347984	nm13329635	self	\N	["Self"]
tt17347984	nm13329637	self	\N	["Self"]
tt17347984	nm13329638	self	\N	["Self"]
tt17347984	nm13329639	self	\N	["Self"]
tt17347984	nm13329635	director	\N	\N
tt17347984	nm13329636	writer	\N	\N
tt17347984	nm13329635	writer	\N	\N
tt17347984	nm13329636	producer	producer	\N
tt17347984	nm13329636	cinematographer	\N	\N
tt17347984	nm13329635	cinematographer	\N	\N
tt17347984	nm13329635	editor	\N	\N
tt2298217	nm0086500	director	\N	\N
tt2298217	nm1899546	director	\N	\N
tt2298217	nm0120078	cinematographer	cinematographer	\N
tt2298217	nm0994038	cinematographer	cinematographer	\N
tt2298217	nm1495959	cinematographer	cinematographer	\N
tt2298217	nm2710152	editor	\N	\N
tt31248845	nm10948949	self	\N	["Self"]
tt31248845	nm9513711	self	\N	["Self - Host"]
tt31248845	nm11017812	self	\N	["Self"]
tt7368942	nm0008570	actor	\N	\N
tt7368942	nm0398431	actor	\N	\N
tt7368942	nm0508279	actress	\N	\N
tt7368942	nm0609969	actor	\N	\N
tt7368942	nm0755742	actress	\N	\N
tt7368942	nm0539894	director	\N	\N
tt7368942	nm0652200	director	\N	\N
tt7368942	nm1886661	writer	\N	\N
tt7368942	nm1319754	writer	\N	\N
tt7368942	nm9258784	writer	\N	\N
tt7368942	nm2266161	cinematographer	\N	\N
tt7368942	nm1872481	editor	lead editor	\N
tt2304909	nm1623395	actor	\N	["Bobby Turtin"]
tt2304909	nm3018168	actor	\N	["Scott Turtin"]
tt2304909	nm4959058	actor	\N	["Papamama"]
tt2304909	nm4953734	actor	\N	["Deacon"]
tt2304909	nm4952742	actor	\N	["Greg Warner"]
tt2304909	nm4953555	actor	\N	["Dove"]
tt2304909	nm3818520	actress	\N	["Charmy"]
tt2304909	nm4953583	actor	\N	["Whistle"]
tt2304909	nm4952602	actor	\N	["Papamama"]
tt2304909	nm4184944	actress	\N	["Charmy"]
tt2304909	nm4952642	director	\N	\N
tt2304909	nm4952642	writer	story	\N
tt2304909	nm4952642	composer	\N	\N
tt2304909	nm4952642	cinematographer	\N	\N
tt2304909	nm4952642	editor	\N	\N
tt32306164	nm1315654	self	\N	["Self - Host"]
tt10116572	nm9255499	actress	\N	["Sandrine"]
tt10116572	nm5068619	actress	\N	["Alice"]
tt10116572	nm2802873	actress	\N	["Veronica"]
tt10116572	nm4821110	director	\N	\N
tt10116572	nm5068619	writer	\N	\N
tt10116572	nm2802873	writer	\N	\N
tt10116572	nm3854929	composer	\N	\N
tt10116572	nm2684458	cinematographer	\N	\N
tt10116572	nm3152285	editor	\N	\N
tt27612202	nm11723672	self	\N	["Self - Presenter"]
tt27612202	nm4491047	director	\N	\N
tt27612202	nm12913083	producer	producer	\N
tt8574934	nm0784818	actor	\N	["The Tick"]
tt8574934	nm1969645	actor	\N	["Arthur Everest"]
tt8574934	nm2038170	actress	\N	["Dot Everest"]
tt8574934	nm0385639	actor	\N	["Superian"]
tt8574934	nm2199657	actress	\N	["Ms. Lint"]
tt8574934	nm0817647	actor	\N	["Overkill"]
tt8574934	nm0876138	actor	\N	["Dangerboat"]
tt8574934	nm0890808	actress	\N	["Lobstercules"]
tt8574934	nm0435678	actress	\N	["Joan"]
tt8574934	nm0154236	actor	\N	["Walter"]
tt8574934	nm0864268	director	\N	\N
tt8574934	nm0249421	writer	created by	\N
tt8574934	nm3597491	writer	story editor	\N
tt8574934	nm1719286	writer	story editor	\N
tt8574934	nm2697897	writer	story editor	\N
tt8574934	nm0616793	producer	producer	\N
tt8574934	nm0784818	producer	producer	\N
tt8574934	nm0911320	producer	producer	\N
tt8574934	nm2092016	composer	\N	\N
tt8574934	nm0721012	cinematographer	cinematographer	\N
tt8574934	nm1319486	editor	\N	\N
tt8574934	nm0752861	casting_director	\N	\N
tt8574934	nm0440426	production_designer	\N	\N
tt6742466	nm8741635	actor	\N	["Rune"]
tt6742466	nm8745422	actor	\N	["StormLasj"]
tt6742466	nm8747065	actor	\N	["Nick"]
tt3254764	nm5909741	actress	\N	["Party Guest"]
tt3254764	nm1615516	actress	\N	["Party Guest"]
tt3254764	nm3702531	actor	\N	["Tom"]
tt3254764	nm1090201	actress	\N	["Receptionist"]
tt3254764	nm1029357	actress	\N	["Yvette"]
tt3254764	nm0437446	actress	\N	["Pearl"]
tt3254764	nm1130991	actor	\N	["The Boss"]
tt3254764	nm1285178	actor	\N	["Jef"]
tt3254764	nm1834096	actress	\N	["Shelly"]
tt3254764	nm1898286	director	\N	\N
tt3254764	nm0343568	writer	\N	\N
tt3254764	nm1898286	producer	producer	\N
tt3254764	nm1697543	producer	producer	\N
tt3254764	nm2307111	composer	\N	\N
tt3254764	nm4069363	cinematographer	\N	\N
tt3254764	nm1892794	editor	\N	\N
tt3254764	nm3243899	casting_director	casting_director	\N
tt3254764	nm1806174	production_designer	production_designer	\N
tt13820436	nm2004474	self	\N	["Self - Co-Host"]
tt13820436	nm2651530	self	\N	["Self - Co-Host"]
tt13820436	nm0931002	self	\N	["Self - Co-Host"]
tt13820436	nm2549258	self	\N	["Self - Co-Host"]
tt13820436	nm2134385	self	\N	["Self - Guest Co-Host"]
tt13820436	nm0453258	self	\N	["Self - Guest Co-Host"]
tt4402648	nm1712191	self	\N	["Self - Host"]
tt4402648	nm1235306	self	\N	["Self - Host"]
tt6640698	nm0016041	actor	\N	["Carlos Pérez"]
tt6640698	nm0034147	actress	\N	\N
tt6640698	nm0038231	actor	\N	["León"]
tt6640698	nm0044164	actress	\N	["Felicitas"]
tt6640698	nm0078286	actress	\N	["Florencia"]
tt6640698	nm1139399	actress	\N	["Madre"]
tt6640698	nm0130693	actor	\N	["Rolando"]
tt6640698	nm0136078	actress	\N	["Miranda"]
tt6640698	nm0140060	actor	\N	\N
tt6640698	nm0156030	actress	\N	["Shamira"]
tt6640698	nm0031653	director	\N	\N
tt6640698	nm0826320	director	\N	\N
tt6640698	nm0836809	writer	idea	\N
tt6640698	nm1989511	writer	dialogue	\N
tt6640698	nm0162946	writer	\N	\N
tt6640698	nm1531248	writer	\N	\N
tt6640698	nm1144893	producer	producer	\N
tt6640698	nm0836809	producer	producer	\N
tt6640698	nm1436634	composer	\N	\N
tt6640698	nm1146332	cinematographer	\N	\N
tt6640698	nm0018008	editor	\N	\N
tt14517868	nm0438467	actor	\N	\N
tt14517868	nm11652686	actor	\N	\N
tt14517868	nm1106058	actor	\N	\N
tt14517868	nm2068077	actress	\N	\N
tt14517868	nm0961737	actress	\N	\N
tt14517868	nm1662277	actor	\N	\N
tt14517868	nm3713098	actress	\N	\N
tt14517868	nm11652685	director	\N	\N
tt14517868	nm12442914	writer	concept developed by	\N
tt14517868	nm11652685	writer	concept developed by	\N
tt14517868	nm1021961	writer	\N	\N
tt14517868	nm5608222	writer	dialogue	\N
tt14517868	nm11652685	producer	producer	\N
tt14517868	nm12442914	producer	producer	\N
tt14517868	nm1995429	cinematographer	\N	\N
tt14517868	nm1867789	editor	\N	\N
tt1688637	nm2159225	self	\N	["Self - Play-by-Play Announcer"]
tt1688637	nm0770919	self	\N	["Self - Color Commentator"]
tt1688637	nm1850865	self	\N	["Self - Baltimore Colts Fullback"]
tt1688637	nm1527278	self	\N	["Self - Baltimore Colts End"]
tt1688637	nm3484227	self	\N	["Self - Baltimore Colts Defensive Back"]
tt1688637	nm1453208	self	\N	["Self - New York Giants Tackle"]
tt1688637	nm3377682	self	\N	["Self - New York Giants Quarterback"]
tt1688637	nm1917649	self	\N	["Self - New York Giants Defensive Back"]
tt1688637	nm3984872	self	\N	["Self - Baltimore Colts Defensive Back"]
tt1688637	nm3960806	self	\N	["Self - New York Giants Guard"]
tt11000728	nm11006798	actor	\N	["Scruffy McGhoul"]
tt11000728	nm11006799	actor	\N	["Chester Arthur Burnett (2003-2008)"]
tt14882786	nm9506111	actor	\N	\N
tt14882786	nm9506112	actress	\N	\N
tt14882786	nm9506110	director	\N	\N
tt14882786	nm10865868	writer	\N	\N
tt14882786	nm12629431	writer	\N	\N
tt15545194	nm8758949	archive_footage	\N	\N
tt15545194	nm9393142	archive_footage	\N	\N
tt12035086	nm2751803	actress	\N	["Gail October"]
tt12035086	nm0058831	actor	\N	["David Genaro"]
tt12035086	nm0419562	actress	\N	["Tina"]
tt12035086	nm10828789	director	\N	\N
tt12035086	nm2345184	writer	created by	\N
tt12035086	nm1791933	writer	created by	\N
tt12035086	nm2000028	composer	\N	\N
tt15302624	nm1549016	director	\N	\N
tt15302624	nm1549016	writer	\N	\N
tt19393578	nm1773618	director	producer director	\N
tt19393578	nm7489759	composer	\N	\N
tt19393578	nm2795023	cinematographer	\N	\N
tt19393578	nm3348512	editor	\N	\N
tt0578587	nm0000092	actor	\N	["Basil Fawlty"]
tt0578587	nm0768795	actress	\N	["Sybil Fawlty"]
tt0578587	nm0755133	actor	\N	["Manuel"]
tt0578587	nm0095665	actress	\N	["Polly Sherman"]
tt0578587	nm0544860	actor	\N	["André"]
tt0578587	nm0687746	actor	\N	["Kurt"]
tt0578587	nm0193862	actor	\N	["Colonel Hall"]
tt0578587	nm0915413	actress	\N	["Mrs. Hall"]
tt0578587	nm0129634	actor	\N	["Mr. Twitchen"]
tt0578587	nm0403176	actress	\N	["Mrs. Twitchen"]
tt0578587	nm0000092	writer	by	\N
tt0578587	nm0095665	writer	by	\N
tt0578587	nm0203791	producer	producer	\N
tt0578587	nm0933288	composer	\N	\N
tt0578587	nm0753376	editor	\N	\N
tt0578587	nm0454328	production_designer	designer	\N
tt15218448	nm8421390	actor	\N	["Magne Budho"]
tt15218448	nm9069670	actor	\N	["Suntali"]
tt15218448	nm7450721	actor	\N	["Takme Budha"]
tt15218448	nm12778090	director	\N	\N
tt15218448	nm12778091	writer	\N	\N
tt15218448	nm8421390	writer	\N	\N
tt15218448	nm8804568	writer	\N	\N
tt15218448	nm12778090	writer	\N	\N
tt15218448	nm12778092	producer	producer	\N
tt15218448	nm8511171	composer	\N	\N
tt15218448	nm12778093	cinematographer	\N	\N
tt15218448	nm10740280	editor	\N	\N
tt0949735	nm0382268	self	\N	["Self"]
tt0949735	nm0001565	self	\N	["Self"]
tt0949735	nm0000146	self	\N	["Self"]
tt0949735	nm0278973	self	\N	["Self"]
tt0949735	nm0240183	self	\N	["Self"]
tt0949735	nm0180732	self	\N	["Self"]
tt0949735	nm1074153	self	\N	["Self"]
tt0949735	nm0705356	self	\N	["Self"]
tt0949735	nm0593437	self	\N	["Self"]
tt0949735	nm0005042	self	\N	["Self"]
tt12249274	nm1050684	actor	\N	["Deputy Chief Theocharis (1994-2005)"]
tt12249274	nm1081425	actress	\N	["Ilektra Theoxari"]
tt12249274	nm1080600	actress	\N	["Xenia Archou"]
tt12249274	nm1147663	actress	\N	["Tonia"]
tt12249274	nm0036912	actor	\N	["Chief Leventagas (1994-2006)"]
tt12249274	nm0260641	actor	\N	\N
tt12249274	nm1152625	actor	\N	["Chief of the Police"]
tt12249274	nm0306633	actor	\N	\N
tt12249274	nm1149365	actor	\N	["Nakos (1994-2000)"]
tt12249274	nm1011659	actor	\N	["Paris Velidis"]
tt12249274	nm0287566	director	\N	\N
tt12249274	nm0287566	writer	\N	\N
tt12249274	nm2169050	writer	dialogue	\N
tt12249274	nm1227914	writer	dialogue	\N
tt12249274	nm1749095	writer	dialogue	\N
tt12249274	nm1203311	editor	editor	\N
tt0831920	nm0900710	actor	\N	["Sinterklaas"]
tt0831920	nm0602131	self	\N	["Self"]
tt0831920	nm0098388	self	\N	["Self"]
tt0831920	nm0449215	actor	\N	["Wegwijspiet"]
tt0831920	nm0212231	actor	\N	["Hoofdpiet"]
tt0831920	nm0620740	self	\N	["Self"]
tt0831920	nm2328683	self	\N	["Self"]
tt0831920	nm2334673	self	\N	["Self - Presenter 'Deadline'"]
tt0831920	nm1490322	self	\N	["Self - Magician"]
tt0831920	nm0740231	self	\N	["Self"]
tt0831920	nm0740231	self	\N	["Tillie van Broekhuis"]
tt0831920	nm2285610	director	\N	\N
tt0831920	nm2328379	writer	\N	\N
tt0831920	nm2285610	producer	producer	\N
tt0831920	nm0700604	producer	producer	\N
tt0831920	nm2328379	producer	producer	\N
tt0831920	nm2329312	editor	\N	\N
tt0831920	nm0102586	editor	\N	\N
tt3017522	nm1616627	actress	\N	["Anushka Sarkar"]
tt3017522	nm0438632	actor	\N	["Ram"]
tt3017522	nm4541343	actor	\N	["Vihaan Harsh Ruia"]
tt3017522	nm7003402	actor	\N	["Ajay Gujraal"]
tt3017522	nm3884105	actor	\N	["Mr.Harsh Ruia"]
tt3017522	nm2612592	actor	\N	["Pradeep Alok Singh"]
tt3017522	nm1587175	actress	\N	["Mona Pradeep Singh"]
tt3017522	nm2799219	actress	\N	["Priya"]
tt3017522	nm9505937	actor	\N	["Manoj Singh"]
tt3017522	nm1199935	writer	\N	\N
tt3017522	nm6184357	writer	writer	\N
tt3017522	nm12515099	casting_director	\N	\N
tt0560873	nm0047505	self	\N	["Self"]
tt0560873	nm0124133	archive_footage	\N	["Self"]
tt0560873	nm0001051	archive_footage	\N	["Self"]
tt0560873	nm0000413	self	\N	["Self"]
tt0560873	nm1757719	self	\N	["Self"]
tt0560873	nm0580300	self	\N	["Self"]
tt0560873	nm1765149	self	\N	["Self"]
tt31727138	nm0495733	actress	\N	["Rose-Anna Saint-Cyr"]
tt31727138	nm0300595	actor	\N	["Lionel Saint-Cyr"]
tt31727138	nm0610092	actress	\N	["Juliette Savary"]
tt31727138	nm0661547	actor	\N	["Ticoune"]
tt31727138	nm0661547	actor	\N	["Amédée Belleau"]
tt31727138	nm0041451	actress	\N	["Mémère Bouchard"]
tt31727138	nm0240754	actor	\N	["Joseph-Arthur Lavoie"]
tt31727138	nm0240721	actor	\N	["Curé Chouinard"]
tt31727138	nm0304820	actor	\N	["Zidore Leclerc"]
tt31727138	nm0479997	actress	\N	["Marie-Thérèse Fournier"]
tt31727138	nm0688524	actor	\N	["Cyprien Fournier"]
tt31727138	nm0874066	director	\N	\N
tt31727138	nm0310420	writer	writer	\N
tt1529491	nm0014052	actor	\N	["Nils Petter Möller"]
tt1529491	nm0512512	actress	\N	["Eva Roos"]
tt1529491	nm2901618	actress	\N	["Hedvig Skog"]
tt1529491	nm0197168	actor	\N	["Oscar"]
tt1529491	nm0259826	director	\N	\N
tt1529491	nm2901669	writer	written by	\N
tt1529491	nm0921653	writer	written by	\N
tt1529491	nm0924165	writer	written by	\N
tt1529491	nm0067089	producer	producer	\N
tt1529491	nm1496929	producer	producer	\N
tt1529491	nm0785730	composer	\N	\N
tt3784214	nm4515123	actress	\N	["Diamanda Hagan"]
tt3784214	nm7476667	actor	\N	["The Unemployed Historian"]
tt3784214	nm4515123	director	\N	\N
tt3784214	nm4515123	writer	\N	\N
tt3784214	nm4515123	producer	producer	\N
tt3784214	nm4515123	editor	\N	\N
tt11098984	nm9790593	actress	\N	["Aslim"]
tt11098984	nm9985851	actor	\N	["Ozan"]
tt11098984	nm10934994	actress	\N	["Eylül"]
tt11098984	nm10934993	actor	\N	["Yagiz"]
tt11098984	nm11047764	actress	\N	["Hediye"]
tt11098984	nm8557415	actor	\N	["Kemal Hoca"]
tt11098984	nm9657831	actress	\N	["Sibel"]
tt11098984	nm10748626	actor	\N	["Fatih"]
tt11098984	nm11047765	actress	\N	\N
tt11098984	nm11047766	actress	\N	\N
tt11098984	nm2129968	director	\N	\N
tt11098984	nm4908114	director	\N	\N
tt11098984	nm4907854	director	\N	\N
tt11098984	nm11047768	director	\N	\N
tt11098984	nm3219731	writer	written by	\N
tt11098984	nm11047773	writer	written by	\N
tt11098984	nm4826917	writer	written by	\N
tt11098984	nm11047772	writer	written by	\N
tt11098984	nm1754670	producer	producer	\N
tt11098984	nm5152980	composer	composer	\N
tt11098984	nm2172714	composer	composer	\N
tt11098984	nm10110039	cinematographer	\N	\N
tt11098984	nm7684298	cinematographer	cinematographer	\N
tt11098984	nm11047770	editor	editor	\N
tt11098984	nm10110042	editor	\N	\N
tt11098984	nm10110044	editor	editor	\N
tt11098984	nm11047769	editor	\N	\N
tt29978742	nm0562916	self	\N	["Self - Host"]
tt29978742	nm1021361	self	\N	["Self - Announcer"]
tt32930981	nm3799208	actor	\N	\N
tt27171255	nm14569958	self	\N	["Self - Presenter"]
tt27171255	nm14570289	director	\N	\N
tt0189774	nm0567238	actress	\N	["Liza Screwlittle"]
tt0189774	nm0395121	actor	\N	["Professor Diggins"]
tt0189774	nm0120178	actor	\N	["Col. Dickering"]
tt0189774	nm0528783	actress	\N	["Joan Pillers"]
tt0189774	nm0922301	actor	\N	["Lance Meyers"]
tt0189774	nm0000440	actress	\N	["Tish Tosh"]
tt0189774	nm0014959	actress	\N	["Mrs. Fierce"]
tt0189774	nm0247624	actor	\N	["The Bartender"]
tt0189774	nm0820503	actress	\N	["The Bartender's Wife"]
tt0189774	nm0289245	director	\N	\N
tt0189774	nm0193721	writer	written by	\N
tt0189774	nm0289245	writer	written by	\N
tt0189774	nm0313559	editor	\N	\N
tt10484608	nm0020694	actress	\N	["Zoey"]
tt10484608	nm0097040	actor	\N	["Nick Rivers"]
tt10484608	nm0114439	actor	\N	["Buck Huston"]
tt10484608	nm1271152	actor	\N	["Bernardo Castro"]
tt10484608	nm0050584	actor	\N	["Frankie Hubbard"]
tt10484608	nm0151645	actress	\N	["Azure C."]
tt10484608	nm0188665	actress	\N	["Maria"]
tt10484608	nm0231283	actor	\N	["Murray Golden"]
tt10484608	nm0245668	actress	\N	["Molly Malone"]
tt10484608	nm0264603	actor	\N	["Jared Chase"]
tt10484608	nm2552851	director	\N	\N
tt10484608	nm4268588	writer	written by	\N
tt10484608	nm0260547	writer	creator	\N
tt10484608	nm0113780	writer	creator	\N
tt10484608	nm0996693	writer	written by	\N
tt10484608	nm1161772	producer	producer	\N
tt10484608	nm0737998	producer	producer	\N
tt10484608	nm0125021	editor	\N	\N
tt5024110	nm2693641	self	\N	["Self"]
tt0227618	nm0617588	director	\N	\N
tt12946208	nm10369627	actor	\N	\N
tt12946208	nm10625672	actress	\N	\N
tt12946208	nm11536983	actor	\N	\N
tt12946208	nm11536982	director	\N	\N
tt12946208	nm5030928	writer	\N	\N
tt12946208	nm11517589	producer	producer	\N
tt12946208	nm11517590	producer	producer	\N
tt12946208	nm11517591	cinematographer	\N	\N
tt12946208	nm11536991	cinematographer	\N	\N
tt12946208	nm11536992	editor	\N	\N
tt12946208	nm11536987	editor	\N	\N
tt12946208	nm11536993	editor	\N	\N
tt32310542	nm7792619	self	\N	["Self"]
tt32310542	nm16104540	self	\N	["Self"]
tt32310542	nm7076200	self	\N	["Self"]
tt32310542	nm16104541	self	\N	["Self"]
tt17489272	nm1203430	director	\N	\N
tt17489272	nm1203430	writer	\N	\N
tt9463002	nm0989397	actress	\N	["Vasudha Sharma (2007-2008)"]
tt9463002	nm0324845	actor	\N	["Dhirendra Raisinghaniya (2007-2008)"]
tt9463002	nm0839820	actor	\N	["Sushant Sharma (2007-2008)"]
tt9463002	nm1213227	actress	\N	["Vedika Raisinghaniya (2007-2008)"]
tt9463002	nm2446817	actor	\N	["Vedant Raisinghaniya (2007-2008)"]
tt9463002	nm10604490	director	\N	\N
tt9463002	nm1618188	director	series director	\N
tt9463002	nm10327688	writer	\N	\N
tt9463002	nm0659238	writer	\N	\N
tt9463002	nm7735837	writer	\N	\N
tt9463002	nm2273814	composer	\N	\N
tt9463002	nm7867356	cinematographer	\N	\N
tt9463002	nm10327689	editor	\N	\N
tt9463002	nm2761947	editor	\N	\N
tt33355808	nm2873893	self	\N	["Self - Sports Director"]
tt33355808	nm16351196	self	\N	["Self - Co-Anchor"]
tt33355808	nm16351195	self	\N	["Self - Co-Anchor"]
tt2520442	nm4172579	director	\N	\N
tt2520442	nm4172579	writer	\N	\N
tt2520442	nm4770249	composer	\N	\N
tt2520442	nm4173146	cinematographer	\N	\N
tt2520442	nm4172579	editor	\N	\N
tt6966764	nm8230504	self	\N	["Self - Host"]
tt6966764	nm8374899	self	\N	["Self - Analyst (Madrid)"]
tt6966764	nm8933200	self	\N	["Self - Analyst"]
tt6966764	nm8374892	self	\N	["Self - Analyst"]
tt6966764	nm5716478	self	\N	["Self - Analyst"]
tt6966764	nm8766849	self	\N	["Self - Analyst"]
tt17348354	nm12075643	self	\N	["Self - Host"]
tt17348354	nm2055007	self	\N	["Self"]
tt0764900	nm1335407	actress	\N	\N
tt0764900	nm1340404	actor	\N	\N
tt0764900	nm0958144	actor	\N	\N
tt0764900	nm0393094	director	\N	\N
tt0764900	nm1288471	director	\N	\N
tt0764900	nm0393094	writer	original story	\N
tt0764900	nm0443227	writer	original story	\N
tt0764900	nm0613609	writer	original story	\N
tt0764900	nm0849083	writer	original story	\N
tt0764900	nm0379391	producer	producer	\N
tt0764900	nm0849083	producer	producer	\N
tt0764900	nm0041653	composer	\N	\N
tt34078878	nm16633346	self	\N	["Self - Host"]
tt34078878	nm15255741	self	\N	["Self - Miss Jill"]
tt34078878	nm16635083	actress	\N	["Miss Muffitt"]
tt34078878	nm16545735	producer	producer	\N
tt6178036	nm1183930	self	\N	["Self"]
tt12639282	nm11138476	actress	\N	\N
tt12639282	nm3849678	actress	\N	\N
tt12639282	nm11553664	actor	\N	\N
tt12639282	nm0004471	actor	\N	\N
tt12639282	nm11533917	director	\N	\N
tt12639282	nm11118786	writer	\N	\N
tt12639282	nm5426265	writer	\N	\N
tt12639282	nm0704654	producer	producer	\N
tt1369419	nm1069637	self	\N	["Self - Hostess"]
tt1369419	nm0707040	casting_director	\N	\N
tt9092036	nm1324700	actor	\N	["Nelson Peña"]
tt9092036	nm0523486	actress	\N	["July Molina"]
tt9092036	nm1417272	actor	\N	["Miguel 'Micky' Zunino"]
tt9092036	nm3014822	actress	\N	["Pascuala Domínguez"]
tt9092036	nm0616391	actor	\N	["Erick Ferrada"]
tt9092036	nm6723419	actress	\N	["Matilde Varela"]
tt9092036	nm1274712	actor	\N	["Compadre Inostroza"]
tt9092036	nm0488579	actor	\N	["Rubén de la Maza"]
tt9092036	nm1194874	actress	\N	["Antonia Miller"]
tt9092036	nm2519362	actor	\N	["Facundo Grandinetti"]
tt9092036	nm3778967	writer	story consultant	\N
tt9092036	nm1907009	writer	writer	\N
tt5120812	nm4091593	actress	\N	["Lexi"]
tt5120812	nm3515932	actress	\N	["Zarah"]
tt5120812	nm3648630	director	\N	\N
tt5120812	nm4091593	writer	\N	\N
tt5120812	nm3515932	writer	\N	\N
tt5120812	nm4091593	producer	producer	\N
tt5120812	nm3515932	producer	producer	\N
tt5120812	nm3648630	editor	\N	\N
tt8327428	nm0163863	self	\N	["Self - Host"]
tt8327428	nm0005234	self	\N	["Self - Celebrity Contestant"]
tt8327428	nm0449242	self	\N	["Self - Celebrity Contestant"]
tt1784130	nm4198268	actress	\N	\N
tt1864770	nm0153768	self	\N	["Self - Narrator"]
tt1864770	nm0018279	self	\N	["Self - Author, 'How Wars Are Won'"]
tt1864770	nm4919429	actor	\N	["Sailor"]
tt1864770	nm5044853	self	\N	["Self - Author, '100 Military Leaders Who Shaped History'"]
tt1864770	nm1809553	self	\N	["Self"]
tt1864770	nm2563116	self	\N	["Self - Author"]
tt1864770	nm2563116	self	\N	["Military Historian"]
tt1864770	nm0358081	self	\N	["Self - Author, 'Monty'"]
tt1864770	nm5045597	archive_footage	\N	["Self"]
tt1864770	nm4632501	self	\N	["Self - History Instructor, U.S. Naval Academy"]
tt1864770	nm0666567	archive_footage	\N	["Self"]
tt1864770	nm1680475	writer	\N	\N
tt1864770	nm1680475	producer	producer	\N
tt1864770	nm0032411	editor	\N	\N
tt1864770	nm0106676	editor	\N	\N
tt1864770	nm0579451	editor	\N	\N
tt6435744	nm3375878	self	\N	["Self - Host"]
tt6435744	nm2234385	self	\N	["Self - Host"]
tt6435744	nm4074975	self	\N	["Self - Host"]
tt6435744	nm3567922	self	\N	["Self - Host"]
tt6435744	nm1502382	writer	creator	\N
tt6435744	nm3598310	writer	creator	\N
tt6435744	nm3106325	writer	creator	\N
tt27483570	nm0633202	writer	created by	\N
tt27483570	nm0913330	writer	\N	\N
tt27483570	nm3103994	producer	producer	\N
tt27483570	nm0195748	casting_director	\N	\N
tt0510608	nm0095308	actor	\N	\N
tt0510608	nm0108553	actor	\N	\N
tt0510608	nm0342143	actor	\N	\N
tt0510608	nm0598184	actor	\N	\N
tt0510608	nm0681493	actress	\N	\N
tt0510608	nm0855777	actress	\N	\N
tt0510608	nm0727345	director	\N	\N
tt0510608	nm0107782	writer	writer	\N
tt0510608	nm1776788	writer	writer	\N
tt2266888	nm1535393	self	\N	["Self - Presenter"]
tt2266888	nm0103873	director	\N	\N
tt2266888	nm0103873	producer	producer	\N
tt2265137	nm4921585	actor	\N	["John"]
tt2265137	nm4921422	actor	\N	["Sibu"]
tt2265137	nm3271324	director	\N	\N
tt2265137	nm3271324	writer	\N	\N
tt2265137	nm3271324	producer	producer	\N
tt2265137	nm3271324	cinematographer	\N	\N
tt2265137	nm3271324	editor	\N	\N
tt0916054	nm1242681	actor	\N	["Series Regular"]
tt0916054	nm1699451	actress	\N	["Alexis Spine"]
tt0916054	nm1407183	actress	\N	["Series Regular"]
tt0916054	nm1728645	actress	\N	["Series Regular"]
tt0916054	nm1747363	actor	\N	["Series Regular"]
tt0916054	nm1488998	actor	\N	["Series Regular"]
tt0916054	nm1748864	actress	\N	["Series Regular"]
tt0916054	nm1969109	actor	\N	["Series Regular"]
tt0916054	nm1879820	actor	\N	["Series Regular"]
tt0916054	nm1729691	actor	\N	["Series Regular"]
tt0916054	nm1732957	director	\N	\N
tt0916054	nm1732957	writer	writer	\N
tt0916054	nm1729375	writer	writer	\N
tt0916054	nm1729691	writer	writer	\N
tt25866418	nm1579661	actress	\N	["Emu Johnson"]
tt25866418	nm2119056	actor	\N	["Efe Johnson"]
tt25866418	nm2118220	actor	\N	["Lucky Johnson"]
tt25866418	nm10742443	actress	\N	["Jennifer Johnson"]
tt25866418	nm6170428	actor	\N	["Tari Johnson"]
tt25866418	nm7713658	actress	\N	["Blessing Johnson"]
tt25866418	nm9348973	writer	\N	\N
tt25866418	nm10742446	writer	\N	\N
tt25866418	nm14078730	writer	\N	\N
tt25866418	nm6907281	writer	\N	\N
tt15217060	nm8360284	actress	\N	["Anna Furukawa"]
tt15217060	nm2601626	actor	\N	["Tomohisa Mitsui"]
tt15217060	nm3097216	actor	\N	["Wataru Igarashi"]
tt15217060	nm6425585	actor	\N	["Ryo Arisugawa"]
tt15217060	nm2196280	actress	\N	["Izumi Hidaka"]
tt15217060	nm3749739	actress	\N	["Mari Obara"]
tt15217060	nm2205131	actress	\N	["Mei Watanabe"]
tt15217060	nm9864890	actor	\N	["Yuta Mikami"]
tt15217060	nm12052012	actor	\N	["Ren Fujii"]
tt15217060	nm11906822	actor	\N	["Yoichiro Orino"]
tt23647666	nm0006842	actor	\N	\N
tt23647666	nm0025954	actress	\N	\N
tt23647666	nm0070748	actor	\N	\N
tt23647666	nm0087003	actress	\N	\N
tt23647666	nm0614971	actor	\N	["Fabio de los Sonetos"]
tt23647666	nm0657992	actress	\N	\N
tt23647666	nm0729153	actress	\N	["Sor Juana Inés de la Cruz"]
tt23647666	nm0920628	actress	\N	\N
tt23647666	nm0022172	director	\N	\N
tt23647666	nm0962727	director	\N	\N
tt23647666	nm3520318	writer	\N	\N
tt23647666	nm0658751	writer	\N	\N
tt23647666	nm0022172	producer	producer	\N
tt2617350	nm0023927	self	\N	["Self - Correspondent (segment \\"Taliban\\")"]
tt2617350	nm11064126	archive_footage	\N	["Self - Afghan Girl (segment \\"Taliban\\")"]
tt2617350	nm8898805	archive_footage	\N	["Self - Deputy Foreign Minister (segment \\"Taliban\\")"]
tt2617350	nm11597221	archive_footage	\N	["Self - Director, Oxfam (segment \\"Taliban\\")"]
tt2617350	nm6669184	archive_footage	\N	["Self - Afghan Woman (segment \\"Taliban\\")"]
tt2617350	nm4768063	archive_footage	\N	["Self - Afghan Expert (segment \\"Taliban\\")"]
tt2617350	nm11597222	archive_footage	\N	["Self - State Department Spokesman (segment \\"Taliban\\")"]
tt2617350	nm0800082	self	\N	["Self - Correspondent (segment \\"Suicide Bomber\\")"]
tt2617350	nm7825113	archive_footage	\N	["Self - Hamas Leader (segment \\"Suicide Bomber\\")"]
tt2617350	nm7825114	archive_footage	\N	["Self - Suicide Bomber Recruiter (segment \\"Suicide Bomber\\")"]
tt2617350	nm4169449	producer	producer	\N
tt7381354	nm3182969	actor	\N	["Pol"]
tt7381354	nm9277847	actor	\N	["La Vieja"]
tt7381354	nm9277846	director	director	\N
tt7381354	nm9277846	writer	story	\N
tt7381354	nm9166552	producer	producer	\N
tt7381354	nm9235559	producer	producer	\N
tt7381354	nm9277848	composer	composer	\N
tt7381354	nm9277849	composer	\N	\N
tt7381354	nm9034406	cinematographer	director of photography	\N
tt7381354	nm9277850	editor	\N	\N
tt6585060	nm2154735	actress	\N	["Orna"]
tt6585060	nm1151473	actress	\N	\N
tt6585060	nm1508141	actor	\N	\N
tt6585060	nm1505248	actress	\N	["Hedva"]
tt6585060	nm1096856	actor	\N	\N
tt6585060	nm1521028	actor	\N	\N
tt6585060	nm2183684	actress	\N	["Nurse"]
tt6585060	nm1132738	actor	\N	["Buzi"]
tt6585060	nm0578750	actor	\N	\N
tt6585060	nm1343419	actress	\N	\N
tt28418769	nm4268699	actor	\N	\N
tt28418769	nm15055304	actress	\N	\N
tt11278474	nm8473220	actress	\N	["Aisha"]
tt11278474	nm0000332	actor	\N	["Martin"]
tt11278474	nm0607865	actress	\N	["Sharon"]
tt11278474	nm9966974	actor	\N	["Levi"]
tt11278474	nm7650817	actress	\N	["Cari"]
tt11278474	nm6041919	actress	\N	["Emma"]
tt11278474	nm4158239	actress	\N	["Miss Hart"]
tt11278474	nm7036568	actress	\N	["Jenny"]
tt11278474	nm1839980	actor	\N	["Noah"]
tt11278474	nm5850871	actor	\N	["Abel"]
tt11278474	nm0362566	director	director	\N
tt11278474	nm0509340	writer	created by	\N
tt11278474	nm3726055	writer	created by	\N
tt11278474	nm1801321	writer	writer	\N
tt11278474	nm3308985	producer	producer	\N
tt11278474	nm2345212	composer	\N	\N
tt11278474	nm3622531	editor	\N	\N
tt11278474	nm3776598	production_designer	\N	\N
tt1033081	nm0504060	actor	\N	["Jack Walker"]
tt1033081	nm0817515	actress	\N	["Annie Walker"]
tt1033081	nm0064805	actor	\N	["Harry Hewitt"]
tt1033081	nm0449049	actress	\N	["Concepta Hewitt"]
tt1033081	nm0608995	actress	\N	["Lucille Hewitt"]
tt1033081	nm0141340	actress	\N	["Ena Sharples"]
tt1033081	nm0117177	actress	\N	["Minnie Caldwell"]
tt1033081	nm0138984	actress	\N	["Martha Longhurst"]
tt1033081	nm0730075	actor	\N	["Kenneth Barlow"]
tt1033081	nm0671471	actor	\N	["Frank Barlow"]
tt1033081	nm0573190	director	director	\N
tt1033081	nm0741220	writer	written by	\N
tt1033081	nm0912726	writer	creator	\N
tt1033081	nm0449958	producer	producer	\N
tt5137972	nm3080119	actor	\N	["Marco Polo"]
tt5137972	nm0938950	actor	\N	["Kublai Khan"]
tt5137972	nm0001040	actress	\N	["Empress Chabi"]
tt5137972	nm0269419	actor	\N	["Niccolò Polo"]
tt5137972	nm0950935	actor	\N	["Kaidu"]
tt5137972	nm0950620	actor	\N	["Nayan"]
tt5137972	nm3600780	actor	\N	["Prince Jingim"]
tt5137972	nm4356709	actress	\N	["Kokachin"]
tt5137972	nm0943179	actor	\N	["Hundred Eyes"]
tt5137972	nm2054113	actor	\N	["Ahmad"]
tt5137972	nm0002399	director	\N	\N
tt5137972	nm0299301	writer	created by	\N
tt5137972	nm4063095	writer	written by	\N
tt5137972	nm3250138	writer	executive story editor	\N
tt5137972	nm3083758	producer	producer	\N
tt5137972	nm0739063	producer	producer	\N
tt5137972	nm0003183	producer	producer	\N
tt5137972	nm2023699	composer	\N	\N
tt5137972	nm0621829	composer	\N	\N
tt5137972	nm0835371	cinematographer	director of photography	\N
tt5137972	nm0378028	editor	\N	\N
tt5137972	nm7283570	casting_director	casting_director	\N
tt5137972	nm4426070	casting_director	\N	\N
tt5137972	nm0453344	production_designer	\N	\N
tt19393640	nm13552278	actress	\N	["Riya"]
tt19393640	nm13552277	actress	\N	["Tia"]
tt19393640	nm13552277	director	director	\N
tt19393640	nm13552278	director	director	\N
tt19393640	nm13552277	writer	written by	\N
tt19393640	nm13552278	writer	written by	\N
tt19393640	nm13552277	editor	\N	\N
tt33086604	nm4910628	self	\N	["Self"]
tt33086604	nm4910628	self	\N	["Presenter"]
tt33086604	nm5006477	self	\N	["Self"]
tt33086604	nm5006477	self	\N	["Presenter"]
tt33086604	nm16418480	writer	\N	\N
tt13519572	nm4178979	self	\N	["Self"]
tt13519572	nm1100866	director	\N	\N
tt13519572	nm12089739	director	\N	\N
tt13519572	nm12089739	writer	\N	\N
tt13519572	nm1100866	producer	producer	\N
tt13519572	nm12089739	producer	producer	\N
tt13519572	nm1780331	cinematographer	\N	\N
tt15175624	nm7395332	actor	\N	["Jimmy Giggle"]
tt15175624	nm2934306	actor	\N	["Pirate Hootbeard"]
tt15175624	nm2934306	actor	\N	["Hootoclaws"]
tt15175624	nm2934306	actor	\N	["Hoot Pa"]
tt15175624	nm3913317	actor	\N	["Giggle Fangs"]
tt15175624	nm3913317	actor	\N	["Hoot Pa"]
tt15175624	nm5645692	actor	\N	["Hoot"]
tt15175624	nm10862251	actress	\N	["Hootabelle"]
tt15175624	nm9078036	director	\N	\N
tt15175624	nm9078037	producer	producer	\N
tt15175624	nm10862255	producer	producer	\N
tt15175624	nm10862254	producer	producer	\N
tt5899540	nm0019950	actor	\N	["Don Craig"]
tt5899540	nm0060248	actor	\N	["Dr. Walter Griffin"]
tt5899540	nm0114422	actor	\N	["Dr. Greg Peters"]
tt5899540	nm0279421	actress	\N	["Patti Griffin"]
tt5899540	nm0291710	actress	\N	["Amanda Howard"]
tt5899540	nm0004984	actress	\N	["Dr. Marlena Evans"]
tt5899540	nm0540103	actor	\N	["Bill Horton"]
tt5899540	nm0584356	actor	\N	["Dr. Rick Stevens"]
tt5899540	nm0697753	actress	\N	["Kate Winograd"]
tt5899540	nm3050857	actress	\N	["Jean Barton"]
tt5899540	nm0546068	writer	head writer	\N
tt5899540	nm0381246	producer	producer	\N
tt5899540	nm3031925	casting_director	\N	\N
tt14928162	nm11749579	actor	\N	\N
tt14928162	nm10427784	director	\N	\N
tt14928162	nm3998885	editor	\N	\N
tt14928162	nm5582541	editor	\N	\N
tt31925849	nm6235649	actor	\N	["Ghallaron the Pious"]
tt31925849	nm6235649	actor	\N	["Zandrekh"]
tt31925849	nm6235649	actor	\N	["Anvirr Keltoc"]
tt31925849	nm3499154	actress	\N	["Shas'O Maisos"]
tt31925849	nm8358149	actor	\N	["Varro Tigurius"]
tt31925849	nm8358149	actor	\N	["Arcandia Leontus"]
tt31925849	nm8358149	actor	\N	["Ghazghkull"]
tt31925849	nm0800190	actor	\N	["Sylar Hexscorn"]
tt31925849	nm0800190	actor	\N	["Ramatekh"]
tt31925849	nm0800190	actor	\N	["Necron Troops"]
tt31925849	nm5261058	actress	\N	["Morvenn Vahl"]
tt31925849	nm5261058	actress	\N	["Jain Zar"]
tt31925849	nm12246354	director	\N	\N
tt31925849	nm12246355	director	\N	\N
tt0231023	nm0005234	self	\N	["Self"]
tt0231023	nm0005126	self	\N	["Self - Host"]
tt0231023	nm0000230	self	\N	["Self"]
tt0231023	nm0001659	self	\N	["Self"]
tt0231023	nm0000392	self	\N	["Self"]
tt0231023	nm0000392	self	\N	["Self - Guest"]
tt0231023	nm0945920	actress	\N	["Host"]
tt0231023	nm1941430	actor	\N	["Host"]
tt0231023	nm4268419	actor	\N	["Host"]
tt0231023	nm6153896	self	\N	["Self"]
tt0231023	nm0000691	self	\N	["Self"]
tt9170956	nm6193000	self	\N	["Self"]
tt1099047	nm0280840	self	\N	["Self"]
tt1099047	nm0001613	self	\N	["Self"]
tt1099047	nm0758130	self	\N	["Self"]
tt0947424	nm1751789	actor	\N	["Narrator"]
tt0947424	nm1761346	actress	\N	["Housewife"]
tt0947424	nm2452370	writer	writer	\N
tt0947424	nm1939019	writer	senior writer	\N
tt0947424	nm1893767	producer	executive producer	\N
tt0947424	nm2452370	producer	producer	\N
tt0947424	nm1744406	cinematographer	\N	\N
tt0947424	nm0829716	cinematographer	\N	\N
tt0947424	nm1358898	editor	\N	\N
tt0947424	nm1992491	editor	\N	\N
tt15221538	nm1522872	actress	\N	\N
tt15221538	nm1559594	actor	\N	\N
tt15221538	nm1667501	actress	\N	\N
tt15221538	nm0433887	actress	\N	\N
tt15221538	nm12766418	director	\N	\N
tt15221538	nm12766418	writer	\N	\N
tt15221538	nm10045188	cinematographer	cinematographer	\N
tt15221538	nm11718425	editor	\N	\N
tt26915667	nm9907615	self	\N	["Self - Presenter"]
tt26915667	nm5628976	self	\N	["Self"]
tt26915667	nm9907615	director	\N	\N
tt26915667	nm9907615	writer	created by	\N
tt32718599	nm1295922	self	\N	["Self - Sportscaster"]
tt32718599	nm16283843	self	\N	["Self - Meteorologist"]
tt32718599	nm16290158	self	\N	["Self - Co-Anchor"]
tt32718599	nm16290070	self	\N	["Self - Co-Anchor"]
tt14712892	nm11534291	actress	\N	["Samantha"]
tt14712892	nm12112560	actor	\N	["Surya"]
tt14712892	nm0419691	actress	\N	["Annammal (Annapoorani)"]
tt14712892	nm8165203	actor	\N	["Raji"]
tt14712892	nm12112561	actress	\N	["Jayanthi"]
tt14712892	nm12559941	director	\N	\N
tt14712892	nm12559940	writer	\N	\N
tt14712892	nm12559939	writer	\N	\N
tt14712892	nm11090817	producer	producer	\N
tt14712892	nm10633834	composer	\N	\N
tt14712892	nm9820711	cinematographer	\N	\N
tt14712892	nm12447857	editor	\N	\N
tt14712892	nm12559942	editor	\N	\N
tt21812496	nm0798296	self	\N	["Self"]
tt21812496	nm0798296	self	\N	["Presenter"]
tt21812496	nm13695318	writer	\N	\N
tt21812496	nm1154937	writer	\N	\N
tt21812496	nm13827624	writer	\N	\N
tt21812496	nm0889375	writer	\N	\N
tt21812496	nm12137266	producer	producer	\N
tt21812496	nm8179306	producer	producer	\N
tt6072618	nm2337437	actress	\N	["Rosa Severo"]
tt6072618	nm0272899	actor	\N	["Daniel de Sousa"]
tt6072618	nm0217015	actor	\N	["Marcelo Barros"]
tt6072618	nm1067411	actress	\N	["Narcisa Severo"]
tt6072618	nm4531193	actress	\N	["Sofia de Sousa"]
tt6072618	nm4395431	actor	\N	["Bruno Severo"]
tt6072618	nm7308973	actor	\N	["Tiago Piedade"]
tt6072618	nm0723113	actor	\N	["Moisés da Paz"]
tt6072618	nm0392952	actress	\N	["Rute Barros"]
tt6072618	nm0284649	actor	\N	["Fialho Barros"]
tt6072618	nm2430776	director	\N	\N
tt6072618	nm2355477	director	\N	\N
tt6072618	nm0854104	director	\N	\N
tt6072618	nm3861808	director	\N	\N
tt6072618	nm3053362	writer	\N	\N
tt6072618	nm2792470	writer	head writer	\N
tt6072618	nm2384839	writer	\N	\N
tt6072618	nm2405419	writer	\N	\N
tt6072618	nm8394811	producer	producer	\N
tt6072618	nm0870410	cinematographer	\N	\N
tt1126391	nm0284454	actor	\N	["Davydov"]
tt1126391	nm1682614	actor	\N	["Captain Yuri Vasnetsov"]
tt1126391	nm0060694	actor	\N	["Frolan Neyasny"]
tt1126391	nm1979389	actress	\N	["Varya"]
tt1126391	nm0045388	actor	\N	["podporuchik Lubavin"]
tt1126391	nm1113851	actor	\N	["Semen Neyasny"]
tt1126391	nm0069783	actor	\N	["Beitiks"]
tt1126391	nm2605769	actor	\N	["Chang"]
tt1126391	nm0836534	actor	\N	["Krasovsky"]
tt1126391	nm1983189	actress	\N	["Gypsy"]
tt1126391	nm0284454	director	\N	\N
tt1126391	nm0643570	producer	producer	\N
tt1126391	nm2812375	producer	producer	\N
tt1126391	nm0797681	cinematographer	director of photography	\N
tt1269504	nm0632368	actor	\N	["David"]
tt1269504	nm0915154	actress	\N	["Brenda"]
tt1269504	nm0460891	actress	\N	["Karen"]
tt1269504	nm0510586	actress	\N	["Suzy"]
tt1269504	nm0446332	actor	\N	["Window cleaner"]
tt1269504	nm0613685	actor	\N	["Mr. Bradley"]
tt1269504	nm0746772	actress	\N	["Mrs. Budge"]
tt1269504	nm0857160	actor	\N	["Mr. Clark"]
tt1269504	nm0156254	writer	script	\N
tt1269504	nm0938132	writer	script	\N
tt1269504	nm0834079	producer	producer	\N
tt1269504	nm0852280	production_designer	\N	\N
tt2259113	nm0130370	actor	\N	["Garax"]
tt2259113	nm0137262	actor	\N	["Kshin"]
tt2259113	nm0137262	actor	\N	["Kshin"]
tt2259113	nm0270681	actor	\N	["Ming the Merciless"]
tt2259113	nm0427665	actor	\N	["Lothar"]
tt2259113	nm0504489	actor	\N	["Rick Gordon"]
tt2259113	nm0664064	actress	\N	["Jedda Walker"]
tt2259113	nm0675432	actress	\N	["Dynak X"]
tt2259113	nm0719115	actor	\N	["Mandrake the Magician"]
tt2259113	nm0724224	actor	\N	["Flash Gordon"]
tt2259113	nm0725052	actor	\N	["The Phantom"]
tt2259113	nm0316685	director	supervising director	\N
tt2259113	nm0498061	director	supervising director	\N
tt2259113	nm0608961	writer	written by	\N
tt2259113	nm0665089	writer	supervising story editor	\N
tt2259113	nm0539315	writer	story editor	\N
tt2259113	nm0730331	writer	story editor	\N
tt2259113	nm0013907	producer	producer	\N
tt2259113	nm0387672	producer	producer	\N
tt2259113	nm0404563	producer	producer	\N
tt2259113	nm14181127	producer	producer	\N
tt2259113	nm0002886	composer	composer	\N
tt2259113	nm0114728	editor	supervising editor	\N
tt14352700	nm1335616	actress	\N	["Narmada Mataprasad Shukla"]
tt14352700	nm3311444	actress	\N	["Payal"]
tt14352700	nm7309933	actor	\N	["Venugopal Kamath"]
tt14352700	nm5241810	actor	\N	["Mataprasad Shukla"]
tt14352700	nm3013513	actor	\N	["Vivek"]
tt14352700	nm10114485	actress	\N	["Gauri Madhusudan Sawant"]
tt14352700	nm10114485	actress	\N	["Gauri Shivkumar Shukla"]
tt14352700	nm8946495	actor	\N	["Shivkumar Mataprasad Shukla (Munna)"]
tt14352700	nm10509707	director	\N	\N
tt14352700	nm14923375	director	creative director	\N
tt14352700	nm8316961	writer	written by	\N
tt14352700	nm11543166	writer	screenplay	\N
tt14352700	nm8316961	producer	producer	\N
tt14352700	nm10427984	producer	producer	\N
tt2440974	nm4785660	director	\N	\N
tt2440974	nm4785660	writer	screenplay	\N
tt2440974	nm2389960	cinematographer	\N	\N
tt2440974	nm3014964	editor	\N	\N
tt7188458	nm4509512	self	\N	["Self"]
tt7188458	nm4509512	director	\N	\N
tt7188458	nm4509512	writer	\N	\N
tt7188458	nm4509512	producer	producer	\N
tt21807344	nm0050468	actress	\N	["Marge, Various"]
tt21807344	nm1747394	actor	\N	["Boris, Various"]
tt21807344	nm2412872	actress	\N	["Gigi, Various"]
tt21807344	nm0303379	actress	\N	["Bella, Various"]
tt21807344	nm0768885	actor	\N	["Richard the Narrator"]
tt21807344	nm1083489	director	\N	\N
tt21807344	nm1083489	writer	writer	\N
tt21807344	nm1599054	editor	\N	\N
tt7340268	nm9835258	actress	\N	["Simar"]
tt7340268	nm15377238	director	\N	\N
tt7340268	nm3476984	writer	\N	\N
tt7340268	nm2255484	writer	created by	\N
tt7340268	nm3479267	writer	\N	\N
tt7340268	nm2255484	producer	producer	\N
tt7340268	nm2273814	composer	\N	\N
tt7340268	nm2274213	editor	\N	\N
tt7340268	nm12626978	casting_director	\N	\N
tt9728862	nm0235494	self	\N	["Self"]
tt9728862	nm1450399	self	\N	["Self"]
tt9728862	nm0473253	self	\N	["Self - Host"]
tt9728862	nm8179959	self	\N	["Self"]
tt9728862	nm2189240	self	\N	["Self - Cook"]
tt9728862	nm3900092	director	\N	\N
tt9728862	nm10453676	producer	producer	\N
tt9728862	nm10456233	producer	producer	\N
tt9728862	nm3633230	editor	\N	\N
tt9728862	nm10449773	editor	\N	\N
tt9311350	nm5208210	actress	\N	["Elsa"]
tt9311350	nm9788436	actress	\N	["Fru Blomros"]
tt9311350	nm9788437	actor	\N	["Prästen Blomros"]
tt9311350	nm9788437	director	\N	\N
tt15730130	nm13047382	self	\N	["Self"]
tt15730130	nm3293278	self	\N	["Self"]
tt15730130	nm13047398	self	\N	["Self"]
tt25437988	nm3826010	self	\N	["Self - Presenter"]
tt25437988	nm10730102	director	\N	\N
tt25437988	nm10730102	writer	\N	\N
tt25437988	nm3826010	writer	\N	\N
tt25437988	nm12811673	composer	\N	\N
tt25437988	nm1701930	cinematographer	\N	\N
tt25437988	nm14420268	editor	\N	\N
tt19719968	nm12522623	actor	\N	["Ring Announcer"]
tt19719968	nm12522623	actor	\N	["Color Commentator"]
tt19719968	nm3386635	actor	\N	["Cash Flo"]
tt19719968	nm4092973	actor	\N	\N
tt19719968	nm0765715	actor	\N	\N
tt15459418	nm1201278	actor	\N	["Cesar Sangre"]
tt15459418	nm0786452	actress	\N	["Jean de Asis"]
tt15459418	nm0813098	actress	\N	["Alfonsita Sangre"]
tt15459418	nm1931428	director	\N	\N
tt15459418	nm2038953	writer	writer	\N
tt15459418	nm1840982	writer	writer	\N
tt21840660	nm1909970	director	\N	\N
tt7626414	nm5001500	self	\N	["Self"]
tt7626414	nm2210495	cinematographer	\N	\N
tt7626414	nm2210495	editor	\N	\N
tt9713888	nm1402143	actress	\N	\N
tt9713888	nm0438632	actor	\N	\N
tt9713888	nm0025611	director	\N	\N
tt9713888	nm4540894	director	\N	\N
tt9713888	nm1667633	director	director	\N
tt9713888	nm1966600	director	creative director	\N
tt9713888	nm1837830	writer	dialogue	\N
tt9713888	nm3813753	writer	\N	\N
tt9713888	nm7201991	writer	screenplay	\N
tt9713888	nm7559936	writer	\N	\N
tt9713888	nm0438506	producer	producer	\N
tt8177954	nm0194567	actor	\N	["Nicolás"]
tt8177954	nm0345999	actress	\N	["Magali"]
tt8177954	nm0599269	actress	\N	["María Luisa"]
tt8177954	nm0749331	actress	\N	["Gloria"]
tt8177954	nm0749336	actress	\N	["Juana Iris"]
tt8177954	nm0874248	actor	\N	["Bernardo"]
tt8177954	nm0145114	director	\N	\N
tt8177954	nm2200779	writer	story	\N
tt8177954	nm0840805	producer	producer	\N
tt8177954	nm0879391	producer	producer	\N
tt8177954	nm0890672	cinematographer	\N	\N
tt35051778	nm7510174	self	\N	["Self - Performer"]
tt35051778	nm9785283	self	\N	["Self - Performer"]
tt35051778	nm11319725	self	\N	["Themselves - Performers"]
tt35051778	nm13066825	self	\N	["Themselves - Performers"]
tt35051778	nm13406689	self	\N	["Themselves - Performers"]
tt35051778	nm16632056	self	\N	["Themselves - Performers"]
tt35051778	nm6327727	self	\N	["Self - Performer"]
tt35051778	nm13361541	self	\N	["Themselves - Performers"]
tt35051778	nm10302195	self	\N	["Self - Performer"]
tt35051778	nm1041699	self	\N	["Self - Host"]
tt24908102	nm7572530	actress	\N	\N
tt24908102	nm10244056	actor	\N	\N
tt24908102	nm13368880	actress	\N	\N
tt7858508	nm1251993	director	\N	\N
tt7649806	nm0729210	actress	\N	["Elena Robles"]
tt7649806	nm0658760	actor	\N	["Ulises Medina"]
tt7649806	nm0043609	actor	\N	["Raimundo Villarreal"]
tt7649806	nm0592732	actress	\N	["Thelma Villarreal de Vargaslugo"]
tt7649806	nm0131060	director	\N	\N
tt7649806	nm0721208	director	\N	\N
tt7649806	nm0761055	director	\N	\N
tt7649806	nm0580847	writer	scripts	\N
tt7649806	nm0305653	writer	scripts	\N
tt7649806	nm0429079	writer	idea	\N
tt7649806	nm0131060	writer	idea	\N
tt7649806	nm0131060	producer	producer	\N
tt7649806	nm0429079	producer	producer	\N
tt7649806	nm1444176	composer	\N	\N
tt7649806	nm0282825	editor	\N	\N
tt7649806	nm0844812	editor	\N	\N
tt7649806	nm1618940	casting_director	\N	\N
tt0039733	nm0336336	actor	\N	["Prince of Wales"]
tt0039733	nm0397415	actress	\N	["Maria Fitzherbert"]
tt0039733	nm0052203	actor	\N	["Charles Fox"]
tt0039733	nm0779540	actress	\N	["Lady Jersey"]
tt0039733	nm0163515	actress	\N	["Duchess of Devonshire"]
tt0039733	nm0884776	actor	\N	["King George III"]
tt0039733	nm0874298	actor	\N	["Richard Brinsley Sheridan"]
tt0039733	nm0835738	actor	\N	["Duke of Bedford"]
tt0039733	nm0370848	actress	\N	["Lady Sefton"]
tt0039733	nm0099082	actress	\N	["Norris"]
tt0039733	nm0876440	director	\N	\N
tt0039733	nm0141988	writer	novel: "Princess Fitz"	\N
tt0039733	nm0876440	writer	screenplay: adapted from the novel	\N
tt0039733	nm0413800	producer	producer	\N
tt0039733	nm0005965	composer	\N	\N
tt0039733	nm0933549	cinematographer	\N	\N
tt0039733	nm0368380	editor	editor	\N
tt12989780	nm5611699	actor	\N	["Dev"]
tt12989780	nm5893456	actress	\N	["Pavithira"]
tt12989780	nm10045188	director	\N	\N
tt12989780	nm11553606	writer	\N	\N
tt12989780	nm11809197	writer	\N	\N
tt12989780	nm11512577	writer	\N	\N
tt12989780	nm11809198	writer	\N	\N
tt12989780	nm11809200	producer	producer	\N
tt12989780	nm10429955	producer	producer	\N
tt12989780	nm11809199	producer	producer	\N
tt12989780	nm11809201	cinematographer	\N	\N
tt12989780	nm11809202	cinematographer	\N	\N
tt12989780	nm11809203	editor	\N	\N
tt1705051	nm4016550	actor	\N	["John Mac"]
tt1705051	nm4014740	actor	\N	["Sean"]
tt1705051	nm4016661	director	\N	\N
tt1705051	nm4016661	writer	writer	\N
tt1705051	nm4016661	producer	producer	\N
tt1705051	nm3329451	cinematographer	\N	\N
tt1705051	nm4016661	editor	\N	\N
tt14622056	nm12557696	self	\N	["Themselves"]
tt14622056	nm1672044	director	\N	\N
tt14622056	nm1672044	writer	adaptation	\N
tt14622056	nm0782139	writer	book	\N
tt14622056	nm12557696	writer	poems	\N
tt15414696	nm0853456	self	\N	["Self - Host"]
tt15414696	nm0239447	self	\N	["Self"]
tt26731393	nm8012253	writer	writer	\N
tt26731393	nm4713632	producer	producer	\N
tt10835872	nm3619555	director	series director	\N
tt10835872	nm6231597	writer	episode writer	\N
tt10835872	nm4319064	writer	composition	\N
tt10835872	nm6231595	writer	composition	\N
tt10835872	nm6231590	composer	composer	\N
tt10835872	nm0299187	editor	editor	\N
tt0559186	nm0001813	actor	\N	["Dr. Mark Sloan"]
tt0559186	nm0000281	actor	\N	["Dr. Jack Stewart"]
tt0559186	nm0005389	actress	\N	["Amanda Bentley-Livingston"]
tt0559186	nm0886719	actor	\N	["Steve Sloan"]
tt0559186	nm0875700	actor	\N	["Norman Briggs"]
tt0559186	nm0355485	actress	\N	["Nurse Delores Mitchell"]
tt0559186	nm0001411	actor	\N	["Roland Spear"]
tt0559186	nm0005191	actress	\N	["Cindy Martin"]
tt0559186	nm0820658	actor	\N	["Sammy Garrett"]
tt0559186	nm0000924	actress	\N	["Shannon Thatcher"]
tt0559186	nm0638527	director	\N	\N
tt0559186	nm0120995	writer	creator	\N
tt0559186	nm0176689	writer	written by	\N
tt0559186	nm0557952	producer	producer	\N
tt0559186	nm0825720	producer	producer	\N
tt0559186	nm0616832	composer	composer	\N
tt0559186	nm0569351	cinematographer	director of photography	\N
tt0559186	nm0699433	editor	\N	\N
tt0559186	nm0033164	casting_director	\N	\N
tt0559186	nm0821430	production_designer	\N	\N
tt15464032	nm14438501	actor	\N	["Raj"]
tt15464032	nm12906273	actor	\N	["Coach Biff"]
tt15464032	nm11347141	actor	\N	["Sammy"]
tt15464032	nm12714298	actress	\N	["Tara"]
tt15464032	nm4467500	actor	\N	["Dr. Kunal"]
tt15464032	nm5197715	director	director	\N
tt15464032	nm2770167	writer	written by	\N
tt15464032	nm7032871	writer	developed by	\N
tt15464032	nm1002478	casting_director	\N	\N
tt16138628	nm11713259	director	\N	\N
tt16138628	nm11713259	writer	\N	\N
tt0625535	nm0051948	actor	\N	["2nd Boy"]
tt0625535	nm0103048	actor	\N	["Sam"]
tt0625535	nm0106248	actor	\N	["Corey Stuart"]
tt0625535	nm1850934	actor	\N	["1st Boy"]
tt0625535	nm0268043	actor	\N	["Frank Driscoll"]
tt0625535	nm1558595	actress	\N	["Lassie"]
tt0625535	nm0681055	actor	\N	["Joe"]
tt0625535	nm0257638	director	\N	\N
tt0625535	nm0164593	writer	writer	\N
tt0625535	nm0460893	writer	character	\N
tt0625535	nm0325485	producer	producer	\N
tt0625535	nm0779608	composer	\N	\N
tt0625535	nm0280221	cinematographer	cinematographer	\N
tt0625535	nm0172087	editor	\N	\N
tt0625535	nm0166429	casting_director	\N	\N
tt4102584	nm6826961	actress	\N	["Ni're"]
tt4102584	nm5667149	actor	\N	["Trance"]
tt4102584	nm6844462	actress	\N	["E'lan"]
tt4102584	nm6380394	actor	\N	["Agent Johnson"]
tt4102584	nm6826967	actor	\N	["AGENT #2"]
tt4102584	nm6826963	actress	\N	["Queen Rain"]
tt4102584	nm6826962	actor	\N	["E'thon"]
tt4102584	nm6826964	actress	\N	["AGENT SARAH BOWERS"]
tt4102584	nm6826965	actor	\N	["The Shadow"]
tt4102584	nm6509621	director	\N	\N
tt4102584	nm6509621	writer	written by	\N
tt4102584	nm6509621	producer	producer	\N
tt4102584	nm6509623	composer	\N	\N
tt4102584	nm6509621	cinematographer	\N	\N
tt4102584	nm6509621	editor	\N	\N
tt17488280	nm1067426	actress	\N	\N
tt17488280	nm0920265	actor	\N	\N
tt17488280	nm13289442	producer	producer	\N
tt17488280	nm13289441	producer	producer	\N
tt17488280	nm2385841	editor	\N	\N
tt17488280	nm6795835	editor	\N	\N
tt32306806	nm8622460	self	\N	["Self"]
tt5556050	nm1185906	self	\N	["Self - Host"]
tt5556050	nm3613357	self	\N	["Self"]
tt5556050	nm3492078	self	\N	["Self"]
tt5556050	nm2227436	editor	\N	\N
tt5556050	nm1859013	editor	\N	\N
tt5556050	nm14586087	editor	\N	\N
tt23748734	nm12891225	actor	\N	\N
tt23748734	nm10093673	actress	\N	\N
tt23748734	nm8197292	director	\N	\N
tt23748734	nm11090817	producer	producer	\N
tt23748734	nm13574883	cinematographer	\N	\N
tt1943093	nm3386950	self	\N	["Self"]
tt6459858	nm1846452	actress	\N	["Mayra Magiels"]
tt6459858	nm0211356	actress	\N	["Judith Van Santen"]
tt6459858	nm1905651	actress	\N	["Kaat Bomans"]
tt6459858	nm0351630	actress	\N	["Meester Karin Baert"]
tt6459858	nm2637915	actress	\N	["Paulien Snackaert"]
tt6459858	nm0580474	actress	\N	["Simonne Bomans-Backx"]
tt6459858	nm0595500	actor	\N	["Leo Vertongen"]
tt6459858	nm0685053	actress	\N	["Nancy De Grote"]
tt6459858	nm6049913	actress	\N	["Tamara Vereken"]
tt6459858	nm5593920	actress	\N	["Emma"]
tt6459858	nm3350598	director	\N	\N
tt6459858	nm0941911	writer	head writer	\N
tt6459858	nm1823837	producer	producer	\N
tt6459858	nm7816833	producer	producer	\N
tt6964766	nm3481079	actor	\N	\N
tt6964766	nm3503959	actor	\N	\N
tt6964766	nm2925362	actress	\N	\N
tt6964766	nm0589839	actress	\N	\N
tt6964766	nm0213595	director	\N	\N
tt1962479	nm2930578	self	\N	["Self - Host"]
tt1962479	nm3223543	self	\N	["Self"]
tt16478966	nm12789177	actor	\N	["Viniccius14"]
tt16478966	nm12789177	producer	producer	\N
tt7660616	nm6584709	self	\N	["Self - Host"]
tt7660616	nm0302916	self	\N	["Self"]
tt12533114	nm9651535	actor	\N	["Abel 34758"]
tt12533114	nm10995987	actor	\N	["Thomas Leviathan"]
tt12533114	nm5741663	actress	\N	["Pi 31415"]
tt12533114	nm7880058	director	\N	\N
tt12533114	nm7880058	writer	\N	\N
tt12533114	nm9419074	writer	\N	\N
tt12533114	nm11668898	writer	\N	\N
tt12533114	nm6756016	producer	producer	\N
tt8713632	nm8166302	director	\N	\N
tt8713632	nm8166302	writer	\N	\N
tt8713632	nm9507961	writer	\N	\N
tt8713632	nm10778931	writer	\N	\N
tt8713632	nm8166302	producer	producer	\N
tt12009126	nm5118473	self	\N	["Self - Host"]
tt12009126	nm3628316	self	\N	["Self - Co-Host"]
tt12009126	nm9851116	self	\N	["Self"]
tt12009126	nm5236868	self	\N	["Self"]
tt12009126	nm5172842	self	\N	["Self"]
tt12418382	nm4101155	self	\N	["Self - Host"]
tt12418382	nm0008745	self	\N	["Self"]
tt12418382	nm0336565	self	\N	["Self"]
tt12418382	nm0367526	self	\N	["Self"]
tt12418382	nm0398274	self	\N	["Self"]
tt12418382	nm0567800	self	\N	["Self"]
tt12418382	nm2338213	self	\N	["Self"]
tt12418382	nm0809574	self	\N	["Self"]
tt12418382	nm0829781	self	\N	["Self"]
tt14491504	nm1367252	actress	\N	\N
tt14491504	nm5152674	director	\N	\N
tt8925042	nm0409291	actress	\N	["Arleen Nazon"]
tt8925042	nm0411794	actor	\N	["Doroba Kuzwayo"]
tt8925042	nm0476415	actor	\N	["Milos Karppi"]
tt8925042	nm1067368	actor	\N	["Michael Colmatta"]
tt8925042	nm1289399	actor	\N	["Clyde Bettany"]
tt8925042	nm0408086	director	\N	\N
tt8925042	nm6489826	writer	screenplay	\N
tt8925042	nm0866707	writer	creator	\N
tt8925042	nm1911656	composer	\N	\N
tt11242480	nm0278306	self	\N	["Self - Presenter"]
tt11242480	nm0011516	archive_footage	\N	["Len Fairclough"]
tt11242480	nm0055289	archive_footage	\N	["Mavis Riley"]
tt11242480	nm0056618	archive_footage	\N	["Alec Gilroy"]
tt11242480	nm0064805	archive_footage	\N	["Harry Hewitt"]
tt11242480	nm0117177	archive_footage	\N	["Minnie Caldwell"]
tt11242480	nm0171576	archive_footage	\N	["Victor Pendlebury"]
tt11242480	nm0220263	archive_footage	\N	["Emily Nugent"]
tt11242480	nm0238107	archive_footage	\N	["Betty Turpin"]
tt11242480	nm0329591	archive_footage	\N	["Bet Lynch"]
tt11242480	nm0272431	director	director	\N
tt10471826	nm13291492	actor	\N	["Cevher Karatay"]
tt10471826	nm3117991	actress	\N	["Suna"]
tt3441310	nm7503223	actress	\N	["Hwang Ok-rim"]
tt3441310	nm11752931	actress	\N	["North Korean kid"]
tt3441310	nm6190770	actor	\N	["Yong-jun Hyun"]
tt3441310	nm3498542	actor	\N	["Cho Han-cheul"]
tt3441310	nm1955957	actress	\N	["Sunhee Park"]
tt3441310	nm4776658	actress	\N	["Ryu Hwa-young"]
tt3441310	nm7709173	actor	\N	["Chun-Duk"]
tt3441310	nm3393029	actress	\N	["Han Eun-ok"]
tt3441310	nm1856960	director	\N	\N
tt3441310	nm1856960	writer	writer	\N
tt3441310	nm6190769	cinematographer	\N	\N
tt3441310	nm5261851	editor	\N	\N
tt2706964	nm0020334	self	\N	["Self - Host"]
tt2706964	nm3580968	editor	\N	\N
tt8003492	nm0009484	actress	\N	["Martha"]
tt8003492	nm0554578	actress	\N	["Gabriel"]
tt8003492	nm0554578	actress	\N	["Gabriela"]
tt8003492	nm0554830	actor	\N	["Benito"]
tt8003492	nm0729473	actor	\N	["Carlos"]
tt8003492	nm0879391	director	\N	\N
tt8003492	nm0799183	writer	story	\N
tt8003492	nm0889768	writer	story	\N
tt8003492	nm0523608	producer	producer	\N
tt8003492	nm0994449	cinematographer	\N	\N
tt20219118	nm12562881	actress	\N	\N
tt20219118	nm11374614	actor	\N	\N
tt20219118	nm11372053	director	\N	\N
tt20219118	nm12562878	writer	\N	\N
tt20219118	nm12526580	writer	\N	\N
tt20219118	nm12562879	writer	\N	\N
tt20219118	nm12562880	producer	producer	\N
tt20219118	nm11372059	cinematographer	\N	\N
tt20219118	nm12562883	editor	\N	\N
tt20219118	nm12562882	editor	\N	\N
tt11561864	nm10641651	actress	\N	\N
tt11561864	nm10641653	actress	\N	\N
tt11561864	nm6013238	actor	\N	\N
tt11561864	nm10641652	actor	\N	\N
tt11561864	nm10625519	director	\N	\N
tt11561864	nm10641654	writer	\N	\N
tt11561864	nm10641655	producer	producer	\N
tt11561864	nm10641656	composer	\N	\N
tt16251418	nm11315629	self	\N	["Self"]
tt0363410	nm0191786	actress	\N	["Nimet"]
tt0363410	nm0476011	actor	\N	["Sefik Bey"]
tt0363410	nm0258905	actor	\N	["Talat Bey"]
tt0363410	nm0015081	actor	\N	["Mahmut Sevket Pasa"]
tt0363410	nm0648601	actor	\N	["Abdülhamit"]
tt0363410	nm0019385	actor	\N	["Tegmen Arif"]
tt0363410	nm0476006	actor	\N	["Mehmet Sehabettin Pasa"]
tt0363410	nm0315442	actor	\N	["Karagöz Oynatan"]
tt0363410	nm0015765	actor	\N	\N
tt0363410	nm0654874	actor	\N	["Ismail Kemal"]
tt0363410	nm1015909	director	\N	\N
tt0363410	nm1015909	writer	writer	\N
tt0363410	nm3620175	writer	novel	\N
tt0363410	nm1496999	producer	producer	\N
tt0363410	nm1761449	producer	producer	\N
tt0363410	nm0783013	composer	\N	\N
tt0363410	nm0609827	cinematographer	director of photography	\N
tt0363410	nm1505628	editor	\N	\N
tt0363410	nm0880418	production_designer	production_designer	\N
tt1618645	nm1815173	self	\N	["Self"]
tt1618645	nm2378050	self	\N	["Self"]
tt1618645	nm3787030	self	\N	["Self"]
tt1618645	nm3017474	self	\N	["Self"]
tt1618645	nm2380048	self	\N	["Self"]
tt1618645	nm1618276	self	\N	["Self"]
tt1618645	nm3608873	self	\N	["Self"]
tt1618645	nm2066342	self	\N	["Self"]
tt1618645	nm2673123	self	\N	["Self"]
tt1618645	nm3786801	self	\N	["Self"]
tt14330574	nm5213242	actress	\N	["Meggy Spletzer"]
tt14330574	nm5213242	actress	\N	["Shadow Meggy"]
tt14330574	nm5261058	actress	\N	["Auri Bori"]
tt14330574	nm10914909	actress	\N	["Additional Voices"]
tt14330574	nm10914909	actress	\N	["Mayora Bora"]
tt14330574	nm10914909	actress	\N	["Russet"]
tt14330574	nm7623340	actor	\N	["Aziz Yousi"]
tt14330574	nm4009492	actor	\N	["Funky Force"]
tt14330574	nm4009492	actor	\N	["Chet"]
tt14330574	nm4009492	actor	\N	["Doy"]
tt14330574	nm6442558	actress	\N	["Whisk"]
tt14330574	nm9072464	actor	\N	["Mash"]
tt14330574	nm9072464	actor	\N	["Additional Voices"]
tt14330574	nm9379615	actor	\N	["Yam"]
tt14330574	nm9379615	actor	\N	["Additional Voices"]
tt14330574	nm3701984	actor	\N	["Benedict Cumbersnatch"]
tt14330574	nm3701984	actor	\N	["Mysterious Voice"]
tt14330574	nm12070412	actor	\N	["Duke"]
tt14330574	nm9379615	writer	creator	\N
tt3586122	nm5252402	actor	\N	["Tyler"]
tt3586122	nm5174425	actor	\N	["Rohit"]
tt3586122	nm2772547	director	\N	\N
tt3586122	nm2772547	writer	\N	\N
tt3586122	nm5174425	writer	writer	\N
tt3586122	nm2772547	cinematographer	\N	\N
tt3586122	nm2772547	editor	\N	\N
tt0486023	nm4781933	actor	\N	["Narrator"]
tt0486023	nm2078737	director	\N	\N
tt0486023	nm4782620	writer	commentary	\N
tt0486023	nm2078737	producer	producer	\N
tt0486023	nm4781726	composer	\N	\N
tt0486023	nm2078737	cinematographer	\N	\N
tt0486023	nm4781726	editor	\N	\N
tt17686678	nm11172622	actor	\N	["Yaman"]
tt17686678	nm10176695	actress	\N	["Seher"]
tt17686678	nm11679029	actor	\N	["Yusuf"]
tt17686678	nm9605865	actor	\N	["Ali"]
tt17686678	nm7817987	actor	\N	["Ziya"]
tt17686678	nm11446041	actress	\N	["Ikbal"]
tt17686678	nm10045513	actor	\N	["Selim"]
tt17686678	nm11679032	actress	\N	["Zuhal"]
tt17686678	nm11679033	actress	\N	["Neslihan"]
tt17686678	nm5642132	actor	\N	["Cenger"]
tt17686678	nm10497760	director	\N	\N
tt17686678	nm2375975	director	\N	\N
tt17686678	nm11871999	writer	\N	\N
tt17686678	nm9918690	producer	producer	\N
tt17686678	nm11871996	composer	\N	\N
tt17686678	nm0015494	editor	\N	\N
tt21106494	nm6758108	actor	\N	\N
tt21106494	nm8754534	actress	\N	["Deepa (2019-)"]
tt21106494	nm10430000	director	\N	\N
tt21106494	nm11637689	director	\N	\N
tt21106494	nm10189547	writer	\N	\N
tt21106494	nm10189548	writer	dialogue	\N
tt21106494	nm10189550	producer	producer	\N
tt21106494	nm10189549	producer	producer	\N
tt21106494	nm14183972	producer	producer	\N
tt21106494	nm9525570	composer	\N	\N
tt21106494	nm14183962	composer	\N	\N
tt21106494	nm2361399	composer	\N	\N
tt21106494	nm10189551	cinematographer	\N	\N
tt33412589	nm0499253	actor	\N	["Johnny Legend (Host)"]
tt13102558	nm11890088	actor	\N	["Gayathri"]
tt13102558	nm11890086	actress	\N	["Oviya"]
tt13102558	nm11890087	actor	\N	["Surya"]
tt13102558	nm11894179	director	\N	\N
tt13102558	nm11890083	writer	\N	\N
tt13102558	nm11890085	producer	producer	\N
tt15074516	nm0032643	self	\N	["Self - Host"]
tt15074516	nm2407536	director	\N	\N
tt15074516	nm2155730	director	\N	\N
tt15074516	nm0032643	writer	\N	\N
tt15074516	nm6565923	writer	\N	\N
tt15074516	nm12728169	writer	\N	\N
tt15074516	nm2410457	writer	\N	\N
tt15074516	nm6565921	producer	producer	\N
tt15074516	nm12728249	producer	producer	\N
tt15074516	nm4485984	producer	producer	\N
tt15074516	nm5560735	producer	producer	\N
tt15074516	nm3384794	composer	\N	\N
tt10761844	nm1541515	actor	\N	["Jack Bastoni"]
tt10761844	nm5075954	director	\N	\N
tt6172450	nm1186975	self	\N	["Self"]
tt6172450	nm0663617	self	\N	["Self"]
tt5178078	nm7630511	self	\N	["Self - Child"]
tt5178078	nm7630512	self	\N	["Self - Child"]
tt5178078	nm0038607	self	\N	["Self - Child"]
tt5178078	nm7630513	self	\N	["Self - Child"]
tt5178078	nm5945171	self	\N	["Self - Child"]
tt5178078	nm5002790	self	\N	["Self - Child"]
tt5178078	nm7630514	self	\N	["Self - Child"]
tt5178078	nm7630515	self	\N	["Self - Child"]
tt5178078	nm7630516	self	\N	["Self - Child"]
tt5178078	nm7630517	self	\N	["Self - Child"]
tt5178078	nm7584987	director	\N	\N
tt5178078	nm7635288	cinematographer	\N	\N
tt5178078	nm0345012	cinematographer	\N	\N
tt5178078	nm5286833	cinematographer	\N	\N
tt5178078	nm7635289	cinematographer	\N	\N
tt5178078	nm1367102	editor	\N	\N
tt5178078	nm4140854	editor	\N	\N
tt7850788	nm0010253	actress	\N	["Rita"]
tt7850788	nm0331243	actor	\N	["Iván"]
tt7850788	nm0584795	actress	\N	["Alejandra"]
tt7850788	nm0614971	actor	\N	["Rafael"]
tt7850788	nm0679070	actress	\N	["Sofía"]
tt7850788	nm0811785	actor	\N	["Daniel"]
tt7850788	nm0207011	director	\N	\N
tt7850788	nm1289999	writer	script	\N
tt7850788	nm1122534	writer	story	\N
tt7850788	nm0122730	producer	producer	\N
tt7850788	nm0148861	producer	producer	\N
tt7850788	nm0379862	producer	producer	\N
tt7850788	nm0758353	producer	producer	\N
tt7850788	nm0316037	composer	\N	\N
tt28328229	nm11073538	actress	\N	["Nada"]
tt6617024	nm1451946	self	\N	["Self"]
tt6617024	nm4697899	self	\N	["Self"]
tt6617024	nm1451946	director	\N	\N
tt6617024	nm1451946	writer	\N	\N
tt6617024	nm2510421	producer	producer	\N
tt6617024	nm2511460	cinematographer	\N	\N
tt6617024	nm8167816	editor	\N	\N
tt20764916	nm12546077	actor	\N	\N
tt20764916	nm13423178	actor	\N	\N
tt10579682	nm2790534	actor	\N	\N
tt10579682	nm2238506	actor	\N	\N
tt10579682	nm8070585	actress	\N	\N
tt10579682	nm5427368	actor	\N	\N
tt10579682	nm0270820	actor	\N	\N
tt10579682	nm15396892	actress	\N	\N
tt10579682	nm5684687	actor	\N	\N
tt10579682	nm10721766	actress	\N	\N
tt5762262	nm2539223	actor	\N	["Bartek Miedzianowski"]
tt5762262	nm1727801	actor	\N	["Artur Kulczycki"]
tt5762262	nm2551018	actor	\N	["Patryk Skalsky"]
tt5762262	nm3872358	actor	\N	["Marcin Chmielarz"]
tt5762262	nm4220015	actress	\N	["Ola Król"]
tt5762262	nm7146951	actor	\N	["Seller"]
tt5762262	nm1801973	actress	\N	["Kinga Zukowska"]
tt5762262	nm0804123	actress	\N	["Teresa Zukowska"]
tt5762262	nm0866520	actor	\N	["Marek Zukowski"]
tt5762262	nm7333140	actor	\N	["Tomek Zukowski"]
tt12457138	nm1877853	self	\N	["Self - Host"]
tt12457138	nm3205512	self	\N	["Self - Arithmetician"]
tt12457138	nm1735069	self	\N	["Self - Lexicographer"]
tt12457138	nm1658925	self	\N	["Self - Dictionary Corner"]
tt15731634	nm5728078	actress	\N	["Yuuki, Yuuna"]
tt15731634	nm4986321	actress	\N	["Mimori Togo"]
tt15731634	nm4986321	actress	\N	["Sumi Washio"]
tt15731634	nm4679086	actress	\N	["Inubouzaki, Fuu"]
tt15731634	nm3961240	actress	\N	["Inubouzaki, Itsuki"]
tt15731634	nm5408961	actress	\N	["Karin Miyoshi"]
tt15731634	nm8703415	writer	creator: original plan	\N
tt27130766	nm5573564	actress	\N	["Anu"]
tt27130766	nm1267637	actress	\N	["Padmavathi amma"]
tt27130766	nm13430734	actress	\N	["Chitra"]
tt27130766	nm10679384	actor	\N	["Maya"]
tt27130766	nm7032764	actress	\N	["Jyothirmayi"]
tt27130766	nm13594978	director	\N	\N
tt27130766	nm13594977	writer	\N	\N
tt27130766	nm5066571	composer	\N	\N
tt27130766	nm9505970	cinematographer	\N	\N
tt27130766	nm14649960	editor	\N	\N
tt27130766	nm14649959	editor	\N	\N
tt19368930	nm7502119	actor	\N	["Kamu Hatouchi"]
tt19368930	nm9940378	actor	\N	["Tsubaki Hatouchi"]
tt19368930	nm13872953	actor	\N	["Member"]
tt19368930	nm7612988	actress	\N	["Hiyori Munenashi"]
tt19368930	nm0648768	actor	\N	["Tatsumi Ishinome"]
tt19368930	nm11879500	actor	\N	["Member"]
tt19368930	nm3646875	actress	\N	["Miyuki Okiari"]
tt19368930	nm5329879	actress	\N	["Yomogi Hatouchi"]
tt19368930	nm3899473	actress	\N	["Nagi Kawabashi"]
tt19368930	nm2760504	actress	\N	["Iris"]
tt4109186	nm4684998	actor	\N	["Patrick"]
tt4109186	nm5959674	actress	\N	["Rebecca"]
tt4109186	nm6832088	actress	\N	["Anita"]
tt4109186	nm4684765	actor	\N	["Josh"]
tt4109186	nm6313699	actor	\N	["Shawn"]
tt4109186	nm4393972	actor	\N	["Nikolai"]
tt4109186	nm6564637	actor	\N	["Andrew"]
tt4109186	nm6832114	actress	\N	["Megan"]
tt4109186	nm4684765	director	\N	\N
tt4109186	nm6313699	director	\N	\N
tt4109186	nm4684998	writer	\N	\N
tt4109186	nm5959674	writer	\N	\N
tt4109186	nm6832088	writer	\N	\N
tt4109186	nm4684765	writer	\N	\N
tt4109186	nm5959674	producer	producer	\N
tt4109186	nm4684765	producer	producer	\N
tt4109186	nm6313699	producer	producer	\N
tt4109186	nm4684998	editor	\N	\N
tt12040496	nm11377965	actor	\N	["Prof. Baldelli"]
tt12040496	nm4252974	director	\N	\N
tt12040496	nm3828158	writer	writer	\N
tt12040496	nm10549346	writer	writer	\N
tt12040496	nm4868791	writer	writer	\N
tt0173115	nm0313695	director	\N	\N
tt0173115	nm0323679	cinematographer	\N	\N
tt20518086	nm4733752	actress	\N	["Kiff Chatterley"]
tt20518086	nm2750372	actor	\N	["Barry Buns"]
tt20518086	nm2965747	actor	\N	["Principal Secretary"]
tt20518086	nm3940521	actor	\N	["Martin Chatterley"]
tt20518086	nm2274847	actress	\N	["Beryl Chatterley"]
tt20518086	nm2274847	actress	\N	["Additional Voices"]
tt20518086	nm0536281	actress	\N	["Miss Deer Teacher"]
tt20518086	nm7215504	actress	\N	["Candle Fox"]
tt20518086	nm1344302	actress	\N	["Mary Buns"]
tt20518086	nm3783235	actress	\N	["Terri Buns"]
tt20518086	nm7018662	actor	\N	["Harry Buns"]
tt20518086	nm2524642	director	\N	\N
tt20518086	nm9473090	writer	created by	\N
tt20518086	nm2965747	writer	created by	\N
tt20518086	nm6847233	writer	written by	\N
tt20518086	nm0651692	writer	story editor	\N
tt20518086	nm2695142	composer	\N	\N
tt20518086	nm0174389	editor	\N	\N
tt20518086	nm0238397	casting_director	\N	\N
tt20518086	nm4889447	casting_director	\N	\N
tt32813893	nm0240616	self	\N	["Self - Co-Host"]
tt32813893	nm2134385	self	\N	["Self - Co-Host"]
tt32813893	nm10409933	self	\N	["Self - Talk Show Host"]
tt11719276	nm12349549	actor	\N	["Will"]
tt11719276	nm11321193	actor	\N	["Kenneth"]
tt11719276	nm11314871	actor	\N	["Danny"]
tt11719276	nm11321191	director	\N	\N
tt11719276	nm11321194	producer	producer	\N
tt11719276	nm11321195	cinematographer	\N	\N
tt1442696	nm0497301	actor	\N	["Paul Wong"]
tt1442696	nm10215432	actor	\N	["FBI Agent"]
tt1442696	nm0909696	self	\N	["Self"]
tt1442696	nm0918999	director	\N	\N
tt1442696	nm4431642	writer	chief writer	\N
tt1442696	nm7994174	composer	\N	\N
tt10610930	nm5156797	actor	\N	["Vinay"]
tt10610930	nm8837013	actor	\N	["Inspector"]
tt10610930	nm3749468	actress	\N	["Bindiya"]
tt10610930	nm12405806	actor	\N	["Prem Sinha"]
tt10610930	nm0417562	director	\N	\N
tt10610930	nm6184395	director	\N	\N
tt10610930	nm8355666	writer	writer	\N
tt10610930	nm3706001	writer	\N	\N
tt9566692	nm8515145	actor	\N	["Narrator"]
tt9566692	nm6235717	director	\N	\N
tt9566692	nm6235717	writer	\N	\N
tt9566692	nm6235717	producer	producer	\N
tt9566692	nm6235717	editor	\N	\N
tt9566692	nm6235717	casting_director	\N	\N
tt27716240	nm1162248	self	\N	["Self - Host"]
tt27716240	nm3205512	self	\N	["Self - Arithmetician"]
tt27716240	nm1735069	self	\N	["Self - Lexicographer"]
tt27716240	nm6055921	self	\N	["Self - Dictionary Corner"]
tt12071826	nm2125359	actor	\N	["Xavier 'Zav' Duval"]
tt12071826	nm1483616	actress	\N	["Donna Jackson"]
tt12071826	nm6879084	actor	\N	["Cameron Dunn"]
tt12071826	nm2273109	actress	\N	["Nicky McKendrick"]
tt12071826	nm0941986	actress	\N	["Essie Di Lucca"]
tt12071826	nm0908340	actor	\N	["Adrian 'Fletch' Fletcher"]
tt12071826	nm0545165	actress	\N	["Jac Naylor"]
tt12071826	nm0702934	actor	\N	["Ric Griffin"]
tt12071826	nm1080139	actress	\N	["Max McGerry"]
tt12071826	nm0824517	actress	\N	["Ange Godard"]
tt12071826	nm2588169	director	\N	\N
tt12071826	nm1661134	writer	written by	\N
tt12071826	nm0735239	producer	producer	\N
tt12071826	nm1440527	cinematographer	director of photography	\N
tt12071826	nm1733093	editor	\N	\N
tt12071826	nm0186224	casting_director	casting_director	\N
tt14583032	nm0594276	actress	\N	["Mitsuo Suwa (aka Perman #1)"]
tt14583032	nm0557968	actress	\N	["Sumire Hoshino (aka Perman #3 or Perko)"]
tt14583032	nm0157133	actor	\N	["Sabu"]
tt14583032	nm0454049	actor	\N	["Perman #4 or Peryan"]
tt14583032	nm8996125	actress	\N	["Michiko"]
tt14583032	nm0623165	actress	\N	["Ganko"]
tt14583032	nm0840618	actor	\N	["Kabao"]
tt14583032	nm0960022	actor	\N	["Booby (aka Perman #2)"]
tt14583032	nm0766486	director	\N	\N
tt14583032	nm0297742	writer	manga	\N
tt14583032	nm1156514	composer	\N	\N
tt14583032	nm0645556	editor	\N	\N
tt6109374	nm0865785	self	\N	["Self - Host"]
tt6109374	nm2810494	self	\N	["Self - Voiceover"]
tt9808626	nm7600010	actress	\N	["Ratnamma"]
tt9808626	nm9956028	actor	\N	["Cleatus"]
tt9808626	nm8223791	actress	\N	["Thankam"]
tt9808626	nm6651428	actor	\N	["Kanakan"]
tt9808626	nm9956145	director	\N	\N
tt9808626	nm9956147	writer	\N	\N
tt9808626	nm9956148	producer	producer	\N
tt9808626	nm9827465	editor	\N	\N
tt9808626	nm7260817	editor	\N	\N
tt23031270	nm13284792	production_designer	production_designer	\N
tt29426335	nm15333701	self	\N	["Self"]
tt33398124	nm1502436	actor	\N	["Programledare"]
tt9218950	nm0350081	actress	\N	\N
tt9218950	nm0729095	actress	\N	\N
tt9218950	nm0070748	actor	\N	\N
tt9218950	nm0643508	actor	\N	\N
tt9218950	nm1227156	director	\N	\N
tt16305888	nm12793479	actress	\N	["Yukari Yuzuki"]
tt16305888	nm12793478	actress	\N	["Maki Tsurumaki"]
tt16305888	nm13182333	director	\N	\N
tt33292647	nm7490473	actor	\N	\N
tt33292647	nm9449734	actor	\N	["Lucas"]
tt33292647	nm9449733	actor	\N	["Jason H"]
tt33292647	nm9449733	director	\N	\N
tt33292647	nm9449733	writer	\N	\N
tt33292647	nm7490473	writer	\N	\N
tt33292647	nm9449734	writer	\N	\N
tt0423440	nm0347453	actor	\N	["Julien Miellème"]
tt0423440	nm0087017	actress	\N	["Marthe Miellème"]
tt0423440	nm0248033	actor	\N	["Gérard Miellème"]
tt0423440	nm0743131	actor	\N	["Charles Pélissier"]
tt0423440	nm0491229	actor	\N	["Philippe Prost"]
tt0423440	nm0161699	actress	\N	["Dany"]
tt0423440	nm0025445	actor	\N	["Le commissaire Mignot"]
tt0423440	nm0871105	actor	\N	["Le vieux du \\"Balto\\""]
tt0423440	nm0490734	actor	\N	["Merizier"]
tt0423440	nm0705745	actor	\N	["Pailleron"]
tt0423440	nm0335942	director	\N	\N
tt0423440	nm0350722	writer	dialogue	\N
tt0423440	nm0153650	cinematographer	\N	\N
tt4614348	nm1459421	self	\N	["Self"]
tt9316852	nm1029102	actor	\N	["Jason"]
tt9316852	nm1566328	actor	\N	["Carlo"]
tt9316852	nm1698688	actor	\N	["Ken"]
tt9316852	nm1698831	actor	\N	["Joeyboy"]
tt9316852	nm1717491	actress	\N	["Rene"]
tt9316852	nm1717491	actress	\N	["Irene"]
tt9316852	nm1717582	actress	\N	["Casey"]
tt9316852	nm1246883	director	\N	\N
tt9316852	nm0714607	production_designer	\N	\N
tt13720628	nm0080511	self	\N	["Self - Host"]
tt19035206	nm0815658	actor	\N	["Presented by"]
tt19035206	nm1296472	actor	\N	["Presented by"]
tt19035206	nm1409127	director	\N	\N
tt19035206	nm1271987	writer	\N	\N
tt19035206	nm1667629	writer	\N	\N
tt19035206	nm4390665	writer	creative writer	\N
tt19035206	nm3089072	writer	\N	\N
tt19035206	nm6200566	production_designer	\N	\N
tt19035206	nm6200565	production_designer	\N	\N
tt12674950	nm0689220	actor	\N	["Yangos Drakos"]
tt12674950	nm0028385	actor	\N	["Timos Drakos"]
tt12674950	nm1039266	actor	\N	["Linos Seretis"]
tt12674950	nm0032002	actor	\N	["Sevos Drakos"]
tt12674950	nm1361371	actor	\N	["Alexis Drakos"]
tt12674950	nm0989781	actress	\N	["Efi"]
tt12674950	nm0726816	actress	\N	["Tania Drakou"]
tt12674950	nm0287566	writer	creator	\N
tt16293802	nm0335848	self	\N	["Self"]
tt16293802	nm1176182	self	\N	["Self - Host"]
tt21333468	nm0025459	actor	\N	["Alberto 'Albertico' Limonta"]
tt21333468	nm10682007	actress	\N	["Isabel Cristina Castillo del Junco"]
tt21333468	nm0108539	actor	\N	["Jorge Luis Armenteros"]
tt21333468	nm1833925	actress	\N	["María Elena del Junco"]
tt21333468	nm1958770	director	\N	\N
tt21333468	nm0128785	writer	radioplay	\N
tt21333468	nm1961475	writer	adaptation	\N
tt21333468	nm10838272	writer	libretto	\N
tt21333468	nm0709307	writer	libretto	\N
tt21333468	nm6117394	producer	producer	\N
tt1380155	nm0130572	self	\N	["Self"]
tt1380155	nm1342010	actor	\N	["The Orchestra"]
tt10779734	nm0764156	actress	\N	["Dianne Villaruel"]
tt10779734	nm0305374	actor	\N	["Carlo de Leon"]
tt10779734	nm0945813	actor	\N	["Ricky Salveron"]
tt10779734	nm0643590	actor	\N	["Gary Ballesteros"]
tt10779734	nm0229042	actress	\N	["Melanie Suntay"]
tt10779734	nm0013793	actor	\N	["Joey Fajardo"]
tt10779734	nm1206722	director	\N	\N
tt10779734	nm1282374	writer	\N	\N
tt10779734	nm1282824	writer	\N	\N
tt10779734	nm1287750	writer	\N	\N
tt12129522	nm0120735	actress	\N	["Karen Wagner"]
tt12129522	nm2658780	actor	\N	["Mesut Acar"]
tt12129522	nm0710921	actress	\N	["Ursula Reisinger"]
tt12129522	nm0771665	actor	\N	["Roland Bernheimer"]
tt12129522	nm0821136	actor	\N	["Alois Hofer"]
tt12129522	nm0026561	director	\N	\N
tt2134439	nm4805760	director	\N	\N
tt2134439	nm4805760	producer	producer	\N
tt2134439	nm4805760	editor	editor	\N
tt11258434	nm4836410	actress	\N	\N
tt11258434	nm7243950	actor	\N	["Poovarasu"]
tt11258434	nm11065709	actress	\N	\N
tt11258434	nm10622861	director	\N	\N
tt11258434	nm7767088	writer	\N	\N
tt11258434	nm9048179	writer	\N	\N
tt11258434	nm11065710	cinematographer	\N	\N
tt11258434	nm11065711	editor	\N	\N
tt1649437	nm0561109	director	\N	\N
tt1649437	nm0561109	writer	\N	\N
tt1649437	nm0525908	producer	producer	\N
tt1649437	nm0525910	producer	producer	\N
tt1649437	nm0561109	cinematographer	director of photography	\N
tt4268058	nm1367484	editor	master editor	\N
tt34766855	nm2333860	actress	\N	["Kasia Górka-Sadowska"]
tt34766855	nm3369166	actress	\N	["Klara Pyrka"]
tt34766855	nm2805534	actor	\N	["Stas Pyrka"]
tt34766855	nm0523653	actress	\N	["Barbara Jakubik-Grzelak"]
tt34766855	nm2763243	actor	\N	["Hubert Pyrka"]
tt34766855	nm1847247	actress	\N	["Anita Szymczak"]
tt34766855	nm0874486	actress	\N	["Elzbieta Zelenska"]
tt34766855	nm2762168	actress	\N	["Agata Pyrka"]
tt34766855	nm2762076	actress	\N	["Iwona Pyrka"]
tt34766855	nm4038772	director	\N	\N
tt34766855	nm2759548	writer	screenplay	\N
tt34766855	nm2102093	cinematographer	\N	\N
tt34766855	nm0844260	editor	\N	\N
tt31835154	nm0000463	actress	\N	["Betty"]
tt31835154	nm1837583	actress	\N	["Marjolein Hofman"]
tt31835154	nm2863778	actress	\N	["Katja Van Doorn"]
tt31835154	nm0220706	actor	\N	["Jack Van Doorn"]
tt31835154	nm0212077	actor	\N	["Erik Ketels"]
tt31835154	nm6097348	actor	\N	["Patrick Van Doorn"]
tt19299112	nm0860726	self	\N	["Self"]
tt19299112	nm0860726	self	\N	["Ranger Stacy"]
tt13547672	nm0461324	actor	\N	["Arik"]
tt13547672	nm3504046	actress	\N	["Lirit"]
tt13547672	nm2511102	actress	\N	["Sharon"]
tt13547672	nm5031088	actor	\N	["Idan"]
tt13547672	nm1035854	actor	\N	["Amir"]
tt13547672	nm5717678	actress	\N	["Maya"]
tt13547672	nm0843491	director	\N	\N
tt13547672	nm3000279	writer	creator	\N
tt13547672	nm2939063	writer	creator	\N
tt13547672	nm3569825	producer	producer	\N
tt13547672	nm9955953	composer	\N	\N
tt13547672	nm5076742	composer	\N	\N
tt13547672	nm4159531	composer	\N	\N
tt13547672	nm2669480	cinematographer	cinematographer	\N
tt13547672	nm2265596	cinematographer	\N	\N
tt13547672	nm2012534	cinematographer	\N	\N
tt13547672	nm2336482	editor	\N	\N
tt13547672	nm2747830	editor	\N	\N
tt13547672	nm6501713	editor	\N	\N
tt13547672	nm0855282	editor	\N	\N
tt13547672	nm2487213	casting_director	\N	\N
tt6557360	nm6501297	actress	\N	["Kim"]
tt6557360	nm6180129	actor	\N	["David"]
tt6557360	nm8916559	actor	\N	\N
tt6557360	nm5326615	actor	\N	\N
tt6557360	nm0517710	director	\N	\N
tt6557360	nm8797448	writer	writer	\N
tt6557360	nm0517710	producer	producer	\N
tt6557360	nm8797450	producer	producer	\N
tt6557360	nm1959095	cinematographer	\N	\N
tt6557360	nm2375593	editor	\N	\N
tt6557360	nm5376664	casting_director	\N	\N
tt6557360	nm8916560	casting_director	\N	\N
tt6557360	nm1999752	production_designer	\N	\N
tt10354428	nm0081309	actress	\N	["Anna Polauke"]
tt10354428	nm1952556	actor	\N	["Jonas Broda"]
tt10354428	nm0230665	director	\N	\N
tt10354428	nm1201863	writer	screenplay	\N
tt10354428	nm2858735	writer	head writer	\N
tt10354428	nm2460804	writer	staff writer	\N
tt10354428	nm0345112	writer	writer	\N
tt10354428	nm2363729	producer	producer	\N
tt10354428	nm1672631	composer	\N	\N
tt10354428	nm0508991	cinematographer	\N	\N
tt26916649	nm0022681	actor	\N	\N
tt26916649	nm0080722	actor	\N	\N
tt26916649	nm1004087	self	\N	["Self"]
tt26916649	nm1004087	self	\N	["Presenter"]
tt26916649	nm0215979	actress	\N	\N
tt26916649	nm0303586	self	\N	["Self"]
tt26916649	nm0303586	self	\N	["Presenter"]
tt26916649	nm0546359	self	\N	["Self"]
tt26916649	nm0546359	self	\N	["Presenter"]
tt26916649	nm0691672	actor	\N	\N
tt26916649	nm0691932	actor	\N	\N
tt26916649	nm0815008	actor	\N	\N
tt26916649	nm7500642	director	\N	\N
tt26916649	nm0282834	director	\N	\N
tt26916649	nm1272480	director	\N	\N
tt26916649	nm0812176	writer	\N	\N
tt26916649	nm0812177	writer	\N	\N
tt3369484	nm1475425	actor	\N	\N
tt3369484	nm1764365	actress	\N	\N
tt3369484	nm0324761	producer	producer	\N
tt3369484	nm2533015	editor	\N	\N
tt15247144	nm12791266	actress	\N	\N
tt15247144	nm12791265	director	\N	\N
tt15247144	nm12791267	producer	producer	\N
tt15247144	nm12791268	producer	producer	\N
tt15247144	nm12791269	editor	\N	\N
tt0973143	nm0925809	self	\N	["Self - Host"]
tt0973143	nm0903436	self	\N	["Self - Arithmetician"]
tt0973143	nm11895328	self	\N	["Self - Lexicographer"]
tt0973143	nm0367567	self	\N	["Self - Dictionary Corner"]
tt0973143	nm0417224	writer	deviser	\N
tt0973143	nm1636166	producer	producer	\N
tt22783318	nm0536093	actress	\N	\N
tt22783318	nm2982557	actress	\N	["Zandile Msutwana"]
tt22783318	nm0623471	actor	\N	["Harriet Khoza"]
tt22783318	nm5360563	writer	\N	\N
tt22783318	nm10688741	writer	\N	\N
tt22783318	nm12175321	writer	\N	\N
tt22783318	nm7141603	writer	head writer	\N
tt22783318	nm13864732	producer	producer	\N
tt22783318	nm6135535	producer	producer	\N
tt22783318	nm5381295	producer	producer	\N
tt22783318	nm2000028	composer	\N	\N
tt22783318	nm7081513	cinematographer	\N	\N
tt22783318	nm10084406	editor	\N	\N
tt1983546	nm0360208	self	\N	["Self - Host"]
tt1983546	nm1459646	director	\N	\N
tt1983546	nm1672746	writer	\N	\N
tt1983546	nm2073351	writer	\N	\N
tt1983546	nm1442704	cinematographer	\N	\N
tt1983546	nm2073351	editor	\N	\N
tt1983546	nm1527168	editor	\N	\N
tt17320254	nm4116052	director	director	\N
tt17320254	nm13325474	writer	\N	\N
tt17320254	nm2843046	producer	producer	\N
tt11173828	nm0857473	actor	\N	["Alkis Kralis"]
tt11173828	nm3289821	actress	\N	["Maria"]
tt11173828	nm0745905	actress	\N	["Kety Krali"]
tt11173828	nm0608309	actor	\N	["Aristidis Kralis"]
tt11173828	nm0875082	actor	\N	["Vitouris"]
tt11173828	nm0369115	actor	\N	["Kostas"]
tt11173828	nm0307944	actor	\N	["Nikolaidis"]
tt11173828	nm3867208	actor	\N	["Stalidis"]
tt11173828	nm1915547	actress	\N	["Lilly"]
tt11173828	nm9594473	actress	\N	\N
tt11173828	nm0584261	director	\N	\N
tt11173828	nm0584261	writer	adaptation	\N
tt11173828	nm1031661	writer	novel "To agriolouloudo"	\N
tt11173828	nm1072522	producer	producer	\N
tt11173828	nm0438774	composer	\N	\N
tt11173828	nm1416273	cinematographer	\N	\N
tt11173828	nm1205557	editor	\N	\N
tt9032410	nm5831031	actress	\N	["Psychic Medium"]
tt9032410	nm7289185	actress	\N	["Lilly"]
tt9032410	nm9951610	actress	\N	["Kim"]
tt15526260	nm13013175	self	\N	["Self - Patient"]
tt15526260	nm13108201	self	\N	["Self - Patient"]
tt15526260	nm11318773	self	\N	["Self - Foot and Ankle Surgeon"]
tt15526260	nm11226402	self	\N	["Self - Foot and Ankle Surgeon"]
tt15526260	nm13013176	self	\N	["Self - Patient"]
tt15526260	nm11226401	self	\N	["Self - Foot and Ankle Surgeon"]
tt15526260	nm0576118	producer	producer	\N
tt15526260	nm1167063	composer	composer	\N
tt15526260	nm1310019	cinematographer	director of photography	\N
tt15526260	nm1877053	editor	\N	\N
tt15526260	nm1632209	editor	\N	\N
tt15526260	nm3172514	editor	\N	\N
tt12968796	nm4913514	self	\N	["Self - Host"]
tt12968796	nm4913514	director	\N	\N
tt12968796	nm4913514	writer	\N	\N
tt12968796	nm4913514	producer	producer	\N
tt2666112	nm2700291	actor	\N	["Foley"]
tt2666112	nm4131753	actor	\N	["Foley"]
tt2666112	nm2494448	actor	\N	["Laughing Little Boy"]
tt2666112	nm2996250	actor	\N	["Restaurant Man #2"]
tt2666112	nm1807923	actor	\N	["Terry"]
tt2666112	nm1188108	actress	\N	["Foley's Date"]
tt2666112	nm1904115	actor	\N	["Infomercial Host"]
tt2666112	nm1983810	actor	\N	["Restaurant Ruffian"]
tt2666112	nm1732003	actor	\N	["Harold"]
tt2666112	nm1976925	actress	\N	["Cafe Girl (Night)"]
tt2666112	nm3251720	director	\N	\N
tt2666112	nm3251720	writer	writer	\N
tt2666112	nm1904115	producer	producer	\N
tt2666112	nm3251720	producer	executive producer	\N
tt2666112	nm5495963	cinematographer	\N	\N
tt2666112	nm3251720	editor	\N	\N
tt2666112	nm3251720	casting_director	\N	\N
tt2666112	nm3251720	production_designer	\N	\N
tt32103424	nm0437062	self	\N	["Self - Host"]
tt32103424	nm2630134	self	\N	["Self - Host"]
tt32103424	nm2646200	self	\N	["Self - Host"]
tt32103424	nm10458049	director	television director	\N
tt12362468	nm2475763	self	\N	["Self - Presenter"]
tt12362468	nm2544755	self	\N	["Self - Presenter"]
tt12362468	nm1303455	self	\N	["Self - Analyst"]
tt12362468	nm1351787	self	\N	["Self - Analyst"]
tt12362468	nm7062449	self	\N	["Self - Reporter"]
tt12362468	nm5214757	self	\N	["Self - Manager, Scunthorpe"]
tt12362468	nm1075350	self	\N	["Self - Manager, Tranmere"]
tt12362468	nm2581315	self	\N	["Self - Reporter"]
tt12362468	nm7062061	self	\N	["Self - Peterborough"]
tt12362468	nm8211762	self	\N	["Self - West Brom"]
tt24666788	nm4935091	actor	\N	["Jaydeep Yashwantrao Shirke Patil"]
tt24666788	nm11177172	actress	\N	["Gauri"]
tt24666788	nm7652064	director	\N	\N
tt24666788	nm10189547	writer	\N	\N
tt24666788	nm2983649	producer	producer	\N
tt24666788	nm0467680	producer	producer	\N
tt7374892	nm0826032	self	\N	["Self - Co-Host"]
tt7374892	nm0558244	self	\N	["Self - Co-Hostess"]
tt7374892	nm0509937	self	\N	["Self"]
tt7374892	nm0132895	self	\N	["Self"]
tt7374892	nm2664965	self	\N	["Self"]
tt7374892	nm3166159	self	\N	["Self"]
tt7374892	nm1978401	self	\N	["Self"]
tt7374892	nm4506750	self	\N	["Self"]
tt7374892	nm9291088	self	\N	["Self - Executive Chef, The Arthur J"]
tt7374892	nm5404634	self	\N	["Self"]
tt7374892	nm1237855	producer	producer	\N
tt7374892	nm3785921	producer	producer	\N
tt26628211	nm2954959	self	\N	["Self - Host"]
tt26628211	nm12960331	self	\N	["Self"]
tt26628211	nm2635629	self	\N	["Self"]
tt26628211	nm0284724	self	\N	["Self"]
tt26628211	nm0435919	self	\N	["Self"]
tt26628211	nm0462685	self	\N	["Self"]
tt26628211	nm0465352	self	\N	["Self"]
tt26628211	nm0587393	self	\N	["Self"]
tt26628211	nm0824213	self	\N	["Self"]
tt11971386	nm10595144	actress	\N	["Tora"]
tt11971386	nm8927038	actor	\N	["Om"]
tt11971386	nm8031905	actor	\N	["Aysh"]
tt11971386	nm5435989	director	\N	\N
tt11971386	nm7370686	writer	\N	\N
tt11971386	nm7370686	producer	producer	\N
tt12480920	nm0174030	actor	\N	["Mike Karr"]
tt12480920	nm0282535	actress	\N	["Nancy Karr"]
tt12480920	nm0561928	actor	\N	["Adam Drake"]
tt12480920	nm0805748	writer	story by	\N
tt12480920	nm0892939	writer	created by	\N
tt12480920	nm0629818	producer	producer	\N
tt3833682	nm0186728	actor	\N	["Grady Lee Jr."]
tt3833682	nm0437283	actor	\N	["Boudreaux"]
tt3833682	nm0129551	actor	\N	["Manna"]
tt3833682	nm6600012	actor	\N	["Kai"]
tt3833682	nm6600014	actor	\N	["Randy"]
tt3833682	nm1851709	actress	\N	["Mary Ann"]
tt3833682	nm6600015	actress	\N	["KC"]
tt3833682	nm6600016	actress	\N	["Jeannie"]
tt3833682	nm1374439	actress	\N	["Meeko Gibson"]
tt3833682	nm5192551	actress	\N	["Abby"]
tt3833682	nm1845579	director	\N	\N
tt3833682	nm4239877	writer	screenplay	\N
tt3833682	nm3398538	writer	screenplay	\N
tt3833682	nm1845579	writer	story	\N
tt3833682	nm4239877	producer	executive producer	\N
tt3833682	nm0186728	producer	producer	\N
tt3833682	nm0437283	producer	producer	\N
tt3833682	nm1845579	producer	executive producer	\N
tt3833682	nm7760911	composer	\N	\N
tt3833682	nm1519121	cinematographer	director of photography	\N
tt3833682	nm3972465	editor	\N	\N
tt3833682	nm1519121	editor	\N	\N
tt3833682	nm3995165	editor	\N	\N
tt3833682	nm2182575	production_designer	\N	\N
tt3833682	nm1567970	production_designer	\N	\N
tt29426348	nm15334039	self	\N	["Self - Reporter"]
tt29426348	nm15333715	self	\N	["Self - Host"]
tt5890218	nm5172101	actress	\N	["Livia"]
tt5890218	nm3648419	actor	\N	["Psicologo"]
tt5890218	nm3454214	actor	\N	["Virgilio"]
tt5890218	nm8574227	actor	\N	["Marcinha"]
tt5890218	nm7384653	director	\N	\N
tt5890218	nm8293211	writer	writer	\N
tt5890218	nm7384653	writer	writer	\N
tt5890218	nm8093658	composer	composer	\N
tt5890218	nm7107997	composer	\N	\N
tt5890218	nm7915000	cinematographer	\N	\N
tt5890218	nm8574239	editor	\N	\N
tt5890218	nm8574238	editor	\N	\N
tt7820026	nm0620060	actress	\N	["HIsako Kojima"]
tt7820026	nm0586227	actor	\N	["Kenji Ôta"]
tt7820026	nm0945831	actress	\N	["Reiko Sayama"]
tt7820026	nm6194625	actress	\N	["Sally Tsukimura"]
tt7820026	nm0297869	actor	\N	\N
tt7820026	nm5501163	actress	\N	["Kimiko"]
tt7820026	nm0368691	actor	\N	["Yasuhiko Hanaoka"]
tt7820026	nm1346442	actress	\N	["Etsuko Hanaoka"]
tt7820026	nm0594260	actor	\N	["Kondô"]
tt7820026	nm1481865	actress	\N	["Tomiko Yoshikawa"]
tt7820026	nm0435368	director	\N	\N
tt7820026	nm0906725	writer	screenplay	\N
tt7820026	nm2203408	producer	producer	\N
tt7820026	nm0559462	composer	\N	\N
tt7820026	nm0848417	cinematographer	\N	\N
tt7820026	nm0412613	editor	\N	\N
tt0652431	nm0683831	actress	\N	["Host"]
tt0652431	nm0013567	actress	\N	\N
tt0652431	nm0019151	actor	\N	\N
tt0652431	nm0138577	actor	\N	\N
tt0652431	nm0737862	actor	\N	\N
tt0652431	nm0845177	actor	\N	\N
tt0652431	nm1451780	actor	\N	\N
tt0652431	nm2016322	writer	\N	\N
tt13740204	nm0393007	actor	\N	["The Friendly Giant"]
tt13740204	nm0393007	writer	created by	\N
tt27034988	nm3634990	self	\N	["Self - Host"]
tt27034988	nm0885201	director	director	\N
tt27034988	nm11576505	producer	producer	\N
tt27034988	nm11576507	editor	\N	\N
tt11382658	nm4915229	actor	\N	["Narrator"]
tt11382658	nm4915229	director	\N	\N
tt11382658	nm4915229	writer	writer	\N
tt11382658	nm4915229	producer	producer	\N
tt11382658	nm4915229	cinematographer	\N	\N
tt11382658	nm4915229	editor	\N	\N
tt35289244	nm1614822	self	\N	["Self - Host"]
tt35289244	nm0428958	self	\N	["Self - Host"]
tt35289244	nm11265689	self	\N	["Self - Co-Host"]
tt35289244	nm2908016	self	\N	["Self"]
tt35289244	nm1519580	self	\N	["Self"]
tt35289244	nm7860131	self	\N	["Self"]
tt20236540	nm1728174	actor	\N	["Seyfettin Dal"]
tt20236540	nm6881766	actress	\N	["Hatice Dal"]
tt20236540	nm9639827	actress	\N	["Badegül Kütük"]
tt20236540	nm1699266	actress	\N	["Sevda Dal"]
tt20236540	nm1869664	actor	\N	\N
tt20236540	nm1760185	actress	\N	\N
tt20236540	nm1759108	actor	\N	["Ismail"]
tt20236540	nm1699625	actress	\N	["Nurcan Dal"]
tt20236540	nm9437046	actress	\N	["Dudu Kalkar"]
tt20236540	nm5273658	actress	\N	["Yasemin Sirfbas Dal"]
tt16403092	nm5571966	self	\N	["Self - Host"]
tt8060214	nm1846556	actress	\N	["Ching Yiu-ka"]
tt8060214	nm1832654	actor	\N	["Ma Yuk"]
tt8060214	nm0157883	actress	\N	["Suen But-yi"]
tt8060214	nm0159507	actor	\N	\N
tt8060214	nm0937266	actor	\N	["Kwok Siu-tin"]
tt8060214	nm0157971	actor	\N	["Ghengis Khan"]
tt8060214	nm0161165	actor	\N	["Chow Bak-tung"]
tt8060214	nm0401208	actor	\N	["Chu Chung"]
tt8060214	nm0793384	actor	\N	["Kao Chin-yan"]
tt8060214	nm0793384	actor	\N	["Kao Chin-jeun"]
tt8060214	nm2304879	actor	\N	["Or Jen-ork"]
tt8060214	nm0149222	writer	novel	\N
tt33413595	nm16537078	self	\N	["Self - Contestant"]
tt33413595	nm0143067	self	\N	["Self - Contestant"]
tt33413595	nm16537081	self	\N	["Self - Contestant"]
tt33413595	nm16537079	self	\N	["Self - Contestant"]
tt33413595	nm5689554	self	\N	["Self - Contestant"]
tt33413595	nm10359205	self	\N	["Self - Contestant"]
tt33413595	nm16537084	self	\N	["Self - Contestant"]
tt33413595	nm16537077	self	\N	["Self - Contestant"]
tt33413595	nm10754822	self	\N	["Self - Contestant"]
tt33413595	nm1214769	actress	\N	["Host"]
tt10008500	nm3636336	self	\N	["Self"]
tt10008500	nm3636336	self	\N	["Hoogleraar Economie"]
tt10008500	nm1599773	self	\N	["Self"]
tt10008500	nm1599773	self	\N	["Schrijver"]
tt10008500	nm1719901	self	\N	["Self"]
tt10008500	nm1719901	self	\N	["Misdaadverslaggever"]
tt10008500	nm0726900	self	\N	["Self"]
tt10008500	nm0726900	self	\N	["Kickboxer"]
tt10008500	nm0726900	self	\N	["Mentor"]
tt10008500	nm10541981	self	\N	["Self"]
tt10008500	nm10541981	self	\N	["Choreograaf"]
tt10008500	nm5711839	self	\N	["Self"]
tt10008500	nm5711839	self	\N	["Schoolhoofd"]
tt10008500	nm1769854	self	\N	["Self"]
tt10008500	nm1769854	self	\N	["Advocaat"]
tt10008500	nm15690877	director	\N	\N
tt10008500	nm0771795	composer	composer	\N
tt10008500	nm15690877	editor	\N	\N
tt8688978	nm0102765	actor	\N	["Marek"]
tt8688978	nm0439878	actor	\N	["Ludwik Boski"]
tt8688978	nm0469021	actress	\N	["Natalia Boska"]
tt8688978	nm3008125	actor	\N	["Tomek Boski"]
tt8688978	nm4519245	actor	\N	["Kacper Boski"]
tt8688978	nm10110192	actor	\N	["Dziewczyna"]
tt8688978	nm3794704	actor	\N	["Kuba Boski"]
tt8688978	nm1780062	director	\N	\N
tt8688978	nm1802530	writer	idea	\N
tt8688978	nm9493733	writer	screenplay	\N
tt8688978	nm4042678	writer	screenplay	\N
tt8688978	nm1069102	cinematographer	cinematographer	\N
tt8688978	nm1461313	casting_director	casting_director	\N
tt8341294	nm0190388	actress	\N	["Mercês Costa Almeida Vargas das Neves"]
tt8341294	nm0536510	actor	\N	["Lucas da Silva Lobo"]
tt8341294	nm0559247	actor	\N	["Simão Moreira das Neves"]
tt8341294	nm0896468	actress	\N	["Ilda Oliveira"]
tt8341294	nm0673204	actor	\N	["Gil Vargas das Neves"]
tt8341294	nm0056392	actress	\N	["Cláudia Cardoso Lobo"]
tt8341294	nm0210725	actress	\N	["Maria dos Prazeres"]
tt8341294	nm0522072	actress	\N	["Ondina de Jesus Trolha"]
tt8341294	nm0556118	actor	\N	["Helder Saias"]
tt8341294	nm0537336	actress	\N	["Júlia Gonçalves Saias"]
tt8341294	nm0637956	director	\N	\N
tt8341294	nm0096539	director	director	\N
tt8341294	nm1869070	writer	\N	\N
tt8341294	nm0057007	writer	additional dialogue	\N
tt8341294	nm1871034	writer	additional dialogue	\N
tt8341294	nm0604356	writer	supervising writer	\N
tt8341294	nm3877269	producer	producer	\N
tt8341294	nm3275155	producer	producer	\N
tt8341294	nm1803709	producer	producer	\N
tt8341294	nm0284689	composer	\N	\N
tt8341294	nm0578936	composer	\N	\N
tt8341294	nm1870235	cinematographer	\N	\N
tt8341294	nm1863147	cinematographer	\N	\N
tt8341294	nm0763275	cinematographer	director of photography	\N
tt8341294	nm0815985	cinematographer	\N	\N
tt8341294	nm1825529	editor	\N	\N
tt8341294	nm2296721	editor	editor	\N
tt10501086	nm0001983	actor	\N	["Judge Judson Tyler"]
tt10501086	nm0001198	actress	\N	["Sloane Denning Clegg Mamoud"]
tt10501086	nm0869927	actress	\N	["Clarissa McCandless"]
tt10501086	nm0001904	director	\N	\N
tt10501086	nm0179189	director	\N	\N
tt10501086	nm1707653	writer	\N	\N
tt10501086	nm1085627	writer	\N	\N
tt10501086	nm0439984	writer	creator	\N
tt10501086	nm0439987	writer	creator	\N
tt10501086	nm0108993	producer	producer	\N
tt10501086	nm3097133	composer	composer	\N
tt10501086	nm0415351	composer	\N	\N
tt10501086	nm0006264	composer	\N	\N
tt10501086	nm0618689	editor	\N	\N
tt3271034	nm6025734	director	\N	\N
tt3271034	nm6025734	writer	writer	\N
tt16295072	nm3371430	editor	\N	\N
tt1141875	nm2069445	actress	\N	["Yu Satomi"]
tt1141875	nm0043396	actress	\N	["Michiko Sakamoto"]
tt1141875	nm0441161	actress	\N	["Hisako Miura"]
tt1141875	nm0441353	actress	\N	["Satsuki Fujikawa"]
tt1141875	nm0441365	actress	\N	["Naoko Oizumi"]
tt1141875	nm0455816	actress	\N	["Junko Kurata"]
tt1141875	nm0594386	actor	\N	["Haruo Omura"]
tt1141875	nm0654726	actor	\N	["Kouta Imai"]
tt1141875	nm2634230	actress	\N	["Sawako Noda"]
tt1141875	nm1078154	actor	\N	["Shouichi Imai"]
tt0535347	nm0854850	self	\N	["Self - Host"]
tt0535347	nm0764413	self	\N	["Self - Musical Guest"]
tt5267136	nm0809952	self	\N	["Self - Host"]
tt35616254	nm16961933	actress	\N	\N
tt35616254	nm2718834	actor	\N	\N
tt35616254	nm4825523	actor	\N	\N
tt35616254	nm16961934	actress	\N	\N
tt35616254	nm7833633	actor	\N	\N
tt35616254	nm2994393	actress	\N	\N
tt35616254	nm14642142	actress	\N	\N
tt35616254	nm16666917	actor	\N	\N
tt35616254	nm5267183	actress	\N	\N
tt35616254	nm2960333	actress	\N	\N
tt35616254	nm3125271	director	\N	\N
tt35616254	nm14173735	director	creative director	\N
tt35616254	nm6668295	writer	\N	\N
tt35616254	nm10462683	cinematographer	director of photography	\N
tt20190372	nm2404346	self	\N	["Self - Host"]
tt20190372	nm4996960	self	\N	["Self - Business Reporter"]
tt20190372	nm8449281	self	\N	["Self - Washington Correspondent, The Australian"]
tt20190372	nm6196107	self	\N	["Self - Shaw and Partners"]
tt20190372	nm8531306	archive_footage	\N	["Self - CEO, Westpac"]
tt20190372	nm8059262	self	\N	["Self - Economist, REA Group"]
tt22471238	nm12921529	director	\N	\N
tt22471238	nm12004189	writer	\N	\N
tt22471238	nm14103511	producer	producer	\N
tt22471238	nm14103511	editor	\N	\N
tt22471238	nm12921529	editor	\N	\N
tt2265025	nm0879766	writer	\N	\N
tt2265025	nm0393362	composer	\N	\N
tt0988679	nm0800166	actor	\N	["Regisseur"]
tt0988679	nm0362438	actor	\N	["Schauspieler A"]
tt0988679	nm0754021	actor	\N	["Schauspieler B"]
tt0988679	nm0784240	actor	\N	["Schauspieler C"]
tt0988679	nm0699787	actor	\N	["Schauspieler D"]
tt0988679	nm0944273	actress	\N	["Schauspielerin E"]
tt0988679	nm0248588	director	\N	\N
tt0988679	nm2500298	writer	writer	\N
tt9174832	nm9855762	actor	\N	["Hugo Beltrán"]
tt9174832	nm0144519	actress	\N	["Macarena Medina de Solís"]
tt9174832	nm8061858	actress	\N	["Triana Marín"]
tt9174832	nm10387964	actor	\N	["Iván"]
tt9174832	nm9990798	actor	\N	["Jairo"]
tt9174832	nm10312343	actor	\N	["Germán"]
tt9174832	nm11010160	actor	\N	["Andrea Norman Medina"]
tt9174832	nm0781220	actor	\N	["Borja Medina"]
tt9174832	nm2571452	actor	\N	["Mateo Medina"]
tt9174832	nm2278325	actor	\N	["Ángel Altamira"]
tt9174832	nm0580319	director	\N	\N
tt9174832	nm0073172	writer	created by	\N
tt9174832	nm1289609	writer	created by	\N
tt9174832	nm1287912	writer	created by	\N
tt9174832	nm8644952	composer	\N	\N
tt9174832	nm1255214	cinematographer	\N	\N
tt9174832	nm0273206	editor	editor	\N
tt9174832	nm0107938	casting_director	\N	\N
tt9174832	nm6006228	casting_director	\N	\N
tt9174832	nm10224485	casting_director	\N	\N
tt9174832	nm0500518	casting_director	\N	\N
tt9174832	nm0463990	production_designer	\N	\N
tt1003213	nm1905682	actress	\N	\N
tt1003213	nm1311087	actress	\N	\N
tt1003213	nm2616243	actress	\N	\N
tt1003213	nm1253885	actor	\N	\N
tt1003213	nm0955486	actor	\N	\N
tt1003213	nm2613425	director	\N	\N
tt1003213	nm2613425	writer	writer	\N
tt1003213	nm0943183	cinematographer	\N	\N
tt1003213	nm0955808	cinematographer	\N	\N
tt3509392	nm2840214	self	\N	["Self - Presenter"]
tt3509392	nm0669398	self	\N	["Self - Contestant"]
tt3509392	nm2134874	self	\N	["Self"]
tt3509392	nm0706974	self	\N	["Self"]
tt3509392	nm0709633	self	\N	["Self"]
tt3509392	nm0744436	self	\N	["Self"]
tt3509392	nm0861530	self	\N	["Self"]
tt3509392	nm0587717	director	\N	\N
tt16973386	nm2045259	actress	\N	\N
tt16973386	nm2069739	actor	\N	\N
tt16973386	nm13220986	director	\N	\N
tt11655708	nm9567219	self	\N	["Self - Sports Anchor"]
tt11655708	nm11274729	self	\N	["Self - Business Anchor"]
tt11655708	nm4044495	self	\N	["Self - News Anchor"]
tt11655708	nm11274352	producer	producer	\N
tt2657846	nm0578577	actor	\N	["Ismael"]
tt2657846	nm0953344	actor	\N	["Luigi"]
tt2657846	nm5491262	actress	\N	["Jimena"]
tt2657846	nm3084099	actor	\N	["Tramp"]
tt2657846	nm5489667	actress	\N	["Teresita"]
tt2657846	nm5491044	actor	\N	["Doggie Juan"]
tt2657846	nm5490346	actor	\N	["Recycling Center Manager"]
tt2657846	nm5491421	actor	\N	["Human Juan"]
tt2657846	nm5491248	director	\N	\N
tt2657846	nm5491248	writer	written by	\N
tt2657846	nm5490914	producer	producer	\N
tt2657846	nm5491732	composer	\N	\N
tt2657846	nm5490405	cinematographer	director of photography	\N
tt2657846	nm5490914	editor	\N	\N
tt1583044	nm0117152	self	\N	["Self - Anchor"]
tt1583044	nm0578374	writer	head writer	\N
tt28153227	nm0920265	self	\N	["Self - Taskmaster"]
tt28153227	nm12101208	self	\N	["Self - Assistant"]
tt28153227	nm2517133	self	\N	["Self - Contestant"]
tt28153227	nm6166307	self	\N	["Self - Contestant"]
tt28153227	nm7292200	self	\N	["Self - Contestant"]
tt28153227	nm8934259	self	\N	["Self - Contestant"]
tt28153227	nm12091487	self	\N	["Self - Contestant"]
tt28153227	nm2715688	director	\N	\N
tt28153227	nm4065316	director	studio director	\N
tt8378948	nm0323628	actor	\N	["Frederico"]
tt8378948	nm1137830	actress	\N	["Delfina"]
tt8378948	nm0798609	actress	\N	["Flor"]
tt8378948	nm1856834	director	\N	\N
tt8378948	nm1271743	writer	script	\N
tt8378948	nm1572484	writer	script	\N
tt8378948	nm0539254	writer	original	\N
tt8378948	nm0604358	writer	adaptation	\N
tt8378948	nm1376973	composer	\N	\N
tt8378948	nm9814677	composer	\N	\N
tt32622133	nm10710806	self	\N	["Self - Guest"]
tt32622133	nm13813405	self	\N	["Self - Guest"]
tt32622133	nm15225286	self	\N	["Self - Guest"]
tt32622133	nm15008283	self	\N	["Self - Guest"]
tt32622133	nm8389781	self	\N	["Self - Host"]
tt32622133	nm10490386	director	\N	\N
tt32622133	nm10490385	director	\N	\N
tt32622133	nm16262524	writer	\N	\N
tt0433570	nm0097504	self	\N	["Self"]
tt0433570	nm0001019	self	\N	["Self"]
tt0433570	nm0240381	self	\N	["Self"]
tt0433570	nm0266302	self	\N	["Self"]
tt0433570	nm0312454	self	\N	["Self"]
tt0433570	nm0483047	self	\N	["Self"]
tt0433570	nm0737390	self	\N	["Self"]
tt0433570	nm1032795	self	\N	["Self"]
tt0433570	nm0858969	self	\N	["Self"]
tt0433570	nm0604699	self	\N	["Self"]
tt0433570	nm0266302	director	\N	\N
tt0433570	nm0726613	editor	\N	\N
tt13337830	nm0378532	actor	\N	["Mr. Wizard"]
tt13337830	nm0378532	writer	creator	\N
tt13337830	nm2112565	writer	creator	\N
tt0278788	nm0304265	actor	\N	\N
tt0278788	nm1105643	actor	\N	["Doraiswamy"]
tt0278788	nm0820286	actress	\N	\N
tt0278788	nm0419653	director	\N	\N
tt0278788	nm0707982	writer	\N	\N
tt0278788	nm0904499	cinematographer	\N	\N
tt0278788	nm0788155	editor	\N	\N
tt12570470	nm11388828	actress	\N	\N
tt7915840	nm0503053	director	\N	\N
tt7915840	nm0503053	writer	written by	\N
tt7915840	nm4699864	producer	producer	\N
tt14060846	nm1296124	self	\N	["Self - Prime Minister of the United Kingdom"]
tt14060846	nm2850888	self	\N	["Self - Chief Executive, NHS England"]
tt14060846	nm11318317	self	\N	["Self - Chief Medical Officer"]
tt11483678	nm1000502	actor	\N	["Elliot"]
tt11483678	nm0435678	actress	\N	["Delilah"]
tt11483678	nm0827735	actress	\N	["Jenny"]
tt11483678	nm0593107	actress	\N	["Ayisha"]
tt11483678	nm2428200	actor	\N	["Man"]
tt11483678	nm3590937	actress	\N	["Younger Margaret"]
tt11483678	nm0422040	actor	\N	["Leonard"]
tt11483678	nm6234226	actress	\N	["Margaret"]
tt11483678	nm0322306	director	\N	\N
tt11483678	nm0322306	writer	\N	\N
tt11483678	nm3577109	producer	producer	\N
tt11483678	nm0456693	producer	producer	\N
tt11483678	nm1768450	producer	producer	\N
tt11483678	nm0034502	composer	\N	\N
tt11483678	nm3252439	cinematographer	\N	\N
tt11483678	nm8170129	production_designer	\N	\N
tt1916818	nm3274340	actor	\N	["Vince"]
tt1916818	nm1972368	writer	\N	\N
tt2196723	nm4867351	self	\N	["Self - Speaker"]
tt2196723	nm0114871	self	\N	["Self - Speaker"]
tt2196723	nm2167668	self	\N	["Self - Chairman"]
tt2196723	nm0410408	producer	producer	\N
tt30246749	nm15533577	actor	\N	\N
tt30246749	nm15533573	actor	\N	\N
tt30246749	nm6414973	actress	\N	\N
tt30246749	nm15533576	actress	\N	\N
tt30246749	nm13368455	actress	\N	\N
tt30246749	nm13262848	actress	\N	\N
tt30246749	nm15533572	actor	\N	\N
tt30246749	nm15533574	actor	\N	\N
tt30246749	nm10890227	actress	\N	\N
tt30246749	nm15533575	actress	\N	\N
tt8491464	nm0906145	actor	\N	["Tirana"]
tt8491464	nm0716607	actress	\N	["Juliana"]
tt8491464	nm0740856	actor	\N	["Tenente Aquiles"]
tt8491464	nm0784733	actor	\N	["Zebedeu"]
tt8491464	nm0578057	actor	\N	["Coronel Honorato Guedes"]
tt8491464	nm0016715	actor	\N	["Padre Waldeck"]
tt8491464	nm0510626	actor	\N	["Desidério"]
tt8491464	nm0685140	actress	\N	["Vó Isabel"]
tt8491464	nm0241663	actor	\N	["Terto"]
tt8491464	nm0673717	actor	\N	["Zagaia"]
tt8491464	nm0042771	director	\N	\N
tt8491464	nm0044244	director	\N	\N
tt8491464	nm0481498	director	\N	\N
tt8491464	nm0683305	director	director	\N
tt8491464	nm2152282	writer	\N	\N
tt8491464	nm0270805	writer	collaborating writer	\N
tt8491464	nm0506367	writer	\N	\N
tt8491464	nm0681489	writer	novel "Dente de Ouro"	\N
tt1956753	nm1507860	actor	\N	["Hismelf - Host"]
tt1956753	nm1509566	director	\N	\N
tt14528300	nm2371046	actress	\N	["Anupama Kapoor"]
tt14528300	nm2371046	actress	\N	["Tia Kapoor"]
tt14528300	nm7129302	actor	\N	["Veer Kapoor"]
tt14528300	nm10485836	actress	\N	["Sayali"]
tt14528300	nm1778890	actor	\N	["Daksh Singhania"]
tt14528300	nm12176576	director	director	\N
tt14528300	nm7006227	writer	\N	\N
tt14528300	nm9115584	writer	\N	\N
tt14528300	nm0045119	producer	producer	\N
tt4318198	nm0083534	actor	\N	\N
tt4318198	nm6616708	actor	\N	\N
tt4318198	nm2071432	actress	\N	\N
tt4318198	nm1031555	actor	\N	\N
tt4318198	nm0655368	actor	\N	\N
tt4318198	nm0764598	actress	\N	\N
tt4318198	nm0423656	actor	\N	\N
tt4318198	nm1391599	director	\N	\N
tt5989082	nm0791606	actress	\N	["Sydney Flickenschild"]
tt5989082	nm5474814	actress	\N	["Kim Parker"]
tt5989082	nm0120528	actor	\N	["Holger Mielitzer"]
tt5989082	nm0291132	actress	\N	["Merle Vanlohen"]
tt5989082	nm0865435	actor	\N	["Gunter Flickenschild"]
tt5989082	nm0362510	actor	\N	["Mathis Segert"]
tt5989082	nm0031433	actress	\N	["Johanna Jansen"]
tt5989082	nm0509699	actress	\N	["Erika Rose"]
tt5989082	nm0165346	actor	\N	["Hannes Lüder"]
tt5989082	nm1065525	actor	\N	["Thomas Jansen"]
tt5989082	nm4568360	director	\N	\N
tt5989082	nm0958133	director	director	\N
tt5989082	nm0014332	writer	concept	\N
tt5989082	nm0634928	writer	concept	\N
tt5989082	nm5825207	writer	concept	\N
tt5989082	nm7823466	writer	head writer	\N
tt5989082	nm0501607	producer	producer	\N
tt5989082	nm0250580	editor	\N	\N
tt5989082	nm0126984	casting_director	\N	\N
tt2314165	nm1333810	self	\N	["Self"]
tt14435270	nm11089632	actor	\N	\N
tt14435270	nm13294554	actor	\N	["Inspector Suresh"]
tt14435270	nm0704654	actress	\N	\N
tt14435270	nm5407557	actress	\N	\N
tt14435270	nm12422192	actor	\N	\N
tt14435270	nm11060042	director	\N	\N
tt14435270	nm2289322	writer	\N	\N
tt11788230	nm7130869	actor	\N	\N
tt11788230	nm8185913	actress	\N	\N
tt11788230	nm11338299	director	\N	\N
tt11788230	nm11308400	writer	\N	\N
tt11788230	nm11308401	writer	\N	\N
tt11788230	nm10641838	producer	producer	\N
tt11788230	nm11308402	cinematographer	\N	\N
tt11788230	nm11308403	editor	\N	\N
tt1284952	nm0001017	actor	\N	["Captain Hooks"]
tt1284952	nm0593850	actor	\N	["Captain Hooks"]
tt1284952	nm0931868	actor	\N	["Steve Andrews"]
tt31182969	nm9441821	actor	\N	["Sarman"]
tt31182969	nm7970959	actress	\N	["Isin"]
tt1199264	nm0000101	actor	\N	["Rev. Mike Weber"]
tt1199264	nm0163659	actor	\N	["Rev. Todd Tucker"]
tt1199264	nm0792200	actor	\N	["Kenny Weber"]
tt1199264	nm0057075	actor	\N	["Andy Weber"]
tt1199264	nm0153733	actress	\N	["Meredith Weber"]
tt1199264	nm0277772	actor	\N	["Fred Weber"]
tt1199264	nm0559977	actor	\N	["Bishop Peter Jerome"]
tt1199264	nm0664756	director	\N	\N
tt1199264	nm0931285	writer	created by	\N
tt1199264	nm0689390	writer	writer	\N
tt1199264	nm0535558	producer	producer	\N
tt1199264	nm0625067	producer	producer	\N
tt1199264	nm0664756	producer	producer	\N
tt1199264	nm0668234	producer	producer	\N
tt1199264	nm0284262	composer	\N	\N
tt23771282	nm14245966	self	\N	["Self"]
tt23771282	nm13702848	self	\N	["Self - Host"]
tt33306826	nm4085521	self	\N	["Self"]
tt33043193	nm14421342	self	\N	["Self"]
tt33043193	nm6666027	self	\N	["Self"]
tt29077591	nm15242809	actress	\N	\N
tt29077591	nm10013178	actress	\N	\N
tt29077591	nm10525179	actor	\N	["Karthik"]
tt29077591	nm0482421	actress	\N	\N
tt29077591	nm1032596	actress	\N	\N
tt29077591	nm14284362	actor	\N	["Vaiga"]
tt29077591	nm14284361	actress	\N	["Sundari"]
tt29077591	nm12664703	director	\N	\N
tt29077591	nm14284241	director	\N	\N
tt29077591	nm7841383	writer	\N	\N
tt29077591	nm14284244	writer	\N	\N
tt29077591	nm0033243	producer	producer	\N
tt29077591	nm11578973	producer	producer	\N
tt29077591	nm7887368	composer	\N	\N
tt29077591	nm14284363	cinematographer	\N	\N
tt29077591	nm14284364	editor	\N	\N
tt0117784	nm0674231	actress	\N	["Phyllis Saroka"]
tt0117784	nm0823507	actor	\N	["Shorty"]
tt0117784	nm0001406	actress	\N	["Mona"]
tt0117784	nm0005024	actor	\N	["Spaceman"]
tt0117784	nm0767779	actress	\N	["Barbara"]
tt0117784	nm0094170	actor	\N	["Busy-Bee"]
tt0117784	nm0365371	actor	\N	["Butter"]
tt0117784	nm0355318	actor	\N	["Andre"]
tt0117784	nm0849612	actor	\N	["Drano"]
tt0117784	nm0397599	actor	\N	["Kurt"]
tt0117784	nm0326837	director	\N	\N
tt0117784	nm0742568	writer	written by	\N
tt0117784	nm0569198	writer	written by	\N
tt0117784	nm0000362	producer	producer	\N
tt0117784	nm0667340	producer	producer	\N
tt0117784	nm0787834	producer	producer	\N
tt0117784	nm0006108	composer	\N	\N
tt0117784	nm0321142	composer	composer	\N
tt0117784	nm0338577	cinematographer	director of photography	\N
tt0117784	nm0167986	editor	\N	\N
tt0117784	nm0498387	casting_director	\N	\N
tt0117784	nm0715296	casting_director	\N	\N
tt0117784	nm0715762	casting_director	casting_director	\N
tt0117784	nm0667030	production_designer	\N	\N
tt6335768	nm8058025	actor	\N	\N
tt6335768	nm9839122	actor	\N	["Main Auctioneer"]
tt6335768	nm7094827	actor	\N	["The Lone Wolf"]
tt6335768	nm7780356	actress	\N	["Buyer"]
tt6335768	nm8359027	editor	\N	\N
tt8621708	nm1186985	self	\N	["Self - Presenter"]
tt8621708	nm0062772	archive_footage	\N	\N
tt8621708	nm0002075	archive_footage	\N	\N
tt8621708	nm0000027	archive_footage	\N	\N
tt8621708	nm0599910	archive_footage	\N	\N
tt8621708	nm0694090	archive_footage	\N	\N
tt8621708	nm0703033	archive_footage	\N	\N
tt8621708	nm0751983	archive_footage	\N	\N
tt8621708	nm0787289	self	\N	["Self"]
tt8621708	nm0086527	director	\N	\N
tt8621708	nm1654135	producer	producer	\N
tt8621708	nm0086527	producer	producer	\N
tt8621708	nm1313338	producer	producer	\N
tt8621708	nm1186985	editor	\N	\N
tt2044311	nm1420414	self	\N	["Self - Hostess"]
tt2044311	nm0171587	self	\N	["Self"]
tt2044311	nm1896125	self	\N	["Self"]
tt2044311	nm1714095	self	\N	["Self"]
tt2044311	nm0845081	self	\N	["Self"]
tt2044311	nm1778991	self	\N	["Self"]
tt12304568	nm1541087	self	\N	["Self - Host"]
tt12304568	nm2407794	self	\N	["Self - Host"]
tt12304568	nm2083911	self	\N	["Self - Host"]
tt0614110	nm0000792	actor	\N	["Jackie Thomas"]
tt0614110	nm0100381	actor	\N	["Jerry Harper"]
tt0614110	nm0478844	actress	\N	["Laura Miller"]
tt0614110	nm0005227	actor	\N	["Chas Walker"]
tt0614110	nm0090225	actor	\N	["Grant Watson"]
tt0614110	nm0082450	actor	\N	["Bobby Wynn"]
tt0614110	nm0123078	actress	\N	["Nancy Mincher"]
tt0614110	nm0611898	actor	\N	["Doug Talbot"]
tt0614110	nm0036261	actress	\N	["Sophie Ford"]
tt0614110	nm0000394	actor	\N	["Chris Thomas"]
tt0614110	nm0504297	director	\N	\N
tt0614110	nm0534983	writer	written by	\N
tt0614110	nm0755245	production_designer	\N	\N
tt12111948	nm0311361	self	\N	["Self"]
tt12111948	nm0888668	self	\N	["Self"]
tt12111948	nm0597944	director	\N	\N
tt12111948	nm0055400	writer	\N	\N
tt12111948	nm1028419	writer	\N	\N
tt1999822	nm1680298	director	\N	\N
tt1999822	nm1680298	writer	\N	\N
tt1999822	nm0158928	producer	producer	\N
tt1999822	nm0078775	cinematographer	\N	\N
tt1999822	nm0686020	editor	\N	\N
tt4048860	nm1833429	actor	\N	["(Amit as Rahul singh)"]
\.


--
-- Data for Name: episodes; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.episodes (episode_title_id, show_title_id, season_number, episode_number) FROM stdin;
\.


--
-- Data for Name: people; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.people (person_id, name, born, died) FROM stdin;
nm1653294	Mike Greenberg	1967	\N
nm3123756	Danny Kanell	1973	\N
nm4227919	LeGarrette Blount	1986	\N
nm2118348	Drew Brees	1979	\N
nm4331956	Robert Griffin III	1990	\N
nm6208249	Jay Gruden	1967	\N
nm1707986	Jon Gruden	1963	\N
nm2713913	Rusty Hardin	1941	\N
nm1772667	Kirk Herbstreit	1969	\N
nm2388297	Jemele Hill	1975	\N
nm13764610	Ja-Mez Lewis	\N	\N
nm13764609	Darrell Smith	\N	\N
nm3332905	Daniel Stine	\N	\N
nm8128804	Shaun MacLean	\N	\N
nm1484579	J.R. Campbell	\N	\N
nm2105820	Christian Ortega	\N	\N
nm0868893	Thomas Torrey	1981	\N
nm0863906	Marcelo Tinelli	1960	\N
nm2008973	Wei-De Huang	1971	\N
nm4477010	Meng Zhang	1988	\N
nm0152061	Winston Chao	1960	\N
nm2887021	Ying Chen	\N	\N
nm1279288	Guoqiang Feng	\N	\N
nm5296606	Tingting Gan	1986	\N
nm10802084	Xuan Guan	\N	\N
nm3302241	Kui Qi	\N	\N
nm2867494	Duoduo Qian	\N	\N
nm5576428	Renjun Wang	\N	\N
nm16066063	Ed Craig	1931	2013
nm5022085	Byron Day	\N	\N
nm16283824	Fran Fawcett	\N	\N
nm16066064	Charlie B. Watson	1927	1989
nm0898904	Jeremy Vine	1965	\N
nm1674838	Kevin Ashman	\N	\N
nm4014706	Pat Gibson	\N	\N
nm1668492	Christopher Hughes	1947	\N
nm1675785	Judith Keppel	1942	\N
nm3320328	Barry Simmons	\N	\N
nm0288734	Jim Fowler	1930	2019
nm0674002	Marlin Perkins	1905	1986
nm1054839	Don Meier	1915	2019
nm0459379	Richard Klevickis	1922	2000
nm0321053	Richard A. Girvin	\N	\N
nm9361657	Emanuele Delia	\N	\N
nm6190849	Karen Lynn	\N	\N
nm6190848	Chris Milewski	\N	\N
nm0667942	Chiara Pavoni	\N	\N
nm6961991	Simone Tolu	\N	\N
nm0188173	Domiziano Cristopharo	\N	\N
nm2854099	Andrea Cavaletto	1976	\N
nm6976611	Antony Coia	1979	\N
nm0539016	Tina Malave	1971	\N
nm16582723	Lisa M. Gonzales	\N	\N
nm1493956	Beth Polsky	\N	\N
nm4316297	Manuel Möglich	1979	\N
nm5570570	Anika Knudsen	\N	\N
nm4339540	Tom Littlewood	\N	\N
nm3964161	Matthias Bähr	\N	\N
nm11330933	Matthias Bähr	\N	\N
nm7717908	Andy Lehmann	\N	\N
nm3960006	Ayla Gottschlich	1982	\N
nm1486329	Bertrand Delapierre	\N	\N
nm6170554	Amandine Lebrat	\N	\N
nm2986340	Julien Tricard	\N	\N
nm15094953	Onildo Rocha	\N	\N
nm15107699	Lucas Pezzin Vazalli	\N	\N
nm8212108	Maria Pinho	\N	\N
nm15103126	Carol Daher	\N	\N
nm15094956	Adriana Benevenuto	\N	\N
nm15094957	Carolina Felissíssimo	\N	\N
nm15103788	Andrea Miyata	\N	\N
nm15094959	Pedro Monteiro dos Santos	\N	\N
nm2726816	Millie Panichi	\N	\N
nm2174052	Travis Stork	1972	\N
nm2822590	Andrew Ordon	1950	\N
nm1805680	Sonya Batra	\N	\N
nm2020618	Judy Ho	1979	\N
nm8642561	Nita Landry	\N	\N
nm4083495	Katherine Schwarzenegger	1989	\N
nm8355596	Ashley Holt	\N	\N
nm1052949	Sam Mussari	\N	\N
nm12882781	Samuel Brown	\N	\N
nm12882775	Jake Garcia	\N	\N
nm12882778	Lenley Gross	\N	\N
nm12882777	Kendall Haden	\N	\N
nm12882771	Amari Jones	\N	\N
nm12882773	Grayson Leavy	\N	\N
nm12882780	Morgan Miller	\N	\N
nm12960928	Susan L. Oelkers	\N	\N
nm12882774	Jacarrius Peak	\N	\N
nm12882772	Ella Sefa	\N	\N
nm2217296	Jason Sciavicco	\N	\N
nm7308920	Eric Dodson	\N	\N
nm1209355	James Brevard	\N	\N
nm2776283	Michael Griffin	\N	\N
nm1604151	Mike Hugo	\N	\N
nm8900560	Horace Priester	\N	\N
nm5571966	Brian Sullivan	\N	\N
nm2310344	Marisol Aguirre	\N	\N
nm3039689	Sergio Antonio	1991	\N
nm3039557	Jorge Bardales	\N	\N
nm2148989	Úrsula Boza	\N	\N
nm0107669	Pilar Brescia	1957	\N
nm3039446	Valeria Bringas	\N	\N
nm3026260	Carlos Cano	\N	\N
nm3039902	Paco Caparó	\N	\N
nm1881231	Lorena Caravedo	\N	\N
nm3025005	Giselle Collao	\N	\N
nm1941476	Wilmer Gutierrez	\N	\N
nm2306184	Michel Gómez Zanoli	\N	\N
nm1940343	Nena Bravo	\N	\N
nm1942911	Víctor Falcón	\N	\N
nm1938402	Jimena Ortiz de Zevallos	\N	\N
nm1938788	Giselle Bedón	\N	\N
nm3039793	Pedro Luis Pacora	\N	\N
nm1582184	Celso Elías	\N	\N
nm2316128	Rubén Herrera	1991	\N
nm3039714	Jorge Vilela de Rutte	\N	\N
nm1516927	Javier Velazco	\N	\N
nm0001654	Ronald Reagan	1911	2004
nm0177927	Charles Cooper	1926	2013
nm0490961	S. John Launer	1919	2006
nm0600525	Ralph Moody	1886	1971
nm0829558	Kay Stewart	1919	2002
nm0958451	Bill Zuckert	1915	1997
nm0111754	Walter Brooke	1914	1986
nm0259984	Bill Erwin	1914	2010
nm0495396	Norman Leavitt	1913	2005
nm0929116	Guy Wilkerson	1899	1971
nm0428195	Harmon Jones	1911	1972
nm2526029	Lance Hazzard	\N	\N
nm0820921	Robert Stabler	1918	1988
nm0804165	Marlin Skiles	1906	1981
nm0192157	Richard E. Cunha	1922	2005
nm0182746	Harry Coswick	1908	1982
nm0357619	Milt Hamerman	1925	2012
nm3884847	Aiden Ashley	1988	\N
nm11613030	Blake Blossom	2000	\N
nm12098816	Ariela Donovan	\N	\N
nm7168699	Whitney Wright	1991	\N
nm2651723	Mabuki Andô	1969	\N
nm1135060	Naoto Adachi	1993	\N
nm0875335	Kôji Tsujitani	1962	2018
nm0038351	Mayumi Asano	1969	\N
nm1209923	Ryô Hirohashi	1978	\N
nm1203697	Hirofumi Nojima	1973	\N
nm0411112	Takkô Ishimori	1932	2013
nm1054043	Atsushi Ono	1961	\N
nm1305522	Naomi Kusumi	1954	\N
nm0648768	Masaya Matsukaze	1976	\N
nm2559182	Kôichi Hatsumi	\N	\N
nm0436784	Kenji Kamiyama	1966	\N
nm4396873	Kôdai Kakimoto	\N	\N
nm2282696	Tomoki Kyôda	\N	\N
nm0715532	Kristi Reed	1971	\N
nm1371924	Yoshiki Sakurai	\N	\N
nm2650961	Nahoko Uehashi	\N	\N
nm0559403	Akio Matsuda	\N	\N
nm2650602	Tomoyasu Nishimura	\N	\N
nm1754696	Shinjirô Yokoyama	\N	\N
nm0442766	Kenji Kawai	1957	\N
nm2013149	Naoki Satô	1970	\N
nm1881467	Kôji Tanaka	\N	\N
nm0879963	Jun'ichi Uematsu	\N	\N
nm10625204	Ashwin	\N	\N
nm1748770	Chitra Shenoy	\N	\N
nm10625203	Vindhuja Vikraman	\N	\N
nm11667265	Pradeep Ragan	\N	\N
nm11238208	Pradeep Manikkar	\N	\N
nm7933716	Martin Joe	\N	\N
nm12640067	Kushi Shenoy	\N	\N
nm2939921	Michael Parlett	\N	\N
nm4062075	Kevin Ross	\N	\N
nm4105334	Bruce Thomas	\N	\N
nm1487328	X. Dean Lim	\N	\N
nm7038578	Kukhatusha Croom	\N	\N
nm2500582	Sybil L. Curry	\N	\N
nm7038582	Mike Del Amico	\N	\N
nm3605609	Kyle Dill	\N	\N
nm3353847	Adam Desaulniers	\N	\N
nm4104183	Alex Winter	\N	\N
nm5381994	Brandon Artiles	\N	\N
nm16548257	John Bryant	\N	\N
nm16545593	Marcus Holliday	\N	\N
nm10505531	Katina Rankin	\N	\N
nm3883377	Rod Harrison	\N	\N
nm3935530	Bill Classon	\N	\N
nm2500933	Jason Munn	\N	\N
nm1778383	Graham K. Furness	\N	\N
nm7517557	Jip Panosot	\N	\N
nm7822715	Heather Burridge	\N	\N
nm6352041	Peta Carolan	\N	\N
nm5607513	Matthew Dixon	\N	\N
nm7822714	Kayla Allen	\N	\N
nm7822717	Caitlin Stewart	\N	\N
nm7822713	Hayley Maybury	\N	\N
nm7815959	Jack Donovan	\N	\N
nm7712117	Tayler Trotter	\N	\N
nm0005300	Allen Payne	1968	\N
nm1741905	LaVan Davis	1966	\N
nm0204322	Cassi Davis	1964	\N
nm2342614	Lance Gross	1981	\N
nm2351246	Demetria McKinney	1979	\N
nm0700443	Keshia Knight Pulliam	1979	\N
nm3204110	Benjamin Lamm	1984	\N
nm1442928	Bobb'e J. Thompson	1996	\N
nm2950889	Palmer Williams Jr.	1964	\N
nm0934569	Troy Winbush	\N	\N
nm1347153	Tyler Perry	1969	\N
nm3872614	Brian Egeston	\N	\N
nm4465556	Chrystal A. Ellzy	\N	\N
nm3884187	Will Areu	\N	\N
nm1725195	Mark E. Swinton	1968	\N
nm6035510	Charles Isaiah Lemons	\N	\N
nm1253715	Korey Washington	\N	\N
nm0221046	Zooey Deschanel	1980	\N
nm2159926	Jake Johnson	1978	\N
nm0339011	Max Greenfield	1980	\N
nm2031358	Lamorne Morris	1983	\N
nm1924196	Hannah Simone	1980	\N
nm1682319	Nate Corddry	1977	\N
nm0875641	Marcelo Tubert	1952	\N
nm0123307	Marcia Ann Burrs	1940	\N
nm0566931	Matthew McCray	1975	\N
nm4263976	Yimmy Yim	1982	\N
nm1119645	Lynn Shelton	1965	2020
nm2057975	Elizabeth Meriwether	1981	\N
nm2072419	Nick Adams	1973	\N
nm2485374	Rebecca Addelman	\N	\N
nm3106135	Robert Snow	\N	\N
nm1503347	David Iserson	\N	\N
nm2747257	Ryan Koh	1977	\N
nm3234869	Ludwig Göransson	1984	\N
nm0022540	Russ T. Alsobrook	1946	\N
nm0580919	Brian Merken	1977	\N
nm0079056	Juel Bestrop	\N	\N
nm0172837	Anya Colloff	\N	\N
nm1217440	Michael V. Nicolo	\N	\N
nm0946134	Seth Yanklewitz	\N	\N
nm0924115	Michael Whetstone	\N	\N
nm1493738	Matthijs van Nieuwkerk	1960	\N
nm0717603	Halina Reijn	1975	\N
nm5665307	René Bernards	\N	\N
nm5327644	Pieter Gautier	\N	\N
nm3947531	Vincent Icke	\N	\N
nm2626926	Herman Pleij	1943	\N
nm6115267	Beppie van den Bogaerde	\N	\N
nm0771795	Martijn Schimmer	\N	\N
nm1598782	Ken Barrie	1933	2016
nm0101724	Carole Boyd	1941	\N
nm0315792	Kulvinder Ghir	1965	\N
nm2094033	Janet James	\N	\N
nm1249885	Melissa Sinden	1943	\N
nm0382506	Jimmy Hibbert	1949	\N
nm0852123	Chris Taylor	\N	\N
nm2693805	Glenn Dakin	\N	\N
nm1789524	John Cunliffe	1933	2018
nm1103739	Chris Bowden	\N	\N
nm1378720	Bryan Daly	\N	2012
nm2261339	Simon Woodgate	\N	\N
nm0703033	Anthony Quayle	1913	1989
nm0240904	Gerry Duggan	1910	1992
nm0365786	Noel Harrison	1934	2013
nm0397968	Edward Howell	1902	1986
nm0721573	Peter Reynolds	1921	1975
nm0114268	Mende Brown	1920	2002
nm6823045	Carley Knobloch	\N	\N
nm0063232	Shlomit Baytelman	1949	\N
nm1336858	Ingrid Cruz	1975	\N
nm1344955	Álvaro Escobar	1966	\N
nm3640898	Daniela Ramírez	1987	\N
nm1416766	Teresita Reyes	1950	\N
nm1450550	Claudio López de Lérida	\N	\N
nm1452091	Onell López	\N	\N
nm1419678	Alejandro Cabrera	\N	\N
nm0001170	Roger Ebert	1942	2013
nm0736411	Richard Roeper	1959	\N
nm14565416	Luo Meng Chen	\N	\N
nm5340022	Yuchen Du	\N	\N
nm11166239	Meng Fan	\N	\N
nm10306095	Jun Gong	1992	\N
nm12702759	Zhang Han	\N	\N
nm14565418	Gui Xin Hui	\N	\N
nm14565413	Feng Jun	\N	\N
nm9909666	Siqi Li	\N	\N
nm10968648	Weilong Liu	\N	\N
nm11065938	Zhi Liu	\N	\N
nm11549914	Chi Xu	\N	\N
nm14273109	Krung Ya Chat	\N	\N
nm11788480	Li-Wen Chen	\N	\N
nm11549917	Yuehua Jiang	\N	\N
nm11363999	Yu Hui	\N	\N
nm0392223	Bob Holness	1928	2012
nm6530360	Lilly Singh	1988	\N
nm1242903	Nicole DuPort	1980	\N
nm1748530	Olga Kay	1982	\N
nm4646844	Alexa Losey	1993	\N
nm5430687	Kota Wade	\N	\N
nm6548767	Jason Deane	\N	\N
nm12468252	Faraz Matin	\N	\N
nm2090697	Tony Nicholas	\N	\N
nm10167268	Emily H. Riley	\N	\N
nm12468253	Engelbert Sebastian	\N	\N
nm9849143	Les Zig	\N	\N
nm10208880	Stuart Jaymes	\N	\N
nm11577142	Victoria Petkopoulos	\N	\N
nm0163132	Silvia Claes	1976	\N
nm5352461	Nele De Mol	1978	\N
nm0221400	Jef De Smedt	1956	\N
nm0311639	Annie Geeraerts	1926	\N
nm0427366	Martine Jonckheere	1956	\N
nm0480911	Jacky Lafon	1946	\N
nm0505447	Gunther Levi	1976	\N
nm0535434	Caroline Maes	1976	\N
nm1009315	Chris Van Tongelen	1968	\N
nm1012401	Hilde Van Wesepoel	1969	\N
nm1234589	Johan Thiels	\N	\N
nm1041792	Frank Tulkens	\N	\N
nm1041858	Herman Verbaet	\N	\N
nm0237754	Jürgen Drews	1945	\N
nm3154869	Elmar Mai	1948	\N
nm2018761	Ingo Nommsen	1971	\N
nm2189240	Armin Roßmeier	1949	\N
nm3269739	Emily Axford	1985	\N
nm4447770	Brian Murphy	\N	\N
nm2802539	Paul Briganti	\N	\N
nm2441363	Daniel Siegel	\N	\N
nm3855726	Carissa Dorson	\N	\N
nm3816059	James Fitzpatrick	\N	\N
nm3268880	Dan Racusin	\N	\N
nm2977423	Nikki Brooks	1989	\N
nm9959637	Lenna Lux	1999	\N
nm11303437	Seph	\N	\N
nm0929506	Steve Wilkos	1964	\N
nm0775812	Katharina Schubert	1963	\N
nm0937239	Tom Wlaschiha	1973	\N
nm0369264	Jürgen Haug	1948	\N
nm0632431	Thorsten Nindel	1964	\N
nm0035532	Martin Armknecht	1962	\N
nm0013865	Yasmina Djaballah	1971	\N
nm1679805	Katharina Kaali	1977	\N
nm2563931	Anna Hopperdietz	1981	\N
nm0378914	Louisa Herfert	1986	\N
nm0477909	Nicolas König	1968	\N
nm0317307	Kitu Gidwani	1967	\N
nm0536821	Anju Mahendru	1946	\N
nm1123937	Rohit Roy	1968	\N
nm1122077	Harsh Chhaya	1970	\N
nm0048075	Manoj Bajpayee	1969	\N
nm1024997	Deepak Parashar	1952	\N
nm0709359	Ashutosh Rana	1967	\N
nm0969505	Kunika Sadanand	1964	\N
nm0890622	Mita Vashisht	1967	\N
nm1690549	Channa Ruparel	1971	\N
nm0080315	Mahesh Bhatt	1948	\N
nm0212544	Shobha De	1948	\N
nm1199935	Vinod Ranganathan	\N	\N
nm0002695	Amit Khanna	1951	\N
nm3743634	Kirk Gunton	\N	\N
nm7341617	Kirk Rozich	\N	\N
nm4420364	Carlie Cain	\N	\N
nm2186650	Rafael Angel	\N	\N
nm10919702	Thayssa Ferraz	\N	\N
nm9033171	Khan	\N	\N
nm2962727	Esme Creed-Miles	2000	\N
nm0257969	Mireille Enos	1975	\N
nm1172478	Joel Kinnaman	1979	\N
nm0852965	Noah Taylor	1969	\N
nm10441597	Áine Rose Daly	\N	\N
nm5188575	Jasmine Breinburg	\N	\N
nm8356463	Yasmin Monet Prince	\N	\N
nm3342825	Andrea Deck	1994	\N
nm1465245	Osi Okerafor	\N	\N
nm2043234	Khalid Abdalla	1980	\N
nm0257775	Anders Engström	1963	\N
nm1016333	David Farr	1969	\N
nm2605946	Seth Lochhead	1981	\N
nm2222681	Tom Mullens	\N	\N
nm0057856	Geoff Barrow	1971	\N
nm1367927	Ben Salisbury	\N	\N
nm0666089	Mark Patten	\N	\N
nm1551349	Cheryl Potter	\N	\N
nm0047071	Shaheen Baig	\N	\N
nm1552475	Veronika Varjasi	1976	\N
nm1980860	Jo Riddell	\N	\N
nm0570364	Joel McHale	1971	\N
nm1843026	Gillian Jacobs	1982	\N
nm2209821	Danny Pudi	1979	\N
nm1304328	Yvette Nicole Brown	\N	\N
nm1555340	Alison Brie	1982	\N
nm2255973	Donald Glover	1983	\N
nm0421822	Ken Jeong	1969	\N
nm0000331	Chevy Chase	1943	\N
nm0711110	Jim Rash	1971	\N
nm3112016	Sabrina Carmichael	1985	\N
nm0751648	Joe Russo	1971	\N
nm1363595	Dan Harmon	1973	\N
nm1560199	Liz Cackowski	1977	\N
nm1819732	Jake Aust	1973	\N
nm0452527	Patrick Kienlen	\N	\N
nm3799159	Heather Petrigala	\N	\N
nm0370258	James Hawkinson	1962	\N
nm0116714	Steven Sprung	\N	\N
nm0906601	Dava Waite	\N	\N
nm0384192	Derek R. Hill	\N	\N
nm0263496	Chad Everett	1937	2012
nm0198446	James Daly	1918	1978
nm0750640	Barbara Rush	1927	\N
nm0001049	Jill Clayburgh	1944	2010
nm0093780	Ivan Bonar	1924	1988
nm0121826	Paul Burke	1926	2009
nm0132930	William Campbell	1923	2011
nm0404533	Chris Hutson	1930	2024
nm0446205	Bebe Kelly	1935	2012
nm0449919	Robert Kersch	\N	\N
nm0068691	Earl Bellamy	1917	2003
nm0322819	Frank Glicksman	1921	1984
nm0911350	Al C. Ward	1919	2009
nm0109608	Don Brinkley	1921	2012
nm0207520	Jerry de Bono	1931	2006
nm0738835	George Romanis	\N	\N
nm0686642	Edward R. Plante	\N	\N
nm0347739	William B. Gulick	\N	\N
nm5581186	Edoardo Lomazzi	\N	\N
nm7270373	Eleonora Giovanardi	1982	\N
nm3266446	Marco Manfredi	\N	\N
nm7285211	Giuseppina Morara	\N	\N
nm4780646	Filippo Pagotto	\N	\N
nm1400021	Kastriot Shehi	\N	\N
nm3701770	Renato Giugliano	\N	\N
nm3275885	Margherita Ferri	\N	\N
nm4423923	Davide Labanti	\N	\N
nm5142166	Simonluca Laitempergher	\N	\N
nm4215706	Gianmarco Rossetti	\N	\N
nm7554748	Caro Cream	\N	\N
nm7275953	Tyler Steel	\N	\N
nm8447014	Ruby Steele	\N	\N
nm6425163	James Chilli Chillingworth	\N	\N
nm5741914	Chris Stuckmann	\N	\N
nm5366343	Lexi Kartel	1992	\N
nm1110046	Marley	1970	\N
nm2046042	Osvaldo Príncipi	1956	\N
nm3043098	Carla Bonfante	\N	\N
nm3043472	Delfina Gerez Bosco	\N	\N
nm3041633	Leandro Penna	\N	\N
nm4846029	Nazareno Móttola	\N	\N
nm0453629	Natalia Kim	\N	\N
nm14077321	Michael Krüger	\N	\N
nm2499006	Frank Wierke	\N	\N
nm1549110	Ingo Fliess	\N	\N
nm8422096	Erlend Apneseth	\N	\N
nm5402972	Cameron Canada	1989	\N
nm0634553	Ramon Nomar	1974	\N
nm0844483	Zoltán Szöke	1968	\N
nm0889717	Izabella Varga	1973	\N
nm0863091	Csaba Tihanyi Tóth	1968	\N
nm1380781	Krisztina Lóránt	1971	\N
nm0455633	Ottó Kinizsi	1982	\N
nm0222064	Anita Deutsch	1974	\N
nm1886300	Fruzsina Marenec	1989	\N
nm0302036	Gáspár Galgóczy	1988	\N
nm1536926	Edina Balogh	1984	\N
nm1333780	Mátyás Dósa	1987	\N
nm0617352	István Márton	1947	\N
nm1907944	Zsuzsanna Dvornik	\N	\N
nm1153649	Michael Greaves	\N	\N
nm2139195	Andrea Polgár	\N	\N
nm14776121	Andrea Aruna Schrök	\N	\N
nm0435492	Tamás Kalamár	\N	\N
nm0813749	Krisztián Som	1975	\N
nm8188518	Pauline Elliott	\N	\N
nm8188519	Becky Green	\N	\N
nm8188520	Joe Nurse	\N	\N
nm8161794	Jonathan Zaurin	\N	\N
nm8161798	Sarah Zaurin	\N	\N
nm0558244	Debbie Matenopoulos	1974	\N
nm0558950	Cameron Mathison	1969	\N
nm3730556	Ali Fedotowsky	1984	\N
nm1336827	Betsy Brandt	1973	\N
nm0038680	Ashanti	1980	\N
nm6037609	Gaby Dalkin	\N	\N
nm2664965	Kym Douglas	1959	\N
nm1722972	Paige Hemmis	1972	\N
nm10663934	Dini Klein	\N	\N
nm10663935	Elodie McGuirk	\N	\N
nm1237855	Robert P. Gustafson	1979	\N
nm3785921	Glenn Milley	\N	\N
nm5400795	Lianna Sisinni	\N	\N
nm5332631	Katie Stippec	\N	\N
nm0284586	Lesley Fong	\N	\N
nm11720868	Nasiphi Ntabeni	\N	\N
nm0389415	Gray Hofmeyr	\N	\N
nm10476404	Wayne Robins	\N	\N
nm10476405	Kagiso Mogale	\N	\N
nm1974030	David Gordon	\N	\N
nm0813401	Neill Solomon	\N	\N
nm3056725	Paran Banerjee	1940	\N
nm1385118	Pijush Ganguly	1965	2015
nm0315928	Ratna Ghoshal	\N	\N
nm0611540	Monu Mukherjee	1930	2020
nm10472054	Rohit Samanta	\N	\N
nm5974300	Swarnendu Samaddar	\N	\N
nm5054027	Mitali Bhattacharya	\N	\N
nm4078056	Mark Hoffe	\N	\N
nm0453385	Kim Chang-wan	1954	\N
nm1719908	Anila	\N	\N
nm15446309	Sri Deva	\N	\N
nm15446312	Diwakar	\N	\N
nm11890086	Gomathi Priya	\N	\N
nm0707496	Narasimha Raju	\N	\N
nm15446311	A. Revathy	\N	\N
nm15446313	Sangeetha	\N	\N
nm15446314	Sudhakar	\N	\N
nm1182564	R. Sundarajan	\N	\N
nm10952186	Tamilselvi	\N	\N
nm5727175	S. Kumaran	\N	\N
nm11118786	Guru Sampath Kumar	\N	\N
nm15567241	N. Santhanam Kumar	\N	\N
nm15250096	Alvin Prashanth Raj	\N	\N
nm11490209	Nandhan Sridharan	\N	\N
nm3586914	B. Srinivasan	\N	\N
nm11498437	S.T. Martz	\N	\N
nm15250100	B. Chandru	\N	\N
nm11498438	R. Bala Gurunathan	\N	\N
nm11800181	Brannon Howse	1969	\N
nm13610000	Logan Howse	\N	\N
nm8337341	Mike Cernovich	1977	\N
nm9549722	Dan	\N	\N
nm0436642	Takaya Kamikawa	1965	\N
nm1845696	Kazuki Namioka	1978	\N
nm0644678	Shigemitsu Ogi	1961	\N
nm0632761	Masahiko Nishimura	1960	\N
nm1040533	Masahiro Kômoto	1965	\N
nm0411721	Masayuki Itô	\N	\N
nm4017258	Masafumi Senô	\N	\N
nm3242973	Ryûichi Ogawa	\N	\N
nm0946580	Norito Yashima	1970	\N
nm1102301	Tetsushi Tanaka	1966	\N
nm2715049	Hiroshi Takahashi	\N	\N
nm3412794	Kôji Tanaka	\N	\N
nm1487461	Shinya Maruyama	\N	\N
nm2556582	Yumiko Miwa	\N	\N
nm4311686	Ken'ichi Wasano	\N	\N
nm3051457	Kiyoshi Yoshikawa	\N	\N
nm0161684	Ricardo Chavez	1965	\N
nm2602814	Mariangelica Cuervo	\N	\N
nm1938919	Didier Van den Hove	\N	\N
nm0845142	Pepe Sánchez	1934	2016
nm1860656	Juan Marcos Blanco	\N	\N
nm1277089	Valentina Párraga	1952	\N
nm0702220	José Fernando Pérez	\N	\N
nm1434496	Angel Barroeta	1976	\N
nm1862855	Juan Pablo Puentes	1969	\N
nm1857464	Rafael Puentes	\N	\N
nm1860878	Sebastián Jiménez	\N	\N
nm2753910	Todd Kipp	\N	\N
nm1052534	Nathan Lee Graham	1968	\N
nm3289392	Josh Bertwistle	\N	\N
nm3660395	Victoria Souter	\N	\N
nm2550377	Barry May	\N	\N
nm0426890	Karen Johnson-Diamond	\N	\N
nm0500187	C. Adam Leigh	1971	2022
nm4039914	Ari Rombough	\N	\N
nm3392409	Nicole Zylstra	\N	\N
nm7131294	Sara Mattsson	\N	\N
nm6521305	Barb Briggs	\N	\N
nm3610885	Tristan Capacchione	\N	\N
nm2331563	Aaron Bernakevitch	\N	\N
nm1052787	Todd Langille	\N	\N
nm1167049	Fábio Porchat	1983	\N
nm5508866	Diego Pignataro	\N	\N
nm4861878	Nigel Goodman	\N	\N
nm9650016	Victor Ahmar	\N	\N
nm1149111	Rosana Hermann	1957	\N
nm2611862	Gustavo Martins	\N	\N
nm3679310	Renata Figueira	\N	\N
nm14104250	Renata Azevedo Figueira	\N	\N
nm9129234	Aastha Agarwal	\N	\N
nm15880133	Reena Aggarwal	\N	\N
nm5810738	Ojaswi Oberoi	1985	\N
nm3946281	Maninder Singh	1980	\N
nm9608017	Chhaya Vora	\N	\N
nm2366663	Kedar Shinde	1973	\N
nm9818935	Dhaval Jitesh Shukal	\N	\N
nm9430973	Virat Basoya	\N	\N
nm5557400	Utkarsh Dixit	\N	\N
nm4433772	Hemant Kevani	\N	\N
nm4060831	Vipul D. Shah	\N	\N
nm2273814	Aashish Rego	\N	\N
nm3030844	Tina Dharamsey	\N	\N
nm4908437	Chachi Gonzales	1996	\N
nm7038371	Clinton Ray	\N	\N
nm4959881	Dominique Ray	\N	\N
nm14778881	Akash	\N	\N
nm1747510	Doddanna	\N	\N
nm12473893	Padma	\N	\N
nm14894484	Amrita Rammurthy	\N	\N
nm14757332	Kavya Shaiva	\N	\N
nm14888173	Subhash Arva	\N	\N
nm5430040	Kumareshan Ramachandran	\N	\N
nm12562879	Girija Manjunath Ranibenoor	\N	\N
nm12562880	Tejaswini Bhaskar	\N	\N
nm12630911	Megha Shetty	1998	\N
nm14894485	Vijeth Manjayya	\N	\N
nm12665719	Pramod Maravante	\N	\N
nm8523787	Vaibhav Vasuki	\N	\N
nm0424103	Karan Johar	1972	\N
nm1231899	Priyanka Chopra Jonas	1982	\N
nm1372788	Shahid Kapoor	1981	\N
nm0020039	Fazila Allana	\N	\N
nm9139970	Kamna Nirula Menezes	\N	\N
nm10762660	Rasika Tyagi	\N	\N
nm11323824	R. Tod Kelly	\N	\N
nm1510873	Eric Scheur	\N	\N
nm11217079	Reba Sparrow	\N	\N
nm0011408	Tony Adams	1940	\N
nm0308634	David Garth	1921	1988
nm0428665	Lewis Jones	1924	2015
nm5156123	Arhaan Behl	\N	\N
nm5156947	Pooja Gaur	1991	\N
nm5093034	Kunal Karan Kapoor	\N	\N
nm5565560	Anirudh Singh	\N	\N
nm5156799	Pearl Grey	\N	\N
nm1957846	Jatin Ravasia	\N	\N
nm3455896	Ahsan Bakhsh	\N	\N
nm5156036	Shanti Bhushan	\N	\N
nm1875325	Vishal Watwani	\N	\N
nm3946582	Paresh Shah	\N	\N
nm6176604	Santosh Suryavanshi	\N	\N
nm2274684	Swapnil Nerurkar	\N	\N
nm10884278	Sohan Thakur	\N	\N
nm0710830	Bernard Rapp	1945	2006
nm7750307	Max Armanet	\N	\N
nm1026926	Patrick Myatt	\N	\N
nm1680308	Zach Siglow	\N	\N
nm3552835	Giovanni Dal Monte	\N	\N
nm1158083	Tony Schultz	\N	\N
nm5693918	Daiki Yamashita	1989	\N
nm4684860	Yûichi Iguchi	\N	\N
nm7634492	Yasuyuki Takase	\N	\N
nm4646711	Makoto Furukawa	1989	\N
nm4303311	Yoshitsugu Matsuoka	1986	\N
nm0465160	Katsuyuki Konishi	1973	\N
nm2491814	Ayahi Takagaki	1985	\N
nm5190250	Risa Taneda	1988	\N
nm6233871	Sora Amamiya	1993	\N
nm1382972	Asami Tano	1987	\N
nm1232742	Victoria Hollingsworth	\N	\N
nm5183412	Chisa Yasukita	\N	\N
nm5183521	Kazuo Yasukita	\N	\N
nm5183600	Patrick Stanigar	\N	\N
nm5183633	Chuck Potter	\N	\N
nm5183502	Patricia Potter	\N	\N
nm5183614	J.T. Hoard	\N	\N
nm3596097	Kate Dart	\N	\N
nm2443048	Fiona Proctor	\N	\N
nm5140372	Lionel Cartwright	\N	\N
nm4681681	Jess Jones	\N	\N
nm4076162	Tim Bridges	\N	\N
nm7659285	Lora	\N	\N
nm12728101	Toreo	\N	\N
nm1663455	Peter Bastiaensen	\N	\N
nm0094531	Chris Boni	1936	\N
nm0267441	Noureddine Farihi	1957	2022
nm2637915	Tina Maerevoet	\N	\N
nm0580474	Marleen Merckx	1958	\N
nm0745596	Peter Rouffaer	1949	\N
nm0781754	Annick Segal	1960	\N
nm0862339	Chris Thys	1954	\N
nm0885641	Bart Van Avermaet	1961	\N
nm0887163	Sally-Jane Van Hoorenbeeck	1971	\N
nm1063087	Philippe Van Horebeek	\N	\N
nm0947833	Mikhail Evdokimov	1957	2005
nm1272544	Dimitri Michelsen	1979	\N
nm6068200	Louise Margouet	\N	\N
nm0292019	François Frapier	\N	\N
nm2044702	Etienne Fague	\N	\N
nm3280148	Ryosuke Sato	\N	\N
nm1601690	Joseph Guérin	\N	\N
nm6068201	Brahim Ahmadouche	\N	\N
nm5314356	Alice May Fournier	\N	\N
nm6068202	Clément Van Rechem	\N	\N
nm6068203	Jérôme Auliac	\N	\N
nm6068199	Arnaud Gaudin	\N	\N
nm11393376	Wilma G. Sand	\N	\N
nm8867293	Nora Ek	\N	\N
nm11430508	Embla Ingelman-Sundberg	\N	\N
nm11430509	Stina Agnieszkas the Cat	\N	\N
nm2791258	Fortesa Hoti	1988	\N
nm10202899	Ulla-Britt Hagberg	\N	\N
nm9800729	Liselotte Persson	\N	\N
nm11430510	Elvira Jansson	\N	\N
nm11430511	Malva Ingelman-Sundberg	\N	\N
nm11430512	Vera Hamnebo	\N	\N
nm7327414	Ellen Johansson	\N	\N
nm4555841	Christian Zetterberg	1993	\N
nm9730006	Fredrik Jonasson	\N	\N
nm9590625	Camilla Topuntoli	\N	\N
nm4594915	Jonathan Wilhelmsson	1991	\N
nm9301574	Amanda Aagard	\N	\N
nm0792937	Vladimir Shevelkov	1961	\N
nm0866250	Igor Tolstunov	1957	\N
nm4736837	Bharani	1986	\N
nm5471587	Nanda Kishore	\N	\N
nm0482285	Lakshmi	1952	\N
nm0576169	Meena	1976	\N
nm6832989	Sasidhar	\N	\N
nm11482694	Meer Hussain	\N	\N
nm11271366	Puli Vasu	\N	\N
nm12583597	A.R. Murthy	\N	\N
nm12132193	Venkateswara K. Rao	\N	\N
nm10573585	Choudary	\N	\N
nm12583599	Kommidi Narasimha Reddy	\N	\N
nm3123587	Jon Bowermaster	1954	\N
nm14589066	Mark Schlosbeg	\N	\N
nm2788559	Devin Pickering	\N	\N
nm7970551	Rachel Win	\N	\N
nm5782599	Jim Hunter	\N	\N
nm8874681	Vesper Luna	\N	\N
nm6014961	Norayr Gyuzalyan	\N	\N
nm10589890	Ruben Gyuzalyan	\N	\N
nm8397889	Artem Muradyan	\N	\N
nm1504988	Indy Neidell	\N	\N
nm12037912	Toni Steller	\N	\N
nm6811641	Florian Wittig	\N	\N
nm7960446	Steven Roberts	\N	\N
nm6974864	Firoz Ali	\N	\N
nm1877410	Amita Chandekar	\N	\N
nm1261710	Ali Hassan	1972	\N
nm2763595	Faizan Kidwai	\N	\N
nm1066022	Neelam Mehra	1970	\N
nm12403639	Rakesh Jaggi	\N	\N
nm2160876	Antoine d'Agata	\N	\N
nm3500444	Tommaso Lusena	\N	\N
nm3263569	Olga Prud'homme Farges	\N	\N
nm2015888	Viviana Queirolo-Bertoglio	\N	\N
nm16492794	Giuseppe Schillaci	\N	\N
nm0962764	Nicola Tescari	\N	\N
nm1801652	Anne Thongprasom	1976	\N
nm0969934	Chatchai Plengpanich	\N	\N
nm13771703	Busakorn Wongpuapan	\N	\N
nm2509128	Jukrit Ammarat	\N	\N
nm2207312	Pisamai Wilaisak	\N	\N
nm1669726	Sompob Benjathikul	\N	\N
nm5329466	Duangjai Hathaikarn	\N	\N
nm13130318	Nuttanan Kunnawat	\N	\N
nm2727342	Daraneenute Bhothipiti	\N	\N
nm13783888	Nussara Pawanna	\N	\N
nm15894024	Chana Kraprayoon	\N	\N
nm13504449	Auang-Arun Smithsuwan	\N	\N
nm13109386	Krisna Asoksin	\N	\N
nm2952397	Mayurachat Muenpasitiwet	\N	\N
nm0497749	Leung Lee	\N	\N
nm2362432	A. Abramishvili	\N	\N
nm1108766	R. Chichuya	\N	\N
nm2365981	A. Gogorishvili	\N	\N
nm2368317	G. Jejelava	\N	\N
nm2322481	Nino Kalandadze	\N	\N
nm0451789	Marina Khonelidze	\N	\N
nm0341917	Edward Grigorian	\N	\N
nm5776182	Citra Kirana	\N	\N
nm3472277	Andi Arsyil Rahman	\N	\N
nm1100231	Mat Solar	\N	\N
nm1295504	Nani Widjaja	1944	2023
nm1258596	Ucik Supra	\N	\N
nm1295053	Leo Sutanto	\N	\N
nm2693757	Kristine Angela	\N	\N
nm6716590	Matt Biondo	\N	\N
nm12870145	Kyle Duda	\N	\N
nm2693766	Nick Marnos	\N	\N
nm0760848	Guy Sanche	1934	1988
nm0128851	Michel Cailloux	1931	2012
nm13839398	Patrick Jenner	\N	\N
nm13839400	Dylan Spring	\N	\N
nm13839401	Damian Marin	\N	\N
nm10213299	Sasha Tamarin	\N	\N
nm4649095	Thalia Hoffman	\N	\N
nm1797269	Hideo Ôtani	1909	1971
nm1272563	Ryûzaburô Mitsuoka	1901	1961
nm0848984	Haruo Tanaka	1912	1992
nm0464592	Midori Komatsu	1891	1982
nm0359248	Ranko Hanai	1918	1961
nm1698884	Yôjirô Kasuga	\N	\N
nm2970633	Kunio Kawashima	\N	\N
nm1283906	Kôka Nakamura	\N	\N
nm0812286	Minoru Takase	1890	1947
nm1364645	Mitsugu Terashima	1904	\N
nm1960093	Kichirô Tsuji	1892	1945
nm0361674	Kenichiro Hara	\N	\N
nm0651519	Jirô Osaragi	1897	1973
nm1914486	Teizô Matsumura	\N	\N
nm6465283	Issam Al Achkar	\N	\N
nm8419811	Abeer Aoun	\N	\N
nm1278656	Karla Boutros	1970	\N
nm8436933	Fouad Sharaf El Den	\N	\N
nm2286199	Walid El-Alayli	\N	\N
nm5726315	Youssef Haddad	1972	\N
nm8674920	Katia Kaadi	1977	\N
nm0495477	Carmen Lebbos	\N	\N
nm1955899	Peter Semaan	\N	\N
nm6255951	Michel Abou Sleiman	\N	\N
nm5725304	Caroline Milan	\N	\N
nm5726141	Gibran Daher	\N	\N
nm5725013	Ziad Choueiri	\N	\N
nm9732643	Rutuja Bagwe	\N	\N
nm7931485	Suhas Paranjape	\N	\N
nm7585694	Chinmay Udgirkar	\N	\N
nm9785742	Vaibhav Chinchalkar	\N	\N
nm7309931	Sampada Joglekar Kulkarni	\N	\N
nm12392836	Archana Shrirang	\N	\N
nm12392837	Mithila Subhash	\N	\N
nm2983527	Suchitra Bandekar	1972	\N
nm3094497	Shail Hada	\N	\N
nm2127180	Pritesh Mehta	\N	\N
nm10189551	Sachin Patekar	\N	\N
nm4513020	Bhakti Mayaloo	\N	\N
nm8079024	Sudarshan Satpute	\N	\N
nm2362566	Mark Bresciano	1980	\N
nm2169232	Tim Cahill	1979	\N
nm2363237	Jason Culina	1980	\N
nm2363815	Brett Emerton	1979	\N
nm2061926	John Filan	1970	\N
nm2364420	Vince Grella	1979	\N
nm1536764	Craig Johnston	1960	\N
nm2364337	Zeljko Kalac	1972	\N
nm1977755	Harry Kewell	1978	\N
nm0001439	Anthony LaPaglia	1959	\N
nm2364350	Scott Ferguson	\N	\N
nm2363889	Matthew Hall	\N	\N
nm2360941	Anita Bulan	\N	\N
nm0355888	Matthew Hall	1967	\N
nm2362036	Chris Haskett	\N	\N
nm1681893	Lachlan Milne	\N	\N
nm2120283	Matthew James	\N	\N
nm3783463	Amber Coles	\N	\N
nm3784081	Norris Coles	\N	\N
nm3783340	Shayne Coles	\N	\N
nm3783387	Tameka Coles	\N	\N
nm0458526	João Kleber	1957	\N
nm0430803	Mohan Joshi	1945	\N
nm6135703	Spruha Joshi	1989	\N
nm4382451	Umesh Kamat	\N	\N
nm5217553	Vinod Lavekar	\N	\N
nm5112349	Sagar Deshmukh	\N	\N
nm4466029	Suhrud Godbole	\N	\N
nm4289864	Salil Kulkarni	\N	\N
nm9455361	Prathamesh Patkar	\N	\N
nm1100419	Jeff Sugarman	\N	\N
nm8485801	Jim Proser	\N	\N
nm2009375	Christy Crowl	\N	\N
nm0270027	Peter F. Fedak III	1975	\N
nm13498770	MtPain27	\N	\N
nm5513832	Miyuki Morita	1959	\N
nm9313874	Hiba Nawab	1996	\N
nm4490004	Shaheer Sheikh	1984	\N
nm6908650	Romesh Kalra	\N	\N
nm12461253	Manali Karia	\N	\N
nm3709528	Vivek Jain	\N	\N
nm3486538	Rajan Shahi	\N	\N
nm4194046	Nakash Aziz	\N	\N
nm10638559	Sargam Jassu	\N	\N
nm5744240	Sameer Gandhi	1979	\N
nm12465027	Jeet R.D. Chaudhary	\N	\N
nm0101221	Billy Bowles	1951	\N
nm0911389	B.J. Ward	1944	\N
nm0528802	Sherry Lynn	\N	\N
nm0240327	Oscar Dufau	1922	1994
nm0502800	Art Leonardi	\N	\N
nm0881662	Carl Urbano	1910	2003
nm0220039	David H. DePatie	1929	2021
nm0002886	Robert J. Walsh	1947	2018
nm1200878	Robert Ciaglia	\N	\N
nm0412299	Gil Iverson	\N	\N
nm0738849	Andrea Romano	1955	\N
nm6776222	Yamiche Alcindor	1986	\N
nm1877587	Mike Allen	\N	\N
nm9667478	Anthony Brown	\N	\N
nm1227121	Tucker Carlson	1969	\N
nm2665166	Chris Christie	1962	\N
nm13115146	John Cohen	\N	\N
nm10714657	Jason Crow	1979	\N
nm4054885	Kristofer Goldsmith	\N	\N
nm13028963	Jennifer Jenkins	\N	\N
nm6352987	David Jolly	\N	\N
nm0712980	Robin Ray	1934	1998
nm0611350	Frank Muir	1920	1998
nm0578459	Alan Melville	1910	1983
nm0185670	Fanny Cradock	1909	1994
nm0265717	Marianne Faithfull	1946	2025
nm0296484	David Frost	1939	2013
nm0557292	Daniel Massey	1933	1998
nm0329382	Mark Goodson	1915	1992
nm0865363	Bill Todman	1916	1979
nm0780750	Bryan Sears	1916	1999
nm0536439	Muslim Magomayev	1942	2008
nm0793430	Leila Shikhlinskaya	1947	\N
nm1435868	Tofik Ismailov	1939	2016
nm0091633	Igor Bogdanov	1937	2021
nm0126490	Polad Bülbüloghlu	1945	\N
nm8405733	Y. Fomina	\N	\N
nm8405734	T. Lixaceva	\N	\N
nm1049972	Rafiz Ismailov	1939	\N
nm0954368	Nadir Zeinalov	1928	1987
nm1399924	Olivier Minne	1967	\N
nm0100530	Alain Bouzigues	1968	\N
nm0227570	Isabelle Doval	1962	\N
nm0435425	Elie Kakou	1960	1999
nm0260041	Timo Eränkö	1952	2021
nm0373315	Pekka Hedkrok	\N	\N
nm0412938	Matti Jaaranen	1951	\N
nm0501486	Hannu Lemola	\N	\N
nm0645252	Puka Oinonen	\N	\N
nm0758860	Heikki Salomaa	1959	2003
nm0906344	Ari Wahlsten	\N	\N
nm0878172	Miina Turunen	1973	\N
nm0840016	Heli Sutela	1968	\N
nm0714438	Pekka Rechardt	1952	\N
nm1441930	Lapinlahden Linnut	\N	\N
nm0001234	John Forsythe	1918	2010
nm0179321	Noreen Corcoran	1943	2016
nm0867257	Sammee Tong	1901	1964
nm0045651	Alice Backes	1923	2007
nm0016781	Mabel Albertson	1901	1982
nm0936718	Bernadette Withers	1946	2019
nm1519446	Isa Ashdown	1942	\N
nm0437374	Linda Kane	1944	\N
nm0602093	Jean Moorhead	1935	\N
nm0248712	Jana Lund	1933	1991
nm0394409	Jerry Hopper	1907	1988
nm0022492	Arthur Alsberg	1917	2004
nm0597578	Nate Monaster	1911	1990
nm0009974	Harry Ackerman	1912	1991
nm0005873	William A. Sickner	1890	1967
nm0864300	Stanford Tischler	1921	2014
nm4811268	Zoe Corraface	\N	\N
nm7806424	Michael Keldany	\N	\N
nm4553679	James Longshore	\N	\N
nm1368608	Christian Martel	\N	\N
nm3881271	Bianca Mina	\N	\N
nm9222562	Aloïse Goupil Tiers	\N	\N
nm0718280	Ulrich Reinthaller	1964	\N
nm0511760	Ralf Lindermann	1960	\N
nm0559331	Ulrich Matschoss	1917	2013
nm0061801	Eva Maria Bauer	1923	2006
nm0090100	Christian Blümel	1983	\N
nm0299161	Maria Furtwängler	1966	\N
nm0299799	Astrid M. Fünderich	1963	\N
nm1319085	Natascha Hockwin	1982	\N
nm0427362	Heike Jonca	1956	\N
nm0549239	Marlene Marlow	1970	\N
nm3184973	Bunga Zainal	\N	\N
nm3022035	Adly Fayruz	\N	\N
nm7217900	Panji Saputra	\N	\N
nm15119186	Feby Marcelia	\N	\N
nm13383070	Aylena Fusil	\N	\N
nm3545875	Fanny Ghassani	\N	\N
nm13921630	Tania Qumsoani	\N	\N
nm3160039	Cathya Kamila	\N	\N
nm10409717	Ike Muti	\N	\N
nm12951887	Femila Sinukaban	\N	\N
nm3278735	Indrayanto Kurniawan	\N	\N
nm15119195	Dwi Indrawati	\N	\N
nm15119196	Sri Mukti	\N	\N
nm9786041	Saad Bima	\N	\N
nm12293398	Reno Marciano	\N	\N
nm1823633	Joseph Setiawan Djafar	\N	\N
nm13433358	Iin Khinanta	\N	\N
nm15116740	Odie Ahmad	\N	\N
nm15119189	Ajie Respati	\N	\N
nm15119192	M. Rizal	\N	\N
nm15119190	Alvien Agus S.	\N	\N
nm3460418	Cerstin Gammelin	1965	\N
nm2497545	Ursula Heller	1961	\N
nm2228010	Anja Kohl	1970	\N
nm2821029	Norbert Röttgen	1965	\N
nm2177040	Peter Torry	1948	\N
nm0780303	Vin Scully	1927	2022
nm0304792	Joe Garagiola	1926	2016
nm0182471	Bob Costas	1952	\N
nm1117332	Sparky Anderson	1934	2010
nm1757372	Harold Baines	1959	\N
nm0089990	Bert Blyleven	1951	\N
nm2941781	Phil Bradley	1959	\N
nm1652212	George Brett	1953	\N
nm1158526	Tom Brunansky	1960	\N
nm1821667	Jack Clark	1955	\N
nm2629129	Peter Duesberg	\N	\N
nm1638058	Robert Gallo	1937	\N
nm2500077	Kary B. Mullis	1944	2019
nm1567037	Gary Null	\N	\N
nm2630508	David Rasnick	\N	\N
nm2630219	Maria Castaneda	\N	\N
nm2626645	Lynn Enstorm	\N	\N
nm2628361	Petrena Lewis	\N	\N
nm2632017	Roland Marconi	\N	\N
nm2360124	Zoi Florosz	\N	\N
nm2629242	Rodney Calhoun	\N	\N
nm2628819	Susan Perla	\N	\N
nm2799927	Brandon Hardesty	1987	\N
nm4565529	Kenny Johnson	\N	\N
nm1310368	Minka Kelly	1980	\N
nm0241049	Josh Duhamel	1972	\N
nm4880922	Justin Johnson Cortez	\N	\N
nm5136434	Dan Davidson	\N	\N
nm11752730	Jennifer Ens	\N	\N
nm6358053	Lizzy Greene	2003	\N
nm5852967	Niko Guardado	1996	\N
nm8279117	Andrew Liner	\N	\N
nm2151126	Eoin Macken	1983	\N
nm1877441	Tatanka Means	\N	\N
nm0086194	April Blair	\N	\N
nm1663329	Eric Koretz	\N	\N
nm4871916	Jonathan Angus	\N	\N
nm0710661	David Rapaport	\N	\N
nm0624213	Keith Neely	\N	\N
nm12723983	James Rudd	\N	\N
nm8012292	Kyle Larsen	\N	\N
nm6190482	Ischa Bee	\N	\N
nm11042962	Alan Hinojos	\N	\N
nm10877565	Seth Mo Jerome	\N	\N
nm5950470	Tyler Harrah	\N	\N
nm7365134	Amelia Joan Bowles	\N	\N
nm11040921	Elizabeth Ann Harrah	\N	\N
nm8526930	Chase Maughan	\N	\N
nm14961159	Jonny Stuart	\N	\N
nm1369959	Michael Dean	1933	2015
nm0421023	Philip Jenkinson	1935	2012
nm0931530	Richard Williams	1933	2019
nm5227443	Philip Strick	\N	2006
nm4798025	Rosalind Gold	\N	\N
nm0666313	Mark Patterson	1939	\N
nm10325600	Sam Panico	\N	\N
nm9682932	Bill Van Ryn	\N	\N
nm0179413	Ted Corday	1908	1966
nm0680460	Irna Phillips	1901	1973
nm0633202	Agnes Nixon	1922	2016
nm0279416	Charles Fisher	\N	\N
nm0877908	Tim Turner	1924	1987
nm1068537	Jindrich Adolf	1894	1955
nm0229349	Emil Dlesk	1894	1977
nm0417910	Anita Janová	1907	1975
nm0669614	Václav Pecián	1901	1961
nm0685550	Theodor Pistek	1895	1960
nm0699574	Josef Príhoda	1888	1965
nm0725279	Jan Richter	1892	1936
nm0772184	Karel Schleichert	1865	1940
nm0821493	Rudolf Stahl	1903	1956
nm0835336	Ladislav H. Struna	1899	1980
nm0473603	Václav Kubásek	1897	1964
nm0899272	Antonín Vlastislav Vipler	1903	1971
nm0649638	Natalia Oreiro	1977	\N
nm0708599	Diego Ramos	1972	\N
nm0274467	Óscar Ferreiro	1945	\N
nm0342143	Antonio Grimau	1944	\N
nm0246697	Norberto Díaz	1952	2010
nm0532459	Juan Ignacio Machado	\N	\N
nm0776268	Jessica Schultz	\N	\N
nm0148644	Segundo Cernadas	1972	\N
nm0453174	Elizabeth Killian	1939	\N
nm0546490	Cecilia Maresca	\N	\N
nm9419259	Andy Bevan	\N	\N
nm3025984	Steve Clamp	\N	\N
nm9422148	Mark Gough	\N	\N
nm5646416	Sajid Javid	1969	\N
nm8252623	Alison Mackenzie	\N	\N
nm9983472	Kelsey Redmore	\N	\N
nm2077465	Bob Warman	1946	\N
nm0038932	Matthew Ashford	1960	\N
nm2628722	Camila Banus	1990	\N
nm1553394	Brandon Barash	1979	\N
nm4334664	Billy Flynn	1985	\N
nm7874063	Cameron Johnson	\N	\N
nm0425322	Jay Kenneth Johnson	1977	\N
nm7367497	Victoria Konefal	1996	\N
nm0467191	Lauren Koslow	1953	\N
nm0475986	Wally Kurth	1958	\N
nm3304608	Marci Miller	1985	\N
nm0571983	Scott McKinsey	1959	\N
nm1122050	Ron Carlivati	\N	\N
nm1545348	Ryan Quan	\N	\N
nm0110828	Lorraine Broderick	\N	\N
nm1431618	Jeanne Marie Ford	\N	\N
nm0240828	Randy Dugan	\N	\N
nm11206116	Logan Aultman	\N	\N
nm12553164	Addison Jaymes Finley	\N	\N
nm12965224	Brooklyn Fleming	\N	\N
nm14564491	Weston Oliver	\N	\N
nm8195113	Cailan Laine	\N	\N
nm5444816	Eli Ben-David	\N	\N
nm4603611	Asi Israelof	1980	\N
nm5445928	Miko Djemal	\N	\N
nm5457627	Yaron Berlad	\N	\N
nm0946867	Eli Yatzpan	1960	\N
nm2457883	Shalom Michaelshwilli	1978	\N
nm1654483	Nadav Abuksis	1971	\N
nm2142951	Avi Nusbaum	1980	\N
nm5512843	Lior Farchi	\N	\N
nm5533839	Oren Zoozle	\N	\N
nm2321533	Josh Henderson	\N	\N
nm2317602	Nick Murphy	1983	\N
nm4542563	Paul Ritchey	\N	\N
nm2275366	Justin Rowlatt	\N	\N
nm2504304	Howard Bradburn	\N	\N
nm0447254	Andy Kemp	\N	\N
nm0659250	Pandari Bai	1930	2003
nm1086214	Venniradai Nirmala	\N	\N
nm0737737	Roja Ramani	\N	\N
nm6164470	Master Sekar	\N	\N
nm3077807	Master Sridhar	\N	\N
nm1139300	Major Sundarrajan	1936	2003
nm1134660	Srikanth	1939	2021
nm0619656	D. Rama Naidu	1936	2015
nm0689220	Hristos Politis	1943	\N
nm0028385	Andreas Andreopoulos	\N	\N
nm1039266	Takis Anousis	\N	\N
nm0032002	Nikos Apergis	1947	2012
nm1361371	Dimitris Drakopoulos	\N	\N
nm0989781	Efi Pikoula	1959	\N
nm0726816	Eleftheria Rigou	\N	\N
nm0287566	Nikos Foskolos	1927	2013
nm10464505	Phantira Pipityakorn	\N	\N
nm13792548	Jinna Navarat	\N	\N
nm12033834	Angsana Buranon	\N	\N
nm13792462	Kiatipoom Banluechairit	\N	\N
nm13795467	Marisa Scholl	\N	\N
nm13795468	Nichanun Funkaew	\N	\N
nm4319246	Teerapong Liaorakwong	\N	\N
nm5083066	Jay Jintai	\N	\N
nm1670765	Sukol Sasijulaka	\N	\N
nm4399063	Puttipong Pormsaka Na-Sakonnakorn	\N	\N
nm13757711	Vinita Diteeyont	\N	\N
nm0688767	Michel Polac	1930	2012
nm0457755	Eartha Kitt	1927	2008
nm0531508	Maria Antonietta Macciocchi	1922	2007
nm0672032	Daniel Pennac	1944	\N
nm1763172	Plantu	1951	\N
nm0802556	Siné	1928	2016
nm0221141	Pierre Desfons	\N	\N
nm0105672	Andre Braugher	1962	2023
nm0827663	Daniel Stern	1957	\N
nm0002039	Ruby Dee	1922	2014
nm0789976	Stan Shaw	1952	\N
nm0233209	Paul Dooley	1928	\N
nm0501435	Kasi Lemmons	1959	\N
nm0696430	J.A. Preston	1932	\N
nm0338867	Michael Greene	1933	2020
nm0245653	Dale Dye	1944	\N
nm0931736	Steven Williams	1949	\N
nm0670282	Larry Peerce	1930	\N
nm0164182	L. Travis Clark	1950	2009
nm0242110	Steve Duncan	\N	\N
nm0296243	Clayton Frohman	\N	\N
nm0163857	Dennis Lynton Clark	1939	2020
nm0006010	Stanley Clarke	1951	\N
nm0121281	Don Burgess	1956	\N
nm0780762	Eric A. Sears	\N	\N
nm0943828	Bob Wyman	1931	1998
nm0024007	Roy Alan Amaral	\N	\N
nm10274907	Mark McConville	\N	\N
nm9673055	Rajeshwari Datta	\N	\N
nm7129302	Ravi Dubey	1983	\N
nm1213227	Achint Kaur	1970	\N
nm4541343	Mohit Malhotra	1994	\N
nm8350840	Delissa Mehra	\N	\N
nm5011985	Nia Sharma	1990	\N
nm7129301	Rohit Dwivedi	\N	\N
nm5766923	Rahul Lingayet	\N	\N
nm5563885	Ajay S.B. Mishra	\N	\N
nm7129303	Abhishek Kumar	\N	\N
nm0474774	Akshay Kumar	1967	\N
nm7129304	Pranjal Saxena	\N	\N
nm5170389	Ashvini Yardi	\N	\N
nm6998775	Meenakshi Sagar	\N	\N
nm4576851	Raju Gauli	\N	\N
nm4990122	Parag Chadha	\N	\N
nm12007728	Aakash Garg	\N	\N
nm3360195	Yûta Tamamori	\N	\N
nm4501035	Yua Shinkawa	1993	\N
nm2959118	Shô Takada	\N	\N
nm6325495	Yurina Yanagi	1994	\N
nm4314748	Yasushi Ami	\N	\N
nm7699669	Saemi Ikeda	\N	\N
nm4723667	Manami Ikura	\N	\N
nm5840275	Momone Shinokawa	2006	\N
nm0880319	Takashi Ukaji	1962	\N
nm0847395	Reiko Takashima	1964	\N
nm0464599	Takashi Komatsu	\N	\N
nm4149358	Tôru Ohtsuka	\N	\N
nm7275944	Eiichi Fukuda	\N	\N
nm4380420	Shinichi Tanaka	\N	\N
nm13544503	Shinichi Tanaka	\N	\N
nm2957814	Tatsuya Itô	\N	\N
nm5629688	Toshiki Kitani	\N	\N
nm7438664	Yasunori Nakamura	\N	\N
nm1129506	Masahiro Tanaka	\N	\N
nm3758252	Akio Izutsu	\N	\N
nm0726034	Patrick Ridremont	1967	\N
nm7065096	Constance Gay	\N	\N
nm2058024	Tom Audenaert	\N	\N
nm3531774	Roda Fawaz	\N	\N
nm2038578	Michaël Erpelding	\N	\N
nm9272573	Danitza Athanassiadis	\N	\N
nm5020632	Luc Schiltz	\N	\N
nm0857682	Hélène Theunissen	\N	\N
nm2179794	Victoria Jadot	\N	\N
nm4017948	Lydia Indjova	\N	\N
nm0600700	Hendrik Moonen	1977	\N
nm1903257	Daphnis Boelens	\N	\N
nm1876843	Charlotte Joulia	\N	\N
nm0257099	John Engel	\N	\N
nm6444300	Michel Duprez	\N	\N
nm3729732	Thierry Plas	\N	\N
nm9886139	Dries De Clercq	\N	\N
nm2103936	Marc De Coster	1974	2012
nm5839579	Sebastian Moradiellos	\N	\N
nm5589010	Tom Darmstaedter	\N	\N
nm2373623	Eve Martin	\N	\N
nm5057049	Anissa Borrego	\N	\N
nm2476029	Joseph Callari	\N	\N
nm5999783	Richard Bon Bon Centeno	\N	\N
nm2170373	Kate Dalton	\N	\N
nm4919713	Steve Dez	\N	\N
nm3675059	Avra Friedman	\N	\N
nm8153235	Monde Gumede	\N	\N
nm2599188	Seth Kirschner	\N	\N
nm4019838	Patrick James Lynch	\N	\N
nm2752699	Liv Mai	\N	\N
nm2817300	Rob Bradford	\N	\N
nm8435835	Katie Rose Cornblath	\N	\N
nm7488717	Stephanie Kaznocha	\N	\N
nm5298178	José Antonio Pérez Escudero	\N	\N
nm2498668	Oliver Baier	1965	\N
nm1486462	Klaus Eberhartinger	1950	\N
nm1484144	Eva Maria Marold	1968	\N
nm0629212	Michael Niavarani	1968	\N
nm0827372	Andreas Steppan	1959	\N
nm0900184	Andreas Vitásek	1956	\N
nm1146704	Balázs Gaskó	1969	\N
nm9418531	József Sáfrány	1952	\N
nm9395208	János Buda	\N	\N
nm15657887	Attila Szakács Tibor	\N	\N
nm2555592	Sándor Órai	1971	\N
nm1916895	Mike Gutridge	1971	\N
nm9502936	Scotty McCoy	\N	\N
nm0377578	Benjamin Holk Henriksen	1974	\N
nm4437031	Fredrik Lassenius	\N	\N
nm1116661	Joe Willmore	\N	\N
nm0832853	Bill Stout	1927	1989
nm0706347	Alan Rafkin	1928	2001
nm14077674	Bertram Berman	\N	\N
nm1481309	David Hellenius	1974	\N
nm1495610	Hanna Hedlund	1975	\N
nm0351401	Marie Göranzon	1942	\N
nm0845632	Carola Häggkvist	1966	\N
nm5280830	Jonatan Ramel	\N	\N
nm0186314	Bob Crane	1928	1978
nm0459252	Werner Klemperer	1920	2000
nm0052308	John Banner	1910	1973
nm0165145	Robert Clary	1926	2022
nm0206241	Richard Dawson	1932	2012
nm0397051	Larry Hovis	1936	2003
nm0913485	Kenneth Washington	1946	\N
nm0398466	John Hoyt	1905	1991
nm0833628	Chet Stratton	1910	1970
nm0605401	Dave Morick	1934	1997
nm0518719	Jerry London	1937	\N
nm0548893	Laurence Marks	1915	1993
nm0270640	Bernard Fein	1926	1980
nm0748665	Albert S. Ruddy	1930	2024
nm0130004	William A. Calihan Jr.	1910	1992
nm0432924	William B. Jurgensen	1925	2006
nm0954771	Ken Zemke	\N	\N
nm1727073	Ernesto Calzadilla	1974	\N
nm0342533	Amparo Grisales	1956	\N
nm4260984	Jairo Martínez	\N	\N
nm5926673	Luz Amparo Pélaez	\N	\N
nm5957647	Aníbal Fernández	\N	\N
nm8319216	Santiago Garcia	\N	\N
nm5957651	Brenda Córdoba	\N	\N
nm5957649	Diego León	\N	\N
nm5957650	Lorena Urrea	\N	\N
nm5828592	Steven L. Anderson	1981	\N
nm8667073	Jonathan C. Brown	\N	\N
nm8961448	Kate Peterson	\N	\N
nm2148639	Purple Planet Music	\N	\N
nm8556492	Ruthie Grumbine	\N	\N
nm0568711	Steve McFadden	1959	\N
nm0908707	Jessie Wallace	1971	\N
nm1119001	Kim Medcalf	1973	\N
nm0212853	Letitia Dean	1967	\N
nm0851899	Gillian Taylforth	1955	\N
nm0144231	Natalie Cassidy	1983	\N
nm0111910	Charlie Brooks	1981	\N
nm0245705	Danny Dyer	1977	\N
nm0109156	Kellie Bright	1976	\N
nm0668698	Heather Peace	1975	\N
nm1512410	Duncan Foster	\N	\N
nm0321244	Rob Gittins	\N	\N
nm0808850	Julia Smith	1927	1997
nm0390852	Tony Holland	1940	2007
nm12528268	Erin Kubicki	\N	\N
nm13235847	Janice Mooney	\N	\N
nm1369760	John Cannon	\N	\N
nm0186224	Julia Crampsie	\N	\N
nm0240138	Kirsten Dudley	\N	2023
nm1253921	Clara Zita	\N	\N
nm10830822	Tommy Jackett	\N	\N
nm4058310	Josh Janssen	\N	\N
nm10830823	Mason Lauder	\N	\N
nm10847512	Derek Myers	\N	\N
nm15293029	Frances Kelley	\N	\N
nm15292922	Olin Morris	\N	\N
nm0005277	Conan O'Brien	1963	\N
nm0725200	Andy Richter	1966	\N
nm0001484	Jon Lovitz	1957	\N
nm0001824	Ally Walker	1961	\N
nm1626784	Rusted Root	\N	\N
nm2923086	The Max Weinberg 7	\N	\N
nm0586003	Vic Mignogna	1962	\N
nm1309787	Aaron Dismuke	1992	\N
nm0992184	Travis Willingham	1981	\N
nm0163806	Dameon Clarke	1972	\N
nm0754526	Christopher Sabat	1973	\N
nm0833185	Sonny Strait	1965	\N
nm1513684	Colleen Clinkenbeard	1980	\N
nm0566787	Meredith McCoy	1980	\N
nm1154161	Laura Bailey	1981	\N
nm0143801	Chris Cason	1974	\N
nm1159782	Seiji Mizushima	\N	\N
nm2977109	Atsushi Ôtsuki	\N	\N
nm1562522	Norimitsu Suzuki	\N	\N
nm0014556	Shô Aikawa	\N	\N
nm2086079	Hiromu Arakawa	1973	\N
nm1890325	Joel Bergen	\N	\N
nm1159296	Manabu Ishikawa	\N	\N
nm1857237	Hirô Maruyama	\N	\N
nm0590915	Masahiko Minami	1961	\N
nm1857377	Ryô Ôyama	\N	\N
nm0651914	Michiru Ôshima	1961	\N
nm2365577	Susumu Fukushi	\N	\N
nm2680117	Tôru Fukushi	\N	\N
nm2628849	Hiroaki Itabe	\N	\N
nm0032925	Shinji Aramaki	1960	\N
nm0246735	Robinson Díaz	1966	\N
nm0555101	Flora Martínez	1977	\N
nm0581763	Luis Mesa	1968	\N
nm1400129	Sara Corrales	\N	\N
nm1875953	Fernando Arango	\N	\N
nm0033040	Juan Carlos Arango	\N	\N
nm3350191	Alberto Barrero	\N	\N
nm0133189	Adriana Campos	1979	2015
nm3014753	Claudio Cataño	1986	\N
nm3349091	Amparo Conde	\N	\N
nm1629056	Anselmo Calvo	\N	\N
nm1160067	Germán Porras	\N	\N
nm0273256	Carlos Fernández de Soto	\N	\N
nm1397144	Andrea López	\N	\N
nm1142046	Ana Fernanda Martínez	\N	\N
nm0897852	Juan Carlos Villamizar	\N	\N
nm10519309	Jose Ricardo Torres	\N	\N
nm9881654	Roberto Kattah	\N	\N
nm0275182	Giannis Fertis	1938	2024
nm0080107	Giannis Bezos	1956	\N
nm0874656	Natalia Tsaliki	\N	\N
nm0888937	Titos Vandis	1917	2003
nm0064828	Despoina Bebedeli	1941	\N
nm0307944	Nikos Garofallou	1937	2009
nm0323320	Antigoni Glykofridi	\N	\N
nm0900605	Panayiota Vlanti	\N	\N
nm1130143	Elisavet Konstantinidou	\N	\N
nm8686080	Themis Gousoulis	\N	\N
nm0260642	Reina Eskenazy	\N	\N
nm0407049	Kakia Igerinou	\N	\N
nm1168290	Nikos Vergetis	\N	\N
nm1082536	Marios Tokas	1954	2008
nm1243996	Akis Apostolidis	\N	\N
nm1463435	Yorgos Fotinakis	\N	\N
nm1005109	Dora Valsamaki	\N	\N
nm0403569	Frank Hursley	1902	1989
nm0403568	Doris Hursley	1898	1984
nm0047143	Anne Howard Bailey	1924	2006
nm0600353	Gloria Monty	1921	2006
nm7622554	Otto Andersson	\N	\N
nm11231158	Jesse Braun	\N	\N
nm14502740	Severi Laine	\N	\N
nm0654637	Sayuri Oyamada	1975	\N
nm0962476	Naomi Akimoto	1963	\N
nm1927097	Maiko Asano	\N	\N
nm1976879	Yuka Hanabusa	\N	\N
nm0394676	Kei Horie	1978	\N
nm1689927	Maki Horikita	1988	\N
nm0440573	Shûji Kashiwabara	1978	\N
nm2118647	Mayuko Kawabata	\N	\N
nm2601586	Yôsuke Kawamura	\N	\N
nm1118888	Ayaka Maeda	1983	\N
nm0950834	Isao Yukisada	1968	\N
nm0766263	Shinsuke Satô	1970	\N
nm1119061	Moku	\N	\N
nm0298018	Jun Fukumoto	\N	\N
nm0408039	Tsuyoshi Imai	1969	\N
nm12112560	Aashish Chakravarthi	\N	\N
nm13339202	Shobana	\N	\N
nm9930602	Vaishali Thaniga	\N	\N
nm11730546	Lakshmi Vasudevan	\N	\N
nm13796582	Thamizhan Nagarajan	\N	\N
nm13796581	S.M. Madhumitha	\N	\N
nm13796583	Prabhakaran Vijayakumar	\N	\N
nm1600031	Jenny Platt	1979	\N
nm0183067	Antony Cotton	1975	\N
nm0165905	Sue Cleaver	1963	\N
nm1152688	Rupert Hill	1978	\N
nm0339998	Simon Gregson	1974	\N
nm0153002	Craig Charles	1964	\N
nm0200538	Jane Danson	1978	\N
nm0258203	Vicky Entwistle	1968	\N
nm0564037	Jennie McAlpine	1984	\N
nm0381420	Julie Hesmondhalgh	1970	\N
nm0275470	Chris Fewtrell	\N	\N
nm0912726	Tony Warren	1937	2016
nm1068239	Steve Frost	1972	\N
nm0000912	Jack Benny	1894	1974
nm0001362	Bob Hope	1903	2003
nm0924964	Jesse White	1917	1997
nm0012441	Iris Adrian	1912	1994
nm1087211	Rick Marcelli	\N	\N
nm0425003	Duke Johnson	\N	\N
nm0568483	Maurice McEndree	1931	2003
nm1041594	The Sportsmen Quartet	\N	\N
nm0208111	Frederick De Cordova	1910	2001
nm0674768	Sam Perrin	1901	1998
nm0051332	George Balzer	1915	2006
nm0329958	Al Gordon	1923	2012
nm0325784	Hal Goldman	1919	2001
nm0581220	Mahlon Merrick	1900	1969
nm0002228	Nicholas Musuraca	1892	1975
nm0926597	J.R. Whittredge	1904	1995
nm2655018	Dina Davis	1985	\N
nm3311409	Douglas Seibert	\N	\N
nm2565857	Richard McCarty	\N	\N
nm3320623	Kenric Green	\N	\N
nm2349008	Alex Rask	\N	\N
nm0710012	Rajko Ranfl	1937	2017
nm4046361	Janez Kalisnik	\N	\N
nm1185842	Vesna Nikolovska-Krzicnik	\N	\N
nm4515899	Amber Lee Connors	1991	\N
nm6929622	Aleksey Melchanov	\N	\N
nm6929621	Elvira Shamtieva	\N	\N
nm6929623	Elena Polyakova	\N	\N
nm2817178	Lisa Masterson	1966	\N
nm2821773	Jim Sears	1967	\N
nm0379458	Lynn Hermstad	\N	\N
nm1048947	Michelle Wendt	\N	\N
nm0251041	Michael Egizi	\N	\N
nm5134013	Adam Clark	\N	\N
nm2348925	Emily Oates	\N	\N
nm2480954	Ken Yankee	\N	\N
nm1972944	Martha MacCallum	1964	\N
nm5267120	Jesse Billson	\N	\N
nm0931354	Montel Williams	1956	\N
nm0269771	Louise Fazenda	1895	1962
nm0079645	Billy Bevan	1887	1957
nm0026342	Dave Anderson	1884	1950
nm0035627	Billy Armstrong	1891	1924
nm0547956	Don Marion	1917	2020
nm1275393	Teddy the Dog	\N	1925
nm0020623	Jane Allen	\N	\N
nm0446384	Fanny Kelly	1875	1925
nm0446756	Patrick Kelly	1864	1935
nm0570230	Kathryn McGuire	1903	1978
nm0809467	Noel M. Smith	1893	1955
nm0784407	Mack Sennett	1880	1960
nm0263120	Perry Evans	1887	1966
nm0413164	Fred Jackman	1881	1959
nm1554515	Juan Carlos Cañete	\N	\N
nm3374810	Jean Clemente	\N	\N
nm2081663	Nico García Hume	1980	\N
nm2082188	Lourdes Llanes	\N	\N
nm2532752	Cristina Logan	\N	\N
nm4748250	Hernán Melgarejo	\N	\N
nm2607312	Natalia Nebbia	\N	\N
nm1782800	Carlos Piñanez	\N	\N
nm4768978	Cecilia Villalba	\N	\N
nm0826320	Víctor Stella	\N	\N
nm0346351	Marcela Guerty	1968	\N
nm9854799	Gabriel Macias	\N	\N
nm1512930	Ricardo Rodríguez	\N	\N
nm0736031	Miguel Ángel Rodríguez	\N	\N
nm7792451	Howard Cummings	\N	\N
nm7792449	George Kelly	\N	\N
nm7792450	Jennifer Lindlow	\N	\N
nm7954395	Kimberly Parker	\N	\N
nm7792448	Robert Reaves	\N	\N
nm7790377	Donald Stephens	\N	\N
nm2126101	William Levy	1980	\N
nm4047805	Ximena Navarrete	1988	\N
nm1669154	Iván Sánchez	1974	\N
nm0959926	César Évora	1959	\N
nm0739715	Daniela Romo	1959	\N
nm0784589	Mariana Seoane	1976	\N
nm0758382	Nora Salinas	1976	\N
nm0406406	Alejandro Ibarra	1973	\N
nm0722042	Sergio Reynoso	1959	\N
nm0207010	Gilberto de Anda	1955	\N
nm0586069	Monica Miguel	1936	2020
nm0602600	Eric Morales	\N	\N
nm0647222	Humberto 'Kiko' Olivieri	1949	\N
nm0009484	Liliana Abud	1948	\N
nm1294113	Dolores Ortega	\N	\N
nm7434564	Juliana Lopez Collado	\N	\N
nm9386987	Juan Pablo Plasencia	\N	\N
nm1355084	Lino Gama	\N	\N
nm0638955	Jesús Nájera	\N	\N
nm1355053	Juan Carlos Frutos	\N	\N
nm1356348	Marco Antonio Rocha	\N	\N
nm16898256	Avery Austin Jr.	\N	\N
nm16895469	Wesley Huff	\N	\N
nm1644076	Ernesto Belloni	\N	\N
nm0616504	Rodrigo Muñoz	1968	\N
nm0652187	Marcela Osorio	\N	\N
nm1901822	Eliana Palermo	\N	\N
nm1876504	Marlen Olivari	1975	\N
nm1130854	Felipe Armas	\N	\N
nm1437967	Josefina Velasco	1961	\N
nm1799835	Veronica González	\N	\N
nm1433610	Fernando Alarcón	\N	\N
nm0176182	Javiera Contador	1974	\N
nm0173667	Ray Combs	1956	1996
nm0939712	Gene Wood	1925	2004
nm0271573	Andrew Felsher	\N	\N
nm0271588	Howard Felsher	1927	2018
nm13025061	Peter Klohn	\N	\N
nm13027758	Andy Reid	\N	\N
nm12846446	James Ash	\N	\N
nm13027821	Ryan Paul	\N	\N
nm13073439	Sophie Slasor	\N	\N
nm8088184	Harshad Arora	1987	\N
nm11062125	Kapil Arya	\N	\N
nm4480587	Vaishnavi Dhanraj	1988	\N
nm5450009	Ragini Nandwani	1989	\N
nm6216582	Ankit Raj	\N	\N
nm11239202	Kuldeep Singh	\N	\N
nm6842937	Deepak Garg	\N	\N
nm1855392	B.P. Singh	\N	\N
nm5307766	Gopal Kulkarni	\N	\N
nm3575029	Anshuman Sinha	\N	\N
nm1247173	Pradeep Uppoor	\N	2023
nm9379213	Madhu S. Rao	\N	\N
nm1716881	Bill Hemmer	1964	\N
nm0438496	Rajit Kapoor	\N	\N
nm0706953	K.K. Raina	1952	\N
nm4432541	Kartik Dutta	\N	\N
nm1098018	Sukanya Kulkarni	1968	\N
nm1168073	Dinyar Tirandaz	\N	\N
nm5034831	Asit Banerjee	\N	\N
nm6395387	Tushar Majumdar	\N	\N
nm5034859	Rakesh Sahu	\N	\N
nm1240831	Naved Aslam	\N	\N
nm0154113	Basu Chatterjee	1930	2020
nm0051779	Saradindu Bandopadhyay	1899	1970
nm2058759	Mriganka Sekhar Ray	\N	\N
nm1160316	Ananda Shankar	1942	1999
nm1657965	Ajay Prabhakar	\N	\N
nm2392563	Sanjay Malhotra	\N	\N
nm0304265	Delhi Ganesh	1944	2024
nm5182167	Prithviraj	\N	\N
nm7021588	Naga	\N	\N
nm10785618	Indra Soundar Rajan	1958	2024
nm0049335	K. Balachander	1930	2014
nm7265004	Norm Marshall	\N	\N
nm7265005	Larry O'Brien	\N	\N
nm2026184	Bud Grant	1927	2023
nm7524705	Jim Trimble	1918	2006
nm0821048	Timothy Stack	1954	\N
nm1796216	Kyle Kaplan	1990	\N
nm2388621	Camila Greenberg	\N	\N
nm1927322	Jordan Beckett	\N	\N
nm0185361	Eliza Coyle	\N	\N
nm3988727	Andrew Jacono	\N	\N
nm3574961	Shak Brenner	\N	\N
nm4884436	Andrea Caban	\N	\N
nm4884845	Brigid Dorrity	\N	\N
nm2801334	Nedra Gallegos	\N	\N
nm4884999	J.P. Groeninger	\N	\N
nm2052565	Todd Ryan Jones	1978	\N
nm4034668	Gabriel Kotch	\N	\N
nm3034735	Peter D. Michael	\N	\N
nm4749394	Matthew Rini	\N	\N
nm0850387	Chris Tardio	\N	\N
nm2213174	Alex Terrazas	\N	\N
nm0017002	Brett Albright	\N	\N
nm9227454	Ben Kutchins	\N	\N
nm2532484	Doug Fitch	\N	\N
nm2564194	Andrew Gold	\N	\N
nm2883089	Lisa M. Jones	\N	\N
nm1536072	Daniel Praid	\N	\N
nm0003119	Steve Cubine	\N	\N
nm0573076	Shannon McMahon	\N	\N
nm0002010	Christian Clavier	1952	\N
nm0688143	Benoît Poelvoorde	1964	\N
nm0508293	Thierry Lhermitte	1952	\N
nm1569942	Jérôme Commandeur	1976	\N
nm0658041	Rossy de Palma	1964	\N
nm1720035	Virginie Hocq	1975	\N
nm0220798	Vincent Desagnat	1976	\N
nm0108431	Nicolas Briançon	1962	\N
nm0000367	Gérard Depardieu	1948	\N
nm7307741	Elisa Bachir Bey	\N	\N
nm1318381	Nicolas Benamou	1978	\N
nm0355213	Jean-François Halin	1961	\N
nm0688585	Jean-Marie Poiré	1945	\N
nm0216635	Olivier Delbosc	1968	\N
nm6249597	Maxime Desprez	\N	\N
nm4315422	Michaël Tordjman	\N	\N
nm0346665	Philippe Guilbert	\N	\N
nm4150464	Elodie Codaccioni	\N	\N
nm1055024	Coralie Amedeo	\N	\N
nm0248355	Maamar Ech-Cheikh	\N	\N
nm0360564	Will Hanrahan	\N	\N
nm8254218	Bo Channon	\N	\N
nm11019762	Claire Grant	\N	\N
nm7152800	Hayley Rhodes	\N	\N
nm1014326	Claire Thomas	\N	\N
nm5493796	Chris Polding	\N	\N
nm6650425	Joe Birch	\N	\N
nm6732293	Dave Brown	\N	\N
nm15576824	Jarvis Greer	\N	\N
nm15576286	Kim Hindrew	\N	\N
nm0865435	Hermann Toelcke	1953	\N
nm0871156	Herbert Trattnigg	1955	\N
nm0778081	Patricia Schäfer	1967	\N
nm0806833	Francois Smesny	1968	\N
nm0004077	Klaus Christian Schreiber	1959	\N
nm0257120	Marlies Engel	1943	\N
nm0439952	Uwe Karpa	1945	\N
nm0867661	Anja Topf	1968	\N
nm0257130	Nadja Engel	1964	\N
nm1482180	Henny Reents	1974	\N
nm0634882	Norbert Schultze Jr.	1942	2020
nm0921423	Jürgen Werner	1963	\N
nm0775645	Claudia Schröder	1953	\N
nm0485998	Jens Langbein	1962	\N
nm0776154	Robert Schulte-Hemming	1957	\N
nm1003218	Rainer Nolte	\N	\N
nm0461398	Marion Knothe	\N	\N
nm0880214	Gitta Uhlig	1960	2018
nm0530704	Toni Lüdi	1945	\N
nm2381962	Fang Song	\N	\N
nm0406774	Shôzô Ichiyama	\N	\N
nm0441972	Midori Katô	1939	\N
nm0605713	Hiromitsu Morita	\N	\N
nm7740131	Eizô Kobayashi	\N	\N
nm4002004	Akemi Moriyama	\N	\N
nm1261208	Akemi Omode	1968	\N
nm1618384	Go Haruna	\N	\N
nm5095280	Hiroyasu Isshiki	\N	\N
nm5321127	Eiichi Kubota	\N	\N
nm6071465	Hisashi Tezuka	\N	\N
nm7432707	Sengo Kurosaki	\N	\N
nm7432711	Mitsuhiro Hirata	\N	\N
nm7432710	Masahiko Kawana	\N	\N
nm0538639	Eigo Makioka	\N	\N
nm1159969	Kazuhiro Ozawa	\N	\N
nm1393016	Rody Aragón	1958	\N
nm0283836	Fofito	1949	\N
nm9904356	Andreas Zahler	\N	\N
nm4536886	Bernard Houser	\N	\N
nm0354981	Nick Hale	\N	\N
nm0544159	Marcus Manton	\N	\N
nm1188213	Sarah Elder	\N	\N
nm0436591	Leonard Kamerling	\N	\N
nm8124134	Nancy E Finn	\N	\N
nm10591204	Marian Murray	\N	\N
nm0327076	Richard Gomez	1966	\N
nm1285140	Joey Marquez	1957	\N
nm0261824	John Estrada	1973	\N
nm1856341	Cynthia Patag	\N	\N
nm1230029	Amy Perez	\N	\N
nm1008648	Miguel Rodriguez	\N	1997
nm0739418	Gloria Romero	1933	2025
nm0898062	Carmina Villaroel	1975	\N
nm1203430	Johnny Manahan	\N	\N
nm8820487	John Gowans	\N	\N
nm1310983	Ipe Pelino	\N	\N
nm1628344	Divino Reyes	\N	\N
nm0419494	Jose Javier Reyes	\N	\N
nm12638835	Akanksha Hajari	\N	\N
nm12638836	Mithila	\N	\N
nm8873223	Smriti Thakur	\N	\N
nm9556868	Aarti Thakur	\N	\N
nm9556867	Mihir Goswami	\N	\N
nm9556866	Chirag Machhar	\N	\N
nm9101187	Kevin Jason Crasta	\N	\N
nm0863790	Christopher Timothy	1940	\N
nm0188780	Maggie Cronin	\N	\N
nm0926982	Corrinne Wicks	\N	\N
nm0124719	Tom Butcher	1963	\N
nm0048159	Ariyon Bakare	1971	\N
nm0730220	Natalie J. Robb	1974	\N
nm0038018	Nicole Arumugam	\N	\N
nm1054175	Eva Fontaine	\N	\N
nm0905632	Tabitha Wady	1976	\N
nm0236071	Tim Downie	1977	\N
nm1020303	Terry Iland	\N	\N
nm1140638	Phil Mathews	\N	\N
nm0873703	Will Trotter	\N	\N
nm1366563	Steve Buckland	\N	\N
nm0731453	Neil Roberts	1964	\N
nm2119736	Riccardo Festa	1975	\N
nm3168045	Salvatore Costa	\N	\N
nm0071176	Pierpaolo Benigni	1972	\N
nm0208194	Liliana De Curtis	1933	2022
nm0320938	Andrea Girolami	\N	\N
nm3168503	Antonio Bracco	\N	\N
nm6845384	Mark Smith	\N	\N
nm6845383	Louise Hewitt	\N	\N
nm6479269	Shawn Basheer	\N	\N
nm6845382	Tom Richardson	\N	\N
nm6047851	Jaison Dobbs	\N	\N
nm6845385	George Terrill	\N	\N
nm6845386	Othneil Annan	\N	\N
nm9111300	Adrian Apolonio	\N	\N
nm13045076	Ethan Schulteis	2002	\N
nm13045075	Frisco Cazemier	\N	\N
nm13045077	Imubi5	\N	\N
nm0007746	Diego Abatantuono	1955	\N
nm0031317	Roberto Freak Antoni	1954	2014
nm0033420	Renzo Arbore	1937	\N
nm1374448	Oscar Avogadro	1951	2010
nm0045751	Don Backy	1939	\N
nm0078057	Orietta Berti	1943	\N
nm0081722	Giancarlo Bigazzi	1940	2012
nm2401304	Stefano Bollani	1972	\N
nm0094717	Achille Bonito Oliva	1939	\N
nm0094730	Claudio Bonivento	1950	\N
nm2546221	Carla Rinaldi	\N	\N
nm6054203	Michele Rossi	\N	\N
nm0820034	Squallor	\N	\N
nm0007749	Alessandro Abate	\N	\N
nm6054205	Cremo Di Bella	\N	\N
nm10730102	Parthiban	\N	\N
nm3826010	Lakshmy Ramakrishnan	1970	\N
nm1701930	Saravanan	\N	\N
nm0493067	Vernon Lawrence	1940	\N
nm4109111	Ellie Kyle	\N	\N
nm1563271	José Alberto Carvalho	1967	\N
nm0211722	Marcelo Rebelo de Sousa	1948	\N
nm1563399	Joaquim Franco	\N	\N
nm3004584	Helder Guimarães	\N	\N
nm2933502	Sousa Martins	\N	\N
nm1047419	Brian Williams	1959	\N
nm1930273	DeMorge Brown	\N	\N
nm3639013	D'Arcy Carden	\N	\N
nm3912387	Nelson Cheng	\N	\N
nm4254152	Tarik Ellinger	\N	\N
nm4697862	Avriella Ford	\N	\N
nm0253748	Bunny Klein Gibson	1946	\N
nm3878628	Peter Greathouse	\N	\N
nm3462502	Barak Hardley	1975	\N
nm5357691	Bill Kottkamp	\N	\N
nm4862149	Pam Murphy	\N	\N
nm3156345	Charles Ingram	\N	\N
nm1476237	Jack Allison	\N	\N
nm0283905	Jake Fogelnest	1979	\N
nm2079484	Rachel Lee Goldenberg	\N	\N
nm3889830	Mike Karnell	\N	\N
nm6636114	Kegan Swyers	\N	\N
nm1505539	Rod Aissa	\N	\N
nm1416165	Lisa Lettunich	\N	\N
nm0897590	Danny Villa	\N	\N
nm3328646	David Korkis	\N	\N
nm1013680	Tom McCudden	\N	\N
nm0684840	Luana Piovani	1976	\N
nm0890394	Pedro Vasconcelos	1974	\N
nm0051678	Mário Márcio Bandarra	1955	2021
nm1065581	Emanuel Jacobina	\N	\N
nm1065952	Andréa Maltarolli	1962	2009
nm5232957	Trish Rainone-DiLuzio	\N	\N
nm5963653	Andre Guantanamo	\N	\N
nm6767303	Alysia Topol	\N	\N
nm0000268	Ann-Margret	1941	\N
nm1635586	Dennis Coleman	\N	\N
nm0742589	James Rosenfield	\N	\N
nm10323265	Karl-Rudolf Korte	1958	\N
nm3987922	Britta Krane	\N	\N
nm12137211	Svitlana Magazova	\N	\N
nm12137212	Panja Schollbach	\N	\N
nm3766090	Doug Walker	1981	\N
nm1411610	Alexandra Jiménez	1980	\N
nm1268637	Daniel Grao	1976	\N
nm5936677	Alba José	\N	\N
nm0231365	Jordi Domènech	\N	\N
nm0284759	Patricia Font	1978	\N
nm1298574	Sergi Casamitjana	\N	\N
nm1955573	David Valldepérez	\N	\N
nm1252389	Jaume Martí	1975	\N
nm11251043	Erin Mackey	\N	\N
nm1200444	Darcy Fitzpatrick	\N	\N
nm4298935	Edward J. Martin	\N	\N
nm0180391	Shelley Cornick	1969	\N
nm1829292	Wendy Williams	1964	\N
nm11062183	Kendall B. Clark	\N	\N
nm12237685	McLean Fletcher	\N	\N
nm4527107	John S. Howell Sr.	1967	\N
nm6634826	Brian K. Landis	\N	\N
nm3746917	Rachael Lang	\N	\N
nm4835879	Nicholas Williamson	\N	\N
nm0121036	Jean Guy Bureau	\N	\N
nm2275681	Lorraine DiRienzo	\N	\N
nm1948775	Kaylan Eggert	1981	\N
nm2064328	Jacin Buchanan	\N	\N
nm1712316	Thomas Jacobi	\N	\N
nm1358043	Shelton Mansfield	\N	\N
nm1339464	Kathleen L. Martin	\N	\N
nm0676318	Andi Peters	1970	\N
nm0285328	Emma Forbes	1965	\N
nm3147626	2 Unlimited	\N	\N
nm0068386	Martin Bell	1938	\N
nm0205823	Bobby Davro	1959	\N
nm0800043	Simon Hickson	1962	\N
nm1016385	Mitch Johnson	\N	\N
nm2311223	The Kelly Family	\N	\N
nm0572112	Craig McLachlan	1965	\N
nm1051121	Trevor Neal	\N	\N
nm0534809	Malu Mader	1966	\N
nm0039916	Fábio Assunção	1971	\N
nm0267403	Reginaldo Faria	1937	\N
nm0079343	Paulo Betti	1952	\N
nm0009334	Cláudia Abreu	1970	\N
nm0013214	Helder Agostini	1990	\N
nm0023999	Neuza Amaral	1930	2017
nm0031277	Giovanna Antonelli	1976	\N
nm0033371	Eduardo Arbex	1949	\N
nm0041957	Otávio Augusto	1945	\N
nm0033288	Carlos Araújo	\N	\N
nm0131258	João Camargo	1960	\N
nm0541027	Fabrício Mamberti	\N	\N
nm0276919	Mauro Mendonça Filho	\N	\N
nm0103819	Gilberto Braga	1945	2021
nm0305349	Marília Garcia	\N	\N
nm0634036	Alcides Nogueira	1949	\N
nm0560429	Ruy Mattos	\N	\N
nm1119125	Flávio Nascimento	\N	\N
nm0667257	Marcos Paulo	1951	2012
nm0261884	Nonato Estrela	\N	\N
nm4502707	S.N.S. Sastry	1930	1978
nm1164862	Lev Gorn	1971	\N
nm0302965	Billy Ray Gallion	1971	\N
nm0174566	Mon Confiado	\N	\N
nm1312476	Lara Morena	\N	\N
nm3514480	Chanel Latorre	\N	\N
nm5015390	Lovely Abella	\N	\N
nm0553604	Leo Martinez	1950	\N
nm1493666	Mosang	\N	\N
nm7044552	Andrew Gan	\N	\N
nm3137185	Rob Sy	1978	\N
nm1639176	Gregory Segal	1970	\N
nm3332604	Charlotte Dianco	\N	\N
nm9421154	Cody Simon	\N	\N
nm7793986	Utkucan Eken	\N	\N
nm0339704	Mario Grigorov	\N	\N
nm0768179	John Sawyer	\N	\N
nm11342010	Jonnel Regis Buensuceso	\N	\N
nm5698360	Stefano Milano	\N	\N
nm5110271	Phil Biedron	\N	\N
nm5864006	Natalie J. Davis	\N	\N
nm4465743	Devon Goodman	\N	\N
nm5107518	Ashley Renee Scott	\N	\N
nm4677687	Wes Tate	1987	\N
nm8920928	Tiffany Cheri Wolfford	\N	\N
nm0299192	Toshio Furukawa	1946	\N
nm0394690	Ryô Horikawa	1958	\N
nm0411879	Miki Itô	1962	\N
nm0412628	Mitsuo Iwata	1967	\N
nm1377139	Daisuke Kishio	1974	\N
nm7375875	Rina Kitagawa	\N	\N
nm1211536	Yuka Komatsu	1978	\N
nm0465631	Satomi Kôrogi	1966	\N
nm1752885	Elizabeth Maxwell	1983	\N
nm0585640	Hikaru Midorikawa	1968	\N
nm3983990	Andrea Feczko	\N	\N
nm5955634	Michael Stevens	1986	\N
nm10558176	Andreas Kohlschütter	\N	\N
nm10694461	Adil Zulfikarpasic	\N	\N
nm12659263	Urs Bernhard	\N	\N
nm1616485	Hemant Choudhary	\N	\N
nm9367136	Kanwar Dhillon	\N	\N
nm9367135	Tina Philip	\N	\N
nm12143373	Dharmendra Sharma	\N	\N
nm7989777	Hemant Behl	\N	\N
nm10020704	Ved Raj	\N	\N
nm1941818	Dheeraj Sarna	\N	\N
nm13212057	Vaibhav p Powale	\N	\N
nm1042831	Philip Hersh	\N	\N
nm3063047	Donnabella Mortel	\N	\N
nm4252685	Tamara Goodwin	\N	\N
nm1902165	Julienne Irons	\N	\N
nm3228798	Constance Reese	\N	\N
nm2544291	Welton Thomas Pitchford	\N	\N
nm2217626	Bridgett Lawrence	\N	\N
nm3313809	Amber Kaye	\N	\N
nm1435730	Matthew Head	\N	\N
nm2361799	Meaghan Davies	\N	\N
nm7150837	Anthony Grundy	\N	\N
nm1048007	John Leary	\N	\N
nm0025457	Kepa Amuchastegui	1941	\N
nm1417512	Ronald Ayazo	1944	\N
nm0258710	Raquel Ércole	1940	2021
nm0830634	David Stivel	1930	1992
nm7794979	Alfonso Bonilla Naar	\N	\N
nm0422988	Julio Jiménez	\N	\N
nm4596896	Martina Soto Pose	\N	\N
nm1633258	Kathleen Anderson	\N	\N
nm8191667	Rachel Molloy	\N	\N
nm0932743	Marianne Willison	\N	\N
nm2506145	Clayton Ercolano	\N	\N
nm0749476	Charles Ruggles	1886	1970
nm0076403	Tom Bernard	1932	2018
nm0278646	Eddie Firestone	1920	2007
nm0370151	Jimmy Hawkins	1941	\N
nm0449905	Margaret Kerry	1929	\N
nm0518885	Beverly Long	1933	2014
nm0637803	Judy Nugent	1940	2023
nm0128608	George Cahan	1919	1991
nm0680461	Irving Phillips	1904	2000
nm0397301	Howard Wright	1896	1990
nm3182759	Bob Raisbeck	\N	\N
nm2283958	Stephen Graybill	\N	\N
nm2656018	Carrie Anne James	\N	\N
nm2280435	Topher Mikels	\N	\N
nm2157767	Alex Merkin	\N	\N
nm1761254	Gary Gimelfarb	\N	\N
nm1548440	Andrew Carranza	1974	\N
nm1464979	Louise Minchin	1968	\N
nm12940615	Geoffrey Benson	\N	\N
nm8243924	Chinedu Ernesto	1977	\N
nm12152750	Caleb Fernandez	\N	\N
nm12940617	Pascal Hoffmann	\N	\N
nm12152836	Zoltan Orban	\N	\N
nm4559951	Ricardo Prostreamz Rodriguez	\N	\N
nm8579046	Karen Saavedra	\N	\N
nm12940618	Cindy Taupez Scinto	\N	\N
nm7173647	Nathan Taupez Scinto	\N	\N
nm3277191	Christopher Birk	\N	\N
nm0683342	Jörg Pilawa	1965	\N
nm1859889	Peter de Leeuwe	\N	\N
nm1859563	Cor Dekker	\N	\N
nm1859675	Rob Kruisman	\N	\N
nm1859894	Rein van den Broeck	\N	\N
nm1645892	Rick van der Linden	1946	2006
nm1859892	Huib van Kampen	\N	\N
nm1854837	Oldwig Jancke	1938	2023
nm1757492	David Richardson	1987	\N
nm1176320	Steve Peddie	\N	\N
nm1568353	Vanessa Yardley	\N	\N
nm1135742	Tim Count	\N	\N
nm0615426	Annie Murtagh-Monks	\N	\N
nm13072626	Niles Austin	\N	\N
nm11846227	Dustin Bolt	\N	\N
nm12102990	Andrew D. Erath	\N	\N
nm7281113	Rodd Evans	\N	\N
nm6267863	Tweed Michael Manning	\N	\N
nm10958778	Shelby Swanson	\N	\N
nm6719863	Daniel Deal	\N	\N
nm1574483	Nkem Owoh	\N	\N
nm1300696	Sam Loco Efe	\N	2011
nm2102155	Rita Nzelu	\N	\N
nm2155651	Enebechi Alor	\N	\N
nm2411891	Don August	\N	\N
nm2115987	Roy De Nani	\N	\N
nm2148650	David Ihesie	\N	\N
nm2364632	Diewait Ikpechukwu	\N	\N
nm2595120	Genesis Uchendu	\N	\N
nm2276942	Sunday Nnajiude	\N	\N
nm2187526	Ugo Emmanuel	\N	\N
nm2195556	Alex Okeke	\N	\N
nm0479886	Hilton Lacerda	1965	\N
nm11960945	Mariana Lacerda	\N	\N
nm1715201	Pepa Bueno	1964	\N
nm1422904	Sonia Ferrer	1977	\N
nm1856804	Alicia Santolaya	1961	\N
nm3710204	Jordi Ruiz Masó	\N	\N
nm4776841	Lawrence Jones	\N	\N
nm10409933	Jason Rantz	1982	\N
nm8150263	Jassem Taslimi	\N	\N
nm8150262	Navid Taslimi	\N	\N
nm8123596	Omid Taslimi	1986	\N
nm0008819	Cynthia Abma	1969	\N
nm0115836	Caroline de Bruijn	1962	\N
nm0212231	Erik de Vogel	1961	\N
nm3458600	Ferry Doedens	1990	\N
nm0271627	Ruud Feltkamp	1989	\N
nm0450653	Marjolein Keuning	1962	\N
nm2256574	Clemens Levert	1990	\N
nm2629899	Gigi Ravelli	1982	\N
nm0785755	Joep Sertons	1959	\N
nm3132140	Guido Spek	1990	\N
nm0914844	Reg Watson	1926	2019
nm4591432	Houdijn Beekhuis	\N	\N
nm0731054	Edith Roberts	1899	1935
nm1301043	Marguerite McRae	\N	\N
nm0545147	Inez Ranous	\N	\N
nm0071132	Harry Benham	1884	1969
nm0446017	Winthrop Kelley	1884	\N
nm0139636	Catherine Carr	1880	1941
nm1401831	Georgina Cisquella	1954	\N
nm1824346	Alberto García-Alix	1956	\N
nm1775614	Miguel Ángel Silvestre	1982	\N
nm1894594	Antonio Parra	\N	\N
nm4817603	Jimmie DeRamus	\N	\N
nm7502835	Johnnie DeRamus	\N	\N
nm1407493	Ruben Obregon	\N	\N
nm2894616	Brian Reichelt	\N	\N
nm0578525	Mocean Melvin	\N	\N
nm3147046	Mike Grathwohl	\N	\N
nm0322099	Sean Glassman	\N	\N
nm0383412	Jimmy Higgins	\N	\N
nm2214926	James Machado	\N	\N
nm0797030	Eric Siegelstein	\N	\N
nm4017926	Laura Gittleson	\N	\N
nm2277787	Meghan McGinley	1980	\N
nm3951564	Brittany Winsick	\N	\N
nm3563568	Jessica Winton	\N	\N
nm0417970	Cas Jansen	1977	\N
nm0388952	Jennifer Hoffman	1980	\N
nm1778814	Michiel Rampaart	\N	\N
nm0888052	Christine van Stralen	1963	\N
nm0087538	Margreet Blanken	1941	\N
nm0851227	Chris Tates	1962	\N
nm0210008	Ruurt de Maesschalck	\N	\N
nm0886402	Hannah van der Sande	\N	\N
nm0277329	Flip Filz	\N	\N
nm0196723	Hans Dagelet	1945	\N
nm9967834	Dylan Wang	1998	\N
nm7862567	Yiren Song	1993	\N
nm10935694	Crystal Yuan	1992	\N
nm7626790	Chaoyue Yang	\N	\N
nm0155532	Adam Cheng	1947	\N
nm10234073	Kris Sun Zu Jun	\N	\N
nm0648499	Andy On	1977	\N
nm2038966	Dylan Kuo	1977	\N
nm0910948	Jinsong Wang	1968	\N
nm10935695	Keren Kang	1996	\N
nm8611398	Ni Mao	\N	\N
nm5836811	Sophia Brown	\N	\N
nm6919834	Laurence O'Fuarain	1990	\N
nm10939187	Mirren Mack	\N	\N
nm0377901	Lenny Henry	1958	\N
nm4753860	Jacob Collins-Levy	1992	\N
nm5438541	Joey Batey	1989	\N
nm10277998	Zach Wyatt	\N	\N
nm12181413	Lizzie Annis	\N	\N
nm8557225	Huw Novelli	\N	\N
nm3957824	Francesca Mills	1996	\N
nm2564973	Sarah O'Gorman	\N	\N
nm1835160	Declan De Barra	\N	\N
nm4409961	Tasha Huo	\N	\N
nm1274355	Lauren Schmidt Hissrich	1978	\N
nm1140292	Andrzej Sapkowski	1948	\N
nm0365310	Sasha Harris	\N	\N
nm10617113	Tania Lotia	\N	\N
nm0566970	Bear McCreary	1979	\N
nm1700053	Jean-Philippe Gossart	\N	\N
nm0820987	Terry Stacey	1962	\N
nm5253245	Sophie Holland	\N	\N
nm0493115	Andrew Laws	\N	\N
nm1530005	Nick Groff	1980	\N
nm2570873	Katrina Weidman	\N	\N
nm10747585	James Cowan	\N	\N
nm10747586	Jeff Lewis-Jones	\N	\N
nm3870961	Rob Saffi	\N	\N
nm6668963	Matt Colbourn	\N	\N
nm5244928	Sheika Plater	\N	\N
nm0107543	Herbert Brenon	1880	1958
nm0790137	William E. Shay	1866	\N
nm0486041	Lillian Langdon	1860	1943
nm1282724	J.R. Clements	\N	\N
nm0480674	Carl Laemmle	1867	1939
nm0361665	Hideko Hara	1959	\N
nm1280637	Mariko Nonaka	1927	2014
nm0639684	Margaret O'Brien	1937	\N
nm0007217	Jack Carson	1910	1963
nm0805790	Walter Slezak	1902	1983
nm0833645	Gil Stratton	1922	2008
nm0934798	Marie Windsor	1919	2000
nm0000748	Leon Ames	1902	1993
nm0663183	Emory Parnell	1892	1979
nm12520126	Leo Slezak	\N	\N
nm0516093	Norman Lloyd	1914	2021
nm0041598	Eleanor Audley	1905	1991
nm3047951	Danae Reynaud	1995	\N
nm2619300	Ernesto Martínez Bucio	\N	\N
nm2169061	Alejandro Maroto	\N	\N
nm3160488	Galo Olivares	\N	\N
nm5618599	Federico Cantú	\N	\N
nm0803021	Gene Siskel	1946	1999
nm8455886	Jim Murphy	\N	\N
nm0343135	Andrea Gronvall	\N	\N
nm5199957	Paul Andrews	\N	\N
nm3393656	Andrey Gaydulyan	1984	\N
nm3392199	Aleksey Klimushkin	1965	\N
nm3395987	Valentina Rubtsova	1977	\N
nm1399303	Andrey Sviridov	1975	\N
nm3392634	Vyacheslav Dusmukhametov	1978	\N
nm2955009	Semyon Slepakov	1979	\N
nm4801681	Alex Gower-Jackson	\N	\N
nm0004742	Maria Bello	1967	\N
nm2482391	Nora Arnezeder	1989	\N
nm3033378	Joséphine de La Baume	1984	\N
nm1123840	Alyy Khan	1968	\N
nm4788100	Shubham Saraf	\N	\N
nm1389480	Sartaj Garewal	\N	\N
nm1030658	Ranjit Krishnamma	\N	\N
nm3899743	Raffaela O'Neill	\N	\N
nm8604412	Leïla Sy	\N	\N
nm0798062	Karine Silla	1965	\N
nm0798065	Virginie Besson-Silla	\N	\N
nm3115492	Siranat Ratchusanti	\N	\N
nm16537616	Thando Bungane	\N	\N
nm16537695	Mawande Msomi	\N	\N
nm16914815	Mthunzi Nkolomi	\N	\N
nm16914813	Luthando Tshaka	\N	\N
nm16592188	Rhandzu P Mthabini	\N	\N
nm16914816	Tailah Botha	\N	\N
nm2542118	Alexandra Beaton	\N	\N
nm5250195	Brennan Clost	1994	\N
nm5224212	Angela Palmer	\N	\N
nm4181215	Cody Kearsley	1991	\N
nm5358125	Louriza Tronco	1993	\N
nm7724722	Corteon Moore	\N	\N
nm2761728	Kailey Spear	\N	\N
nm0645781	Enuka Okuma	1976	\N
nm0141696	Jill Carter	\N	\N
nm2241963	Ian Carpenter	\N	\N
nm1171843	Jocelyn Cornforth	\N	\N
nm4109908	Clive Holloway	\N	\N
nm2306220	Simon Schneider	\N	\N
nm1564879	Alec MacNeill Richardson	\N	\N
nm6235908	James Boatman	\N	\N
nm0188205	Mark Critch	1974	\N
nm3821464	Ryan Hamilton	\N	\N
nm1649782	Jonny Harris	1975	\N
nm0000965	Danny Boyle	1956	\N
nm0001021	Veronica Cartwright	1949	\N
nm0318429	David Giler	1943	2020
nm0000631	Ridley Scott	1937	\N
nm0000244	Sigourney Weaver	1949	\N
nm1226527	David Hughes	1968	\N
nm1271052	Albert Sharpe	\N	\N
nm2081669	Iain Ovenden	\N	\N
nm0805665	Simon Sleap	\N	\N
nm10277011	Hemang Dave	\N	\N
nm12352550	Pooja Doshi	\N	\N
nm15850085	Pooja Doshi	\N	\N
nm6204616	Hiten Kumar	\N	\N
nm13568301	Magan Luhar	\N	\N
nm13721568	Akash Pandya	\N	\N
nm15850083	Morli Patel	\N	\N
nm13339772	Dhwani Rajput	\N	\N
nm7360355	Harita Shah	\N	\N
nm9437971	Vikee Shah	\N	\N
nm7246824	Nishith Brahmbhatt	\N	\N
nm15119313	Rushikesh Thakkar	\N	\N
nm15850086	Dineshbhai Patel	\N	\N
nm4419841	Bibhu Das	\N	\N
nm3175760	Parth Y. Bhatt	\N	\N
nm5093125	Valentina Nappi	1990	\N
nm2844388	Keiran Lee	1984	\N
nm0124889	Daws Butler	1916	1988
nm0582106	Don Messick	1926	1997
nm0053484	Joseph Barbera	1911	2006
nm0360253	William Hanna	1910	2001
nm0761902	Dalton Sandifer	1919	2008
nm0500380	Warner E. Leighton	1930	2005
nm2612271	Andrew Zimmern	1961	\N
nm1941592	Markus Rutledge	\N	\N
nm1272317	Dane Lawing	\N	\N
nm13737359	Brigitte Ansai	\N	\N
nm1172522	Frans Kras	\N	\N
nm0413135	David Perry	1970	\N
nm13737360	Rosy	\N	\N
nm13737361	Carmen Gonzales	\N	\N
nm13737362	Iwana	\N	\N
nm1187031	Alex Gold	\N	\N
nm0435837	Jay Lassiter	1968	\N
nm1187275	Christine Levynau	\N	\N
nm0604704	Harry S. Morgan	1945	2011
nm0771175	Georg Scheu	\N	\N
nm0845737	Tom Syderburg	\N	\N
nm16548106	Chilling Scares	\N	\N
nm2873893	Greg Gaston	\N	\N
nm16351196	Dee Griffin	\N	\N
nm16351195	Cameron Harper	\N	\N
nm16348508	Brian Teigland	1955	2008
nm0111480	Jacob Bronowski	1908	1974
nm1649195	Alan Bullock	1914	2004
nm0147687	David Cecil	1902	1986
nm0330961	Marius Goring	1912	1998
nm0611193	Malcolm Muggeridge	1903	1990
nm0299033	John Furness	\N	\N
nm0774080	Elke Schneiderbanger	\N	\N
nm1922694	Elmar Hörig	1949	\N
nm0770043	Michael Schanze	1947	\N
nm0800697	Heintje Simons	1955	\N
nm1080915	Igor Kistol	1970	\N
nm10835180	Aleksandr Lobanov	1982	\N
nm7642660	Sergey Vasiliev	\N	\N
nm7640721	Nikita Vorozhishchev	1986	\N
nm8112903	Vyacheslav Tkach	\N	\N
nm10645407	Roman Korobko	\N	\N
nm0173416	Pinto Colvig	1892	1967
nm0000370	Walt Disney	1901	1966
nm0293659	Paul Frees	1920	1986
nm0317970	Billy Gilbert	1894	1971
nm0329993	Anita Gordon	1929	2015
nm0621699	Clarence Nash	1904	1985
nm1288777	Page Cavanaugh Trio	\N	\N
nm0527217	Hamilton Luske	1903	1968
nm0433143	Bill Justice	1914	2011
nm0718627	Wolfgang Reitherman	1909	1985
nm0730860	Bill Roberts	1899	1974
nm0109205	Homer Brightman	1901	1988
nm0670328	Bill Peet	1915	2002
nm0727370	Joe Rinaldi	1914	1974
nm0005980	George Bruns	1914	1983
nm1345229	Paul J. Smith	1906	1985
nm0006337	Oliver Wallace	1887	1963
nm5381535	Vonii Bristow	\N	\N
nm1444462	Richard Brooks	1962	\N
nm0717227	Daphne Reid	1948	\N
nm3180285	Angelo Reyes	\N	\N
nm0005389	Victoria Rowell	1959	\N
nm7503307	Nikko Austen Smith	\N	\N
nm0820426	Charline St. Charles	\N	\N
nm5866074	Shannon Wallace	\N	\N
nm1441689	Carletta Hurt	\N	\N
nm0808914	Keith L. Smith	\N	\N
nm0038145	Erica Arvold	\N	\N
nm14624683	Anmol Mahajan Vihaan Kalsotra	\N	\N
nm4345177	Saurabh Arora	\N	\N
nm7477079	Hanoz Kerawala	\N	\N
nm3804289	Randhir Jha	\N	\N
nm7032481	Piyush Joshi	\N	\N
nm4100411	Nupur Mehrotra	\N	\N
nm2406271	Angela Brown	\N	\N
nm13730171	Kristin Ochsner	\N	\N
nm14159068	Mary Randell	\N	\N
nm14159026	Jayden Sullivan	\N	\N
nm0860726	Stacey Thomson	\N	\N
nm0051469	Maria Bamford	1970	\N
nm1089569	Rebecca Drysdale	\N	\N
nm6276846	Alex Spresser	\N	\N
nm2789671	Logan Schneider	\N	\N
nm10861084	Sam Goetz	\N	\N
nm3482712	Kirsten Earl	\N	\N
nm0760659	Marina San José	1983	\N
nm0051706	Manuel Bandera	1960	\N
nm1794425	Manuel Baqueiro	1978	\N
nm3106959	Odette Brindis	\N	\N
nm0191149	Vicente Cuesta	\N	\N
nm2185716	Sebastián Fernández	\N	\N
nm0479590	Ana Labordeta	1965	\N
nm0515652	Joan Llaneras	1943	2018
nm0592110	Itziar Miranda	1978	\N
nm1071392	Roberto Mori	1972	\N
nm2558117	Diego Lesmes	\N	\N
nm4273440	María Alarcón	\N	\N
nm2316038	Manel Cubedo	\N	\N
nm2966752	Miriam García Montero	\N	\N
nm1440225	Mark Francis	\N	\N
nm0317113	Melanie Gibson	1963	\N
nm1441993	Neill Lilywhite	\N	\N
nm1443307	Alan Corbett	\N	\N
nm0671676	Tommy Pender	1963	\N
nm1442042	Lloyd Mahoney	\N	\N
nm0178058	George A. Cooper	1925	2018
nm0200676	Ivor Danvers	1932	2020
nm0083467	Jesse Birdsall	1963	\N
nm3237143	James McCormack	\N	\N
nm0289136	Marilyn Fox	\N	\N
nm1444443	John Challen	\N	\N
nm0655570	Stephan Paczai	\N	\N
nm4363721	Ivan Freire	\N	\N
nm4517295	Taylor Guskey	\N	\N
nm3302735	Brandon Hunt	\N	\N
nm5557972	Mc Gilles	\N	\N
nm2162916	Normand L'Amour	1930	2015
nm3612206	Catherine Therrien	\N	\N
nm3634232	Maxime Pilon-Lalande	\N	\N
nm10287286	Guillaume Monette	\N	\N
nm1043164	La La Anthony	1983	\N
nm8666797	Brianna Bond	\N	\N
nm11272995	Toery Clausell	\N	\N
nm0005517	Gabrielle Union	1972	\N
nm1862367	Dwyane Wade	1982	\N
nm7879806	Alexx Wells	\N	\N
nm11315217	Paddy Fletcher	\N	\N
nm2249649	Justin Cameron	\N	\N
nm2639935	Neha Bamb	\N	\N
nm1655805	Suvarna Jha	\N	\N
nm1511891	Iqbal Khan	1980	\N
nm2088950	Amit Tandon	1979	\N
nm1381801	Hiten Tejwani	1974	\N
nm10604490	Manmeet Singh Sodhi	\N	\N
nm1966600	Nivedita Basu	\N	\N
nm6177447	Nina Arora	\N	\N
nm13353446	Avinaash Gupta	\N	\N
nm0438471	Ekta Kapoor	1975	\N
nm5443466	Sharad Tripathi	\N	\N
nm0438506	Shobha Kapoor	\N	\N
nm0784014	Lalit Sen	\N	\N
nm4824342	Nikhil Sinha	\N	\N
nm2754321	Rohan Sawant	\N	\N
nm2754248	Sanjeev Shukla	\N	\N
nm2761947	Dhirendra Singh	\N	\N
nm1465001	Mamoru Miyano	1983	\N
nm1679934	Nana Mizuki	1980	\N
nm1697606	Yûichi Nakamura	1980	\N
nm2976492	Aoi Yûki	1992	\N
nm2944424	Kazuyuki Okitsu	1980	\N
nm0468711	Rikiya Koyama	1963	\N
nm2567228	Shintarô Asanuma	1976	\N
nm1399925	Kenta Miyake	1977	\N
nm3340306	Shin'ya Takahashi	\N	\N
nm6482540	Keiichi Ogata	\N	\N
nm6774570	Junpei Morita	\N	\N
nm6492225	Ayumi Ishii	\N	\N
nm0847176	Natsuko Takahashi	\N	\N
nm3625350	Noriko Ozaki	\N	\N
nm2805410	Mika Takahashi	\N	\N
nm3701367	Masaru Yokoyama	\N	\N
nm0248364	Juan Echanove	1961	\N
nm0180580	Jose Coronado	1957	\N
nm0599539	Elisa Montés	1934	2024
nm1362912	María Abradelo	1969	\N
nm0509811	José Lifante	1943	2024
nm0891892	Pastora Vega	1960	\N
nm0893941	Maribel Verdú	1970	\N
nm0913401	Belinda Washington	1963	\N
nm0785508	Carlos Serrano	\N	\N
nm0597604	Santiago Moncada	1928	2018
nm0679228	Modesto Peña	\N	\N
nm0029406	Gustavo Angarita	\N	\N
nm0351032	Carmenza Gómez	\N	\N
nm0380164	Vicky Hernández	\N	\N
nm0873916	Edmundo Troya	\N	\N
nm0874192	Carolina Trujillo	\N	\N
nm0577215	Manuel Mejía Vallejo	1923	1998
nm7106350	Martha Bossio de Martínez	\N	2022
nm0786333	Josefina Severino	\N	\N
nm2739771	Paul Kobak	\N	\N
nm2336324	Kire Paputts	\N	\N
nm0002418	Colin Brunton	1955	\N
nm3281715	Nathanael Chadwick	\N	\N
nm2320374	James Klopko	\N	\N
nm0001329	Nigel Hawthorne	1929	2001
nm0000545	Helen Mirren	1945	\N
nm0835916	Imogen Stubbs	1961	\N
nm0498756	Ian Leese	\N	\N
nm1626662	Cliff Bestall	\N	\N
nm0112372	Bill Broomfield	\N	\N
nm15172383	Alex Hansen	\N	\N
nm1493982	Robin Probyn	\N	\N
nm15172388	Colin Minchin	\N	\N
nm0035605	Alun Armstrong	1946	\N
nm0714985	Amanda Redman	1957	\N
nm0913993	Dennis Waterman	1948	2022
nm0493200	Denis Lawson	1947	\N
nm0417075	Susan Jameson	1941	\N
nm3528737	Jayden Chamberlain	\N	\N
nm2414018	Kurt Barling	\N	\N
nm5062699	Georgie Castle	\N	\N
nm0533594	Martha Mackintosh	\N	\N
nm0048035	Brana Bajic	\N	\N
nm0792012	Robin Sheppard	\N	\N
nm0881378	Julian Unthank	\N	\N
nm0593697	Roy Mitchell	\N	\N
nm0567010	Nigel McCrery	1953	2025
nm0004603	Warren Bennett	1962	\N
nm0039674	James Aspinall	\N	\N
nm0192194	Josh Cunliffe	\N	\N
nm0240390	Julia Duff	\N	\N
nm0137510	Jason Carlin	\N	\N
nm13902499	Sandeep Kadav	\N	\N
nm12010720	Timir Kireet Bakshi	\N	\N
nm7764826	Amit Senchoudhary	\N	\N
nm12527053	Kumar Amit	\N	\N
nm13322590	Ravindra Shinde	\N	\N
nm12928555	Gopal Dhakal	\N	\N
nm8421389	Deepak Raj Giri	1969	\N
nm8519686	Deepa Shree Niraula	\N	\N
nm12810186	Prem Pandey	1977	\N
nm12969088	Punya Prasad Pandey	\N	\N
nm7737982	Jim Banks	1979	\N
nm2114214	Peter Bergen	1962	\N
nm7438531	Phil Black	\N	\N
nm2131044	Gloria Borger	1952	\N
nm4824045	Pamela Brown	1983	\N
nm8461722	Laura Coates	\N	\N
nm7043423	Tom Fuentes	\N	\N
nm6518091	Pramila Jayapal	1965	\N
nm0501500	Don Lemon	1966	\N
nm5040744	Philip Mudd	\N	\N
nm10382774	Peter Bibbey	\N	\N
nm10382775	Stephen Howie	\N	\N
nm10382777	Dina Lent	\N	\N
nm10382776	Lee Tomlinson	\N	\N
nm10380891	Neil Bennett	\N	\N
nm5535745	Nick Bennett	\N	\N
nm10382783	Nick Best	\N	\N
nm10380890	Martin Bourke	\N	\N
nm2937745	Dermot Clemenger	\N	\N
nm4008748	Johan Jureskog	\N	\N
nm1497410	Jesper Parnevik	1965	\N
nm7629488	Mia Parnevik	\N	\N
nm7629491	Peg Parnevik	\N	\N
nm7629492	Penny Parnevik	1997	\N
nm7629489	Phillippa Parnevik	\N	\N
nm7629490	Phoenix Parnevik	\N	\N
nm0005429	Victoria Silvstedt	1974	\N
nm10051021	Johnny Love	1996	\N
nm12553385	Ana Rose	1999	\N
nm14214674	Charudatta Aphale	\N	\N
nm14300920	Atulshastri Bhagre	\N	\N
nm2935601	Rajbhushan Sahastrabuddhe	\N	\N
nm12243434	Riddhish Gorakh Patil	\N	\N
nm11359669	Abhishek Virkar	\N	\N
nm8453957	Adrian Swearengen	\N	\N
nm4115205	Hannah Brown Ayers	\N	\N
nm4117120	Lance Warren	\N	\N
nm0211482	Damián de Santo	1968	\N
nm3514816	Zaira Nara	1988	\N
nm7412582	Santiago Giorgini	\N	\N
nm7233991	Chantal Abad	\N	\N
nm7412583	Rodrigo Cascón	\N	\N
nm7471734	Melina Fleiderman	\N	\N
nm7209820	Paulo Kablan	\N	\N
nm1918841	Connie Ansaldi	\N	\N
nm7294634	Ariel Rodríguez	\N	\N
nm9878764	Juan Manuel Dopazo	\N	\N
nm1972177	Mónica Spear	1984	2014
nm1179713	Ricardo Álamo	1970	\N
nm0541533	Ana Karina Manco	1969	\N
nm1183123	Eduardo Orozco	\N	\N
nm1132126	Marlene De Andrade	\N	\N
nm8905785	Robin Brooke	\N	\N
nm0093505	César Bolívar	\N	2024
nm1281831	José Luis Zuleta	\N	\N
nm3253005	Carlos Eloy Castro	\N	\N
nm1046369	Leonardo Padrón	\N	\N
nm1562849	Carolina De Jacobo	\N	\N
nm3978938	Gustavo Gonzalez	\N	\N
nm3913156	Juan Lopez	\N	\N
nm0273565	Jorge Fernández	\N	\N
nm3977782	Felipe Lopez	\N	\N
nm0575711	Jorge Medina	\N	\N
nm3978554	Fernando Rodriguez Carillo	\N	\N
nm3978873	Miguel Sanchez	\N	\N
nm3978832	Rigel Sosa Andrade	\N	\N
nm1679372	Sudeep	1973	\N
nm2782609	Anu Prabhakar	1980	\N
nm5665490	Deepa Bhaskar	\N	\N
nm3013862	Master Hirannayya	1934	2019
nm5675977	Srinivasa Murthy	1949	\N
nm1693209	Ramesh Bhat	\N	\N
nm3837488	Komal Kumar	\N	\N
nm6007119	Deepu	\N	\N
nm0755992	Arun Sagar	1980	\N
nm2639493	Vaishali Kasaravalli	\N	2010
nm15590726	G V Arunkumar	\N	\N
nm15590725	Ramani Bharadwaj	\N	\N
nm15590739	B A Madhu	\N	\N
nm3367804	B.A. Madhu	\N	\N
nm15590732	Kiccha Creations	\N	\N
nm5679040	Sarovar Sanjeev	\N	\N
nm0080230	Bharathwaj	\N	\N
nm3188800	Venkat	\N	\N
nm15590723	Sri Venkat	\N	\N
nm2312619	B.S. Kemparaju	\N	\N
nm3153013	Ki Daus	\N	\N
nm3152004	Yanda Djaitov	\N	\N
nm3153566	Aty Fathiyah	\N	\N
nm3153042	Adi Irwandi	\N	\N
nm2148934	Epy Kusnandar	\N	\N
nm3153454	Marissa	\N	\N
nm3153224	Putty Noor	\N	\N
nm3151853	Desi Novitasari	\N	\N
nm3152206	Melvy Noviza	\N	\N
nm3152384	Otis Pamutih	\N	\N
nm1238991	Sofyan D. Surza	\N	\N
nm1099515	Raam Punjabi	\N	\N
nm0599840	Lisa Kennedy Montgomery	1972	\N
nm1246742	Angel Locsin	1985	\N
nm2049965	Sam Milby	1984	\N
nm0643590	Diether Ocampo	1976	\N
nm1381977	Iya Villania-Arellano	1986	\N
nm0704289	Rory B. Quintos	1962	\N
nm4568101	Dexter Hemedez	\N	\N
nm0498080	Ricky Lee	1948	\N
nm2263182	Aries Pascual	\N	\N
nm2219898	Dennis A. Salgado	1981	\N
nm0314305	Tom Gerhardt	1957	\N
nm0777585	Irene Schwarz	1960	\N
nm0475354	Janine Kunze	1974	\N
nm0825398	Axel Stein	1982	\N
nm0097043	Stefan Born	1950	2018
nm1102372	Emanuel Woo	\N	\N
nm1150872	Geriet Schieske	1945	2023
nm0910419	Gabriele Walther	\N	\N
nm0059359	Thomas Bartschmid	\N	\N
nm0836754	Harald Stümpfl	\N	\N
nm0802004	Melania Singer	1967	\N
nm0079623	Sonja Beutura	\N	\N
nm0676484	Jan Peters	\N	\N
nm8942381	Lena Conzendorf	\N	\N
nm8668075	Sandro Kirtzel	\N	\N
nm2043905	Lorenzo Patanè	1976	\N
nm0303368	Dirk Galuba	1940	\N
nm0353362	Antje Hagen	1938	\N
nm0770292	Sepp Schauer	1949	\N
nm0045303	Dieter Bach	1963	\N
nm1452282	Sven Waasner	1979	\N
nm1778105	Erich Altenkopf	1969	\N
nm0529518	Joachim Lätsch	1956	\N
nm5256835	Felix Bärwald	\N	\N
nm1490804	Steffen Nowak	1975	\N
nm0477804	Claudia Köhler	\N	\N
nm2087483	Annette E. Bott	\N	\N
nm12100947	Antonia Napetschnig	\N	\N
nm11929429	Christine Dittkrist	\N	\N
nm1104102	Bea Schmidt	\N	\N
nm7591422	Mouna Hamid	\N	\N
nm8340758	Ulli Wollinger	\N	\N
nm6062423	Till Zink	\N	\N
nm2866701	Anjali Kara	1982	\N
nm7108983	Iowana Roshan	\N	\N
nm10120013	Sameera Sherief	\N	\N
nm0004471	Subhalekha Sudhakar	1960	\N
nm4685592	Hari Teja	1989	\N
nm1667633	Anil v Kumar	\N	\N
nm4489288	Lewis Brindley	\N	\N
nm6456058	Duncan Jones	\N	\N
nm7098956	Joakim Hellstrand	\N	\N
nm10508160	Rick van Laanen	\N	\N
nm9906191	Tom Clark	\N	\N
nm9910648	Ben Edgar	\N	\N
nm9924519	Harry Marshall	\N	\N
nm0370567	Tamotsu Hayakawa	\N	\N
nm0407433	Masako Ikeda	1939	\N
nm0435299	Meiko Kaji	1947	\N
nm4750725	Wataru Kawaguchi	\N	\N
nm0442709	Tamio Kawaji	1938	2018
nm0443238	Narumi Kayashima	1942	\N
nm0559385	Chieko Matsubara	1945	\N
nm0612638	Nami Munakata	\N	\N
nm0613561	Sachiko Murase	1905	1993
nm0648682	Judy Ongg	1950	\N
nm1778686	Wasabi Mizuta	1974	\N
nm1874163	Megumi Ôhara	\N	\N
nm0435358	Yumi Kakazu	1973	\N
nm0782840	Tomokazu Seki	1972	\N
nm1878161	Subaru Kimura	1990	\N
nm9904148	Meizhen Chen	\N	\N
nm0419248	David Jason	1940	\N
nm9915277	Meixiu Lin	\N	\N
nm9915274	Xiaoling Lin	\N	\N
nm0628236	Richard Newman	1946	\N
nm1160764	Sôichirô Zen	\N	\N
nm0297742	Fujio F. Fujiko	1933	1996
nm2139169	Kan Sawada	\N	\N
nm7323478	Alex Slayden	\N	\N
nm7323479	Gina Tran	\N	\N
nm7323477	Ryan Park	\N	\N
nm0027882	Keith Andes	1920	2005
nm0005385	Marion Ross	1928	\N
nm0636011	Heather North	1945	2017
nm0201328	Dick Darley	1923	2016
nm0397935	Bill Howell	\N	\N
nm0823551	Manya Starr	1921	2000
nm0892939	Irving Vendig	1902	1995
nm0053846	Oliver Barbour	1904	1968
nm14995003	Apollo	\N	\N
nm16913100	Jake Freijo	\N	\N
nm13680986	Max McGuire	\N	\N
nm12301237	Joe Oltmann	\N	\N
nm0001518	Dylan McDermott	1961	\N
nm0045937	Michael Badalucco	1954	\N
nm0004800	Jessica Capshaw	1976	\N
nm0004986	LisaGay Hamilton	1964	\N
nm0004996	Steve Harris	1965	\N
nm0005179	Camryn Manheim	1961	\N
nm0005448	Marla Sokoloff	1980	\N
nm0005559	Kelli Williams	1970	\N
nm0001223	Lara Flynn Boyle	1970	\N
nm0810488	Bill Smitrovich	\N	\N
nm0615818	Christina Musrey	\N	\N
nm0005082	David E. Kelley	1956	\N
nm1236705	Jonathan Shapiro	\N	\N
nm0074403	Joseph Berger-Davis	\N	\N
nm0461799	Janet G. Knutsen	\N	\N
nm0936574	Pamela J. Wisne	\N	\N
nm0001937	Marco Beltrami	1966	\N
nm0807932	Dennis Smith	\N	\N
nm0485919	Steven Lang	\N	\N
nm0319536	Janet Gilmore	\N	\N
nm0566296	Megan McConnell	\N	\N
nm0481357	Charles M. Lagola	1959	\N
nm13402014	Jan Smejkal	\N	\N
nm15434291	Jakub Hornych	\N	\N
nm13484462	Petr Uchytil	\N	\N
nm13485072	Linda Sedlácková	\N	\N
nm13403498	Adam Kafka	\N	\N
nm13420398	Ester Nevolová	\N	\N
nm13401979	Katerina Machurková	\N	\N
nm13402570	Krystof Bodlák	\N	\N
nm15434292	Lenka Rozkosná	\N	\N
nm13484468	Michaela Francová	\N	\N
nm13502879	Marek Hrabal	\N	\N
nm13408726	Michal Janocko	\N	\N
nm13408725	Tomás Wenigr	\N	\N
nm1197882	Alex Witt	1961	\N
nm8858086	Aaron Bojang	\N	\N
nm0287017	Pirjo-Riitta Forsström	\N	\N
nm0344956	Raimo Grönberg	1953	\N
nm10821215	Irma Nissinen	\N	\N
nm10281566	Emma Nopanen	\N	\N
nm0678885	Maija-Liisa Peuhu	1942	\N
nm8572195	Roope Puhakka	\N	\N
nm0851539	Tommi Taurula	1967	\N
nm9862811	Kasper Tähkä	\N	\N
nm1680181	Vivi Wahlström	2001	\N
nm3189512	Jonni Kullas	1979	\N
nm4083742	Hanna-Mari Lahtinen	\N	\N
nm1564517	Rea Dominicy	\N	\N
nm1572846	Nina Laanterä	\N	\N
nm2102264	Antti Takkunen	\N	\N
nm3851117	Tommi Sipilä	\N	\N
nm0625651	Ozzie Nelson	1906	1975
nm0384948	Harriet Nelson	1909	1994
nm0625287	David Nelson	1936	2011
nm0625699	Ricky Nelson	1940	1985
nm0214529	Don DeFore	1913	1993
nm0878354	Lurene Tuttle	1907	1986
nm0752512	Dick Ryan	1896	1969
nm0837986	Brick Sullivan	1899	1959
nm0676635	Ralph Peters	1902	1959
nm0474628	Henry Kulky	1911	1965
nm0625316	Don Nelson	1927	2013
nm0202567	Bill Davenport	1925	1989
nm0314836	Ben Gershman	1907	1995
nm0012088	Basil Adlam	1904	1974
nm0005794	William C. Mellor	1903	1963
nm0933452	Gerard Wilson	1915	2008
nm4451811	Javier Belgeri	\N	\N
nm0110036	Valeria Britos	1976	\N
nm0127925	Nicolás Cabré	1980	\N
nm0156030	Agustina Cherri	1983	\N
nm0658602	Flavia Palmiero	1966	\N
nm7182973	Christina Farah	\N	\N
nm4152661	Ellen Toomey	\N	\N
nm7439576	Farida Zahran	\N	\N
nm9482274	Cheryl Ye Han Wong	\N	\N
nm7285260	Fifikos the Bear	\N	\N
nm6852658	Spyros o Gavros	\N	\N
nm6803358	Popi Kavoy	\N	\N
nm6852644	Hlianna Lili	\N	\N
nm6928141	Emilia Ravêna	\N	\N
nm6852659	Nikolaos Skoutelis	\N	\N
nm6852660	Rafael Skoutelis	\N	\N
nm4492923	Leonardo Thimo	1988	\N
nm6852662	Katerina Vandikia	\N	\N
nm5870567	Anestis Dalezis	1989	2015
nm0001757	Kevin Sorbo	1958	\N
nm1997480	Nathan Gamble	1998	\N
nm1342461	Jenn Gotzon	1979	\N
nm12480802	Venice Wong	\N	\N
nm0140755	Bryant Carroll	\N	\N
nm4910435	Jim E. Chandler	\N	\N
nm8288992	Kristen Grace Gonzalez	\N	\N
nm2060194	Brad Ashten	\N	\N
nm0189311	Liris Crosse	\N	\N
nm10675106	William Jefferson Jr.	\N	\N
nm1381646	Nathan Todd Sims	\N	\N
nm1383543	Gina Sims	\N	\N
nm0024715	John Ames	\N	\N
nm0899604	Dea Vise	\N	\N
nm1137883	Jericho Rosales	1979	\N
nm1216382	Heart Evangelista	1985	\N
nm2087284	Rechie Del Carmen	\N	\N
nm0622350	Toto Natividad	1957	2021
nm1171770	Carlo J. Caparas	1948	2024
nm2193694	Cymbee Antiporda	\N	\N
nm1201812	Jimmy Antiporda	\N	\N
nm2243916	Roy Francia	\N	\N
nm2245012	Rommel Malimban	\N	\N
nm2264983	Jesus Mendoza Jr.	\N	\N
nm12726045	Kathryn L. Allen	\N	\N
nm10449292	Javon Bates	\N	\N
nm6458099	Terri Bisgrove	\N	\N
nm8645641	Felicia Brown	\N	\N
nm14919395	Felicia Chapman	\N	\N
nm4217490	Alex DeCourville	1988	\N
nm10275151	Selina Figueroa	\N	\N
nm14766800	Renarda Fox	\N	\N
nm3250535	Katrina M. Franklin	\N	\N
nm10597309	Shen Frieson	\N	\N
nm12842839	Anthony D. Phillips Sr.	\N	\N
nm14731269	Amir Phillips	\N	\N
nm14786584	SceneAmatix	\N	\N
nm1495498	Carina Berg	1977	\N
nm1617659	Carolina Gynning	1978	\N
nm1232841	Katerina Janouch	1964	\N
nm2504060	Mari Jungstedt	\N	\N
nm0458039	Björn Kjellman	1963	\N
nm1847197	Alexandra Pascalidou	1970	\N
nm0443463	Kayo Shekoni	1964	\N
nm0108854	Henriqueta Brieba	1901	1995
nm0139177	Felipe Carone	1920	1995
nm0174465	Nilson Condé	\N	\N
nm0208056	Roberto de Cleto	1931	2002
nm0224892	Maria Helena Dias	1934	2023
nm0244835	Sonia Dutra	1937	2010
nm0320543	Ednei Giovenazzi	1930	\N
nm0532136	Regina Macedo	\N	\N
nm0535527	Eloísa Mafalda	1924	2018
nm0028491	Marlos Andreucci	\N	\N
nm0754474	Fábio Sabag	1931	2008
nm0537334	Hedy Maia	\N	\N
nm1028283	Valerio Boserman	1971	\N
nm2376112	Carlo Boserman	\N	\N
nm1210980	Danilo Vaona	1951	\N
nm2768610	Federico Vaona	\N	\N
nm11337540	Will Hutchins	\N	\N
nm4883969	Will Ward-Ambler	\N	\N
nm12651299	James McFadden	\N	\N
nm12241667	James McFadden	\N	\N
nm12241668	Daniel Clifford	\N	\N
nm12241670	Buster Wyzenbeek	\N	\N
nm12241669	Aidan Younane	\N	\N
nm12241672	Tom Holt	\N	\N
nm12241671	Leo Mitchell	\N	\N
nm4349273	Prodyot Mukherjee	\N	\N
nm6114230	Ditipriya Roy	2001	\N
nm10631069	Rajendra Prasad Das	\N	\N
nm11192095	Shibasish Bandopadhyay	\N	\N
nm6366452	Anjan Chakraborty	\N	\N
nm7080784	Saswati Ghosh	\N	\N
nm3089203	Agnidev Chatterjee	\N	\N
nm11192097	Bibhas Kundu	\N	\N
nm5144760	Mita Roy	\N	\N
nm1905131	Subrata Roy	\N	2023
nm4736179	Upali Chattopadhyay	\N	\N
nm9208992	Sontu Goldar	\N	\N
nm5752804	Jishu Nath	\N	\N
nm3773654	Neil Druckmann	\N	\N
nm0050959	Pedro Pascal	1975	\N
nm0563301	Craig Mazin	1971	\N
nm6320863	Erick Pangilinan	\N	\N
nm9958453	Bryant Wilson	\N	\N
nm0424534	Ashley Johnson	1983	\N
nm8165602	Bella Ramsey	2003	\N
nm1684869	Troy Baker	1976	\N
nm0468374	Phillip A. Kovats	\N	\N
nm1617568	Merle Dandridge	1975	\N
nm4309059	Mariana Balsa	\N	\N
nm1340345	Francisco Bass	1981	\N
nm4575283	Justina Bustos	1989	\N
nm1339662	Inés Palombo	1985	\N
nm0667287	Nicolás Pauls	1973	\N
nm3759797	Micaela Riera	\N	\N
nm1421927	China Suárez	1992	\N
nm3727432	Valentín Villafañe	\N	\N
nm0327244	Eduardo Gondell	\N	\N
nm1020310	José Luis Massa	\N	\N
nm4081003	Esteban Jaime Garrido	\N	\N
nm5880714	Carolina Parmo	\N	\N
nm4081115	Mariano Podesta	\N	\N
nm1509262	Alejandra Giaccio	\N	\N
nm1638737	Daniela González	\N	\N
nm7444173	Andy Colombo	\N	\N
nm0213066	Ricardo DeAngelis	1948	\N
nm3131632	Lucas Barriaga	\N	\N
nm7444167	Ernesto Fontan	\N	\N
nm0080557	Venere Bianca	1959	\N
nm1655660	Simony Diamond	1983	\N
nm1051348	Nikky Blond	1981	\N
nm1671702	Gloria Gucci	1982	\N
nm2758081	Viola Tommasi	\N	\N
nm1123413	Sandy Style	1979	\N
nm3508460	Tony Argento	\N	\N
nm1845154	Uncle George	1937	\N
nm1155550	Kevin King	1974	\N
nm10514036	Kelly La Rouge	\N	\N
nm1664097	Romeo Visconti	\N	\N
nm0054837	Bob Barker	1923	2023
nm0356775	Holly Hallstrom	1952	\N
nm0647692	Johnny Olson	1910	1985
nm0662833	Dian Parkinson	1945	\N
nm0672176	Janice Pennington	1942	\N
nm0107757	Marc Breslow	1925	2015
nm0435664	Edd Kalehoff	1945	\N
nm1107230	Patricia Javier	\N	\N
nm1943671	Erika Luna	\N	\N
nm0015846	Gina Alajar	\N	\N
nm8015960	Jose Rowel Ikamen	\N	\N
nm0422357	Jeffrey Jeturian	1959	\N
nm1516827	Antonio P. Tuviera	\N	\N
nm0209660	Joey De Leon	1946	\N
nm5258649	Marcello Sbigoli	\N	\N
nm3562326	Eleonora Cappelletti	\N	\N
nm8732664	Gabriele Giaffreda	\N	\N
nm8732958	Martino Castellani	\N	\N
nm6125876	Francesca Sarteanesi	\N	\N
nm8043282	Ciro Masella	\N	\N
nm8732957	Ria E. Mac Carthy	\N	\N
nm8726208	Tobia Pescia	\N	\N
nm10453857	Kate Louise Pascoe	\N	\N
nm1088623	Ben Wilson	\N	\N
nm8430511	Zandi Zim	1994	\N
nm10343559	Thomas Ross Johansen	\N	\N
nm7513597	Adam Gharib	\N	\N
nm4541981	Chi K. In	\N	\N
nm15247380	Dick Hawley	1924	2004
nm1399243	Sonu Sood	1973	\N
nm13559548	Jashwanth Bopanna	\N	\N
nm0476202	Yayoi Kusama	1929	\N
nm5844871	Joe Jones	\N	\N
nm0811443	Don Snyder	1943	\N
nm2136359	Jud Yalkut	1938	2013
nm0067497	Doris Belack	1926	2011
nm0109329	Fran Brill	1946	\N
nm0332344	Dana Gould	1964	\N
nm0383322	Alan J. Higgins	1968	\N
nm0424678	Bruce Bayley Johnson	1945	\N
nm0466050	Eddie Korbich	1960	\N
nm0497339	Greg Lee	1962	\N
nm0478345	Becca Lish	\N	\N
nm0621786	Neil Nash	1963	\N
nm0628091	Fred Newman	1952	\N
nm0186733	Curtis Crawford	1957	2024
nm0438394	Yvette Kaplan	1955	\N
nm0589636	Carol Millican	\N	\N
nm0423132	Jim Jinkins	1953	\N
nm0574509	Will McRobb	1961	\N
nm0769095	Ken Scarborough	\N	\N
nm1812267	Eddie Baroo	1968	\N
nm5096253	Millie Samuels	\N	\N
nm6356195	John Luc	\N	\N
nm6344480	Aidan Puglielli	\N	\N
nm1131579	Adam Murphy	\N	\N
nm5059164	Paul Allica	\N	\N
nm4992560	Jaime Enrique Gutierrez Pérez	\N	\N
nm0865578	Daniel Tognetti	1970	\N
nm1164030	Carla Czudnowsky	\N	\N
nm0552771	Matías Martin	\N	\N
nm0177672	Ernie Coombs	1927	2001
nm0492858	Judith Lawrence	\N	\N
nm11367792	Daniel Mccarthy	1926	2013
nm0221509	Xenia Desni	1894	1962
nm0687226	Ellen Plessow	1891	1967
nm0618164	Gustav Müller	\N	\N
nm0810856	Benno Smytt	1900	1975
nm0667546	Livio Pavanelli	1881	1958
nm0333675	Paul Graetz	1889	1937
nm0291020	Lina Frank	\N	\N
nm1148689	Heinz Fischer	\N	\N
nm1117459	Hermann Benke	1866	1937
nm0002161	Hans Albers	1891	1960
nm0910446	Rudolf Walther-Fein	1875	1933
nm0245459	Rudolf Dworsky	1882	1927
nm0653250	Hans Otto	1881	1931
nm0281556	Walter Reisch	1903	1983
nm0059341	Felix Bartsch	\N	\N
nm0005736	Willy Hameister	1889	1938
nm13740511	Frank Dodge	\N	\N
nm5706265	Holger Kreymeier	\N	\N
nm5511771	Darius Bowie	1991	\N
nm12518317	Matthew McCombs	\N	\N
nm13672883	J. Luke Wheeler	\N	\N
nm13672884	Paul J. Griffin III	\N	\N
nm13672885	Amy Wood	\N	\N
nm13672887	Kristin Griffin	\N	\N
nm13672886	Quinn Griffin	\N	\N
nm12936316	Jackson Griffin	\N	\N
nm7756372	Lucas Falco Cohen	\N	\N
nm12464276	Elias Abid	\N	\N
nm5514840	Daniel V. Masciari	\N	\N
nm3915901	Blake Swift	1991	\N
nm5211041	Eileen Montgomery	\N	\N
nm1004585	Mick Lauer	1980	\N
nm0587989	Brent Miller	\N	\N
nm4202562	Olivier Malet	\N	\N
nm4345611	Martine Broyelle	\N	\N
nm4346567	Emilie Broyelle	\N	\N
nm2351385	Nadia Hatta	\N	\N
nm4336999	Mike Scissorhand	\N	\N
nm3802258	Jennifer Thym	\N	\N
nm1245512	Morgan Peline	\N	\N
nm1736956	Diana Elizabeth Jordan	\N	\N
nm3990650	Natalie D'Alacio	\N	\N
nm1218860	Michael Charles Vaccaro	\N	\N
nm3818800	Megan Clancy	\N	\N
nm3083316	Shannon Dieriex	\N	\N
nm12432099	Briana Navarro	\N	\N
nm16049788	Khin Paing	\N	\N
nm0360705	F. Carl Hansen	\N	\N
nm12446485	Israel Gonzalez	\N	\N
nm5544212	Nasreen Alkhateeb	\N	\N
nm4596402	Andrew Kadikian	1991	\N
nm10471506	Bea Poley	\N	\N
nm0016175	Juan Alba	1965	\N
nm0207605	Sthefany Brito	1987	\N
nm4468419	Miguel Coelho	\N	\N
nm2780552	Day Mesquita	1985	\N
nm1772923	Thiago Rodrigues	1980	\N
nm5856354	Rafael Sardão	\N	\N
nm0481195	Rudi Lagemann	1960	\N
nm8781407	Guga Sander	\N	\N
nm4534540	Hudson Vianna	\N	\N
nm12307401	Jaqueline Correa	\N	\N
nm12307402	Sanderson Costa	\N	\N
nm4497810	Jussara Fazolo	\N	\N
nm0294906	Cristianne Fridman	\N	\N
nm9783834	Meghana Lokesh	\N	\N
nm2583241	Prathap	\N	\N
nm11173454	Rasheed Pedda	\N	\N
nm2276803	Dinesh Raheja	1957	\N
nm11173455	Sai Babu	\N	\N
nm11072915	Ramakrishna	\N	\N
nm6434907	Rambabu	\N	\N
nm11173456	Suresh Kasukurthi	\N	\N
nm0652200	Sergio Osorio	1963	\N
nm4031157	Narvaez Erik Aguilar	\N	\N
nm1239305	Daniel Arenas	1978	\N
nm5738712	Ela Velden	\N	\N
nm0312121	Aura Cristina Geithner	1967	\N
nm0495426	Enoc Leaño	1968	\N
nm0130753	Alejandro Calva	1968	\N
nm2335571	Mara Cuevas	\N	\N
nm0305876	Arturo García Tenorio	1954	2024
nm0401241	Leticia Huijara	1967	\N
nm0615249	Rodrigo Murray	1969	\N
nm0198852	Pedro Damián	1952	\N
nm0304650	Eloy Ganuza	\N	\N
nm0616443	Juan Carlos Muñoz	1958	\N
nm0661114	Luis Pardo	\N	\N
nm1640027	Juan Carlos Pérez	\N	\N
nm1883542	Adriana Suárez	\N	\N
nm1298604	María Eugenia Cervantes Balmori	\N	\N
nm1681044	Luis Mariani	\N	\N
nm1299310	Daniel Ferrer	\N	\N
nm6863140	Salvador Ortega	\N	\N
nm0844779	Vivian Sánchez Ross	\N	\N
nm3091068	Erika Castañeda	\N	\N
nm5775058	Noé Galindo	\N	\N
nm2957609	Yuri Murúa	\N	\N
nm12559901	Diane Beresford	\N	\N
nm15465020	Karen Girard	\N	\N
nm6881724	Marilyn Hardy	\N	\N
nm13473245	Ardyth Johnson	\N	\N
nm11011110	J.H. Moncrieff	\N	\N
nm15353469	Wyman Sangster	\N	\N
nm15755944	Brandon Sulz	\N	\N
nm2604079	Scott Leary	\N	\N
nm14742986	Tianna Bruinsma	\N	\N
nm1311453	Trevor Suffield	\N	\N
nm9971263	Sky Cambly-Maki	\N	\N
nm7903328	Miles S Crossman	\N	\N
nm1794019	Chris Charney	\N	\N
nm1357175	Mitch Dorge	\N	\N
nm12531506	Bryan Sanders	\N	\N
nm14047265	Brodie Young	\N	\N
nm1157232	Tereza Bebarová	1975	\N
nm7550942	Ida Chloubová	\N	\N
nm5836605	Petr Dockal	1980	\N
nm2066270	Anna Fixová	1984	\N
nm0352937	Zdena Hadrbolcová	1937	2023
nm0361526	Miroslav Hanus	1963	\N
nm0404942	Vanda Hybnerová	1968	\N
nm0413065	Stanislava Jachnická	1965	\N
nm0419354	Adrian Jastraban	1969	\N
nm0470494	Ljuba Krbová	1958	\N
nm16426421	Gene Hocutt	\N	\N
nm0830815	Tom Stocker	\N	\N
nm16290103	Jerry Tate	\N	\N
nm1215961	Sten Bramsen	1940	1990
nm0504656	Max Leth	1921	2014
nm1218331	Liselotte Winkel	\N	\N
nm0463055	Ole Kofoed	1954	2022
nm0015943	Ray Alan	1930	2010
nm1538204	Heather Barbour	\N	\N
nm0158225	George Chisholm	1915	1997
nm2135161	Derek Dene	1935	1988
nm3853235	Quackers	\N	\N
nm3851531	Titch	\N	\N
nm0923936	Peter Wheeler	1934	2010
nm7024164	Ken Wrench	\N	\N
nm1684901	Peter Bishop	1930	2019
nm1702240	Charles Hart	\N	\N
nm7024165	Stan Parkinson	\N	\N
nm1801973	Aleksandra Zienkiewicz	1984	\N
nm11448639	Amelia Baranowska	\N	\N
nm11448640	Emilia Baranowska	\N	\N
nm1738471	Urszula Debska	1987	\N
nm2351357	Monika Fronczek	1980	\N
nm2244371	Wiktoria Gasiewska	1999	\N
nm0310718	Ewa Gawryluk	1967	\N
nm6702518	Ewa Jakubowicz	\N	\N
nm2539223	Rafal Kwietniewski	1981	\N
nm0645690	Pawel Okonski	1961	\N
nm2361839	Jakub Miszczak	\N	\N
nm3166235	Marcin Bortkiewicz	1976	\N
nm3623039	Katarzyna Buda	\N	\N
nm4939712	Sebastian Buttny	1976	\N
nm9684468	Joanna Budzowska	\N	\N
nm8009607	Dominik Gasiorowski	\N	\N
nm4039229	Andrzej Sliwak	1972	\N
nm1249176	Anna Stanko	\N	\N
nm0145437	Castrinho	1940	\N
nm0500630	Ary Leite	1930	1986
nm1218695	Carlos Leite	1939	1991
nm0520326	Berta Loran	1926	\N
nm0561244	Lúcio Mauro	1927	2019
nm0722802	Agildo Ribeiro	1932	2018
nm0798618	Roberto Silveira	\N	\N
nm0764147	José Carlos Santos	\N	\N
nm8837013	Paritosh Kumar	\N	\N
nm9862066	Mallika Nayak	\N	\N
nm10963452	Alok Singh Bisen	\N	\N
nm3084686	Usha Dixit	\N	\N
nm3476984	Rajesh Dubey	\N	\N
nm4607871	Gajra Kottary	\N	\N
nm3083935	Purnendu Shekhar	\N	\N
nm3085186	Comall Sunjoy Waddhwa	\N	\N
nm1921694	Sunjoy Waddhwa	\N	\N
nm3203921	Vineet Lalita Pandey	\N	\N
nm6045536	Madison Bailey	1999	\N
nm7228705	Antonia Gentry	1997	\N
nm0788218	Michael Shanks	\N	\N
nm3838034	Griffin Gluck	2000	\N
nm9412217	Megan Best	\N	\N
nm5074027	Samuel Braun	\N	\N
nm9608958	Sydney Sabiston	\N	\N
nm5136877	Kataem O'Connor	2000	\N
nm0006692	Rachael Crawford	\N	\N
nm0113357	David Lawrence Brown	\N	\N
nm1680829	Hannah Macpherson	\N	\N
nm3208182	Michael Kennedy	\N	\N
nm1396390	Matthew Kaplan	\N	\N
nm0484907	Christopher Landon	1975	\N
nm4844181	Anna Drubich	1984	\N
nm0592598	Tony Mirza	\N	\N
nm0085923	Ken Blackwell	\N	\N
nm0484498	Joe Landauer	\N	\N
nm0467873	Carmen Kotyk	\N	\N
nm0140428	Jean-Andre Carriere	\N	\N
nm0092728	Martha Isabel Bolaños	1973	\N
nm16002300	Marcela Correa	\N	\N
nm1410191	Chris Burns	1973	\N
nm1462159	George Howard Adams	\N	\N
nm2734312	Michael Anthony	\N	\N
nm1706797	Ben Bailey	1975	\N
nm1864844	Dale Basescu	\N	2016
nm2733262	Scott Coleman	\N	\N
nm1909886	Greg Corbett	\N	\N
nm2508344	Philip Covin	\N	\N
nm1789296	Janet Cummings	\N	\N
nm1660410	J.R. Francis	\N	\N
nm1662992	James Magliocca	\N	\N
nm1662723	Matt Ruggles	\N	\N
nm0014353	Leif Ahrle	1943	\N
nm0029258	Willie Andréason	1933	2019
nm0082599	Carl Billquist	1933	1993
nm0088975	Katja Blomquist	1973	\N
nm0111423	Henry Bronett	1961	\N
nm0188681	Görel Crona	1959	\N
nm0230869	Jan Dolata	1946	\N
nm0245580	Sharon Dyall	1962	\N
nm4036257	Måns Edwall	1960	2016
nm0252493	Stefan Ekman	1944	\N
nm0252484	Mikael Ekman	1943	\N
nm0265904	Peter Emanuel Falck	1952	\N
nm0648120	Ola Olsson	1943	\N
nm5926707	Peter Lindforss	\N	\N
nm0624388	Anders Neglin	1954	\N
nm0105579	Louise Brattberg	1944	\N
nm1286983	John Lloyd Cruz	1983	\N
nm1373129	Toni Gonzaga	1984	\N
nm2614485	Paul Sy	\N	\N
nm1293867	Edgar Mortiz	\N	\N
nm2756229	Joaquin Acosta	\N	\N
nm5942686	Alpha Habon	\N	\N
nm0572349	John McLaughlin	1927	2016
nm9148891	Luna Lovely	\N	\N
nm5074744	Logan Pierce	1990	\N
nm0643505	Ana Obregón	1955	\N
nm0959575	Roberto Álvarez	1956	\N
nm0596750	Miguel Molina	1963	\N
nm0551397	Silvia Marsó	1964	\N
nm0419512	Javivi	1961	\N
nm0293842	Daniel Freire	1961	\N
nm1288683	Aurora Sánchez	\N	\N
nm0704112	Juan Antonio Quintana	1939	2022
nm1289497	Isabel Gaudí	\N	\N
nm0596670	Claudia Molina	1985	\N
nm0429557	Pascal Jongen	\N	\N
nm0010205	José Luis Acosta	1961	\N
nm0018528	Juan Alexander	\N	\N
nm0721432	Víctor Reyes	1962	\N
nm0596716	Juan Molina Temboury	1954	\N
nm1234420	Rosa Sogorb	\N	\N
nm0844623	María Elena Sáinz de Rozas	\N	\N
nm0190237	Amado Cruz	\N	\N
nm1729422	Bruno Vespa	1944	\N
nm3163054	Tin Machine	\N	\N
nm0000309	David Bowie	1947	2016
nm0300169	Reeves Gabrels	1956	\N
nm5443349	Tony Sales	\N	\N
nm0758113	Hunt Sales	\N	\N
nm2271838	Eric Schermerhorn	1961	\N
nm0230964	Rudi Dolezal	1958	\N
nm0743949	Hannes Rossacher	1952	\N
nm0619582	Britta Nahler	1966	\N
nm4400261	Mandi Nicholson	\N	\N
nm4449145	Grace Glowicki	\N	\N
nm5629479	Esther Asinga	\N	\N
nm5568363	Teresa Asinga	\N	\N
nm5567958	Mary Etuku	\N	\N
nm5568270	John A. Geddes	\N	\N
nm5630766	Whitney Houston	\N	\N
nm5567941	Neville Misati	\N	\N
nm5629440	Benta Odhiambo	\N	\N
nm5568069	Margaret Odhiambo	\N	\N
nm1821306	Rowan Nielsen	\N	\N
nm1379101	Carole Aeschelmann	\N	\N
nm1198952	Roberto Biagi	\N	\N
nm4445496	Gavin Whelehan	\N	\N
nm0494093	Michael LeBlanc	1974	\N
nm3106539	Elyse Saley	\N	\N
nm5186222	Eli Baldrige	\N	\N
nm6653205	Timothy Dix	\N	\N
nm7640380	Zac Goldner	\N	\N
nm2157074	William L. Hawkins	\N	\N
nm1333017	Kishori Ambiye	\N	\N
nm15943005	Dhruva Dattar	\N	\N
nm7903847	Isha Keskar	1991	\N
nm10509708	Akshar Kothari	1987	\N
nm16976522	Rohini Naik	\N	\N
nm4706056	Deepali Pansare	1984	\N
nm16976524	Apurva Sapkal	\N	\N
nm16976523	Rutwik Talwalkar	\N	\N
nm3257776	Mukesh Banekar	\N	\N
nm2273169	Stephan Zinner	1974	\N
nm3617315	Anne Schäfer	1979	\N
nm0286208	Lilly Forgách	1966	2024
nm0496046	Christian Lerch	1966	\N
nm5063143	Sabrina Amali	1992	\N
nm1143649	Bijan Zamani	1975	\N
nm0084543	Andreas Bittl	1973	\N
nm2782465	Esther Kuhn	\N	\N
nm0826071	Erwin Steinhauer	1951	\N
nm4313580	Alev Irmak	1980	\N
nm0091843	Franz Xaver Bogner	1949	\N
nm0079497	Stefan Betz	1970	\N
nm8464773	Rainer Maria Schießler	1960	\N
nm4132642	Stefan Linde	\N	\N
nm2628307	Philipp Kreuzer	\N	\N
nm7651677	Marlene Schlegel	\N	\N
nm1852263	Jörg Schulze	\N	\N
nm5548566	Herbert Pixner	\N	\N
nm0309983	Kay Gauditz	1959	\N
nm1543920	Katja Beck	\N	\N
nm0866056	Daniela Tolkien	1964	\N
nm2213712	Thomas Neudorfer	\N	\N
nm1532234	Anne-Élisabeth Lemoine	1970	\N
nm7884873	Damien Abab	\N	\N
nm2732796	Julien Bayou	\N	\N
nm8639669	Aurore Bergé	\N	\N
nm3260406	Patrick Cohen	\N	\N
nm3411672	Geoffroy Roux de Bézieux	\N	\N
nm7156286	Arnaud Fontanet	\N	\N
nm3002951	Marion Ruggieri	\N	\N
nm7114124	Maxime Switek	\N	\N
nm1564197	Kim Hye-Ok	1958	\N
nm0655918	Baek Il-Sub	1944	\N
nm0453737	Yeon Joo Kim	1980	\N
nm1195120	Kim Na-woon	\N	\N
nm3483014	Lee Se-na	\N	\N
nm1165901	Lee Seung-yun	1968	\N
nm2920466	Jo Yeon-woo	1971	\N
nm6286167	Kim Yoo-bin	\N	\N
nm3781277	Go Yoon-Hoo	\N	\N
nm1307485	Kim Young-ho	1967	\N
nm0388700	Anette Hoff	1961	\N
nm1569865	Rudy Claes	1966	\N
nm1100578	Nikis Theophilakis	\N	\N
nm4902057	Evelyn Rasmussen Osazuwa	1986	\N
nm2180639	Kim-Daniel Sannes	\N	\N
nm2055276	Assad Siddique	\N	\N
nm1650029	Sølje Bergman	\N	\N
nm1435930	Jan Martin Johnsen	\N	\N
nm4207941	Cici Henriksen	\N	\N
nm4936424	Sofie Asplin	\N	\N
nm3133207	Petter Skafle Henriksen	1987	\N
nm7905450	Anne Brigg	\N	\N
nm8189469	Marianne Hoff Engesland	\N	\N
nm8189468	Marie Hafting	\N	\N
nm8189471	Magnus Wold Jenssen	\N	\N
nm1266069	Ellen Jacobsen	\N	\N
nm1401580	Magnus Beite	1974	\N
nm1780369	Raymond Enoksen	\N	\N
nm2403574	Joachim Foss Rønning	\N	\N
nm2278946	Joakim Molteberg	\N	\N
nm1272545	Ellen Michelsen	\N	\N
nm8187335	Tove Stelander Karlsson	\N	\N
nm1326845	Pierina España	1952	\N
nm1025137	José Luis Rodríguez 'El Puma'	1943	\N
nm0647138	Carlos Olivier	1952	2007
nm0735868	Gustavo Rodríguez	1947	2014
nm0549373	Julio César Mármol	1937	2010
nm1265194	Alicia Barrios	1953	\N
nm0127917	José Ignacio Cabrujas	1937	1995
nm1329517	Isamar Hernández	1954	\N
nm1398631	Édgar Mejías	\N	\N
nm2830785	Jeff Tudor	\N	\N
nm2831416	Adrienne Liron	\N	\N
nm2463589	Henk van Engen	\N	\N
nm14620784	Ashwini Aanandita	\N	\N
nm10804878	Raj Ayyappa	\N	\N
nm10729126	M. Farina Azad	\N	\N
nm0889150	Vanitha Krishnachandran	1966	\N
nm14750248	Pranav Mohan	\N	\N
nm12773584	Naveen Muralidhar	\N	\N
nm3294569	Ponvannan	\N	\N
nm16742186	Krishna Raghunandhan	\N	\N
nm14116511	Deepika Venkatachalam	1995	\N
nm8185913	Ayesha Zeenath	\N	\N
nm8240725	M. Ramesh Baarathi	\N	\N
nm11468916	Chidambaram Manivannan	\N	\N
nm16742189	Arunbharathy	\N	\N
nm16742190	A.C. Karnamurthy	\N	\N
nm16742187	Albin Prashanth Raj	\N	\N
nm16742188	Ananda Vikatan	\N	\N
nm12589493	Radhika Srinivasan	\N	\N
nm16166775	Sathish Kumar	\N	\N
nm16166774	Parthiban	\N	\N
nm11857327	P.M. Achuthan	\N	\N
nm14907059	Siddhartha Ravindranaath	\N	\N
nm3796791	Binny Sharma	\N	\N
nm6982079	Dharam Pal Dhiman	\N	\N
nm4516707	Mohit Hussain	\N	\N
nm5050736	Sam Khan	\N	\N
nm4516834	Al-Raines	\N	\N
nm2767267	Mohit Hussein	\N	\N
nm1756885	Ajay Kapoor	\N	\N
nm2959697	Udbhav Ojha	\N	\N
nm6271888	Jay B Ghadiali	\N	\N
nm13859221	Arya Piyussh Rawatt	\N	\N
nm2297693	Jessica Ginkel	1980	\N
nm1863418	Max Alberti	1982	\N
nm0509326	Johanna Liebeneiner	1945	\N
nm1290335	Kostas Sommer	1975	\N
nm0282303	Janina Flieger	1982	\N
nm0433823	Jenny Jürgens	1967	\N
nm0704659	Joachim Raaf	1960	\N
nm0719013	Urs Remond	1964	\N
nm0889654	Isabel Varell	1961	\N
nm0772696	Isabella Schmid	1970	\N
nm1601654	Matthias Reischel	\N	\N
nm10243949	Uli José Anders	\N	\N
nm1574478	Günter Overmann	1957	\N
nm0073875	Quirin Berg	1978	\N
nm2024518	Anne Hoever	\N	\N
nm2909227	Rudolf Jehner	\N	\N
nm0776846	Jan Schuster	\N	\N
nm1318802	Clemens Erbach	\N	\N
nm1369452	Ricki Benson	\N	\N
nm1372630	Sergio Canali	1963	1994
nm2129922	Ken Kerns	\N	\N
nm15826604	Jason Lloyd	\N	\N
nm15826603	J.J. McCarthy	\N	\N
nm1372933	Joe Reeves	\N	\N
nm7316140	Larry Richards	\N	\N
nm1243620	Tim Richards	\N	\N
nm1301379	Mark Scott Solo	\N	\N
nm0522895	Chris Thompson	\N	\N
nm0383510	William Higgins	1942	2019
nm1062819	Costello Presley	\N	\N
nm2133953	Sam Deliloh	\N	\N
nm5080509	Dennis Phantom	\N	\N
nm2763348	Mark Steele	\N	\N
nm0855496	Terenci Moix	1942	2003
nm0764339	Mary Santpere	1913	1992
nm3036071	Arbana Osmani	\N	\N
nm15730919	Krist Aliaj	\N	\N
nm1044665	Eva Alikaj	1961	\N
nm15730930	Pirro Beati	\N	\N
nm15730929	Tan Brahimi	\N	\N
nm15730922	Jori Delli	\N	\N
nm13539948	Fotini Derxho	\N	\N
nm15730920	Ifgjenia Dhedhes	\N	\N
nm15730932	Diola Dosti	\N	\N
nm1795347	Luiz Ejlli	1985	\N
nm0596393	John de Mol	1955	\N
nm13176447	Lori Hoxha	\N	\N
nm4146405	Kadir Dogulu	1982	\N
nm3744351	Neslihan Atagül	1992	\N
nm5068051	Yunus Emre Yildirimer	1982	\N
nm4145308	Dilara Öztunç	1989	\N
nm3667998	Basak Parlak	1989	\N
nm5964397	Seda Türkmen	1987	\N
nm2598542	Pinar Dikici	1986	\N
nm16016978	Emre Yilmaz	\N	\N
nm0260539	Itir Esen	1956	\N
nm2368105	Ugur Demirpehlivan	1963	\N
nm1760741	Sadullah Celen	1960	2024
nm5964399	Hayriye Ersöz	1972	2018
nm1764838	Ata Türkoglu	\N	\N
nm2586767	Emre Dündar	1972	\N
nm1680779	Murat Uncuoglu	1969	\N
nm2586534	Cem Yildiz	\N	\N
nm2640563	Yalçin Yadel	\N	\N
nm4251276	Ali Riza Basaran	\N	\N
nm0023927	Christiane Amanpour	1958	\N
nm2084710	António Aldeia	1958	\N
nm0347313	Sónia Aragão	\N	\N
nm0056671	Adriana Barral	1958	\N
nm0069385	Fátima Belo	1967	\N
nm0106895	Márcia Breia	1944	\N
nm0134611	Canto e Castro	1930	2005
nm0139554	Margarida Carpinteiro	1943	\N
nm0144887	Virgílio Castelo	1953	\N
nm0145451	Manuel Castro e Silva	\N	\N
nm0146672	Manuel Cavaco	1944	\N
nm0297591	Álvaro Fugulin	\N	2002
nm0182196	Jorge Paixão da Costa	1954	\N
nm2084867	Ana Rita Martinho	\N	\N
nm0553769	To-Zé Martinho	1947	2020
nm2043312	Maria João Mira	\N	\N
nm0346081	Rosa Guerra	\N	\N
nm3143022	Célia Sá	\N	\N
nm0051690	Paco Bandeira	1945	\N
nm1671660	Carla Pires	\N	\N
nm0763275	Artur Santana	1948	\N
nm1825529	Luís K. Carrondo	\N	\N
nm0609483	Enio Motta	\N	\N
nm0143724	António Casimiro	1934	\N
nm0627383	Raul Neves	\N	\N
nm0636354	Deborah Norville	1958	\N
nm4209639	John E.L. Tenney	1971	\N
nm13970296	Lydia Perozzi	\N	\N
nm2817027	Kavita Kaushik	1961	\N
nm2214392	Kiku Sharda	1976	\N
nm1584260	Gopi Bhalla	1963	\N
nm1269330	Aamir Ali	1977	\N
nm4466033	Sandeep Anand	1985	\N
nm1669693	Umesh Bajpai	\N	\N
nm14320119	Manju Brijnandan Sharma	\N	\N
nm1516405	Shekhar Shukla	\N	\N
nm8379803	Sapna Sikarwar	1983	\N
nm5460792	Shashank Bali	\N	\N
nm3811969	Amit Aryan	\N	\N
nm15908969	Emmy K.	\N	\N
nm7053950	Binaifer Kohli	\N	\N
nm7053951	Sanjay Kohli	\N	\N
nm4290562	Raja Satankar	\N	\N
nm11022530	Rahat Solanki	\N	\N
nm0529893	Manuel López Ochoa	1933	2011
nm0738139	Emma Roldán	1890	1978
nm0032802	Luis Aragón	1919	1973
nm0613669	Noé Murayama	1930	1997
nm0600190	Alicia Montoya	1918	2002
nm0261298	María Esquivel	1934	2007
nm0136051	Tony Carbajal	1921	1995
nm0342791	Teresa Grobois	1936	1993
nm0349464	Alicia Gutiérrez	1928	1967
nm0599965	Aldo Monti	1929	2016
nm0052486	Rafael Banquells	1917	1990
nm0007186	Arthur Miller	1915	2005
nm0898247	Fernanda Villeli	1921	2009
nm0683788	Valentin Pimstein	1925	2017
nm7550132	Nithya Ram	\N	\N
nm1171296	Raj Kapoor	\N	\N
nm5237351	Badri	\N	\N
nm1326535	Sundar C.	1968	\N
nm8928211	Natraj	\N	\N
nm7017265	Venkat Raghavan	\N	\N
nm1001243	Khushbu Sundar	1970	\N
nm5657066	Hiphop Tamizha Adhi	1990	\N
nm1894813	Dhina	\N	\N
nm3605018	U.K. Senthil Kumar	\N	\N
nm3164793	Srikanth N.B.	\N	\N
nm0155947	Yuriy Chernov	1949	\N
nm0469107	Natalya Krachkovskaya	1938	2016
nm0451925	Valentin Khovenko	1940	2003
nm1064687	Shawn Baichoo	\N	\N
nm5793222	Mia Brownrigg	\N	\N
nm0126921	Catherine Bérubé	1983	\N
nm7961707	Patrick Bérubé	\N	\N
nm2916096	Amber Goldfarb	\N	\N
nm1412176	Spiro Malandrakis	1982	\N
nm4031829	Isabelle Paradis	\N	\N
nm7213893	Gabriel Allard	1978	\N
nm7961528	Pascal Annand	\N	\N
nm7570435	James Dimino	\N	\N
nm9533244	Lauren Goodman	\N	\N
nm3306776	Will James	\N	\N
nm6719942	Gary Martin	\N	\N
nm7686061	Berrin Seker Civil	\N	\N
nm11098879	Mehmet Zihni Sungur	\N	\N
nm14304653	Okan Varol	1969	\N
nm0517978	Vesa-Matti Loiri	1945	2022
nm0707231	Marjatta Raita	1944	2007
nm0405545	Tapio Hämäläinen	1922	2008
nm0634962	Marita Nordberg	1929	2009
nm0758741	Simo Salminen	1932	2015
nm0145745	Elli Castrén	1944	\N
nm0899419	Reija Virolainen	\N	\N
nm0664218	Spede Pasanen	1930	2001
nm0758832	Jaakko Salo	1930	2002
nm0032643	Kris Aquino	1971	\N
nm0095007	Dina Bonnevie	1961	\N
nm1034352	Anne Curtis	1985	\N
nm1698752	Geoff Eigenmann	1985	\N
nm0519983	Jerry Lopez Sineneng	\N	\N
nm1760842	Jerome Chavez Pobocan	\N	\N
nm1288308	Henry King Quitain	1974	\N
nm0764188	Malou N. Santos	\N	\N
nm2268723	Sonny De Jesus	\N	\N
nm2319690	Jill Connick	\N	\N
nm6596190	Tasos Lamakis	\N	\N
nm0604850	Lucien Morgan	\N	\N
nm1026195	Lewis Rose	1987	\N
nm6596192	Leanne Dimant	\N	\N
nm4733435	Alex Emanuel	\N	\N
nm1769222	Emma Dalesman	\N	\N
nm3744998	Milica Todorovic	\N	\N
nm2090702	Zach McGowan	1980	\N
nm3465763	Marisa Miller	\N	\N
nm0455476	Deirdre Kingsbury	\N	\N
nm3465991	Oliver Shetler	\N	\N
nm1479450	Ken Kristensen	\N	\N
nm2150748	Christian Paluck	\N	\N
nm2013693	Sean Mullin	\N	\N
nm3465464	Tim Hansen	\N	\N
nm2155421	Michael Connors	\N	\N
nm3164115	Jazmine Star	1981	\N
nm10208612	Liz Casasola	\N	\N
nm14881701	Ernabel Demillo	\N	\N
nm3451533	Eric Macheru	\N	\N
nm4785268	Cornet Thabiso Mamabolo	\N	\N
nm4981613	Harriet Manamela	\N	\N
nm5626595	Clement Maosa	\N	\N
nm4976617	Dieketseng Mnisi	\N	\N
nm5626016	Lidia Mokgolokoshi	\N	\N
nm5626496	Patrick Seleka	\N	\N
nm5626503	Africa Tsoai	\N	\N
nm13458258	Andries Mahlatse Banda	\N	\N
nm4742832	Winnie Serite	\N	\N
nm5536309	Debbie Strumpher	\N	\N
nm16504440	Elio Ambramy	\N	\N
nm16504460	Tafara Angelo	\N	\N
nm16504442	Chen Anthony	\N	\N
nm16504456	Boana Beng	\N	\N
nm16504453	Jean Alphonse Brilando	\N	\N
nm16504451	Geda	\N	\N
nm4777228	Michel Geromany	\N	\N
nm16504447	Marielle Sandrolah Jaosily	\N	\N
nm16504444	Martial Karany	\N	\N
nm16504445	Zory Frida Mailhol	\N	\N
nm4776983	Andriamanisa Radoniaina	\N	\N
nm4777290	Mamihasina Raminosoa	\N	\N
nm16504441	Haja Razafiarisaonina	\N	\N
nm10755608	Silo Andrianandraina	\N	\N
nm11404033	Naty Kaly	\N	\N
nm9086029	Francesca Antonucci	\N	\N
nm9307456	Luca Proietti	\N	\N
nm3743316	Edoardo Purgatori	1989	\N
nm6916408	Andrea Natale	\N	\N
nm9184019	Filippo D'Antuono	\N	\N
nm9184025	Pietro Paroletti	\N	\N
nm9174849	Enrico Manfredi Frattarelli	\N	\N
nm9174850	Alba Kia	\N	\N
nm4653382	Ramon Solanes	\N	\N
nm2601168	David Amerman	\N	\N
nm3370263	Bree Kristel Clarke	\N	\N
nm2970136	Daisy De La Hoya	1983	\N
nm0705146	Riki Rachtman	1965	\N
nm4220262	Jeremiah Riggs	\N	\N
nm1149535	Zach Kozek	\N	\N
nm0009312	Cris Abrego	\N	\N
nm0188782	Mark Cronin	\N	\N
nm0114224	Mason Brown	\N	\N
nm1534484	Kathryn Bryant	\N	\N
nm4240433	David Kirkwood	\N	\N
nm1692501	Meredith Prunkard	\N	\N
nm1206592	Jude Christodal	1970	\N
nm1874764	Steve Ezell	\N	\N
nm1133572	Jimmy Bazan	\N	\N
nm0089232	Scott Bloom	\N	\N
nm1039620	A.J. Catoline	\N	\N
nm1271463	Mark Chervinsky	\N	\N
nm3581905	Sara Wharton Ali	\N	\N
nm3616412	Rita Koutsoulis	\N	\N
nm1467413	Sandra Petko	\N	\N
nm3525581	Kitty Chapman	\N	\N
nm4098003	Lisa Henderson	\N	\N
nm1328791	Chris Polick	\N	\N
nm4278168	Laura Plancarte	\N	\N
nm3338893	Derek Laviniere	\N	\N
nm3440852	Ram Khat	1985	\N
nm1743314	Adam Etherington	\N	\N
nm1743437	Farrokh Kouchekpour	\N	\N
nm0886691	Frans van Dusschoten	1933	2005
nm0807109	Ger Smit	1933	2012
nm0771070	Elsje Scherjon	1938	\N
nm0028373	Cock Andreoli	\N	\N
nm0884811	Leen Valkenier	1924	1996
nm0209234	Jean de La Fontaine	1621	1695
nm0151943	Thijs Chanowski	1930	2017
nm1583303	Loek de Levita	1930	2004
nm0097700	Ruud Bos	1936	2023
nm0301999	Hans Galesloot	\N	\N
nm0001373	Linda Hunt	1945	\N
nm3819961	Felicia Sekaquaptewa	\N	\N
nm0630071	Jan Nickman	1950	\N
nm0396689	Nathan House	1976	\N
nm0487267	David Lanz	\N	\N
nm2412766	Gary Stroutsos	\N	\N
nm3679889	Gary Stubbs	\N	\N
nm0287842	Henry Foster	\N	\N
nm0046806	Sarah Bagshaw	\N	\N
nm0480782	Kevin Laffan	1922	2003
nm0368754	Tony Hatch	1939	\N
nm2447181	Tim Ryan	\N	\N
nm2449276	Terry Donahue	1944	2021
nm2802299	Bret Bielema	\N	\N
nm3511174	Zach Bromert	\N	\N
nm3931102	Steve Campbell	\N	\N
nm3930593	Richard Carter	\N	\N
nm1763090	Hayden Fry	1929	2019
nm3758678	Lenzie Jackson	\N	\N
nm3920885	Michael Martin	\N	\N
nm3758598	Robert Nycz	\N	\N
nm0028996	Josy Andrieu	1939	2022
nm0078355	Claude Bertrand	1919	1986
nm0147730	Marie Cecora	\N	\N
nm0189507	Roger Crouzet	1927	2000
nm0408130	Laurence Imbert	\N	\N
nm0730234	Michel Robbe	1946	\N
nm1186143	Augustin Roux	\N	\N
nm0765056	Maurice Sarfati	1931	2013
nm0771756	Maryvonne Schiltz	\N	\N
nm0883576	Bernard Valdeneige	\N	\N
nm0076424	Bernard-Roland	1910	1987
nm0598366	Thyde Monnier	\N	\N
nm0756694	Juliette Saint-Giniez	1908	1985
nm0929712	Betty Willemetz	1936	2010
nm0953064	Bernard Zanni	\N	\N
nm0969628	Bernard Madelenat	\N	\N
nm1161994	Martin Compston	1984	\N
nm13995462	Phil MacHugh	\N	\N
nm1627405	Rod Tamime	\N	\N
nm1875917	Tom Webster	\N	\N
nm12951094	Philip Dunsmore	\N	\N
nm15400164	Hannelore Bieneck	\N	\N
nm2200841	Jo Hiller	1974	\N
nm2429830	Patrick Rössler	1964	\N
nm1347791	Florian Andreas Wieder	\N	\N
nm2679466	Chris Kenny	1962	\N
nm4455635	Tim Blair	1965	\N
nm3648525	Barnaby Joyce	1967	\N
nm2451972	Mark Latham	1961	\N
nm1701992	Scott Morrison	1968	\N
nm8410471	Rita Panahi	1976	\N
nm1675134	Jayakrishnan	1974	\N
nm0710545	Easwari Rao	1973	\N
nm11537103	S.R. .Elavarasan	\N	\N
nm11537104	Thava Karthick	\N	\N
nm11536873	R. Nandhakumar	\N	\N
nm11118791	V. Sadhasivam	\N	\N
nm10716231	Manivannan	\N	\N
nm0448367	Tom Kennedy	1927	2020
nm0140946	Pat Carroll	1927	2022
nm0363217	John Harlan	1925	2017
nm0408733	Marty Ingels	1936	2015
nm3874608	Kushal Badrike	\N	\N
nm6374532	Shreya Bugde	1988	\N
nm2778815	Bharat Ganeshpure	\N	\N
nm6219447	Bhau Kadam	1972	\N
nm7920316	Nilesh Sable	\N	\N
nm1001181	Nitin Keni	\N	\N
nm1591006	Tsutomu Kamishiro	1965	\N
nm0017246	Santos Alcocer	1907	1987
nm0121435	J. Burgos Muñoz	\N	\N
nm4407282	Steve Poloni	\N	\N
nm0130340	Calvin Callaway	\N	\N
nm4091440	Jeffy Can	\N	\N
nm0183942	Michael Courtney	\N	\N
nm0532535	Henryk Machalica	1930	2003
nm0434239	Kazimierz Kaczor	1941	\N
nm0245913	Janusz Dymek	1938	\N
nm1384904	Ireneusz Engler	1949	\N
nm0686136	Radoslaw Piwowarski	1948	\N
nm0701051	Jan Purzycki	1948	2019
nm0213579	Krzesimir Debski	1953	\N
nm0354703	Zbigniew Halatek	1952	2023
nm1554086	Slawomir Filip	\N	\N
nm15512726	Olga Alamán	\N	\N
nm1370592	Bárbara Elorrieta	1978	\N
nm1813312	Luis Mottola	1968	\N
nm3177821	Mireia Pérez	\N	\N
nm2319853	Silvia Rico	\N	\N
nm0783387	Josep Selles	\N	\N
nm15512725	Oriol Tarrasón	\N	\N
nm1827120	Alejandro Tous	1976	\N
nm2317952	Juan Manuel Manzanares	\N	\N
nm1939706	Paloma Martín-Mateo	\N	\N
nm4194448	Juanjo Moscardó Rius	\N	\N
nm15512728	Iván Giménez	\N	\N
nm15512727	Rubén Zapater	\N	\N
nm1303933	Willy Abad	\N	\N
nm0128346	Igrejas Caeiro	1917	2012
nm3700159	João de Freitas Branco	1922	1989
nm0656932	Ricardo Pais	1945	\N
nm0959202	Carlos Zíngaro	1948	\N
nm0180869	Maria Emília Correia	1947	\N
nm0374766	Fernando Heitor	1952	\N
nm0559737	Maria Amélia Matta	1951	\N
nm0719144	Colette Renard	1924	2010
nm0395229	Cécilia Hornus	1963	\N
nm0281886	Sylvie Flepp	1955	\N
nm0179558	Michel Cordes	1945	2023
nm1715242	Dounia Coesens	1988	\N
nm0584793	Ambroise Michel	1982	\N
nm1534356	Aurélie Vaneck	1983	\N
nm1717593	Laëtitia Milot	1980	\N
nm1566420	Anne Décis	1975	\N
nm2979821	Ludovic Baude	1974	\N
nm1163510	David Bouttin	\N	\N
nm0622934	Jérôme Navarro	\N	\N
nm1738748	Bénédicte Achard	\N	2022
nm1932068	Sarah Belhassen	\N	\N
nm0078855	Hubert Besson	\N	\N
nm1569740	Frédéric Chansel	\N	\N
nm0688071	Michelle Podroznik	\N	\N
nm0677549	Carolin Petit	1957	2016
nm1718252	Hugo Ripoll	\N	\N
nm1768492	Pierre Benzrihem	\N	\N
nm1972408	Hervé Maury	\N	\N
nm1197920	Joanna Delon	\N	\N
nm1109240	Audrey Gatimel	\N	\N
nm1189498	Julien Grossi	\N	\N
nm8004719	Jeff Casserly	\N	\N
nm8004720	Austin Martin Curran	\N	\N
nm8013816	Luke Moloney	\N	\N
nm7888499	Stephen Qualter	\N	\N
nm7253404	Seamus Curran	\N	\N
nm1154588	Michael Antwerpes	1963	\N
nm0068552	Tom Bell	1933	2006
nm0265497	Victoria Fairbrother	\N	\N
nm0189468	Brian Croucher	1942	\N
nm0774530	Katherine Schofield	1939	2002
nm0736178	Norman Rodway	1929	2001
nm0550789	Bryan Marshall	1938	2019
nm0004051	Brian Cox	1946	\N
nm0640299	Derrick O'Connor	1941	2018
nm0432729	John Junkin	1930	2006
nm0107339	Kevin Brennan	1920	1998
nm0323795	Jim Goddard	1936	2013
nm0696506	Trevor Preston	1938	2018
nm0361194	Barry Hanson	1943	2016
nm0006070	George Fenton	1949	\N
nm0005793	Phil Meheux	1941	\N
nm0791072	Ralph Sheldon	1928	2011
nm0276075	Ann Fielden	1944	\N
nm1040210	Amanda Gutiérrez	1955	\N
nm0194579	Víctor Cámara	1959	\N
nm0959516	Mariano Álvarez	1952	2001
nm0087254	Eva Blanco	1929	\N
nm1326660	Rebeca Costoya	\N	\N
nm0351237	Rafael Gómez	1949	2019
nm1580764	Ramon Tovar	\N	\N
nm0275585	Delia Fiallo	1924	2021
nm1050684	Giorgos Vasileiou	1950	2016
nm1081425	Mina Himona	\N	\N
nm1080600	Elina Akritidou	\N	\N
nm1147663	Epistimi Aretaki	\N	\N
nm0036912	Dimitris Aronis	\N	\N
nm0260641	Alberto Eskenazy	\N	\N
nm1152625	Giannis Evangelidis	\N	\N
nm0306633	Stamatis Gardelis	1960	\N
nm0313793	Faidon Georgitsis	1939	2019
nm1149365	Thanos Kalioras	\N	\N
nm2169050	Dela Foskolou	\N	\N
nm1227914	Vada Karakatsani	\N	\N
nm1749095	Vasilis Mavropoulos	\N	\N
nm1203311	Kostas Lekkos	\N	\N
nm0031669	Anuradha	\N	\N
nm14705061	VJ Aswath	\N	\N
nm14705062	Punitha Balakrishnan	\N	\N
nm11613244	Mansi Joshi	\N	\N
nm0490058	Latha	\N	\N
nm12593474	Pavan Ravindra	\N	\N
nm10595249	Shabanaa Shahjahan	\N	\N
nm14705064	Sulaimaan	\N	\N
nm11764861	Rathibala	\N	\N
nm11482207	Vaidehi Ramamurthy	\N	\N
nm16243299	Vinoth Bharathi	\N	\N
nm13977072	Aravind Anbalagan	\N	\N
nm1665577	Maria Bartiromo	1967	\N
nm4231346	Kenneth Rogoff	\N	\N
nm1560201	Iza Calzado	1982	\N
nm0948230	Jomari Yllana	\N	\N
nm0349412	Tonton Gutierrez	\N	\N
nm0010500	Khryss Adalia	\N	2008
nm0721342	Lore Reyes	\N	\N
nm2531535	Joseph Balboa	\N	\N
nm1840982	Suzette Doctolero	\N	\N
nm1628335	RJ Nuevas	\N	\N
nm1311586	Rey Valera	1954	\N
nm1555323	Ninia Benjamin	\N	\N
nm0256658	Tameka Empson	1977	\N
nm0420079	Jocelyn Jee Esien	1979	\N
nm0716933	Gary Reich	\N	\N
nm10652080	Mark Christopher Lee	\N	\N
nm15177270	Terje Simonsen	\N	\N
nm10835849	Guy Thompson	\N	\N
nm0743896	Tracee Ellis Ross	1972	\N
nm0112001	Golden Brooks	1970	\N
nm0925316	Persia White	\N	\N
nm0428382	Jill Marie Jones	1975	\N
nm0371196	Reginald C. Hayes	1969	\N
nm0435074	Khalil Kain	1964	\N
nm0496980	Charmin Lee	\N	\N
nm0507338	Jenifer Lewis	1957	\N
nm0502015	Harry Lennix	1964	\N
nm1335496	Tanner Scott Richards	1992	\N
nm0258405	Sheldon Epps	1952	\N
nm0015327	Mara Brock Akil	1970	\N
nm0114208	Mark Alton Brown	1955	\N
nm0480629	Dee LaDuke	\N	\N
nm5539439	Anike Tourse	\N	\N
nm0240794	Dan Dugan	1957	\N
nm0267972	Kurt Farquhar	\N	\N
nm0604625	Donald A. Morgan	\N	\N
nm0610586	Timothy Mozer	1961	\N
nm2049386	Katlego Danke	\N	\N
nm10303895	Thami Mngqolo	\N	\N
nm1081983	Menzi Ngubane	1964	2021
nm0781066	Seputla Sebogodi	1962	\N
nm1083609	Danie Joubert	\N	\N
nm1550118	Maynard Kraak	\N	\N
nm0904436	Mfundi Vundla	\N	\N
nm1622319	Elsje Stark	\N	\N
nm0823169	Friedrich Stark	1954	2016
nm2188804	Audrey Lamy	1981	\N
nm2018861	Loup-Denis Elion	\N	\N
nm0440149	Valérie Karsenti	1968	\N
nm0099704	Frédéric Bouraly	1960	\N
nm0303900	Marion Game	1938	2023
nm0379587	Gérard Hernandez	1933	\N
nm1644323	Anne-Elisabeth Blateau	\N	\N
nm4720887	David Mora	\N	\N
nm4867042	Amélie Etasse	\N	\N
nm1071149	Grégoire Bonnet	1966	\N
nm0011612	Karim Adda	1972	\N
nm1498915	Luccio Di Rosa	\N	\N
nm0243626	Francis Duquet	\N	\N
nm3296910	Khaled Amara	\N	\N
nm2030678	Edgard F. Grima	\N	\N
nm1055655	Alain Kappauf	\N	\N
nm10218346	Fanny Riedberger	\N	\N
nm3658698	Christian Baumard	\N	\N
nm3175264	Patrice Anselme	\N	\N
nm9925543	John Reynolds	\N	\N
nm9925542	Conor O'Neill	\N	\N
nm12606025	Rebecca Whittam	\N	\N
nm12342777	Ethan Campbell	\N	\N
nm12380821	Phillip Redgrave	\N	\N
nm12342779	Scott Garner	\N	\N
nm12380822	Phawut Promsorn	\N	\N
nm12380823	Sam Bolton	\N	\N
nm12818180	Alisha Fariyike	\N	\N
nm9925544	Harry Privett	\N	\N
nm9925541	Matthew Reynolds	\N	\N
nm11814469	Nathan Mort	\N	\N
nm6711309	David Webster	\N	\N
nm12365462	Chloe Roscoe	\N	\N
nm1317814	Peter Mattei	1965	\N
nm0128000	Gilles Cachemaille	\N	\N
nm1358419	Nathan Berg	\N	\N
nm0655809	Mark Padmore	1961	\N
nm1333679	Alexandra Deshorties	\N	\N
nm0217950	Mireille Delunsch	1962	\N
nm0489234	Lisa Larsson	\N	\N
nm0652023	Gudjon Oskarsson	\N	\N
nm4936778	Choeur de l'Académie Européenne de Musique	\N	\N
nm1337394	Daniel Harding	1975	\N
nm0060667	Vincent Batallion	\N	\N
nm0196153	Lorenzo da Ponte	1749	1838
nm0701447	Tom Pye	\N	\N
nm0318114	Johnny Gilbert	1928	\N
nm0871618	Alex Trebek	1940	2020
nm0565214	Kevin McCarthy	\N	\N
nm7782778	Kentarô Kumagai	\N	\N
nm5693865	Sayaka Senbongi	1995	\N
nm8267203	Asuna Tomari	\N	\N
nm0619904	Hiroshi Naka	1960	\N
nm2977461	Saori Hayami	1991	\N
nm15754188	Akira Miki	\N	\N
nm1694008	Shinji Kawada	1971	\N
nm3283701	Satoshi Mikami	\N	\N
nm2426043	SungWon Cho	1990	\N
nm8256291	Yoshihiro Miyajima	\N	\N
nm9044570	Hideyuki Satake	\N	\N
nm13922267	Kui Ryôko	\N	\N
nm4540287	Kimiko Ueno	\N	\N
nm9579307	Kazufumi Kikushima	\N	\N
nm16265227	Wu Tong	\N	\N
nm9015943	Yoshiki Usa	\N	\N
nm13552579	Julien Vig	\N	\N
nm0594056	Yasunori Mitsuda	1972	\N
nm4414447	Shunsuke Tsuchiya	\N	\N
nm7963960	Katsunori Shiradô	\N	\N
nm6075239	Masato Yoshitake	\N	\N
nm0182711	Geo Costiniu	1950	2013
nm0185629	Ioana Craciunescu	1950	\N
nm1426926	Rodica Dianu	\N	\N
nm0227708	Gheorghe Dinica	1934	2009
nm0396147	Emil Hossu	1941	2012
nm16444201	Oana Ionascu	\N	\N
nm16444200	Alexandru Ionescu	\N	\N
nm16444199	Valentin Ionescu	\N	\N
nm0492242	Paul Lavric	1928	\N
nm0493668	Dorina Lazar	1940	\N
nm0176098	Mihai Constantinescu	1932	\N
nm0691048	Temistocle Popa	1921	2013
nm2169021	Catalin Vago	\N	\N
nm0596479	Marga Moldovan	1943	1993
nm10525179	Yuva Krishna	\N	\N
nm10525178	Rekha Ratheesh	\N	\N
nm6299058	Malavika Wales	\N	\N
nm10488688	Rajeev Nedumkandom	\N	\N
nm10525181	Prabha Unnithan	\N	\N
nm1324517	Suresh Unnithan	\N	\N
nm10525183	Baiju Gopal	\N	\N
nm10525185	Joy Robinson	\N	\N
nm11579049	Ajay Prasannan	\N	\N
nm12292372	Aneesh Unnithan	\N	\N
nm0546220	Alessia Marcuzzi	1972	\N
nm2568502	Sergio Colabona	\N	\N
nm2343953	Giorgio Gori	1960	\N
nm0345991	Andrea Guerra	1961	\N
nm4502456	Antonio Burgio	\N	\N
nm1949808	Kaho	1991	\N
nm0855442	Yasufumi Terawaki	1962	\N
nm0865081	Naho Toda	1974	\N
nm0945515	Yûsuke Yamamoto	1988	\N
nm0256861	Ken'ichi Endô	1961	\N
nm0038273	Miyoko Asada	1956	\N
nm1163219	Eiji Bandô	1940	\N
nm0386294	Mitsuru Hirata	1953	\N
nm3437812	Yasunari Takeshima	\N	\N
nm3225064	Momoka Ôno	\N	\N
nm2464576	Yoshinori Kobayashi	\N	\N
nm3764130	Hideya Hamada	1972	\N
nm3764126	Kito Tawara	\N	\N
nm3554553	Yoshitaka Ishizuka	\N	\N
nm0369076	Takayuki Hattori	\N	\N
nm4294038	Kei Kawamura	\N	\N
nm1695705	María Castro	1981	\N
nm0380007	José Antonio Sayagués	1952	\N
nm1066971	Fernando Andina	1976	\N
nm5622764	Francisco Ortiz	\N	\N
nm0044150	Anna Azcona	1964	\N
nm0379446	Miguel Hermoso Arnao	1971	\N
nm0016864	Fernando Albizu	1963	\N
nm3882184	Lucía Martín Abello	\N	\N
nm1996203	Dario Palomo	\N	\N
nm1588274	Marco Banderas	1967	\N
nm1617488	Nikki Benz	1981	\N
nm1120190	Mick Blue	\N	\N
nm0257585	Ben English	1964	\N
nm0392056	Steve Holmes	1961	\N
nm0461112	Austin Kincaid	1980	\N
nm1555562	Kaiya Lynn	1977	\N
nm1188092	Daisy Marie	1984	\N
nm2438077	Carmel Moore	1985	\N
nm1256007	Scott Nails	1982	\N
nm3466120	Hashiell Dammett	\N	\N
nm2099958	Michele Alhaique	1979	\N
nm1798418	Roberto Turchetta	\N	\N
nm2104925	Claudio Cicala	\N	\N
nm1492316	Angelo Carbone	\N	\N
nm1495139	Roan Johnson	1974	\N
nm2101111	Francesca Romana Mancini	\N	\N
nm1998405	Piero Lassandro	\N	\N
nm9282604	Michael D. French	\N	\N
nm9291488	Andy Graham	\N	\N
nm9282605	Melinda Mock	\N	\N
nm0000209	Tim Robbins	1958	\N
nm0000452	Lauren Holly	1963	\N
nm0822555	Doris Wishman	1912	2002
nm0694411	John Power	1930	2016
nm0606662	John Morris	1933	2003
nm0934239	Tony Wilson	\N	2010
nm0386151	Stephan Hippe	1966	\N
nm0535431	Beate Maes	1966	\N
nm0387153	Peter Hladik	1941	\N
nm1242910	Sandra Gerhard	1972	\N
nm0955969	Denise Zich	1975	\N
nm0344149	Pamela Großer	1977	\N
nm1076138	Matthias Bundschuh	1966	\N
nm0678487	Oliver Petszokat	1978	\N
nm0127003	Kay Böger	1971	\N
nm2811859	Rocco Leo Gaglioti	1977	\N
nm16115259	Dannyredninja	\N	\N
nm0309740	Jade Gatt	1978	\N
nm1501268	Ryan Lappin	\N	\N
nm0471387	Lenka	1978	\N
nm8457691	Todd Decker	\N	\N
nm0954698	Bernie Zelvis	\N	\N
nm7160298	Bill McQueen	\N	\N
nm9672059	Kelly Steve	\N	\N
nm7798390	Praphulla Pandey	\N	\N
nm1882837	Nimai Bali	1969	\N
nm1410332	Tarakesh Chauhan	\N	\N
nm1024591	Shalini Kapoor	1976	\N
nm1831269	Siraj Mustafa Khan	\N	\N
nm2332280	Sunil Singh	\N	\N
nm3198510	Rebecca Blue	1986	\N
nm3907183	Ash Hollywood	1989	\N
nm3165490	London Keyes	1989	\N
nm2745099	Faye Reagan	1988	\N
nm4080582	Sarah Shevon	1984	\N
nm2266814	Aiden Starr	1979	\N
nm2646237	Eric Swiss	1975	\N
nm3471640	Tanya Tate	1979	\N
nm3350874	Taylor Tilden	1987	\N
nm3010594	Juelz Ventura	1987	\N
nm0310221	Gautami	1968	\N
nm9735029	Kalpana	\N	\N
nm1347553	Vietnam Veetu Sundaram	1943	2016
nm5654909	Shanthi Williams	\N	\N
nm9735028	Mathivanan	\N	\N
nm9735030	Sri. Narasimma	\N	\N
nm8139562	Abirami Ramanathan	\N	\N
nm1045684	Jeong Jae-yeong	1971	\N
nm1032826	Song Yun-ah	1973	\N
nm4641488	Taecyeon	1988	\N
nm2197560	Gil Hae-Yeon	1964	\N
nm3797192	Jeong Hee-tae	1975	\N
nm1486994	Jang Hyun-sung	1970	\N
nm0839293	Sung Ji-ru	1968	\N
nm3294507	Choi Jin-ho	1968	\N
nm1371115	Kim Seo-hyeong	1973	\N
nm1468275	Lee Won-jae	1958	\N
nm7658714	Hyun-min Jung	\N	\N
nm6547221	Kim Jin-woo	\N	\N
nm8084270	Min-an Jae	\N	\N
nm8084268	Young-Seop Lee	\N	\N
nm8084269	Chang-Soo Moon	\N	\N
nm8084278	Han-Saem Seon	\N	\N
nm8084279	Yoon-Kyeong Son	\N	\N
nm8081421	Gil-Hong Choe	\N	\N
nm8084267	In-ho Lim	\N	\N
nm8084288	Yoo-jae Lee	\N	\N
nm8084289	Mi-Yeon Song	\N	\N
nm0754480	Sabah	1927	2014
nm0357491	Imad Hamdi	1909	1984
nm0957668	Salah Zulfikar	1926	1993
nm0015658	Abdulsalam El-Nabulsi	1899	1968
nm0252857	Zahrat El-Ula	\N	\N
nm0252823	Umar El-Hariri	1922	2011
nm0623434	Salah Nazmi	1918	1991
nm1027702	Khayria Ahmed	1937	2011
nm10520293	Victoria Hobeika	\N	\N
nm8979578	Kawthar Ramzy	1931	2018
nm0958575	Mahmoud Zulfikar	1914	1970
nm4455043	Tawfiq Al-Hakim	1898	1987
nm0324737	Youssef Gohar	\N	\N
nm0958573	Ezz El Dine Zulficar	1919	1963
nm0025578	Andre Ryder	\N	\N
nm7346349	Tereza Vandrovcová	\N	\N
nm8098837	Lillie Warner	\N	\N
nm7510000	Coco Blue	\N	\N
nm10861133	Pratham Sharma	2000	\N
nm10861223	Mukta Mala Sharma	\N	\N
nm10924193	Saurabh Sutar	\N	\N
nm1224530	Min Nam-koong	1978	\N
nm1508878	Nam Sang-mi	1984	\N
nm5675066	Lee Jun-ho	1990	\N
nm7045018	Jung Hye-seong	1991	\N
nm3787759	Kim Won-hae	1969	\N
nm6916576	Kim Kang-hyeon	1977	\N
nm8468703	Jo Hyun-sik	\N	\N
nm10060572	Ryu Hye-rin	1984	\N
nm9170918	Kim Seon-ho	1986	\N
nm1031876	Park Yeong-gyu	1953	\N
nm7670272	Lee Jae-hoon	\N	\N
nm11684941	Choi Yoon-suk	\N	\N
nm6728876	Park Jae-beom	\N	\N
nm0163863	Dick Clark	1929	2012
nm0711880	Susan Ruttan	1948	\N
nm0504531	Terry Lester	1950	2003
nm0331564	Dean Goss	1949	\N
nm0122222	Bruce Burmester	\N	\N
nm0773400	Anne-Marie Schmitt	1931	2006
nm12451982	Stuart Ford	\N	\N
nm10490075	Katt Kersting	\N	\N
nm11519854	Lauren Keller	\N	\N
nm11011661	Piper Srey	\N	\N
nm11025961	Kolten Exton	\N	\N
nm2882021	Michelle Keegan	1987	\N
nm0969695	Mary McCartney	1969	\N
nm2971313	Theo Randall	\N	\N
nm1010407	Olly Smith	1974	\N
nm3044982	Matt Tebbutt	\N	\N
nm1860506	Valerie Pitts	1937	2021
nm1942425	Susannah Shipman	\N	\N
nm0415773	Jai	1985	\N
nm3223429	Nivetha Thomas	1995	\N
nm2536215	VTV Ganesh	1961	\N
nm3561501	Sathyan	\N	\N
nm5408510	Rajkumar	\N	\N
nm1007581	Manobala	1953	2023
nm4082417	Subbu Panchu	1969	\N
nm1420794	Chitra Lakshmanan	\N	\N
nm0794478	R.S. Shivaji	1956	2023
nm2697818	Swaminathan	\N	\N
nm5965104	K. Chandru	\N	\N
nm3342464	Kalpathi S. Agoram	\N	\N
nm3344486	Kalpathi S. Ganesh	\N	\N
nm3342685	Kalpathi S. Suresh	\N	\N
nm6009316	Prem Kumar	\N	\N
nm6009317	Anand Jeeva	\N	\N
nm3595566	T.S. Suresh	1986	\N
nm1405339	Jordi González	1961	\N
nm2908439	Daniela Blume	\N	\N
nm4257835	Carlota Corredera	1974	\N
nm0661432	Lucy Pargeter	1977	\N
nm0223327	Sally Dexter	1960	\N
nm0724174	Joshua Richards	\N	\N
nm0116623	Dominic Brunt	1970	\N
nm1183224	Michael Wildman	\N	\N
nm1731521	Laura Norton	1983	\N
nm7021016	Rebecca Bakes	\N	\N
nm0587207	Nick Miles	1962	\N
nm0923928	Nicola Wheeler	1974	\N
nm0242459	Lesley Dunlop	1956	\N
nm1939577	Alan de Pellette	\N	\N
nm0642235	Lesley Clare O'Neill	1952	\N
nm9733382	Kate Brooks	\N	\N
nm2796381	Laura Shaw	\N	\N
nm0518930	Dave Long	\N	\N
nm1115954	Leo Montero	\N	\N
nm9896214	Yellow Flash	\N	\N
nm10786130	Antonio Madrigal	\N	\N
nm1247937	Swati Chitnis	\N	\N
nm4061978	Ashita Dhawan	\N	\N
nm10410713	Siddharth Dubey	\N	\N
nm3496716	Niyati Joshi	1949	\N
nm7812857	Shivangi Joshi	1995	\N
nm6383558	Priyamvada Kant	1990	\N
nm5068824	Mohsin Khan	1991	\N
nm9583444	Simran Khanna	1952	\N
nm2586773	Amita Khopkar	\N	\N
nm1803295	Shana Kemp	\N	\N
nm0005435	Sinbad	1956	\N
nm0962616	Kim Tavares	\N	\N
nm3015806	Geoff Brown	\N	\N
nm2477449	Michael Ferrucci	\N	\N
nm0289927	Richard Francese	\N	\N
nm0507702	Buddy Lewis	\N	\N
nm4529335	Ralf Scholt	1964	\N
nm1518940	Marga van Rooy	1942	2017
nm9913310	Phillip Schnetler	\N	\N
nm4328620	Johny Klein	\N	\N
nm0168800	Susan Coetzer	\N	\N
nm8879864	Elanie Rupping	\N	\N
nm9835778	Debré Rossouw	\N	\N
nm7079188	Jaco van Rensburg	\N	\N
nm7455813	Johan Strydom	\N	\N
nm3169975	Bertus Kirsten	\N	\N
nm1403456	Ryô Segawa	1978	\N
nm1404540	Asuka Shimizu	1978	\N
nm1403631	Kôhei Takeda	1986	\N
nm1403466	Hideaki Serizawa	1973	\N
nm1404435	Maya Hoshino	1977	\N
nm1178851	Ren Matsuzawa	1981	\N
nm1403630	Tomohide Takahara	1973	\N
nm1402449	Sayaka Isoyama	1983	\N
nm1402852	Sôji Masaki	1973	\N
nm1402638	Shunsaku Kudô	\N	\N
nm1031504	Hiromitsu Muraishi	\N	\N
nm1402606	Kenji Konuta	\N	\N
nm4755526	Simon Lane	\N	\N
nm6956134	Hannah Rutherford	1988	\N
nm4948556	Malavika Avinash	\N	\N
nm5641275	Papri Ghosh	\N	\N
nm15602423	Vaishu Jayachandhiran	\N	\N
nm15802388	Jayshri Jue	\N	\N
nm11479439	Swetha Khelge	\N	\N
nm11490208	Rekha Krishnappa	\N	\N
nm11556689	Kavitha Solairaja	\N	\N
nm15802389	Jeevan G. Vaa	\N	\N
nm4088593	J.R. Karthikeyan	\N	\N
nm15802387	M.B. Gowrish	\N	\N
nm0523529	Ike Lozada	\N	1995
nm1245343	German Moreno	1933	2016
nm13410198	Bud Daliwan	\N	\N
nm0238445	Joanne Dru	1922	1996
nm0588903	Mark Miller	1924	2022
nm0619798	J. Carrol Naish	1896	1973
nm0301886	Melody Gale	\N	\N
nm0548240	Flip Mark	1948	\N
nm0599344	Anthony C. Montenaro	1947	\N
nm0635839	Karen Norris	1927	1996
nm0397220	Cy Howard	1915	1993
nm0730841	Ashley Roberts	1981	\N
nm3266252	Alain Alfaro	\N	\N
nm9907945	Alex Noschese	\N	\N
nm15533577	Teja Chowdary	\N	\N
nm15533573	Hari Garu	\N	\N
nm6414973	Gayathri	\N	\N
nm15533576	Mounika Guntuka	\N	\N
nm13368455	Anusha Hegde	\N	\N
nm13262848	Manasa Narayan	\N	\N
nm15533572	Prajwal P.D.	\N	\N
nm15533574	Kaushik Rama	\N	\N
nm10890227	Sandya Rani	\N	\N
nm15533575	Sahithi	\N	\N
nm1005287	Andrea McLean	1969	\N
nm0561753	Lisa Maxwell	1963	\N
nm0601327	Jane Moore	1962	\N
nm0567805	Jane McDonald	1963	\N
nm0001058	Joan Collins	1933	\N
nm2048172	Frank Lampard	1978	\N
nm7897562	Youmna Chamcham	\N	\N
nm13527811	Dominique Abou Debs	\N	\N
nm13527820	Elie El-Helou	\N	\N
nm13527863	Samira Halal	\N	\N
nm13527862	Jessica Melkane	\N	\N
nm9655056	Chloe Bou Merhi	\N	\N
nm13527865	Philippe Bou Merhi	\N	\N
nm8946791	Francois Monarcha	1991	\N
nm13527856	Kikky Naim	\N	\N
nm13527861	Georgette Zwein	\N	\N
nm7897561	Ghazy Feghaly	\N	\N
nm0603065	Gigetta Morano	1887	1986
nm0734958	Eleuterio Rodolfi	1876	1933
nm0024464	Arturo Ambrosio	1870	1960
nm0783152	William Nicholas Selig	1864	1948
nm2431809	Sara Blecher	\N	\N
nm3689940	Dimakhatso Raphoto	\N	\N
nm1697283	Philip Miller	1964	\N
nm3690842	Dudley Saunders	\N	\N
nm3688800	Hannes Van Vuuren	\N	\N
nm13964041	Siddharth Arora	\N	\N
nm13935209	Puneet Pawar	\N	\N
nm13965788	Vaibhav Bansal	\N	\N
nm13776720	Cinevab	\N	\N
nm12797142	Risha Nijaguna	\N	\N
nm2247767	Asha Rani	\N	\N
nm12102009	Dileep R. Shetty	\N	\N
nm5674678	Mussanje Mahesh	\N	\N
nm12797139	Geervani Bhat	\N	\N
nm12797138	Sri Harsha	\N	\N
nm12797140	Chaitrika Hegde	\N	\N
nm12797141	Rakesh Chandru	\N	\N
nm11112003	Jayashree Raj	\N	\N
nm0361753	Tomoyo Harada	1967	\N
nm12989552	Misa Ishikawa	\N	\N
nm0850634	Chris Tarrant	1946	\N
nm0988776	Charles Kennedy	1959	2015
nm0582038	Melinda Messenger	1971	\N
nm1541521	Alastair Stewart	1952	\N
nm0704839	Rikke Raben	\N	\N
nm1245598	Ulla Raben	\N	\N
nm0804791	Ingrid Skovgaard	1938	2013
nm1214274	Turf Wenneberg	\N	\N
nm1127862	Roland Vouilloz	\N	\N
nm9019253	Leonor Oberson	\N	\N
nm12490775	Gaspard Vignon	\N	\N
nm17008057	Charlotte Klinke	\N	\N
nm17008056	Arthur Parchet	\N	\N
nm2205794	Colin Lévêque	\N	\N
nm9241906	Adrien Lhoste	\N	\N
nm10320478	Patrick Lange	1986	\N
nm15831581	Laura Philipp	\N	\N
nm10325645	Florian Weiss	\N	\N
nm5528429	Catherine Tresa	1989	\N
nm6783918	Sree Vishnu	1984	\N
nm0692586	Krishna Murali Posani	\N	\N
nm10346132	Ramachandra Raju	1980	\N
nm13383949	Garuda Ram	\N	\N
nm5624098	Ravi Varma	\N	\N
nm2210188	Srinivasa Reddy	1973	\N
nm12130798	Sandeep Sahu	\N	\N
nm2058013	Chaitanya Dantuluri	\N	\N
nm9489622	Srikanth Vissa	1982	\N
nm8346574	Rajani Korrapati	\N	\N
nm0788886	Mani Sharma	1964	\N
nm2330732	Anil Bandari	\N	\N
nm5158362	Suresh Ragutu	\N	\N
nm1156659	Marthand K. Venkatesh	\N	\N
nm2553713	Lídia Heredia	\N	\N
nm2790013	Núria Solé	\N	\N
nm0030714	Ant	1967	\N
nm2944145	José Antich	\N	\N
nm2433900	Antonio Baños	\N	\N
nm1913150	Fina Brunet	\N	\N
nm7069577	Josep Maria Bunyol	\N	\N
nm4066643	Antoni Dalmau	1951	2022
nm4129202	Anna Figuera	\N	\N
nm5572528	Màrius García Andrade	\N	\N
nm3897046	Carme Ros	\N	\N
nm0106576	Anna Brecon	1971	\N
nm1028973	Edmund Dehn	\N	\N
nm1233351	Crispin Manson	\N	\N
nm1180614	David Mitchell	1965	\N
nm0833993	Nicole Streak	1973	\N
nm1233021	Jon Kirby	\N	\N
nm1233556	Mitchell Morgan	\N	\N
nm2126908	Rachel's Basement	\N	\N
nm0746657	Stuart Roweth	\N	\N
nm0013525	Guillermo Aguilar	1929	2016
nm0025954	Jacqueline Andere	1938	\N
nm0070748	Augusto Benedico	1909	1992
nm0087003	Anita Blanch	1910	1983
nm0614971	Guillermo Murray	1927	2021
nm0657992	Andrea Palma	1903	1987
nm0209555	María Rivas	1931	2013
nm0022172	Ernesto Alonso	1917	2007
nm3522617	Francisco Márquez Garcia	\N	\N
nm8802492	Natalia Bushnik	\N	\N
nm8136554	Sean Meldrum	1992	\N
nm10829391	Jeff Adkins	\N	\N
nm6746911	Samm Barley	\N	\N
nm4468349	Neil Bennett	\N	\N
nm8488577	Richard Cole	\N	\N
nm7615687	Susan Evitts	\N	\N
nm9289228	Dominic Maiolo	\N	\N
nm10519798	Judy Malcolm	\N	\N
nm5150974	Dan Sanderson	\N	\N
nm2086668	Robert Wilson	\N	\N
nm5634732	Michelle Alexander	\N	\N
nm5457967	Sean James Boyer	\N	\N
nm2549258	Greg Gutfeld	1964	\N
nm11692334	Madison Cawthorn	\N	\N
nm6152279	Katherine Timpf	\N	\N
nm0879129	Tyrus	1973	\N
nm3695423	Joe Machi	1979	\N
nm0483821	Jenny Lampa	1981	\N
nm2312906	Marcus Ovnell	1983	\N
nm7338255	Khayyam Khan	\N	\N
nm0004804	Drew Carey	1958	\N
nm1591784	Rich Fields	1960	\N
nm0651658	Gwendolyn Osborne	1977	\N
nm1757601	Rachel Reynolds	1982	\N
nm0792799	Brandi Sherwood	1971	\N
nm0260619	Bart Eskander	\N	\N
nm0836761	Hannes Stütz	\N	\N
nm0424203	Monika John	1935	\N
nm0041676	Hannelore Auer	1942	2023
nm0162486	Gigliola Cinquetti	1947	\N
nm0228457	Sacha Distel	1933	2004
nm0380220	Ted Herold	1942	2021
nm0511450	Anita Lindblom	1937	2020
nm5641070	Otto Ortwein	\N	\N
nm0449832	Charles Kerremans	\N	\N
nm11515017	Kaverii	\N	\N
nm1426682	Delhi Kumar	\N	\N
nm5030928	Thirumurugan	\N	\N
nm11515021	Raja Kaveri	\N	\N
nm11515022	Mani	\N	\N
nm11511726	S. Siddique	\N	\N
nm11515024	Sarath.K. Chandran	\N	\N
nm11515023	Sevilaraja	\N	\N
nm11515025	M. Jaya Kumar	\N	\N
nm16423037	Lawrence Brown	\N	\N
nm9956130	Lawrence Reuben-Brown	\N	\N
nm15089168	Wukda	\N	\N
nm16423036	Benjamin Fingerhut	\N	\N
nm2484139	Matthew Emvin Taylor	\N	\N
nm11695750	Niranjan Acharya	\N	\N
nm9726907	Aiswarya Behera	\N	\N
nm11695749	Bhakti Ranjan Das	\N	\N
nm10606192	Sujit Jena	\N	\N
nm11695748	Pragyan Ranjan Khatua	\N	\N
nm11695751	Biranchi Mahapatra	\N	\N
nm11695753	Nupur Rajiv Mohapatra	\N	\N
nm11695752	Surendra Moharana	\N	\N
nm10298980	Soumya Narayan Panda	\N	\N
nm11695747	Sankarsan Pradhan	\N	\N
nm7346575	Sai Kiran Mangaraj	\N	\N
nm11695754	Zee Sarthak	\N	\N
nm3459772	Hardy Burt	\N	\N
nm0401239	William Bradford Huie	1910	1986
nm2802016	Norman Thomas	1884	1968
nm10052196	Ravichandran Ashwin	1986	\N
nm10052195	Ravindra Jadeja	1988	\N
nm2224747	Nathan Lyon	\N	\N
nm10059369	Glenn Maxwell	1988	\N
nm10174134	Wriddhiman Saha	\N	\N
nm2717032	Peter Barent Lewis	\N	\N
nm0132322	Colin Campbell	1968	\N
nm0179275	Matt Corboy	1973	\N
nm0203013	Michael David	\N	\N
nm0254918	John R. Ellis	\N	\N
nm0070216	John Paul Fedele	\N	\N
nm0274511	Robert J. Ferrelli	\N	\N
nm0298942	Anthony Furlong	1979	\N
nm0517844	Alison Lohman	1979	\N
nm0545424	Teal Marchande	1965	\N
nm0563650	Russ Mazzolla	\N	\N
nm0139605	Neal Marshall Stevens	\N	\N
nm0360936	Kirk Edward Hansen	1959	1999
nm0467086	Richard Kosinski	\N	\N
nm0059001	Adolfo Bartoli	1950	2024
nm0561732	Joe C. Maxwell	\N	\N
nm0761568	Gregory Sanders	\N	\N
nm0120096	Perry Bullington	1947	2012
nm0531894	Robert MacDonald	\N	2011
nm0168164	Erin Cochran	\N	\N
nm0367782	Helen Harwell	\N	\N
nm0798296	Fausto Silva	1950	\N
nm1154937	Detto Costa	\N	\N
nm13827624	Maurício Nunnes	\N	\N
nm0889375	Augusto Cesar Vanucci	1934	1992
nm12137266	Guto Colunga	\N	\N
nm8179306	Erick Harada	\N	\N
nm7493968	Ruoxue Wu	\N	\N
nm13594474	Yuan Zong Xuan	\N	\N
nm11244104	Ling Zhang	\N	\N
nm10224167	Xu Wenlin	\N	\N
nm9768269	Yuenian Su	\N	\N
nm0746298	Alba Roversi	1961	\N
nm1109077	Manuel Escolano	1948	2023
nm0944583	Raúl Xiqués	1931	\N
nm0023693	Enrique Alzugaray	1915	1987
nm1345879	Luis Colmenares	\N	\N
nm1925249	Elena Farías	1947	2006
nm0617699	Yolanda Méndez	1927	2010
nm1111773	José Oliva	1933	2007
nm1937472	Jose Gabriel Nuñez	1937	\N
nm8004195	Chris Schnabel	\N	\N
nm16795899	Matt Tornetta	\N	\N
nm1007169	Lari Halme	\N	\N
nm2841817	Harri Kailanto	\N	\N
nm1436199	Hennariikka Laaksola	\N	\N
nm0538028	Antti Majanlahti	1966	2017
nm2074427	Panu Mikkola	1982	\N
nm1971749	Anu Niemi	1974	\N
nm3400969	Johanna Pirttilahti	\N	\N
nm0753609	Helena Rängman	\N	\N
nm0758721	Eppu Salminen	1965	\N
nm4077881	Thelma Siberg	\N	\N
nm0899455	Janne Virtanen	1967	\N
nm0720080	Petri Repo	\N	\N
nm1455462	Liisa Palmroth	\N	\N
nm3009050	Samu Reijonen	\N	\N
nm0450224	Tapio Keskitalo	1963	\N
nm2125780	Nick Drago	\N	\N
nm5988252	Kevin Keeling	\N	\N
nm4330276	Hani Abaza	\N	\N
nm5549554	Ryan Paul Der	\N	\N
nm5221215	Kristyn Evelyn	\N	\N
nm1226598	Mark Hatfield	\N	\N
nm6955242	Josh Henry	\N	\N
nm3094312	Clinton Huff	\N	\N
nm14838307	Ken Janz	\N	\N
nm0608931	Chris Moss	\N	\N
nm3432404	Michael Riccio	\N	\N
nm3596970	Devin Jamieson	\N	\N
nm1523587	Itziar Ituño	1974	\N
nm10302273	Carmen Climent	1996	\N
nm0046162	Klara Badiola	1954	\N
nm2222485	Iñigo Aranburu	\N	\N
nm0881561	Kandido Uranga	1955	\N
nm6043143	Germán Alcarazu	1997	\N
nm3891436	Sara Cozar	\N	\N
nm2113937	Belén Cruz	1963	\N
nm2375408	Rakel Ezpeleta	\N	\N
nm10625402	Amancay Gaztañaga	\N	\N
nm4053711	David Pérez Sañudo	\N	\N
nm1644621	Virginia Yagüe	\N	\N
nm2799071	Pablo Tobías	\N	\N
nm9698135	Beatriz López-Nogales	\N	\N
nm5376592	Kenneth Oribe	1985	\N
nm8348488	Marina Parés	\N	\N
nm3719465	Alper Türedi	1971	\N
nm4591521	Elvan Boran	1977	\N
nm1076381	Buket Dereoglu	1970	\N
nm4567501	Numan Çakir	1970	\N
nm3299226	Ufuk Kaplan	1972	\N
nm3751944	Cem Baza	1974	\N
nm9566650	Hülya Diken	1988	\N
nm10537731	Ceren Yavuz	\N	\N
nm11486487	Halil Ibrahim Yilmaz	\N	\N
nm11825882	Yasemin Nur Öztürk	\N	\N
nm4363547	Batuhan Firat	1984	\N
nm9925358	Mustafa Güzel	\N	\N
nm9214923	Jingletv	\N	\N
nm4057668	Gürkan Çakici	1983	\N
nm5422687	Emre Karadas	\N	\N
nm0022132	América Alonso	1936	2022
nm1384966	Jorge Félix	1931	2013
nm1959766	Carmen Antillano	\N	\N
nm1833646	Margot Antillano	1916	1975
nm1689331	Ivonne Attas	1943	\N
nm0274068	Francisco Ferrari	1927	2011
nm0378049	Olga Henríquez	1939	2024
nm0535394	Jesús Maella	1914	1989
nm11381354	Olegario Díaz	\N	\N
nm10457017	Varman Chandramohan	\N	\N
nm10484384	Jabu Deen Faruk	\N	\N
nm2215965	Soundrarajan J.	\N	\N
nm4546429	Kokila	\N	\N
nm7246678	Arvind Naidu	\N	\N
nm10484385	Ashwini Nambiar	\N	\N
nm10468826	Mohamed Yahssir	\N	\N
nm10484387	Syed Ashratullah	\N	\N
nm10468831	Sha Ali	\N	\N
nm10484389	Kala Charan	\N	\N
nm3630471	Gopal Kandaswamy	\N	\N
nm6596020	Naveen Selvanayagam	\N	\N
nm6754195	Michelle Orpe	\N	\N
nm1778986	John Tokatlidis	\N	\N
nm1500831	Nicholas Wealthall	\N	\N
nm0077505	Caspar Berry	\N	\N
nm2024360	Kara Scott	\N	\N
nm1815569	Brano Deák	1982	\N
nm9576702	Marek Fasiang	1985	\N
nm3190970	Vladimír Kobielsky	1975	\N
nm1816711	Filip Tuma	1978	\N
nm1818043	Vlado Fischer	1962	\N
nm9576701	Adriana Totiková	1983	\N
nm7418837	Nada Clontz	1979	\N
nm9885415	Vlasto König	\N	\N
nm3572859	Hana Lasicová	1981	\N
nm6650531	Katarina Mikulikova	\N	\N
nm0226075	Jan Diepers	1971	\N
nm12510702	Ivica Dubovska	\N	\N
nm2679188	Alexandra Dubovská	\N	\N
nm12510699	Michal Krajcík	\N	\N
nm2319214	Peter Kelisek	1976	\N
nm2410205	Peter Koval	\N	\N
nm0246418	Miriam Díaz-Aroca	1962	\N
nm0013587	Paco Aguilar	1949	\N
nm1039499	Jaimito Borromeo	\N	\N
nm0259768	Rafael Erosa	\N	\N
nm0453897	Kimbo	\N	\N
nm0481463	Emilio Laguna	1930	\N
nm0721386	Pedro Reyes	1961	2015
nm0096539	António Borges Correia	\N	\N
nm0352354	Alexandre Hachmeister	\N	\N
nm2666679	Gabriela Amado	\N	\N
nm10677335	Lluís Terricabres	\N	\N
nm10677334	Enric Fité	\N	\N
nm10677337	Josep Punsola	\N	\N
nm0717066	Kittens Reichert	1910	1990
nm0581499	Violet Mersereau	1892	1975
nm0289797	Charles H. France	1869	1940
nm0799744	Earl Simmons	1885	1934
nm0808220	Frank Smith	1860	\N
nm0245802	William Dyer	1881	1933
nm0659947	Paul Panzer	1872	1958
nm0666240	Isabel Patterson	\N	\N
nm0308848	William Garwood	1884	1950
nm0838270	Paddy Sullivan	\N	\N
nm0002271	Rex Ingram	1892	1950
nm0801726	Stanley Sinclair	\N	\N
nm7484397	Eza Yayang	\N	\N
nm12954644	Andri Sulistiandri	\N	\N
nm12954645	Furry Setya Raharja	\N	\N
nm4775181	Ranty Purnamasari	\N	\N
nm1499075	Tengku Firmansyah	\N	\N
nm8153874	Cindy Fatika Sari	\N	\N
nm13393534	Adhe Nurul	\N	\N
nm13395648	Fairus Aliya	\N	\N
nm2934664	Fitri Ayu	\N	\N
nm13387116	Otong Lalo	\N	\N
nm12954643	Lakamayus	\N	\N
nm10357998	Aris Nugraha	\N	\N
nm5595067	Ilma Fathnurfirda	\N	\N
nm13393540	Rizki Indra Sofa	\N	\N
nm13393543	Ayyash Syifa	\N	\N
nm10358028	Danny Supit	\N	\N
nm13387121	Bustomi	\N	\N
nm13387120	Ci_One	\N	\N
nm13393231	Giyono	\N	\N
nm13393539	Dedy H.	\N	\N
nm6666413	Robby Motz	\N	\N
nm1745831	Dan Ast	1983	\N
nm3721841	Ray William Johnson	1981	\N
nm3602179	Kelly Landry	\N	\N
nm4427276	Kaja Martin	1986	\N
nm1779335	Trisha Hershberger	\N	\N
nm16481231	Katie	\N	\N
nm3026085	Fabio Luisi	1959	\N
nm0281765	Renée Fleming	1959	\N
nm2557623	Mary Jo Heath	\N	\N
nm2559651	Gerhard Siegel	1963	\N
nm3584567	Jay Hunter Morris	\N	\N
nm0855561	Bryn Terfel	1965	\N
nm1139175	Eric Owens	\N	\N
nm4107272	Hans-Peter König	\N	\N
nm4341501	Mojca Erdmann	\N	\N
nm1012692	Patricia Bardon	\N	\N
nm0357143	Gary Halvorson	\N	\N
nm1562691	Louisa Briccetti	\N	\N
nm2471165	Victoria Warivonchik	\N	\N
nm0411075	Sakae Ishikawa	\N	\N
nm1158937	Carl Fillion	\N	\N
nm7089991	Brad Diamond	\N	\N
nm2099808	Jim Kenzie	\N	\N
nm0791288	Steve Shelski	\N	\N
nm0139607	Betty Carr	1929	2008
nm15247150	Rebecca Nikson	\N	\N
nm11552854	Ariel Tylor	1999	\N
nm15531238	Jane White	\N	\N
nm0477570	Ferenc Kállai	1925	2010
nm0960236	Lajos Öze	1935	1984
nm0299586	Zoltán Fábri	1917	1994
nm0098487	Béla Both	1910	2002
nm0581644	Georgette Mertzhradt	1903	1979
nm0753587	Róbert Rátonyi	1923	1992
nm0081094	Károly Bicskey	1920	2009
nm0598406	Lili Monori	1945	\N
nm0904623	László Vámos	1928	1996
nm0890221	Ida Versényi	1921	1992
nm0045880	Péter Bacsó	1928	2009
nm0880294	János Ujhelyi	1941	1999
nm0006091	Szabolcs Fényes	1912	1986
nm0904397	György Vukán	1941	2013
nm0958183	János Zsombolyai	1939	2015
nm0097197	Sándor Boronkay	1913	2002
nm0891387	Tamás Vayer	1941	2001
nm6197421	James Hargreaves	\N	\N
nm8839032	Joel Condor	\N	\N
nm8839033	Diane Ofori	\N	\N
nm2382330	Kristin Boese	\N	\N
nm0379128	Eva Herman	1958	\N
nm0001424	Udo Kier	\N	\N
nm1859734	Tetje Mierendorf	1972	\N
nm1889843	Tim Mälzer	1971	\N
nm0754149	Barbara Rütting	1927	2020
nm1019044	Bettina Tietjen	1960	\N
nm0145708	Verónica Castro	1952	\N
nm0346080	Rogelio Guerra	1936	2018
nm0135122	Guillermo Capetillo	1958	\N
nm0140025	Ada Carrasco	1911	1994
nm0617732	Yolanda Mérida	1929	2012
nm0149412	Estela Chacón	1944	2007
nm0165411	Aurora Clavel	1936	\N
nm0328132	Edith González	1964	2019
nm0181578	Ricardo Cortés	\N	\N
nm1734602	Bülent Alkis	1974	\N
nm0022044	Kürsat Alniaçik	1962	\N
nm8927784	Destina Baser	2000	\N
nm8237692	Musab Ekici	1992	\N
nm5890167	Ugur Günes	1987	\N
nm2013266	Atsiz Karaduman	1956	\N
nm3273956	Nizam Namidar	1961	\N
nm4246039	Berkan Sal	1970	\N
nm1855361	Kayra Senocak	1975	\N
nm3113711	Hande Soral	1987	\N
nm1672531	Volkan Kocatürk	1969	\N
nm6869215	Serkan Birlik	\N	\N
nm8189485	Mustafa Burak Dogu	\N	\N
nm1866070	Ayça Mutlugil	1974	\N
nm9159451	Hale Çalap	1973	\N
nm0459315	Eva Klepácová	1933	2012
nm0555494	Jaroslav Marvan	1901	1974
nm0381940	Gustav Heverle	1920	2008
nm0959149	Bohus Záhorský	1906	1980
nm0447515	Josef Kemr	1922	1995
nm0080015	Josef Beyvl	1906	1978
nm1185278	Anna Kaderábková	1924	2020
nm0841362	Eva Svobodová	1907	1992
nm1146245	Jirí Sehnal	1932	2006
nm2217866	Libuse Jiskrová	1940	\N
nm0954713	Borivoj Zeman	1912	1991
nm0440359	Jirí Karásek	1907	1971
nm0882959	Dalibor C. Vackár	1906	1984
nm0005884	Jan Stallich	1907	1973
nm0229771	Josef Dobrichovský	1914	1983
nm1561310	Ruzena Hejsková	1936	\N
nm0281936	Alan Fletcher	1957	\N
nm0597236	Ryan Moloney	1978	\N
nm2892142	Gemma Pranita	1985	\N
nm2405902	Morgan Baker	1997	\N
nm0219558	Stefan Dennis	1958	\N
nm2356851	Jordan Patrick Smith	1989	\N
nm2454818	Jordy Lucas	1992	\N
nm1505296	Ashleigh Brewer	1990	\N
nm0538214	Scott Major	1975	\N
nm0936087	Sandy Winton	1970	\N
nm0642611	Jovita O'Shaughnessy	\N	\N
nm0287914	Katrina Foster	\N	\N
nm1691250	Shaun Topp	\N	\N
nm0455593	Neal Kingston	\N	\N
nm1043398	Thea McLeod	\N	\N
nm5919031	Nikhil Sundaram	\N	\N
nm5919030	Arun Sl	\N	\N
nm0383482	Ross Higgins	1930	2016
nm0268034	Judi Farr	1938	2023
nm0279734	Peter Fisher	1955	\N
nm0569669	Laurel McGowan	\N	\N
nm0547876	Lex Marinos	1949	2024
nm0276872	Gary Files	1938	\N
nm0123383	Kevin Burston	\N	\N
nm0717685	Gary Reilly	1945	\N
nm0766440	Tony Sattler	\N	\N
nm0249949	Doug Edwards	\N	\N
nm1761014	Ian Heydon	\N	\N
nm0673849	Mike Perjanik	\N	\N
nm0103698	Noel Brady	\N	\N
nm16049522	Justin Barbour	\N	\N
nm16049523	Saku	\N	\N
nm0765031	Javier Sardà	1958	\N
nm2175096	Ricardo Groizard	1967	\N
nm3124952	Miquel José	\N	\N
nm7329359	Jordi Roca	\N	\N
nm0190478	Toni Cruz	1946	\N
nm1420945	Joan Ramon Mainat	1951	2004
nm0537714	Josep Maria Mainat	1946	\N
nm1351110	Pol Mainat	\N	\N
nm7917574	Mrunal Dusanis	\N	\N
nm2346665	Chinmay Mandlekar	1979	\N
nm4450871	Priya Marathe	1987	\N
nm12393366	Shridhar Patil	\N	\N
nm7814129	Amit Baiche	\N	\N
nm12282168	Shashank Ganesh Solanki	\N	\N
nm14187655	Aditya Nar	\N	\N
nm2154834	Ashok Patki	\N	\N
nm12282169	Naresh Desai	\N	\N
nm2538198	Pushpank Gawade	\N	\N
nm12393371	Aseem Ahmed	\N	\N
nm12393370	Sanjay Bamugade	\N	\N
nm12393369	Joy Mukherjee	\N	\N
nm10625141	Venkat Ranganathan	\N	\N
nm10679412	Gayathri Yuvraaj	\N	\N
nm6171985	Brahma G. Dev	\N	\N
nm10679414	Divya Viswanathan	\N	\N
nm0035413	Joan Armengol	1949	2004
nm3200565	Àngel Daban	\N	\N
nm0508249	Loles León	1950	\N
nm7089698	Maribel Marín	\N	\N
nm1416661	Tortell Poltrona	\N	\N
nm0850017	Pere Tàpias	1946	2017
nm3209889	Anna Maria Vidal	\N	\N
nm0059595	Joan Bas	\N	\N
nm2826755	Enric Frigola	\N	\N
nm0053967	Xesc Barceló	1943	2022
nm1371608	Miquel Obiols	1945	2024
nm2098462	Josep Maria Vidal	\N	\N
nm0005279	Carroll O'Connor	1924	2001
nm0738415	Howard E. Rollins Jr.	1950	1996
nm0042641	Alan Autry	1952	\N
nm0424509	Anne-Marie Johnson	\N	\N
nm0366231	David Hart	1954	\N
nm0861382	Geoffrey Thorne	\N	\N
nm0640356	Hugh O'Connor	1962	1995
nm0629370	Denise Nicholas	1944	\N
nm0486277	A.J. Langer	1974	\N
nm0324658	Walton Goggins	1971	\N
nm0463926	Winrich Kolbe	1940	2012
nm0057157	James Lee Barrett	1929	1989
nm0773958	Mitchell Schneider	\N	\N
nm0050398	John Ball	1911	1988
nm0304461	Joe Gannon	\N	\N
nm0777123	Nan Schwartz	\N	\N
nm0589941	Charles Mills	\N	\N
nm0109499	Bob Bring	1938	1999
nm0752764	Patrick M. Ryan	\N	\N
nm0321832	Jan Glaser	\N	\N
nm0737530	Al Rohm	\N	\N
nm1141177	Patrick Delahanty	1973	\N
nm8800049	Jekka Cormier	\N	\N
nm6368271	Bryan Burnett	\N	\N
nm8800511	Keith Coffman	\N	\N
nm6368049	Shannon Morse	\N	\N
nm8800011	Elizabeth Bramlett Donnell	1975	2015
nm5476051	Brian Brushwood	\N	\N
nm8800087	Jon Niehof	\N	\N
nm6384936	Elizabeth O'Malley	\N	\N
nm6384939	Doug Wilder	\N	\N
nm1874829	Juan Pablo Rueda	\N	\N
nm10982828	Sergio Cabrera	\N	\N
nm0180822	Fernando Corredor	1937	2016
nm7585329	Carmenza de Cadavid	\N	2012
nm0218643	Merena Demont	\N	\N
nm0302172	Lucero Galindo	1939	2013
nm0575661	Camilo Medina	1929	2015
nm0604125	Nelly Moreno	\N	\N
nm7569743	Stella Suárez	\N	\N
nm5185912	Jaime Botero Gómez	\N	\N
nm15003776	Gabriel Latorre	\N	\N
nm10982830	Cosme Zuñiga	\N	\N
nm0083142	Alfred Biolek	1934	2021
nm0036817	Alexander Arnz	1932	2004
nm0509052	Andreas Lichter	\N	\N
nm0774782	Manfred Schoof	1936	\N
nm2958285	Andreas König	\N	\N
nm2356160	Günter Müller	\N	\N
nm0755239	Detlev Sackenheim	\N	\N
nm2670086	Georg Schütte	\N	\N
nm10218349	Annette Barlach	\N	\N
nm2040653	Ute Braun	\N	\N
nm1712404	Irene Dieper	\N	\N
nm2042139	Hannelore Eisele	\N	\N
nm1060633	Sarah Bannier	1990	\N
nm2675966	Chantalle Boerebach	\N	\N
nm1982779	Wiliam Dashwood	\N	\N
nm2668967	Jennifer Halfhide	\N	\N
nm0993101	Marina Kaptijn	\N	\N
nm0465615	Pim Koopman	1953	2009
nm1882925	Jeroen Kramer	\N	\N
nm1133733	Fred Meijer	\N	\N
nm0597039	Melline Mollerus	1959	\N
nm1553828	Klavertje Patijn	\N	\N
nm6367707	Anthony Leroy	\N	\N
nm11250035	Ian Coventry	\N	\N
nm6885637	Josh Murphy	\N	\N
nm6367710	Quinton Kennedy	\N	\N
nm15353647	Adreanna Jones	\N	\N
nm14883198	Garret Dumoulin	\N	\N
nm15417183	Neutron Tsar	\N	\N
nm10624020	Lil Nas X	1999	\N
nm1415323	Miley Cyrus	1992	\N
nm1454411	Foo Fighters	\N	\N
nm2409665	Kiana Ledé	1997	\N
nm0011119	Kaye Adams	1962	\N
nm0634243	Coleen Nolan	1965	\N
nm0614719	Sheree Murphy	1975	\N
nm0919538	Denise Welch	1958	\N
nm2443286	Alfie Boe	1973	\N
nm0430639	Lesley Joseph	1945	\N
nm0722619	Griff Rhys Jones	1953	\N
nm3481780	Patrick Duffin	\N	\N
nm3747347	Shannon Coffey	\N	\N
nm10846744	Brittany Jones-Cooper	\N	\N
nm10882640	Haley Kalil	\N	\N
nm5614738	Ali Kolbert	\N	\N
nm10846743	Lukas Thimm	\N	\N
nm10849355	Michael Swartz	\N	\N
nm3240771	Hillary Blazer-Doyle	1968	\N
nm5067227	Su-Ping Chio	\N	\N
nm3768112	Marlon Dance-Hooi	\N	\N
nm9411358	Nadia Ramlee	\N	\N
nm3060230	Sacha Goedegebure	\N	\N
nm9192697	Lisa Teh	\N	\N
nm11164388	Lek Tiong Tan	\N	\N
nm13789446	Antonio Ayllón	\N	\N
nm6357723	Pedro Bahón	\N	\N
nm4502713	Álvaro Blázquez	\N	\N
nm4410679	Nerea Cordero	\N	\N
nm6394587	Alba Fontecha	\N	\N
nm13789448	Leo García	\N	\N
nm8940637	Cristian Genovés	\N	\N
nm13789445	Carmen Jiménez Ochando	\N	\N
nm13789447	Victoria Jiménez Plaza	\N	\N
nm8205568	Carolina Plata	\N	\N
nm4142789	Pablo Bullejos	\N	\N
nm4399956	Julio Llorente	\N	\N
nm6805263	Marco Barada	1991	\N
nm9872497	Oliver Flynn	1993	\N
nm7465545	Kenzie Taylor	1990	\N
nm1001923	Laurent Sky	\N	\N
nm1317785	Tom Gleeson	1974	\N
nm16277397	Mary	\N	\N
nm16277398	Jane	\N	\N
nm16277400	David	\N	\N
nm16277399	Cameron	\N	\N
nm10825212	Til Dorman	\N	\N
nm0019427	Ishrat Ali	\N	\N
nm0025389	Sadashiv Amrapurkar	1950	2014
nm1526433	Damini	\N	\N
nm0201955	Poonam Dasgupta	\N	\N
nm1030225	Firoz Irani	\N	\N
nm0451383	Mukesh Khanna	1958	\N
nm0457410	Ravi Kishan	1969	\N
nm0505323	Johny Lever	1957	\N
nm1167157	Mahesh Raaj	1953	2018
nm1060788	Rubina	\N	\N
nm1328135	Kanti Shah	\N	\N
nm0000558	Leslie Nielsen	1926	2010
nm0256364	Robert Emhardt	1914	1994
nm0813827	Brett Somers	1924	2007
nm0666201	Elizabeth Patterson	1874	1966
nm0454651	Dennis King	1897	1971
nm0073217	John Beradino	1917	1996
nm0164818	John Clarke	1931	2019
nm0738690	Greg Roman	1931	\N
nm0607465	Byron Morrow	1911	2006
nm0572897	John McLiam	1918	1994
nm0336139	Walter Grauman	1922	2015
nm0780733	Hank Searls	1922	2017
nm0629885	Meredith M. Nicholson	1913	2005
nm0372675	Larry Heath	1925	2014
nm0514257	James Lister	1926	1969
nm0002679	Lynn Stalmaster	1927	2021
nm0072328	Jean Benoît-Lévy	1888	1959
nm7223125	M. Marcel	\N	\N
nm1109157	Edmond Floury	\N	\N
nm6701319	Kayla Erickson	\N	\N
nm7752601	Jaden Waldman	\N	\N
nm1029506	Erin Fritch	\N	\N
nm2404202	Jamie Teehan	\N	\N
nm0059718	Gary Baseman	1961	\N
nm1303197	Noelle Wright	\N	\N
nm3175903	Jennie Lupinacci	\N	\N
nm5647541	Richard Hill	\N	\N
nm10829166	Seán Ó Cearbhaill	\N	\N
nm4224187	Vani Bhojan	1988	\N
nm10662677	Saran Rajesh	\N	\N
nm10625384	Suresh Krishna	\N	\N
nm11373137	S. Sekilar	\N	\N
nm8013772	Justin S Blackburn	\N	\N
nm6976648	Ian Wallace	\N	\N
nm5056359	Eric Moots	\N	\N
nm6341627	Bronsen Bloom	\N	\N
nm0216311	Leo Delaney	1885	1920
nm9061201	Mohamed Aboelela	\N	\N
nm8733540	Stephanie Corey	\N	\N
nm9061203	Phil Daquingan	\N	\N
nm3500018	Sara Dashty	\N	\N
nm9061207	Audreya Deshazier	\N	\N
nm6341616	Robbie Dias	\N	\N
nm8226020	Anthony Dionisio	\N	\N
nm9301906	Jesse Duncan	\N	\N
nm9061212	Carolin Eckert	\N	\N
nm9061213	Elena Everett	\N	\N
nm8264629	Ali Adhami	\N	\N
nm6219953	Katelyn Gonsalves	\N	\N
nm8182447	Nicole Sim	\N	\N
nm9061224	Ardeshir Adhami	\N	\N
nm7987001	Ali Adhami	\N	\N
nm1726097	Lance Smith	1978	\N
nm2212054	Kristi Boyd	\N	\N
nm2317283	Jonathan Mills	\N	\N
nm0284112	Christopher Foley	\N	\N
nm10151558	Abdullah Ouro Agouda	\N	\N
nm13591175	Eline Hedum Andersen	\N	\N
nm10746200	Mathias Bram	\N	\N
nm10151559	Elias Demoniere	\N	\N
nm10151553	Jenny Evensen	2006	\N
nm1097997	Jannike Kruse	1975	\N
nm10151556	Ole Didrik Laake	\N	\N
nm10151557	Ebba Lindgren	\N	\N
nm10151551	Anne Wisløff	\N	\N
nm1681247	Lars Apneseth	\N	\N
nm6491406	Ria Atayde	\N	\N
nm4467592	Yam Concepcion	\N	\N
nm4039466	Yen Santos	\N	\N
nm4028954	Carlo Po Artillaga	\N	\N
nm2770647	Cathy Camarillo	\N	\N
nm4765440	Raymund Barcelon	\N	\N
nm3530207	Tanya Bautista	\N	\N
nm3187410	Chie Floresca	\N	\N
nm9460113	Arnold Galicia	\N	\N
nm4568437	Mavic Tagbo	\N	\N
nm2794391	Bernie Diasanta	\N	\N
nm12272475	John Paul Ponce	\N	\N
nm5753521	Noor Agha Ahmadi	\N	\N
nm12924276	Mahdi Alizadeh	\N	\N
nm13438621	Mahdi Ebadi	2002	\N
nm6264176	Hasiba Ebrahimi	\N	\N
nm2489612	Nader Fallah	1973	\N
nm10178122	Isa Hosseini	\N	\N
nm16145699	Amir Ghafoor Sad Khosravi	\N	\N
nm13662549	Malikdelha	1994	\N
nm6264178	Masoud Mirtaheri	\N	\N
nm6264177	Alireza Ostadi	\N	\N
nm6264175	Jamshid Mahmoudi	1983	\N
nm6264179	Navid Mahmoudi	\N	\N
nm6264180	Mehdi Zadeh Sahand	\N	\N
nm2772026	Morteza Ghafoori	\N	\N
nm2345207	Sepideh Abdolvahab	\N	\N
nm5006183	Abtin Barghi	\N	\N
nm13329636	Andrew Clough	\N	\N
nm13329635	Timothy Clough	\N	\N
nm13329637	Joshua Clough	\N	\N
nm13329638	Russell Clough	\N	\N
nm13329639	Tom Clough	\N	\N
nm0086500	Brian Blake	\N	\N
nm1899546	Stephen Clarke	\N	\N
nm0120078	Terence Bulley	\N	\N
nm0994038	Stephen Foster	\N	\N
nm1495959	Henry Nield	\N	\N
nm2710152	Kelvin Hendrie	1934	1998
nm10948949	Marcel Seeger	\N	\N
nm9513711	Anne Willmes	1978	\N
nm11017812	Antje Zimmermann	\N	\N
nm0008570	Jorge Enrique Abello	1968	\N
nm0398431	Luis Fernando Hoyos	\N	\N
nm0508279	Zharick León	1974	\N
nm0609969	Santiago Moure	\N	\N
nm0755742	Kathy Sáenz	\N	\N
nm0539894	Víctor Mallarino	1957	\N
nm1886661	Fabiola Carrillo	\N	\N
nm1319754	Sebastián Ortega	1973	\N
nm9258784	Patricia Rodriguez	\N	\N
nm2266161	Jaime Andrés Duque	\N	\N
nm1872481	Camilo Escobar	\N	\N
nm1623395	Frank Roberts	\N	\N
nm3018168	Alan J. Sanders	\N	\N
nm4959058	Tommy Dean	\N	\N
nm4953734	Chuck Shropshire	\N	\N
nm4952742	Greg Hill	\N	\N
nm4953555	George Robinson	\N	\N
nm3818520	Susan Del Monico	\N	\N
nm4953583	John Broaddus	\N	\N
nm4952602	Tommy Dean	\N	\N
nm4184944	Susan Delmonico	\N	\N
nm4952642	Mike Green	\N	\N
nm1315654	Mathias Richling	1953	\N
nm9255499	Nadine Bhabha	\N	\N
nm5068619	Gwenlyn Cumyn	\N	\N
nm2802873	Karen Knox	\N	\N
nm4821110	Kelly Paoli	\N	\N
nm3854929	Lisa Conway	\N	\N
nm2684458	Victoria Long	\N	\N
nm3152285	Christine Armstrong	\N	\N
nm11723672	Palesa Thembe	\N	\N
nm4491047	Vardi Fivaz	1990	\N
nm12913083	Alshe du Plessis	\N	\N
nm0784818	Peter Serafinowicz	1972	\N
nm1969645	Griffin Newman	1989	\N
nm2038170	Valorie Curry	1986	\N
nm0385639	Brendan Hines	1976	\N
nm2199657	Yara Martinez	1979	\N
nm0817647	Scott Speiser	\N	\N
nm0876138	Alan Tudyk	1971	\N
nm0890808	Liz Vassey	1972	\N
nm0435678	Patricia Kalember	1956	\N
nm0154236	François Chau	1959	\N
nm0864268	Romeo Tirone	\N	\N
nm0249421	Ben Edlund	1968	\N
nm3597491	Francesca Gailes	\N	\N
nm1719286	Adam Starks	1978	\N
nm2697897	Mark Ganek	\N	\N
nm0616793	Margo Myers	\N	\N
nm0911320	Patrick Warburton	1964	\N
nm2092016	Chris Bacon	1977	\N
nm0721012	William Rexer	\N	\N
nm1319486	Tucker Marolf	\N	\N
nm0752861	Suzanne Ryan	\N	\N
nm0440426	John Kasarda	\N	\N
nm8741635	Rune Fjeld Olsen	1973	\N
nm8745422	Lars Haakon Storm Bakken	1978	\N
nm8747065	Nicklas Halvorsen	1995	\N
nm5909741	Nadia Bellete	\N	\N
nm1615516	Marianne Bourg	\N	\N
nm3702531	Randy Jay Burrell	\N	\N
nm1090201	Alison Coen	\N	\N
nm1029357	Genevieve Farrell	1989	\N
nm0437446	Susy Kane	1978	\N
nm1130991	Terry Maratos	\N	\N
nm1285178	Henry Nixon	\N	\N
nm1834096	Claire van der Boom	1983	\N
nm1898286	Luke Eve	\N	\N
nm0343568	Adam Grossetti	\N	\N
nm1697543	Rebecca Hu	\N	\N
nm2307111	Benjamin Speed	1979	\N
nm4069363	Garrett O'Brien	\N	\N
nm1892794	Melanie Annan	\N	\N
nm3243899	Catherine van der Rijt	\N	\N
nm1806174	Gypsy Taylor	\N	\N
nm2004474	Jesse Watters	1978	\N
nm2651530	Dana Perino	1972	\N
nm0931002	Juan Williams	1954	\N
nm2134385	Dagen McDowell	1969	\N
nm0453258	Brian Kilmeade	1963	\N
nm1712191	Louise Wolff	1978	\N
nm1235306	Peter Kær	1961	\N
nm0016041	Pablo Alarcón	1946	\N
nm0034147	Mimí Ardú	1956	\N
nm0038231	Daniel Aráoz	\N	\N
nm0044164	Laura Azcurra	1981	\N
nm0078286	Florencia Bertotti	1983	\N
nm1139399	Manuela Bravo	\N	\N
nm0130693	Héctor Calori	\N	\N
nm0136078	Sabrina Carballo	1982	\N
nm0140060	Juan Carrasco	\N	\N
nm0031653	Rodolfo Antúnez	\N	\N
nm0836809	Adrián Suar	1968	\N
nm1989511	Diego Vago	1974	\N
nm0162946	Marcela Citterio	\N	\N
nm1531248	Leandro Calderone	\N	\N
nm1144893	Matías Bertilotti	1975	\N
nm1436634	Diego Monk	\N	\N
nm1146332	Pablo Storino	\N	\N
nm0018008	Alejandro Alem	\N	\N
nm0438467	Bharat Kapoor	\N	\N
nm11652686	Harsh Khurana	\N	\N
nm1106058	Sudhir Pandey	1940	\N
nm2068077	Minakshi Sahani	\N	\N
nm0961737	Gracy Singh	1980	\N
nm1662277	Shreyas Talpade	1976	\N
nm3713098	Ritu Vashisht	\N	\N
nm11652685	Sanjiv Bhattacharya	\N	\N
nm12442914	Sapna Bhattacharya	\N	\N
nm1021961	Mir Muneer	\N	\N
nm5608222	Anupama Mishra	\N	\N
nm1995429	Bharat Nerkar	\N	\N
nm1867789	Mahesh Mistry	\N	\N
nm2159225	Chuck Thompson	1921	2005
nm0770919	Chris Schenkel	1923	2005
nm1850865	Alan Ameche	1933	1988
nm1527278	Raymond Berry	1933	\N
nm3484227	Ray Brown	1936	2017
nm1453208	Rosey Brown	1932	2004
nm3377682	Charlie Conerly	1921	1996
nm1917649	Lindon Crow	1933	2018
nm3984872	Milt Davis	1929	2008
nm3960806	Darrell Dess	1935	\N
nm11006798	Ray Tracy	\N	\N
nm11006799	Victor Tracy	\N	\N
nm9506111	Indrajit Bose	\N	\N
nm9506112	Geetashree Roy	\N	\N
nm9506110	Babu Banik	\N	\N
nm10865868	Ashita Bhattacharya	\N	\N
nm12629431	Sayan Chowdhury	\N	\N
nm8758949	Lara CumKitten	1992	\N
nm9393142	Bonnie Stylez	\N	\N
nm2751803	Pam Andrews	\N	\N
nm0058831	Jamie Bartlett	1966	2022
nm0419562	Tina Jaxa	\N	\N
nm10828789	Heather Cooke	\N	\N
nm2345184	Rolie Nikiwe	\N	\N
nm1791933	Neil McCarthy	\N	\N
nm2000028	Joel Assaizky	1973	\N
nm1549016	Kenneth Elvebakk	\N	\N
nm1773618	Joost van der Valk	\N	\N
nm7489759	CJ Mirra	\N	\N
nm2795023	Mike Schneier	\N	\N
nm3348512	Sam Billinge	\N	\N
nm0000092	John Cleese	1939	\N
nm0768795	Prunella Scales	1932	\N
nm0755133	Andrew Sachs	1930	2016
nm0095665	Connie Booth	1940	\N
nm0544860	André Maranne	1926	2021
nm0687746	Steve Plytas	1913	1994
nm0193862	Allan Cuthbertson	1920	1988
nm0915413	Ann Way	1915	1993
nm0129634	Richard Caldicot	1908	1995
nm0403176	Betty Huntley-Wright	1911	1993
nm0203791	John Howard Davies	1939	2011
nm0933288	Dennis Wilson	1920	1989
nm0753376	Bob Rymer	\N	\N
nm0454328	Peter Kindred	\N	\N
nm8421390	Kedar Ghimire	\N	\N
nm9069670	Kunjana Ghimire	\N	\N
nm7450721	Wilson Bikram Rai	\N	\N
nm12778090	Daman Rupakheti	\N	\N
nm12778091	Kunjan Bhattarai	\N	\N
nm8804568	Sitaram Kattel	\N	\N
nm12778092	Suman Khatiwada	\N	\N
nm8511171	Chetan Sapkota	\N	\N
nm12778093	Dilip Bista	\N	\N
nm10740280	Prabin Bhatta	\N	\N
nm0382268	David Heyman	1961	\N
nm0001565	Mike Newell	1942	\N
nm0000146	Ralph Fiennes	1962	\N
nm0278973	Jany Temime	\N	\N
nm0240183	Nick Dudman	1958	\N
nm0180732	Theresa Corrao	\N	\N
nm1074153	Ben Shepherd	\N	\N
nm0705356	Daniel Radcliffe	1989	\N
nm0593437	Jim Mitchell	\N	\N
nm0005042	Jason Isaacs	1963	\N
nm1011659	Giorgos Mataragas	\N	\N
nm0900710	Bram van der Vlugt	1934	2020
nm0602131	Irene Moors	1967	\N
nm0098388	Carlo Boszhard	1969	\N
nm0449215	Michiel Kerbosch	1947	\N
nm0620740	Nance Coolen	1973	\N
nm2328683	Berco de Vos	\N	\N
nm2334673	Jaap Jongbloed	1955	\N
nm1490322	Hans Kazàn	1953	\N
nm0740231	Danny Rook	1971	\N
nm2285610	Armando de Boer	\N	\N
nm2328379	Sascha van der Voort	\N	\N
nm0700604	Frans-Jan Punt	\N	\N
nm2329312	Gerard Antonioli	\N	\N
nm0102586	Ed Braad	\N	\N
nm1616627	Mouli Ganguly	1982	\N
nm0438632	Ram Kapoor	1973	\N
nm7003402	Pranav Misshra	\N	\N
nm3884105	Sanjay Nath	\N	\N
nm2612592	Pawan Shankar	\N	\N
nm1587175	Mona Singh	1981	\N
nm2799219	Sakshi Tanwar	1973	\N
nm9505937	Ibrar Yakub	\N	\N
nm6184357	Mayuri Roychoudhury	\N	\N
nm12515099	Leena Sarvjeet Chaubey	\N	\N
nm0047505	Stewart Bailey	\N	\N
nm0124133	George W. Bush	1946	\N
nm0001051	Bill Clinton	1946	\N
nm0000413	Janeane Garofalo	1964	\N
nm1757719	Danny Goldberg	\N	\N
nm0580300	Rick Mercer	1969	\N
nm1765149	John Ortman	\N	\N
nm0495733	Nicole Leblanc	1941	2017
nm0300595	Daniel Gadouas	1947	\N
nm0610092	Katerine Mousseau	1951	\N
nm0661547	Denys Paris	\N	\N
nm0041451	Monique Aubry	1921	2017
nm0240754	Pierre Dufresne	1927	1984
nm0240721	Yvon Dufour	1931	1999
nm0304820	Roger Garand	1921	1987
nm0479997	Andrée Lachapelle	1931	2019
nm0688524	Gérard Poirier	1930	2021
nm0874066	Yvon Trudel	\N	2018
nm0310420	Pierre Gauvreau	1922	2011
nm0014052	Nils Ahlroth	1920	1991
nm0512512	Maj Lindström	1922	2011
nm2901618	Ulla Sonesson	\N	\N
nm0197168	Gus Dahlström	1906	1989
nm0259826	Håkan Ersgård	1934	1998
nm2901669	Frank Andersson	\N	\N
nm0921653	Jacques Werup	1945	2016
nm0924165	Åke Whilney	1932	1985
nm0067089	Aina Behring	1928	\N
nm1496929	Marie Finnson	\N	\N
nm0785730	Rolf Sersam	1946	\N
nm4515123	Jerrica Benton	\N	\N
nm7476667	Patrick Brogan	\N	\N
nm9790593	Yagmur Çokgenç	1999	\N
nm9985851	Oguzhan Kayra Koc	1998	\N
nm10934994	Sifanur Gül	1997	\N
nm10934993	Berk Bakioglu	1999	\N
nm11047764	Didem Aygün	\N	\N
nm8557415	Irfan Kilinc	1980	\N
nm9657831	Nur Yazar	1982	\N
nm10748626	Nevzat Can	\N	\N
nm11047765	Tuana Tuzman	\N	\N
nm11047766	Yagmur Ilgim Öztekin	\N	\N
nm2129968	Gürsel Ates	1961	\N
nm4908114	Berguzar Demiroglu	\N	\N
nm4907854	Miriban Sahin	\N	\N
nm11047768	Buket Ç. Çartil	\N	\N
nm3219731	Deniz Aydenk	\N	\N
nm11047773	Aysegül Bostanci Bektas	\N	\N
nm4826917	Tufan Bora	\N	\N
nm11047772	Tunahan Civelek	\N	\N
nm1754670	Nilgun Sagyasar	\N	\N
nm5152980	Volkan Akmehmet	1977	\N
nm2172714	Inanc Sanver	1979	\N
nm10110039	Serkan Erzin	\N	\N
nm7684298	Özgür Cihan Yavuz	\N	\N
nm11047770	Tayfun Kirtay	\N	\N
nm10110042	Serif Onur Pasali	\N	\N
nm10110044	Naci Erdem Sefaat	\N	\N
nm11047769	Serdar Yücel	\N	\N
nm0562916	Simon Mayo	1958	\N
nm1021361	Alan Dedicoat	1954	\N
nm3799208	Vishal Singh	\N	\N
nm14569958	Nihan Günay	\N	\N
nm14570289	Seval Sekerci	\N	\N
nm0567238	Shanna McCullough	1960	\N
nm0395121	Mike Horner	1955	\N
nm0120178	Robert Bullock	\N	\N
nm0528783	Porsche Lynn	1962	\N
nm0922301	Randy West	1947	2024
nm0000440	Nina Hartley	1959	\N
nm0014959	Aja	1963	2006
nm0247624	Jon Martin	1947	\N
nm0820503	Charli St. Cyr	\N	\N
nm0289245	Scotty Fox	\N	\N
nm0193721	Marc Cushman	1954	\N
nm0313559	Nicole George	\N	\N
nm0020694	Joni Allen	\N	\N
nm0097040	Roscoe Born	1950	2020
nm0114439	Philip Brown	1958	\N
nm1271152	Philip Anthony-Rodriguez	\N	\N
nm0050584	Alimi Ballard	1977	\N
nm0151645	Carlotta Chang	1970	\N
nm0188665	Gloria Cromwell	1927	2008
nm0231283	John Doman	1945	\N
nm0245668	Melissa Dye	1967	\N
nm0264603	Joel Fabiani	1936	\N
nm2552851	Joe Cotugno	\N	\N
nm4268588	Dana Herko	\N	\N
nm0260547	Barbara Esensten	1937	2012
nm0113780	James H. Brown	\N	\N
nm0996693	Carolyn Culliton	\N	\N
nm1161772	George Barimo	\N	\N
nm0737998	Laura Rakowitz	\N	\N
nm0125021	Laurie Butler	\N	\N
nm2693641	Rama Yade	\N	\N
nm0617588	Georges Méliès	1861	1938
nm10369627	Bhanu Chander	\N	\N
nm10625672	Dr.Sharmila	\N	\N
nm11536983	Shruti	\N	\N
nm11536982	Kavitha Bharathi	\N	\N
nm11517589	Saroja Muniyandi	\N	\N
nm11517590	Jyothi Thirumurugan	\N	\N
nm11517591	Sarath Chandar	\N	\N
nm11536991	D. Ashok Devaraj	\N	\N
nm11536992	C. Ashok	\N	\N
nm11536987	Ramesh	\N	\N
nm11536993	J. Somuvel	\N	\N
nm7792619	David Delvin	1939	2018
nm16104540	Vincent Duggleby	1939	2024
nm7076200	Brian Jackson	1932	1983
nm16104541	Pat Petch	\N	\N
nm0989397	Smriti Malhotra-Irani	1976	\N
nm0324845	Vikram Gokhale	1940	2022
nm0839820	Sushant Singh	1972	\N
nm2446817	Karan Veer Mehra	1982	\N
nm1618188	Santram Varma	\N	\N
nm10327688	Garima Goyal	\N	\N
nm0659238	Kamlesh Pandey	\N	\N
nm7735837	Jinesh Patel	\N	\N
nm7867356	Raju Halasagi	\N	\N
nm10327689	Narem Majiaha	\N	\N
nm4172579	Fernando Dominguez	\N	\N
nm4770249	Pablo Grinjot	\N	\N
nm4173146	Natalia de la Vega	1986	\N
nm8230504	Pablo Giralt	1974	\N
nm8374899	Álex Candal	\N	\N
nm8933200	Gustavo Cherquis	\N	\N
nm8374892	Juan Furlanich	\N	\N
nm5716478	Claudio Husaín	1974	\N
nm8766849	Samuel Vargas	\N	\N
nm12075643	François Ponchelet	\N	\N
nm2055007	Paul Quilès	1942	2021
nm1335407	Tessie Quintana	1931	1969
nm1340404	Eddie Del Mar	1919	1986
nm0958144	Zaldy Zshornack	1937	2002
nm0393094	Ishirô Honda	1911	1993
nm1288471	Teodorico C. Santos	\N	\N
nm0443227	Shigeru Kayama	1904	1975
nm0613609	Takeo Murata	1910	1994
nm0849083	Tomoyuki Tanaka	1910	1997
nm0379391	Cirio H. Santiago	1936	2008
nm0041653	Ariston Avelino	\N	\N
nm16633346	Don Franklin	\N	\N
nm15255741	Jill Bishop	\N	\N
nm16635083	Muffitt Franklin	\N	\N
nm16545735	Stanley Porter	\N	\N
nm1183930	Terry Griffiths	1947	2024
nm11138476	Rachitha Mahalakshmi	\N	\N
nm3849678	Santhoshi	\N	\N
nm11553664	Shrikar	\N	\N
nm11533917	M.K. Arunthavaraja	\N	\N
nm5426265	Ponkumaran	\N	\N
nm0704654	Radhika Sarathkumar	1963	\N
nm1069637	Brook Mahealani Lee	1971	\N
nm0707040	Alexandra Raines Lewinson	\N	\N
nm1324700	Jorge Zabaleta	1970	\N
nm0523486	Mariana Loyola	1975	\N
nm1417272	Gonzalo Valenzuela	1978	\N
nm3014822	María Gracia Omegna	1984	\N
nm0616391	Daniel Muñoz	1966	\N
nm6723419	María Fernanda Martínez	\N	\N
nm1274712	Claudio Arredondo	1962	\N
nm0488579	Fernando Larraín	1962	\N
nm1194874	Katyna Huberman	1971	\N
nm2519362	Álvaro Gómez	\N	\N
nm3778967	Jonathan Cuchacovich	\N	\N
nm1907009	Claudia Villarroel	\N	\N
nm4091593	Lexi Graboski	\N	\N
nm3515932	Zarah Kulczycki	\N	\N
nm3648630	Matt Gossen	1988	\N
nm0005234	Donna Mills	1940	\N
nm0449242	Ken Kercheval	1935	2019
nm4198268	Sarah Wing	\N	\N
nm0153768	Harry Chase	\N	\N
nm0018279	Bevin Alexander	1929	\N
nm4919429	Sidney Brown	\N	\N
nm5044853	Samuel Willard Crompton	\N	\N
nm1809553	Frederick M. Franks	\N	\N
nm2563116	John Gresham	\N	\N
nm0358081	Nigel Hamilton	1944	\N
nm5045597	Stonewall Jackson	1824	1863
nm4632501	Stuart Lockhart	\N	\N
nm0666567	George S. Patton	1885	1945
nm1680475	Craig Constantine	\N	\N
nm0032411	Tudor Applen	\N	\N
nm0106676	Terri Breed	\N	\N
nm0579451	Jon Menell	\N	\N
nm3375878	Matt Atchity	\N	\N
nm2234385	Alonso Duralde	1967	\N
nm4074975	Christy Lemire	\N	\N
nm3567922	Meredith Placko	1981	\N
nm1502382	Ben Mankiewicz	1967	\N
nm3598310	Andrew Napier	\N	\N
nm3106325	Cenk Uygur	1970	\N
nm0913330	Wisner Washam	\N	\N
nm3103994	Bud Kloss	\N	\N
nm0195748	Joan D'Incecco	\N	2016
nm0095308	Arturo Bonín	1943	2022
nm0108553	Pablo Brichta	1949	2016
nm0598184	José María Monje	1967	\N
nm0681493	Ana María Picchio	1946	\N
nm0855777	Rita Terranova	1957	\N
nm0727345	Alberto Rinaldi	\N	\N
nm0107782	Alma Bressan	1928	1999
nm1776788	Jorge Luis Suárez	\N	\N
nm1535393	Trevor Phillips	1953	\N
nm0103873	Jean-Claude Bragard	\N	\N
nm4921585	Pethro Themba Mbole	\N	\N
nm4921422	Vusumuzi Ndumo	\N	\N
nm3271324	Michael J. Rix	\N	\N
nm1242681	Charles Hess	\N	\N
nm1699451	Danielle Lozeau	1987	\N
nm1407183	Misty Lockheart	\N	\N
nm1728645	Naomi Lockheart	\N	\N
nm1747363	Wil Berthaud	\N	\N
nm1488998	Mike Bash	\N	\N
nm1748864	Kristin Wishoski	\N	\N
nm1969109	Alex Charlow	1981	\N
nm1879820	Jayk Gallagher	\N	\N
nm1729691	Jason Sirotin	1977	\N
nm1732957	Trey Gregory	\N	\N
nm1729375	Daren McKelvey	\N	\N
nm1579661	Ada Ameh	1974	2022
nm2119056	Chinedu Ikedieze	1977	\N
nm2118220	Charles Inojie	\N	\N
nm10742443	Seun Adebajo Osigbesan	\N	\N
nm6170428	Olumide Oworu	\N	\N
nm7713658	Susan Pwajok	\N	\N
nm9348973	Mazi Akinola	\N	\N
nm10742446	M.O. Bassey	\N	\N
nm14078730	Uduak Ekong	\N	\N
nm6907281	Tobe Osigwe	\N	\N
nm8360284	Sei Shiraishi	1998	\N
nm2601626	Dean Fujioka	1980	\N
nm3097216	Keisuke Watanabe	\N	\N
nm6425585	Toshiki Seto	1995	\N
nm2196280	Manami Higa	1986	\N
nm3749739	Hinako Sano	1994	\N
nm2205131	Eri Tokunaga	1988	\N
nm9864890	Shugo Nakamura	\N	\N
nm12052012	Taiyu Fujiwara	\N	\N
nm11906822	Kyosuke Tani	1990	\N
nm0006842	Julio Alemán	1933	2012
nm0729153	Amparo Rivelles	1925	2013
nm0920628	Ariadne Welter	1930	1998
nm0962727	José Morris	\N	2024
nm3520318	Luis Antonio Camargo	\N	\N
nm0658751	Pablo Palomino	\N	\N
nm11064126	Aziza	\N	\N
nm8898805	Mohammad Stanekzai	\N	\N
nm11597221	Sue Emmott	\N	\N
nm6669184	Zakia	\N	\N
nm4768063	Amir Taheri	\N	\N
nm11597222	Glyn Davies	\N	\N
nm0800082	Bob Simon	1941	2015
nm7825113	Hassan Salameh	\N	\N
nm7825114	Mohammed Abu Wardeh	\N	\N
nm4169449	Michael H. Gavshon	\N	\N
nm3182969	Hugo Arbues	2004	\N
nm9277847	Mirta Damiolini	\N	\N
nm9277846	Rush Smith	\N	\N
nm9166552	Marieta Caballero	\N	\N
nm9235559	Daniel Villaseñor	1996	\N
nm9277848	Maese César	\N	\N
nm9277849	Fernando Montesinos	\N	\N
nm9034406	Antonio Sanz Jiménez	\N	\N
nm9277850	Paula Carrizo Damiolini	\N	\N
nm2154735	Hadar Levi	1977	\N
nm1151473	Sofi Tzadka	1975	\N
nm1508141	Tal Mosseri	1975	\N
nm1505248	Liat Achiron	1974	\N
nm1096856	Miki Geva	1979	\N
nm1521028	Rodrigo Gonzáles	1981	\N
nm2183684	Shira Kedem-Katzenelenbogen	1979	\N
nm1132738	Kobi Machat	1973	\N
nm0578750	Oded Menashe	1969	\N
nm1343419	Sivan Sasson	1976	\N
nm4268699	Juan Largo	\N	\N
nm15055304	Blue Vixen	\N	\N
nm8473220	Helena Howard	\N	\N
nm0000332	Don Cheadle	1964	\N
nm0607865	Emily Mortimer	1971	\N
nm9966974	Jan Luis Castellanos	1995	\N
nm7650817	Belissa Escobedo	1998	\N
nm6041919	Kayleigh Gilbert	1993	\N
nm4158239	Dana Gourrier	1979	\N
nm7036568	Ema Horvath	1994	\N
nm1839980	Kaiwi Lyman	\N	\N
nm5850871	Harvey Zielinski	\N	\N
nm0362566	Catherine Hardwicke	1955	\N
nm0509340	Jeffrey Lieber	\N	\N
nm3726055	Charlie McDonnell	1990	\N
nm1801321	Bianca Sams	\N	\N
nm3308985	Michael J. McGarry	\N	\N
nm2345212	Nora Kroll-Rosenbaum	\N	\N
nm3622531	Josie Azzam	\N	\N
nm3776598	Adam Reamer	\N	\N
nm0504060	Arthur Leslie	1899	1970
nm0817515	Doris Speed	1899	1994
nm0064805	Ivan Beavis	1926	1997
nm0449049	Doreen Keogh	1924	2017
nm0608995	Jennifer Moss	1945	2006
nm0141340	Violet Carson	1898	1983
nm0117177	Margot Bryant	1897	1988
nm0138984	Lynne Carol	1914	1990
nm0730075	William Roache	1932	\N
nm0671471	Frank Pemberton	1914	1971
nm0573190	Chris McMaster	1925	1995
nm0741220	Adele Rose	1933	2020
nm0449958	H.V. Kershaw	1918	1992
nm3080119	Lorenzo Richelmy	1990	\N
nm0938950	Benedict Wong	1970	\N
nm0001040	Joan Chen	1961	\N
nm0269419	Pierfrancesco Favino	1969	\N
nm0950935	Rick Yune	1971	\N
nm0950620	Ron Yuan	1973	\N
nm3600780	Remy Hii	1987	\N
nm4356709	Zhu Zhu	1984	\N
nm0943179	Tom Wu	1972	\N
nm2054113	Mahesh Jadu	1982	\N
nm0002399	Alik Sakharov	1959	\N
nm0299301	John Fusco	\N	\N
nm4063095	Matthew White	\N	\N
nm3250138	Noelle Valdivia	\N	\N
nm3083758	Collin Creighton	\N	\N
nm0739063	Bruce Marshall Romans	\N	\N
nm0003183	Richard Sharkey	\N	\N
nm2023699	Eric V. Hachikian	\N	\N
nm0621829	Peter Nashel	\N	\N
nm0835371	Gavin Struthers	\N	\N
nm0378028	William Henry	\N	\N
nm7283570	Jessica Lewis	\N	\N
nm4426070	Milica Stankovic	\N	\N
nm0453344	Lilly Kilvert	1950	\N
nm13552278	Shivangi Vyas	\N	\N
nm13552277	Gaurangi Vyas	\N	\N
nm4910628	Gaurav Chakrabarty	1987	\N
nm5006477	Ridhima Ghosh	1990	\N
nm16418480	Anomitra Chatterjee	\N	\N
nm4178979	Chrissy Teigen	1985	\N
nm1100866	Dylan Verrechia	1976	\N
nm12089739	Cathrine Westergaard	\N	\N
nm1780331	Riis	\N	\N
nm7395332	James Rees	\N	\N
nm2934306	Mark Simpson	\N	\N
nm3913317	Cam Ralph	\N	\N
nm5645692	Nicholas Richard	\N	\N
nm10862251	Naomi Young	\N	\N
nm9078036	Karin Fitzhardinge	\N	\N
nm9078037	Clare Gerber	\N	\N
nm10862255	Bryson Hall	\N	\N
nm10862254	Jade Suine	\N	\N
nm0019950	Jed Allan	1935	2019
nm0060248	William Bassett	1935	\N
nm0114422	Peter Brown	1935	2016
nm0279421	Cindy Fisher	1959	\N
nm0291710	Mary Frann	1943	1998
nm0004984	Deidre Hall	1947	\N
nm0540103	Edward Mallory	1930	2007
nm0584356	Gregory Michaels	\N	\N
nm0697753	Elaine Princi	1946	\N
nm3050857	Jocelyn Somers	\N	\N
nm0546068	Ann Marcus	1921	2014
nm0381246	Jack Herzberg	1916	1992
nm3031925	Trudy Soss	\N	\N
nm11749579	Lary Kidd	\N	\N
nm10427784	Dan & Pag	\N	\N
nm3998885	Jean Arousi	\N	\N
nm5582541	Charles Bellerive	\N	\N
nm6235649	Joey Bracken	\N	\N
nm3499154	Gemma Laurelle	\N	\N
nm8358149	Ian Russell	\N	\N
nm0800190	Jay Simon	\N	\N
nm5261058	Aimee Smith	1993	\N
nm12246354	Andres Tallos	\N	\N
nm12246355	Isabel Tallos	\N	\N
nm0005126	Matt Lauer	1957	\N
nm0000230	Sylvester Stallone	1946	\N
nm0001659	Christopher Reeve	1952	2004
nm0000392	Morgan Fairchild	1950	\N
nm0945920	Jan Yanehiro	1948	\N
nm1941430	Steve Fox	\N	\N
nm4268419	Erik Smith	\N	\N
nm6153896	KaiCarra	1967	\N
nm0000691	John Waters	1946	\N
nm6193000	Nathan J Kress	\N	\N
nm0280840	Fannie Flagg	1944	\N
nm0001613	Bernadette Peters	1948	\N
nm0758130	Soupy Sales	1926	2009
nm1751789	Marlon Singleton	\N	\N
nm1761346	Renee Moncada-McElroy	\N	\N
nm2452370	Victoria Kirk	\N	\N
nm1939019	Shirley Tatum	\N	\N
nm1893767	Michael Hoff	\N	\N
nm1744406	Rico Corona	\N	\N
nm0829716	Patrick Alexander Stewart	\N	\N
nm1358898	Andres Alegria	\N	\N
nm1992491	August Beucke	\N	\N
nm1522872	Nithya Das	\N	\N
nm1559594	Y.G. Mahendran	1950	\N
nm1667501	Sujitha	1983	\N
nm0433887	K.R. Vijaya	1948	\N
nm12766418	Selva Pandiyan	\N	\N
nm10045188	P.S. Dharan	\N	\N
nm11718425	Shankar K	\N	\N
nm9907615	Amelia Dimoldenberg	1994	\N
nm5628976	Donaeo	\N	\N
nm1295922	Dave Cody	\N	\N
nm16283843	Jim Jaggers	\N	\N
nm16290158	Sarah Quinn	\N	\N
nm16290070	Gary Roedemeier	\N	\N
nm11534291	Nikitha Rajesh	\N	\N
nm0419691	Poornima Jayaram	\N	\N
nm8165203	Anitha Venkat	\N	\N
nm12112561	Caroline Hiltrud	\N	\N
nm12559941	Durga Saravanan	\N	\N
nm12559940	Jyothi Arunachalam	\N	\N
nm12559939	Vasakar Kaaliyappan	\N	\N
nm11090817	S. Sabreesh Kumar	\N	\N
nm10633834	Sekar Sai Bharath	\N	\N
nm9820711	T.K.S. Kalaivaanan	\N	\N
nm12447857	Bharathkumar	\N	\N
nm12559942	Pandidurai	\N	\N
nm13695318	Felipe Barenco	\N	\N
nm2337437	Sandra Barata Belo	\N	\N
nm0272899	Pêpê Rapazote	1970	\N
nm0217015	Marco Delgado	1972	\N
nm1067411	Isabel Abreu	1978	\N
nm4531193	Bárbara Lourenço	\N	\N
nm4395431	Luís Garcia	\N	\N
nm7308973	José Condessa	1997	\N
nm0723113	João Ricardo	1959	2017
nm0392952	Cristina Homem de Mello	1965	\N
nm0284649	António Fonseca	1953	\N
nm2430776	Manuel Pureza	1984	\N
nm2355477	Diego Schliemann	\N	\N
nm0854104	Duarte Teixeira	\N	\N
nm3861808	Hugo Xavier	\N	\N
nm3053362	Joana Andrade	\N	\N
nm2792470	Alexandre Castro	\N	\N
nm2384839	Cláudia Chéu	1978	\N
nm2405419	Mário Cunha	1971	\N
nm8394811	Francisco Barbosa	\N	\N
nm0870410	Miguel Trabucho	\N	\N
nm0284454	Oleg Fomin	1962	\N
nm1682614	Aleksandr Bukharov	1975	\N
nm0060694	Sergey Batalov	1957	\N
nm1979389	Anna Azarova	1980	\N
nm0045388	Marat Basharov	1974	\N
nm1113851	Stanislav Duzhnikov	1973	\N
nm0069783	Anatoliy Belyy	1972	\N
nm2605769	Aleksey Frandetti	1984	\N
nm0836534	Evgeniy Stychkin	1974	\N
nm1983189	Nataliya Dogadina	\N	\N
nm0643570	Yuriy Obukhov	1950	\N
nm2812375	Aleksey Ryazantsev	1958	\N
nm0797681	Vasiliy Sikachinskiy	\N	\N
nm0632368	Derek Nimmo	1930	1999
nm0915154	Gwendolyn Watts	1937	2000
nm0460891	Elizabeth Knight	1944	2005
nm0510586	Pik Sen Lim	1944	\N
nm0446332	Dermot Kelly	1917	1980
nm0613685	George Murcell	1925	1998
nm0746772	Patsy Rowlands	1931	2005
nm0857160	Leon Thau	1926	2010
nm0156254	Ronald Chesney	1920	2018
nm0938132	Ronald Wolfe	1922	2011
nm0834079	John Street	1914	2008
nm0852280	Don Taylor	\N	\N
nm0130370	William Callaway	1940	\N
nm0137262	Adam Carl	1971	\N
nm0270681	Ron Feinberg	1932	2005
nm0427665	Buster Jones	1943	2014
nm0504489	Loren Lester	\N	\N
nm0664064	Sarah Partridge	\N	\N
nm0675432	Diane Pershing	1943	\N
nm0719115	Peter Renaday	1935	2024
nm0724224	Lou Richards	\N	\N
nm0725052	Peter Mark Richman	1927	2021
nm0316685	John Gibbs	\N	\N
nm0498061	Ray Lee	\N	\N
nm0608961	Francis Moss	\N	\N
nm0665089	Tony Pastor Jr.	\N	\N
nm0539315	Bryce Malek	\N	\N
nm0730331	Dick Robbins	\N	\N
nm0013907	John Ahern	1933	2008
nm0387672	Rick Hoberg	1952	\N
nm0404563	Bill Hutten	\N	\N
nm14181127	Glenn L. Johnson	\N	\N
nm0114728	Steven C. Brown	\N	\N
nm1335616	Madhuri Dikshit	\N	\N
nm3311444	Meera Joshi	1991	\N
nm7309933	Sameer Khandekar	1987	\N
nm5241810	Shahnawaz Pradhan	1963	2023
nm3013513	Nikhil Raut	\N	\N
nm10114485	Sayali Sanjeev	1993	\N
nm8946495	Rishi Saxena	1990	\N
nm10509707	Ajay Mayekar	\N	\N
nm14923375	Yuvrajghorpade	\N	\N
nm8316961	Jitendra Gupta	\N	\N
nm11543166	Archana Joshi	\N	\N
nm10427984	Mahesh Tagde	\N	\N
nm4785660	Stephan Heiniger	\N	\N
nm2389960	Markus Heiniger	\N	\N
nm3014964	Miguel Macaya	\N	\N
nm4509512	Calvin Dyson	1989	\N
nm0050468	Sonja Ball	1956	\N
nm1747394	Wyatt Bowen	\N	\N
nm2412872	Elana Dunkelman	\N	\N
nm0303379	Angela Galuppo	\N	\N
nm0768885	Terrence Scammell	1958	\N
nm1083489	Kevin Munroe	\N	\N
nm1599054	Francis Hanneman	\N	\N
nm9835258	Dipika Kakar	1986	\N
nm15377238	Dilip Kumar	\N	\N
nm2255484	Rashmi Sharma	\N	\N
nm3479267	Manisha Singh	\N	\N
nm2274213	Awadh Narayan Singh	\N	\N
nm12626978	Vishal Choudhary	\N	\N
nm0235494	Pia Douwes	1964	\N
nm1450399	Uwe Kröger	1964	\N
nm0473253	Nadine Krüger	1977	\N
nm8179959	Sarina Nowak	\N	\N
nm3900092	Philipp Schulte	\N	\N
nm10453676	Christina Hopp	\N	\N
nm10456233	Cornel Raatz	\N	\N
nm3633230	Jeremias Bruker	\N	\N
nm10449773	Manfred Spinnen	\N	\N
nm5208210	Ida Karolin Johansson	\N	\N
nm9788436	Lotta Karlberg	\N	\N
nm9788437	Johan Öjdahl	\N	\N
nm13047382	Nobuhisa Degawa	\N	\N
nm3293278	Masaiku Nomura	\N	\N
nm13047398	Toru Okabe	\N	\N
nm12811673	Kiran	\N	\N
nm14420268	David G. Madhan	\N	\N
nm12522623	Eric Cornish	\N	\N
nm3386635	Cash Flo	\N	\N
nm4092973	Bryan Kennison	\N	\N
nm0765715	Al Snow	1963	\N
nm1201278	Bobby Andrews	\N	\N
nm0786452	Jennifer Sevilla	1974	\N
nm0813098	Charito Solis	1935	1998
nm1931428	Gil Tejada Jr.	\N	\N
nm2038953	Galo Ador	\N	\N
nm1909970	Guy Labourasse	1927	2014
nm5001500	Phil Robertson	\N	\N
nm2210495	Kasey Kirby	\N	\N
nm1402143	Gautami Kapoor	1974	\N
nm0025611	Gogi Anand	\N	\N
nm4540894	Muzammil Desai	\N	\N
nm1837830	Sanjay Joshi	\N	\N
nm3813753	Rekha Modi	\N	\N
nm7201991	Manish Shrivastav	\N	\N
nm7559936	Sandiip Sikcand	1971	\N
nm0194567	Carlos Cámara	1934	2016
nm0345999	Blanca Guerra	1953	\N
nm0599269	Carmen Montejo	1925	2013
nm0749331	Gabriela Ruffo	1967	\N
nm0749336	Victoria Ruffo	1962	\N
nm0874248	Valentín Trujillo	1951	2006
nm0145114	Julio Castillo	\N	\N
nm2200779	Ricardo Rentería	\N	\N
nm0840805	Lucero Suárez	\N	\N
nm0879391	Carlos Téllez	\N	1994
nm0890672	Gabriel Vázquez Bulman	\N	\N
nm7510174	Ano	1998	\N
nm9785283	Aina the End	\N	\N
nm11319725	Generations From Exile Tribe	\N	\N
nm13066825	Hitsujibungaku	\N	\N
nm13406689	JO1	\N	\N
nm16632056	Kroi	\N	\N
nm6327727	Nijirô Murakami	1997	\N
nm13361541	Sakurazaka46	\N	\N
nm10302195	Soshina	\N	\N
nm1041699	Tamori	1945	\N
nm7572530	Minx Grrl	\N	\N
nm10244056	Ray	\N	\N
nm13368880	Alba Zevon	\N	\N
nm1251993	Baudoin Koenig	\N	\N
nm0729210	Angélica Rivera	1970	\N
nm0658760	Eduardo Palomo	1962	2003
nm0043609	Alexis Ayala	1965	\N
nm0592732	Maya Mishalska	1971	\N
nm0131060	Alejandro Camacho	1954	\N
nm0721208	Claudio Reyes	\N	2017
nm0761055	Salvador Sánchez	1943	\N
nm0580847	Orlando Merino	\N	\N
nm0305653	Jaime García Estrada	\N	\N
nm0429079	Rebecca Jones	1957	2023
nm1444176	Carlos Páramo	\N	\N
nm0282825	Georgina Flores	\N	\N
nm0844812	Alfredo Sánchez	\N	\N
nm1618940	Guillermo Pineda	\N	\N
nm0336336	Peter Graves	1911	1994
nm0397415	Joyce Howard	1922	2010
nm0052203	Leslie Banks	1890	1952
nm0779540	Margaretta Scott	1912	2005
nm0163515	Mary Clare	1892	1970
nm0884776	Frederick Valk	1895	1956
nm0874298	Ralph Truman	1900	1977
nm0835738	John Stuart	1898	1979
nm0370848	Helen Haye	1874	1957
nm0099082	Chili Bouchier	1909	1999
nm0876440	Montgomery Tully	1904	1988
nm0141988	Winifred Carter	\N	\N
nm0413800	Louis H. Jackson	1904	1960
nm0005965	Stanley Black	1913	2002
nm0933549	James Wilson	\N	\N
nm0368380	Charles Hasse	1904	2002
nm5611699	Mithun	\N	\N
nm5893456	Shruthi Raj	\N	\N
nm11553606	I. Ashokan	\N	\N
nm11809197	S.P. Azhagu	\N	\N
nm11512577	Devi Bala	\N	\N
nm11809198	P.S. Krishnamoorthy	\N	\N
nm11809200	S.R. Leelaram	\N	\N
nm10429955	Santhosh Nair	\N	\N
nm11809199	Baburaj Thomas	\N	\N
nm11809201	J. Sathappan Narayanan	\N	\N
nm11809202	C. Nachiyappan Pillai	\N	\N
nm11809203	D. Giri Babu	\N	\N
nm4016550	Ben Clark	\N	\N
nm4014740	Stephen Geddes	\N	\N
nm4016661	Phil Harrison	\N	\N
nm3329451	Paul McParland	\N	\N
nm12557696	Les Élèves du Collège Jean-Jaurès de Pantin	\N	\N
nm1672044	Laurent Pawlotsky	\N	\N
nm0782139	Boris Seguin	\N	\N
nm0853456	Pierre Tchernia	1928	2016
nm0239447	Marie Dubois	1937	2014
nm8012253	Nick Schaedel	\N	\N
nm4713632	Adam Percival	\N	\N
nm3619555	Masuji Harada	\N	\N
nm6231597	Yûko Arakawa	\N	\N
nm4319064	Sô Toyama	\N	\N
nm6231595	Minami Ôi	\N	\N
nm6231590	Kôichi Makaino	\N	\N
nm0299187	Masashi Furukawa	\N	\N
nm0001813	Dick Van Dyke	1925	\N
nm0000281	Scott Baio	1960	\N
nm0886719	Barry Van Dyke	1951	\N
nm0875700	Michael Tucci	1946	\N
nm0355485	Delores Hall	\N	\N
nm0001411	William Katt	1951	\N
nm0005191	Paula Marshall	1964	\N
nm0820658	Kristoff St. John	1966	2019
nm0000924	Elizabeth Berkley	1972	\N
nm0638527	Christian I. Nyby II	1941	\N
nm0120995	Joyce Burditt	1938	2022
nm0176689	Gerry Conway	1952	\N
nm0557952	Mark Masuoka	\N	\N
nm0825720	Barry Steinberg	\N	\N
nm0616832	Peter T. Myers	\N	\N
nm0569351	Patrick E. McGinness	\N	\N
nm0699433	Tom Pryor	\N	\N
nm0033164	Maureen A. Arata	1954	2019
nm0821430	Paul Staheli	\N	\N
nm14438501	Aiden Alberto	\N	\N
nm12906273	Bryant Barnett	\N	\N
nm11347141	Nirvaan Pal	\N	\N
nm12714298	Crina Shah	\N	\N
nm4467500	Rama Vallury	\N	\N
nm5197715	Vikram Veturi	\N	\N
nm2770167	Amit Bhalla	\N	\N
nm7032871	Jordan Gershowitz	\N	\N
nm1002478	Ed Lewis	\N	\N
nm11713259	Jeremy Burchard	\N	\N
nm0051948	Johnny Bangert	1954	\N
nm0103048	Lane Bradford	1922	1973
nm0106248	Robert Bray	1917	1983
nm1850934	Pat Coghlan	1950	\N
nm0268043	Lee Farr	1927	2017
nm1558595	Lassie	\N	\N
nm0681055	William Phipps	1922	2018
nm0257638	John English	1903	1969
nm0164593	Vernon E. Clark	1916	1979
nm0460893	Eric Knight	1897	1943
nm0325485	Robert Golden	1912	2005
nm0779608	Nathan Scott	1915	2010
nm0280221	Eddie Fitzgerald	1901	1966
nm0172087	Monica Collingwood	1908	1989
nm0166429	Harvey Clermont	1907	1978
nm6826961	Erin A. Moore	\N	\N
nm5667149	Eric A. Bell	1986	\N
nm6844462	Lilly Cunningham	\N	\N
nm6380394	Jerome Davis	\N	\N
nm6826967	Steven Lam	\N	\N
nm6826963	Hunt D. Shamekia	\N	\N
nm6826962	John Walton	\N	\N
nm6826964	Delisa Witherspoon	\N	\N
nm6826965	Jadin Witherspoon	\N	\N
nm6509621	Demetrius Witherspoon	\N	\N
nm6509623	LaSean	\N	\N
nm1067426	Hilary Barry	\N	\N
nm0920265	Jeremy Wells	1977	\N
nm13289442	Andrew Hallberg	\N	\N
nm13289441	Alistair Wilkinson	\N	\N
nm2385841	Kirsten Bolm	\N	\N
nm6795835	Alysia Thomas-Sam	\N	\N
nm8622460	Cory Williams	1992	\N
nm1185906	Mehmet Oz	1960	\N
nm3613357	Chris Powell	1980	\N
nm3492078	Dolvett Quince	\N	\N
nm2227436	Roger Ellinger	\N	\N
nm1859013	Joshua Lipkin	\N	\N
nm14586087	Nick Pappanicholas	\N	\N
nm12891225	Anand Selvan	\N	\N
nm10093673	Swathi Sharma	\N	\N
nm8197292	Priya N. Keswani	\N	\N
nm13574883	Martin Jo	\N	\N
nm3386950	Zdenek Pohlreich	1957	\N
nm1846452	Muriel Bats	\N	\N
nm0211356	Katrien De Ruysscher	1978	\N
nm1905651	Leen Dendievel	1983	\N
nm0351630	Kadèr Gürbüz	1969	\N
nm0595500	Walter Moeremans	1940	\N
nm0685053	Ann Pira	1965	\N
nm6049913	Tine Priem	\N	\N
nm5593920	Elise Roels	\N	\N
nm3350598	Ine Goormans	\N	\N
nm0941911	Stef Wouters	\N	\N
nm1823837	Elvira Kleynen	\N	\N
nm7816833	Hans Roggen	\N	\N
nm3481079	Thomas Arnaud	\N	\N
nm3503959	David Chenaud	\N	\N
nm2925362	Christine Massa	\N	\N
nm0589839	Annie Milon	\N	\N
nm0213595	Jérôme Debusschère	\N	\N
nm2930578	Carlos Dávila	\N	\N
nm3223543	Antonio Romero	\N	\N
nm12789177	Viniccius 14	\N	\N
nm6584709	Patrick Simonin	\N	\N
nm0302916	Guillaume Gallienne	1972	\N
nm9651535	Sofus Ellegaard	\N	\N
nm10995987	Palle Sørig Jensen	\N	\N
nm5741663	Anina Karma Kjeldsen	\N	\N
nm7880058	Lars Huulgaard	\N	\N
nm9419074	Bastian Laigaard	\N	\N
nm11668898	Frederikke Hoeijmans Vang	\N	\N
nm6756016	Simon Grosen Knudsen	\N	\N
nm8166302	Rexal Ford	\N	\N
nm9507961	Hesper Jayne	\N	\N
nm10778931	Michael Sterling	\N	\N
nm5118473	Maisa	2002	\N
nm3628316	Oscar Filho	1978	\N
nm9851116	Dilsinho	\N	\N
nm5236868	Chris Flores	\N	\N
nm5172842	Péricles	\N	\N
nm4101155	Geoff Stone	\N	2015
nm0008745	Abigail	1946	\N
nm0336565	Deborah Gray	\N	\N
nm0367526	Geoff Harvey	1935	2019
nm0398274	John-Michael Howson	1936	\N
nm0567800	Jacki MacDonald	1953	\N
nm2338213	Marty Morton	1941	2024
nm0809574	Pete Smith	1939	\N
nm0829781	Robin Stewart	1946	2015
nm1367252	Jennah Karthes	1982	\N
nm5152674	Eric Dean Hordes	1983	\N
nm0409291	Kikuko Inoue	1964	\N
nm0411794	Kentarô Itô	1974	\N
nm0476415	Taiten Kusunoki	1967	\N
nm1067368	Hiroki Tôchi	1966	\N
nm1289399	Kôji Yusa	1968	\N
nm0408086	Takashi Imanishi	1957	\N
nm6489826	Asahide Ookuma	\N	\N
nm0866707	Yoshiyuki Tomino	1941	\N
nm1911656	Megumi Ôhashi	1975	\N
nm0278306	Judy Finnigan	1948	\N
nm0011516	Peter Adamson	1930	2002
nm0055289	Thelma Barlow	1929	\N
nm0056618	Roy Barraclough	1935	2017
nm0171576	Christopher Coll	1938	2021
nm0220263	Eileen Derbyshire	1930	\N
nm0238107	Betty Driver	1920	2011
nm0329591	Julie Goodyear	1942	\N
nm0272431	Eugene Ferguson	\N	\N
nm13291492	Farnam Pakdel	\N	\N
nm3117991	Çagdas Serter	\N	\N
nm7503223	Jee An	\N	\N
nm11752931	Lee Chae-yun	2005	\N
nm6190770	Seok Ha	\N	\N
nm3498542	Jo Han-chul	1973	\N
nm1955957	Park Hyo-ju	1982	\N
nm4776658	Lee Jin-hee	1983	\N
nm7709173	Kim Kwang-hyeon	\N	\N
nm3393029	Park Soo-Jin	1985	\N
nm1856960	Back-du Min	\N	\N
nm6190769	Se-Heung Moon	\N	\N
nm5261851	Mi-young Kim	\N	\N
nm0020334	Byron Allen	1961	\N
nm3580968	Erin Hassidim	\N	\N
nm0554578	Ana Martín	1946	\N
nm0554830	Jorge Martínez de Hoyos	1920	1997
nm0729473	Jorge Rivero	1938	\N
nm0799183	Bebu Silvetti	1944	2003
nm0889768	Yolanda Vargas Dulché	1926	1999
nm0523608	Patricia Lozano	\N	\N
nm0994449	Karlos Velázquez	\N	\N
nm12562881	Nayana Nagraj	\N	\N
nm11374614	Mathad Ritvvikk	\N	\N
nm11372053	Preetham Shetty	\N	\N
nm12562878	Vikas Negiyoni	\N	\N
nm12526580	Param	\N	\N
nm11372059	Pawan Kumar	\N	\N
nm12562883	Prakash	\N	\N
nm12562882	Uday	\N	\N
nm10641651	Kalyani	\N	\N
nm10641653	Ramya	\N	\N
nm6013238	Rishikesh	\N	\N
nm10641652	Stalin	\N	\N
nm10625519	Francis Kadhiravan	\N	\N
nm10641654	S. Ramana Girivasan	\N	\N
nm10641655	K.J. Ganesh	\N	\N
nm10641656	Ilaiyavan	\N	\N
nm11315629	Valérie Niquet	\N	\N
nm0191786	Meltem Cumbul	1969	\N
nm0476011	Mehmet Kurtulus	1972	\N
nm0258905	Halil Ergün	1946	\N
nm0015081	Tarik Akan	1949	2016
nm0648601	Çetin Öner	1943	2016
nm0019385	Memet Ali Alabora	1977	\N
nm0476006	Haluk Kurtoglu	1932	2004
nm0315442	Müjdat Gezen	1943	\N
nm0015765	Mustafa Alabora	1946	\N
nm0654874	Erdal Özyagcilar	1948	\N
nm1015909	Ziya Öztan	1946	\N
nm3620175	Nahid Sirri Örik	\N	\N
nm1496999	Mustafa Sen	\N	\N
nm1761449	Sinan Yaka	\N	\N
nm0783013	Timur Selçuk	1945	2020
nm0609827	Colin Mounier	1942	\N
nm1505628	Hasan Bektas	\N	\N
nm0880418	Mustafa Ziya Ülkenciler	1947	2023
nm1815173	King Africa	\N	\N
nm2378050	Isi	1973	\N
nm3787030	Cristina Maró	1980	\N
nm3017474	David Perdomo	1979	\N
nm2380048	Marcos Pereiro	\N	\N
nm1618276	Luis Piedrahita	1977	\N
nm3608873	Noemí Rodríguez	\N	\N
nm2066342	Iria Sobrado	1979	\N
nm2673123	Xosé A. Touriñán	1980	\N
nm3786801	Adelaida Vid	\N	\N
nm5213242	Lizzie Freeman	1992	\N
nm10914909	Jasmine Yang	\N	\N
nm7623340	James Bailey	\N	\N
nm4009492	Anthony Sardinha	\N	\N
nm6442558	Amber May	\N	\N
nm9072464	Luke Lerdwichagul	1999	\N
nm9379615	Kevin Lerdwichagul	\N	\N
nm3701984	Edwyn Tiong	\N	\N
nm12070412	Ryan Stewart	\N	\N
nm5252402	Tyler Riggers	\N	\N
nm5174425	Rohit K. Sharma	\N	\N
nm2772547	Christian Porter	\N	\N
nm4781933	Alan Boucher	\N	\N
nm2078737	Ósvaldur Knudsen	\N	\N
nm4782620	Sigurdur Thórarinsson	\N	\N
nm4781726	Magnús Johannsson	\N	\N
nm11172622	Halil Ibrahim Ceyhan	1982	\N
nm10176695	Sila Turkoglu	1999	\N
nm11679029	Berat Rüzgar Özkan	2014	\N
nm9605865	Melih Ozkaya	1987	\N
nm7817987	Tolga Pancaroglu	\N	\N
nm11446041	Gülay Özdem	\N	\N
nm10045513	Osman Aydin	1986	\N
nm11679032	Hilal Yildiz	\N	\N
nm11679033	Zeynep Naz Eyüboglu	1996	\N
nm5642132	Ömer Gecü	1972	\N
nm10497760	Serkan Mut	\N	\N
nm2375975	Ayhan Özen	1973	\N
nm11871999	Basak Yazi Odasi	\N	\N
nm9918690	Nazmiye Yilmaz	\N	\N
nm11871996	Minör	\N	\N
nm0015494	Hakan Akol	1965	\N
nm6758108	Ashutosh Gokhale	1991	\N
nm8754534	Reshma Shinde	\N	\N
nm10430000	Chandrakant Gaikwad	\N	\N
nm11637689	Swapnil Murkar	\N	\N
nm10189547	Abhijit Guru	\N	\N
nm10189548	Sharvari Patankar	\N	\N
nm10189550	Aparna Ketkar	\N	\N
nm10189549	Atul Ketkar	\N	\N
nm14183972	Prashant Laxman Patil	\N	\N
nm9525570	Shripad Joshi	\N	\N
nm14183962	Siddharaj Mehetar	\N	\N
nm2361399	Nilesh Moharir	\N	\N
nm0499253	Johnny Legend	1949	\N
nm11890088	Punitha/Harshala Honey	\N	\N
nm11890087	Surendar Shanmugam	\N	\N
nm11894179	Sai Maruthu	\N	\N
nm11890083	Thanshana Ramamoorthi	\N	\N
nm11890085	Ahemd	\N	\N
nm2407536	Pinggoy Generoso	\N	\N
nm2155730	Erick C. Salud	\N	\N
nm6565923	Gian Carlo Isidro	\N	\N
nm12728169	Marc Edward Noveloso	\N	\N
nm2410457	Darla Sauler	\N	\N
nm6565921	James Cantos	\N	\N
nm12728249	Joy Chiong	\N	\N
nm4485984	Dianne Ifchelle Cruz	\N	\N
nm5560735	Krissa Donida	\N	\N
nm3384794	Annabelle Regalado	\N	\N
nm1541515	Cristian Stelluti	1976	\N
nm5075954	Matteo Banfo	\N	\N
nm1186975	Tony Meo	1959	\N
nm0663617	John Parrott	1964	\N
nm7630511	Albert	\N	\N
nm7630512	Alice	\N	\N
nm0038607	Asger	\N	\N
nm7630513	Franz	\N	\N
nm5945171	Inaya	\N	\N
nm5002790	Konrad	\N	\N
nm7630514	Maria	\N	\N
nm7630515	Mejse	\N	\N
nm7630516	Morgan	\N	\N
nm7630517	Silke	\N	\N
nm7584987	Sisse Lund Harder	\N	\N
nm7635288	Andreas Caspersen	\N	\N
nm0345012	Anne Bruun Grønbæk	\N	\N
nm5286833	Line Felicia Haunstrup	\N	\N
nm7635289	Ane-Sofie Rasmussen	\N	\N
nm1367102	Hans Ib Noe Hansen	\N	\N
nm4140854	Peter Watycha	1980	\N
nm0010253	Vanessa Acosta	\N	\N
nm0331243	Tomás Goros	\N	\N
nm0584795	Anette Michel	1971	\N
nm0679070	Marcela Pezet	1973	\N
nm0811785	Héctor Soberón	1964	\N
nm0207011	Heriberto López de Anda	\N	\N
nm1289999	José Luis Durán	\N	\N
nm1122534	José Ignacio Valenzuela	\N	\N
nm0122730	Juan David Burns	\N	\N
nm0148861	Alberto Cervantes	\N	\N
nm0379862	Alejandra Hernández	\N	\N
nm0758353	Elisa Salinas	\N	\N
nm0316037	Alejandro Giacomán	1964	\N
nm11073538	Ida Alkusay	\N	\N
nm1451946	Christoph Feurstein	1972	\N
nm4697899	Angelika Lang	\N	\N
nm2510421	Barbara Krammer	\N	\N
nm2511460	Tom Gerhartl	\N	\N
nm8167816	Nikolaus Triantafyllidis	\N	\N
nm12546077	Barron	\N	\N
nm13423178	Calan	\N	\N
nm2790534	Reza Attaran	\N	\N
nm2238506	Sepehr Azadi	\N	\N
nm8070585	Sohelia Azizi	\N	\N
nm5427368	Ashkan Eshtiyagh	\N	\N
nm0270820	Reza Fayyazi	1953	\N
nm15396892	Zahra Javaheri	\N	\N
nm5684687	Alireza Raeisi	\N	\N
nm10721766	Dena Rassam	\N	\N
nm1727801	Lukasz Ploszajski	1978	\N
nm2551018	Lukasz Dziemidok	1980	\N
nm3872358	Krzysztof Gostkiewicz	\N	\N
nm4220015	Dominika Kojro	1984	\N
nm7146951	Michal Pryszczewski	\N	\N
nm0804123	Ewa Skibinska	1963	\N
nm0866520	Maciej Tomaszewski	1961	\N
nm7333140	Kacper Kaczmarek	\N	\N
nm1877853	Nick Hewer	1944	\N
nm3205512	Rachel Riley	1986	\N
nm1735069	Susie Dent	1964	\N
nm1658925	Chris Hollins	1971	\N
nm5728078	Haruka Terui	\N	\N
nm4986321	Suzuko Mimori	1986	\N
nm4679086	Yumi Uchiyama	1987	\N
nm3961240	Tomoyo Kurosawa	1996	\N
nm5408961	Juri Nagatsuma	\N	\N
nm8703415	Takahiro	1981	\N
nm5573564	Anusree	1990	\N
nm1267637	Ponnamma Babu	\N	\N
nm13430734	Akshaya Raghavan	\N	\N
nm10679384	Anjali Rao	\N	\N
nm7032764	Meghna Vincent	\N	\N
nm13594978	Manoj Sreelakam	\N	\N
nm13594977	Prasad Panicker	\N	\N
nm5066571	Shaan Rahman	\N	\N
nm9505970	Manoj Kalagramam	\N	\N
nm14649960	Bibin Noble	\N	\N
nm14649959	Shafeek	\N	\N
nm7502119	Kôhei Amasaki	\N	\N
nm9940378	Taito Ban	1992	\N
nm13872953	Saku Hyuga	\N	\N
nm7612988	Aoi Koga	\N	\N
nm11879500	Yôhei Matsuoka	1995	\N
nm3646875	Ayaka Shimizu	\N	\N
nm5329879	Haruka Shiraishi	\N	\N
nm3899473	Minami Tanaka	1996	\N
nm2760504	Aki Toyosaki	1986	\N
nm4684998	Patrick Barfoot	\N	\N
nm5959674	Rebecca French	\N	\N
nm6832088	Anita Lee	\N	\N
nm4684765	Josh Litman	\N	\N
nm6313699	Shawn Lotte	\N	\N
nm4393972	Nikolai Ostonal	\N	\N
nm6564637	Andrew Pel	\N	\N
nm6832114	Megan Wigmore	\N	\N
nm11377965	Francesco De Simone	\N	\N
nm4252974	Emanuele Pisano	\N	\N
nm3828158	Angelo Pastore	\N	\N
nm10549346	Olimpia Sales	\N	\N
nm4868791	Gaia Marianna Musacchio	\N	\N
nm0313695	Jean Georgescu	1904	1994
nm0323679	Vasile Gociu	1897	1950
nm4733752	Kimiko Glenn	1989	\N
nm2750372	Michael Croner	1985	\N
nm2965747	Nic Smal	\N	\N
nm3940521	James Monroe Iglehart	1974	\N
nm2274847	Lauren Ash	1983	\N
nm0536281	Deedee Magno	1975	\N
nm7215504	Vella Lovell	1985	\N
nm1344302	Rachel House	1971	\N
nm3783235	Nichole Sakura	1989	\N
nm7018662	Josh Johnson	\N	\N
nm2524642	Allison Craig	\N	\N
nm9473090	Lucy Heavens	\N	\N
nm6847233	Quinn Elyse Scott	\N	\N
nm0651692	Kent Osborne	1969	\N
nm2695142	Brad Breeck	1978	\N
nm0174389	Greg Condon	\N	\N
nm0238397	Aaron Drown	\N	\N
nm4889447	Jennifer Trujillo	\N	\N
nm0240616	Sean Duffy	1971	\N
nm12349549	Jin Hao	\N	\N
nm11321193	Ezra Jin Ming Lim	\N	\N
nm11314871	Josh Lim Wen Xuan	\N	\N
nm11321191	Victor Gan	\N	\N
nm11321194	Layla Wei	\N	\N
nm11321195	Jeremy Lau	\N	\N
nm0497301	Geoff Lee	1952	2022
nm10215432	Daniel David Sim	\N	\N
nm0909696	John Walsh	1945	\N
nm0918999	Glenn Weiss	1961	\N
nm4431642	Greg Scott	\N	\N
nm7994174	Michael H. Shamberg	1952	2014
nm5156797	Vishal Karwal	1985	\N
nm3749468	Richa Soni	1985	\N
nm12405806	Karan Thakur	\N	\N
nm0417562	Talat Jani	\N	\N
nm6184395	Sandeep Vijay	\N	\N
nm8355666	Amit Jha	\N	\N
nm3706001	Raakesh Paswan	\N	\N
nm8515145	Ken Peters	\N	\N
nm6235717	Shihyun Wang	\N	\N
nm1162248	Colin Murray	1977	\N
nm6055921	Vick Hope	1989	\N
nm2125359	Marcus Griffiths	\N	\N
nm1483616	Jaye Jacobs	1982	\N
nm6879084	Nic Jackman	\N	\N
nm2273109	Belinda Owusu	1989	\N
nm0941986	Kaye Wragg	1972	\N
nm0908340	Alex Walkinshaw	1974	\N
nm0545165	Rosie Marcel	1977	\N
nm0702934	Hugh Quarshie	1954	\N
nm1080139	Jo Martin	\N	\N
nm0824517	Dawn Steele	1975	\N
nm2588169	Griff Rowland	\N	\N
nm1661134	Joe Ainsworth	\N	\N
nm0735239	Amy Rodriguez	\N	\N
nm1440527	Simon Butcher	\N	\N
nm1733093	Jamie Weddell	\N	\N
nm0594276	Katsue Miwa	1943	\N
nm0557968	Eiko Masuyama	1936	2024
nm0157133	Shigeru Chiba	1954	\N
nm0454049	Kaneta Kimotsuki	1935	2016
nm8996125	Masako Miura	\N	\N
nm0623165	Yukiko Nashiwa	1957	\N
nm0840618	Kiyonobu Suzuki	1950	\N
nm0960022	Hiroshi Ôtake	1932	2022
nm0766486	Hiroaki Satô	\N	\N
nm1156514	Akihiko Takashima	1943	2016
nm0645556	Hajime Okayasu	\N	\N
nm0865785	Sandi Toksvig	1958	\N
nm2810494	Bill Torrance	\N	\N
nm7600010	Sethu Lakshmi	\N	\N
nm9956028	Riyas Narmakala	\N	\N
nm8223791	Manju Pathrose	1986	\N
nm6651428	Aneesh Ravi	\N	\N
nm9956145	Rajesh Thalachira	\N	\N
nm9956147	Sreekumaran Araykkal	\N	\N
nm9956148	Shivamohan Thambi	\N	\N
nm9827465	Satheesh Babu	\N	\N
nm7260817	Unni Nenmara	\N	\N
nm13284792	Inarah Syarafina	\N	\N
nm15333701	Tabitha	\N	\N
nm1502436	Ingvar Oldsberg	1945	2022
nm0350081	Magda Guzmán	1928	2015
nm0729095	María Teresa Rivas	1918	2010
nm0643508	Claudio Obregón	1935	2010
nm1227156	Hugo Cervantes	\N	\N
nm12793479	Yukari Yuzuki	\N	\N
nm12793478	Maki Tsurumaki	\N	\N
nm13182333	Giru	\N	\N
nm7490473	Cole Kush	1985	\N
nm9449734	Lucas Nathan	\N	\N
nm9449733	Jason Harvey	\N	\N
nm0347453	Julien Guiomar	1928	2010
nm0087017	Dominique Blanchar	1927	2018
nm0248033	Fabrice Eberhard	\N	\N
nm0743131	Jacques Rosny	1939	2020
nm0491229	Gilles Laurent	\N	\N
nm0161699	Agnès Château	\N	\N
nm0025445	Roland Amstutz	1942	1997
nm0871105	Roger Trapp	1932	2017
nm0490734	Philippe Laudenbach	1936	2024
nm0705745	Dimitri Radochevitch	\N	\N
nm0335942	Dolorès Grassian	1921	2009
nm0350722	Gébé	1929	2004
nm0153650	Jean Charvein	1928	2013
nm1459421	Floyd Mayweather Jr.	1977	\N
nm1029102	Cogie Domingo	1985	\N
nm1566328	JC De Vera	1986	\N
nm1698688	Rainier Castillo	1985	\N
nm1698831	Mark Herras	1986	\N
nm1717491	Yasmien Kurdi	1988	\N
nm1717582	Jennylyn Mercado	1987	\N
nm1246883	Mac Alejandre	\N	\N
nm0714607	Ronald Red	\N	\N
nm0080511	Pedro Bial	1958	\N
nm0815658	Tito Sotto	1948	\N
nm1296472	Vic Sotto	1954	\N
nm1409127	Bert De Leon	1947	2021
nm1271987	Quark Henares	\N	\N
nm1667629	Marie Jamora	\N	\N
nm4390665	Jervi Li	\N	\N
nm3089072	Christopher Nocon	\N	\N
nm6200566	Herger Llorente	\N	\N
nm6200565	Rey Tesorero	\N	\N
nm0335848	Günter Grass	1927	2015
nm1176182	Adolf Muschg	1934	\N
nm0025459	Raúl Amundaray	1937	2020
nm10682007	Conchita Obach	1936	2020
nm0108539	Rafael Briceño	1921	2001
nm1833925	Agustina Martín	1930	1996
nm1958770	Juan Lamata	1931	1991
nm0128785	Félix B. Caignet	1892	1976
nm1961475	Enrique Jarnes	1925	2002
nm10838272	Roselia Narváez	\N	\N
nm0709307	Pedro Felipe Ramírez	\N	\N
nm6117394	Martin R. Reynolds	1917	1978
nm0130572	Cab Calloway	1907	1994
nm1342010	Cab Calloway and His Cotton Club Orchestra	\N	\N
nm0764156	Judy Ann Santos	1978	\N
nm0305374	Patrick Garcia	1981	\N
nm0945813	Rico Yan	1975	2002
nm0229042	Mylene Dizon	1976	\N
nm0013793	Marvin Agustin	1979	\N
nm1206722	Laurenti M. Dyogi	\N	\N
nm1282374	Keiko Aquino	\N	\N
nm1282824	Marcia De Jesus	\N	\N
nm1287750	John-D Lazatin	\N	\N
nm0120735	Yve Burbach	1975	\N
nm2658780	Sasa Kekez	1983	\N
nm0710921	Marianne Rappenglück	1958	\N
nm0771665	Michael Schiller	1963	\N
nm0821136	Hans Stadlbauer	1945	\N
nm0026561	Daniel Anderson	\N	\N
nm4805760	Jeff William Lacroix	\N	\N
nm4836410	Chandra Lakshman	\N	\N
nm7243950	Stalin	\N	\N
nm11065709	Shamily Sukumar	\N	\N
nm10622861	Sadhasivam Perumal	\N	\N
nm7767088	Padmavathi	\N	\N
nm9048179	Prabhakar	\N	\N
nm11065710	Chithirai Selvan	\N	\N
nm11065711	Manikandan Ravi	\N	\N
nm0561109	Clément Maurice	1853	1933
nm0525908	Auguste Lumière	1862	1954
nm0525910	Louis Lumière	1864	1948
nm1367484	Orlando Manzo	\N	\N
nm2333860	Katarzyna Glinka	1977	\N
nm3369166	Olga Jankowska	1992	\N
nm2805534	Olaf Kaprzyk	2002	\N
nm0523653	Slawomira Lozinska	1953	\N
nm2763243	Marek Molak	1990	\N
nm1847247	Karolina Porcari	1979	\N
nm0874486	Marzena Trybala	1950	\N
nm2762168	Natalia Zambrzycka	1996	\N
nm2762076	Izabela Zwierzynska	1989	\N
nm4038772	Grzegorz Waller	\N	\N
nm2759548	Ewa Bartyna	\N	\N
nm2102093	Jaroslaw Szmidt	1978	\N
nm0844260	Krzysztof Szpetmanski	1973	\N
nm0000463	Famke Janssen	1964	\N
nm1837583	Elise Schaap	1982	\N
nm2863778	Jade Olieberg	1993	\N
nm0220706	Jacob Derwig	1969	\N
nm0212077	Yannick van de Velde	1989	\N
nm6097348	Jesse Mensah	\N	\N
nm0461324	Ohad Knoller	1976	\N
nm3504046	Adva Bolla	\N	\N
nm2511102	Shimrit Lustig	\N	\N
nm5031088	Moshe Ashkenazi	1983	\N
nm1035854	Ori Pfeffer	1975	\N
nm5717678	Liraz Chamami	1984	\N
nm0843491	Daniel Syrkin	1971	\N
nm3000279	Shani Melamed	\N	\N
nm2939063	Nitzan Roiy	\N	\N
nm3569825	Dan Gurfinkel	\N	\N
nm9955953	Yonatan Galila	\N	\N
nm5076742	Tal Tamari	\N	\N
nm4159531	Gal Toren	\N	\N
nm2669480	Gil Ezrachi	\N	\N
nm2265596	Doron Farhi	\N	\N
nm2012534	Boaz Yehonatan Yaacov	\N	\N
nm2336482	Ayelet Gil Efrat	\N	\N
nm2747830	Roni Klimowski	\N	\N
nm6501713	Michal Shealtiel Armon	\N	\N
nm0855282	Dori Teper	1973	\N
nm2487213	Michal Koren	\N	\N
nm6501297	Alexa Mansour	1996	\N
nm6180129	Hayden Ezzy	\N	\N
nm8916559	Thomas Wayne Ers	\N	\N
nm5326615	Trenton L. Culkin	\N	\N
nm0517710	Robert Logevall	\N	\N
nm8797448	Sean Hill	\N	\N
nm8797450	Matt Zion-Basile	\N	\N
nm1959095	Jeff Tomcho	\N	\N
nm2375593	Erin Elders	\N	\N
nm5376664	Mary Ruth Egender	\N	\N
nm8916560	Sara Ruth	\N	\N
nm1999752	Travis Witkowski	\N	\N
nm0081309	Jeanette Biedermann	1980	\N
nm1952556	Roy Peter Link	1982	\N
nm0230665	Cornelia Dohrn	\N	\N
nm1201863	Clemens Aufderklamm	1969	\N
nm2858735	Dirk Carow	\N	\N
nm2460804	Julian Gaupp-Maier	1977	\N
nm0345112	Julius Grützke	1964	\N
nm2363729	Petra Bodenbach	\N	\N
nm1672631	Reinhold Hoffmann	\N	\N
nm0508991	Florian Licht	1972	\N
nm0022681	Juan Carlos Altavista	1929	1989
nm0080722	Ernesto Bianco	1922	1977
nm1004087	Guillermo Brizuela Méndez	1922	1997
nm0215979	Dorys del Valle	1939	\N
nm0303586	Roberto Galán	1916	2000
nm0546359	Juan Carlos Mareco	1926	2009
nm0691672	Jorge Porcel	1936	2006
nm0691932	Javier Portales	1937	2003
nm0815008	Pepe Soriano	1929	2023
nm7500642	José Manuel Durán	\N	\N
nm0282834	Héctor Flores	\N	\N
nm1272480	Ruben Marucci	\N	\N
nm0812176	Gerardo Sofovich	1937	2015
nm0812177	Hugo Sofovich	1939	2003
nm1475425	Alex Staggs	\N	\N
nm1764365	Zazon	\N	\N
nm0324761	Joy Gohring	\N	\N
nm2533015	Giulia Rodino	\N	\N
nm12791266	Kamran Khan	\N	\N
nm12791265	Junaid Mumtaz	\N	\N
nm12791267	Asmat Mallick	\N	\N
nm12791268	Shahbaz Zahid	\N	\N
nm12791269	Zubair Hussain	\N	\N
nm0925809	Richard Whiteley	1943	2005
nm0903436	Carol Vorderman	1960	\N
nm11895328	Kendall Clarke	\N	\N
nm0367567	Jan Harvey	1947	\N
nm0417224	Armand Jammot	1922	1998
nm1636166	Michael Wylie	1951	2008
nm0536093	Connie Ferguson	\N	\N
nm2982557	Zandile Msutwana	\N	\N
nm0623471	Themba Ndaba	\N	\N
nm5360563	Linda Bere	\N	\N
nm10688741	Gwydion Beynon	\N	\N
nm12175321	Christa Biyela	\N	\N
nm7141603	Duduzile Zamantungwa Mabaso	\N	\N
nm13864732	Eva Khumalo Banda	\N	\N
nm6135535	Neil Laurence	\N	\N
nm5381295	Amanda Quwe	\N	\N
nm7081513	Leon Kriel	\N	\N
nm10084406	Edgar Sibaya	\N	\N
nm0360208	Jack Hanna	1947	\N
nm1459646	Guy Nickerson	\N	\N
nm1672746	Peter Bredemeier	\N	\N
nm2073351	David Dean	\N	\N
nm1442704	Randy Shaffer	\N	\N
nm1527168	Johnathan Safford	\N	\N
nm4116052	Rachel L. Leigh	\N	\N
nm13325474	Steven D. Gullion	\N	\N
nm2843046	Owen Borum	\N	\N
nm0857473	Antonis Theodorakopoulos	\N	\N
nm3289821	Katerina Marangou	\N	\N
nm0745905	Jenny Roussea	1932	\N
nm0608309	Giorgos Moshidis	1931	2018
nm0875082	Giorgos Tsitsopoulos	1932	2006
nm0369115	Minas Hatzisavvas	1948	2015
nm3867208	Kostas Galanakis	\N	\N
nm1915547	Agapi Manoura	\N	\N
nm9594473	Evi Pavlou	\N	\N
nm0584261	Giorgos Mihailidis	1938	\N
nm1031661	Pavlos Nirvanas	\N	\N
nm1072522	Villis Andreou	\N	\N
nm0438774	Eleni Karaindrou	1941	\N
nm1416273	Alekos Manesis	\N	\N
nm1205557	Giannis Marakis	\N	\N
nm5831031	Nancy Pushkar	\N	\N
nm7289185	Marrett Laney	\N	\N
nm9951610	Colleen McElroy	\N	\N
nm13013175	Devon Borgen	\N	\N
nm13108201	Bridgette	\N	\N
nm11318773	Sarah Haller	\N	\N
nm11226402	Brad Schaeffer	\N	\N
nm13013176	Carrie Stinchcomb	\N	\N
nm11226401	Ebonie Vincent	\N	\N
nm0576118	Elizabeth Meeker	\N	\N
nm1167063	Devin Powers	\N	\N
nm1310019	Marc Gerke	\N	\N
nm1877053	Keith Baker	\N	\N
nm1632209	Mario Roman	\N	\N
nm3172514	Elizabeth Schroder	\N	\N
nm4913514	Tim Pool	1986	\N
nm2700291	Tom Andrew	\N	\N
nm4131753	Tom Andrew	\N	\N
nm2494448	Jaycee Davis	\N	\N
nm2996250	Caz Harleaux	\N	\N
nm1807923	Spencer Hill	1977	\N
nm1188108	Cheryl Johnson	1967	\N
nm1904115	Richard Kreps	1971	\N
nm1983810	Justin Lawrence	\N	\N
nm1732003	Rob Little	\N	\N
nm1976925	Bruna Matsin	\N	\N
nm3251720	Andrew M. McGivern	\N	\N
nm5495963	Ignacio Oliveros	\N	\N
nm0437062	Antonis Kanakis	1969	\N
nm2630134	Giannis Servetas	1966	\N
nm2646200	Christos Kiousis	\N	\N
nm10458049	Grigoris Panagiotidis	\N	\N
nm2475763	Manish Bhasin	1976	\N
nm2544755	Lizzie Greenwood-Hughes	\N	\N
nm1303455	Steve Claridge	1966	\N
nm1351787	Robbie Savage	1974	\N
nm7062449	Mark Clemmit	\N	\N
nm5214757	Nigel Adkins	1965	\N
nm1075350	John Barnes	1963	\N
nm2581315	Dave Beckett	\N	\N
nm7062061	George Boyd	\N	\N
nm8211762	Chris Brunt	\N	\N
nm4935091	Mandar Jadhav	\N	\N
nm11177172	Girija Prabhu	\N	\N
nm7652064	Chandrakant Kanse	\N	\N
nm2983649	Addinath Kothare	1984	\N
nm0467680	Mahesh Kothare	1953	\N
nm0826032	Mark Steines	1964	\N
nm0509937	Judith Light	1949	\N
nm0132895	Tina Atkins	\N	\N
nm3166159	Maria Provenzano	\N	\N
nm1978401	Orly Shani	1984	\N
nm4506750	Mari Takahashi	\N	\N
nm9291088	Daniel Waked	\N	\N
nm5404634	Kenneth Wingard	\N	\N
nm2954959	Hristos Oikonomou	\N	\N
nm12960331	Denis Antypas	\N	\N
nm2635629	Nasos Athanasiou	\N	\N
nm0284724	Anna Fonsou	1939	\N
nm0435919	Dimitris Kallivokas	1930	\N
nm0462685	Maro Kodou	1934	\N
nm0465352	Giorgos Konstadinou	1934	\N
nm0587393	Takis Miliadis	1922	1985
nm0824213	Alkis Steas	\N	\N
nm10595144	Madhubani Ghosh	\N	\N
nm8927038	Raja Goswami	\N	\N
nm8031905	Shaan	\N	\N
nm5435989	Anup Chakraborty	\N	\N
nm7370686	Snehasish Chakraborty	\N	\N
nm0174030	Forrest Compton	1925	2020
nm0282535	Ann Flood	1932	2022
nm0561928	Donald May	1927	2022
nm0805748	Henry Slesar	1927	2002
nm0629818	Erwin Nicholson	1929	2001
nm0186728	Clayne Crawford	1978	\N
nm0437283	Christian Kane	1972	\N
nm0129551	Wilmer Calderon	1975	\N
nm6600012	Colt Crawford	\N	\N
nm6600014	Randy Tumbleweed Smith	\N	\N
nm1851709	Wendy Baron	\N	\N
nm6600015	Caitlin Smith	\N	\N
nm6600016	Lennie Crawford	\N	\N
nm1374439	P.M.H. Atwater	\N	\N
nm5192551	Chalet Lizette Brannan	\N	\N
nm1845579	Sonny Marler	\N	\N
nm4239877	Tom Bhramayana	\N	\N
nm3398538	Stephen T. Hoover	\N	\N
nm7760911	Steven Albert Kennedy	\N	\N
nm1519121	Ryan Purvis	1982	\N
nm3972465	Matt Hathcox	\N	\N
nm3995165	Hector Toro	\N	\N
nm2182575	Will E. Drummond	\N	\N
nm1567970	Deanna Tilley	\N	\N
nm15334039	Phil Luciano	\N	\N
nm15333715	Mark Welp	\N	\N
nm5172101	Laryssa Dias	\N	\N
nm3648419	Dilson Nery	\N	\N
nm3454214	Kauê Telloli	\N	\N
nm8574227	Paula Vilhena	\N	\N
nm7384653	Luiza de Andrade	\N	\N
nm8293211	Leonardo Castelo Branco	\N	\N
nm8093658	Tami Belfer	\N	\N
nm7107997	Thiago Liguori	\N	\N
nm7915000	Gabriel Morais	\N	\N
nm8574239	André Esposito	\N	\N
nm8574238	Thiago Reys	\N	\N
nm0620060	Sonomi Nakajima	1936	\N
nm0586227	Tatsuya Mihashi	1923	2004
nm0945831	Keiko Yanagawa	\N	\N
nm6194625	Misaho Kamijô	\N	\N
nm0297869	Kamatari Fujiwara	1905	1985
nm5501163	Mieko Beni	\N	\N
nm0368691	Kisao Hatamochi	\N	\N
nm1346442	Atsuko Ichinomiya	1913	1991
nm0594260	Toshio Miura	\N	\N
nm1481865	Katsue Miyakoya	\N	\N
nm0435368	Masanori Kakei	\N	\N
nm0906725	Tokuhei Wakao	1918	1976
nm2203408	Eizaburô Adachi	\N	\N
nm0559462	Hachirô Matsui	\N	\N
nm0848417	Masao Tamai	1908	1997
nm0412613	Kôichi Iwashita	\N	\N
nm0683831	Silvia Pinal	1931	2024
nm0013567	Luz María Aguilar	1935	\N
nm0019151	Alfredo Alfonso	\N	\N
nm0138577	Rigoberto Carmona	\N	\N
nm0737862	Rafael Rojas	1961	\N
nm0845177	Sergio Sánchez	\N	2004
nm1451780	Gustavo Zárate	\N	\N
nm2016322	Rosa Sabugal	\N	\N
nm0393007	Bob Homme	1919	2000
nm3634990	Amaury Jr.	1950	\N
nm0885201	José Paulo Vallone	\N	\N
nm11576505	Rodrigo Tezoto	\N	\N
nm11576507	Leandro Sawaya	\N	\N
nm4915229	Jonathan Boschen	\N	\N
nm1614822	Angela Finger-Erben	\N	\N
nm0428958	Olivia Jones	1969	\N
nm11265689	Sebastian Klimpke	\N	\N
nm2908016	Menderes Bagci	\N	\N
nm1519580	Gülcan Kamps	1982	\N
nm7860131	Thorsten Legat	1968	\N
nm1728174	Ufuk Özkan	1975	\N
nm6881766	Nalan Okcuoglu	1963	\N
nm9639827	Ilayda Aydin	1994	\N
nm1699266	Mehtap Bayri	1977	\N
nm1869664	Bayazit Gülercan	1949	\N
nm1760185	Zeynep Irgat	1954	\N
nm1759108	Halil Ibrahim Kalaycioglu	1957	\N
nm1699625	Ayça Varlier	1977	\N
nm9437046	Sena Çakir	1994	\N
nm5273658	Yagmur Ün	1995	\N
nm1846556	Rebecca Sau Chu Chan	1958	\N
nm1832654	Ying Choi Cheung	1934	2023
nm0157883	Ho-Wai Ching	\N	\N
nm0159507	Stephen Chow	1962	\N
nm0937266	Tiet Wo Chu	\N	\N
nm0157971	Paul Chun	1945	\N
nm0161165	Wong Chun	1948	\N
nm0401208	Shiu-Hung Hui	1948	\N
nm0793384	Shih Kien	1913	2009
nm2304879	Ai Kong	\N	\N
nm0149222	Louis Cha	1924	2018
nm16537078	Amor Carlin	\N	\N
nm0143067	Juan Carlos Casasola	1967	\N
nm16537081	Carlos Díaz	\N	\N
nm16537079	Fernando Díaz	\N	\N
nm5689554	Jessica Díaz	\N	\N
nm10359205	Tadeo Fernandez	\N	\N
nm16537084	Mafer García	\N	\N
nm16537077	Joss	\N	\N
nm10754822	Talia Loaiza	\N	\N
nm1214769	Paola Núñez	1978	\N
nm3636336	Barbara Baarsma	1969	\N
nm1599773	Abdelkader Benali	1975	\N
nm1719901	Peter R. de Vries	1956	2021
nm0726900	Lucia Rijker	1967	\N
nm10541981	Nicholas Singer	\N	\N
nm5711839	Eric van 't Zelfde	\N	\N
nm1769854	Inez Weski	1955	\N
nm15690877	Remon Rijper	\N	\N
nm0102765	Jacek Braciak	1968	\N
nm0439878	Tomasz Karolak	1971	\N
nm0469021	Malgorzata Kozuchowska	1971	\N
nm3008125	Maciej Musial	1995	\N
nm4519245	Mateusz Pawlowski	\N	\N
nm10110192	Julia Rogalska	\N	\N
nm3794704	Adam Zdrójkowski	2000	\N
nm1780062	Patrick Yoka	\N	\N
nm1802530	Jacques Davidts	\N	\N
nm9493733	Karol Klementewicz	\N	\N
nm4042678	Kuba Wecsile	1975	\N
nm1069102	Marcin Figurski	1966	\N
nm1461313	Katarzyna Winecka	\N	\N
nm0190388	Luísa Cruz	1962	\N
nm0536510	Oscar Magrini	1961	\N
nm0559247	Paulo Matos	1960	\N
nm0896468	Amélia Videira	1945	\N
nm0673204	Ricardo Pereira	1979	\N
nm0056392	Juliana Baroni	1978	\N
nm0210725	Simone de Oliveira	1938	\N
nm0522072	Lucinda Loureiro	1958	\N
nm0556118	Luís Mascarenhas	1947	\N
nm0537336	Henriqueta Maia	1945	\N
nm0637956	Gonçalo Mourão	\N	\N
nm1869070	Manuel Arouca	1955	\N
nm0057007	Glória Barreto	\N	\N
nm1871034	Ana Maria Moretti	\N	\N
nm0604356	Ana Maria Moretzsohn	1947	\N
nm3877269	José Carlos Piano	\N	\N
nm3275155	Duarte Nuno Vasconcelos	1973	\N
nm1803709	Rui Ávila	\N	\N
nm0284689	Luís Pedro Fonseca	\N	2014
nm0578936	Carlos Mendes	1947	\N
nm1870235	Gonçalo Colaço	\N	\N
nm1863147	Nuno Freixa	\N	\N
nm0815985	Ricardo Sousa	\N	\N
nm2296721	Ricardo Inácio	\N	\N
nm0001983	Rory Calhoun	1922	1999
nm0001198	Debrah Farentino	1959	\N
nm0869927	Constance Towers	1933	\N
nm0001904	Corey Allen	1934	2010
nm0179189	Patrick Corbett	\N	\N
nm1707653	Susan Goldberg	\N	\N
nm1085627	Martha Humphreys	\N	\N
nm0439984	Elinor Karpf	1939	2013
nm0439987	Stephen Karpf	1939	\N
nm0108993	Stockton Briggle	1935	2014
nm3097133	Robert Israel	1943	\N
nm0415351	Denny Jaeger	\N	\N
nm0006264	Michel Rubini	\N	\N
nm0618689	John Nachreiner	\N	\N
nm6025734	Hannah Allison	\N	\N
nm3371430	Sean Przano	\N	\N
nm2069445	Saki Aibu	1985	\N
nm0043396	Keiko Awaji	1933	2014
nm0441161	Reiko Kataoka	1971	\N
nm0441353	Haruko Katô	1922	2015
nm0441365	Kazuko Katô	1958	\N
nm0455816	Hana Kino	1948	\N
nm0594386	Yûji Miyake	\N	\N
nm0654726	Shôichi Ozawa	1929	2012
nm2634230	Miyako Taoka	1947	\N
nm1078154	Shôzô Uesugi	1955	\N
nm0854850	Carlos Tena	1943	2023
nm0764413	Loquillo	1963	\N
nm0809952	Shepard Smith	1964	\N
nm16961933	Nishani Borule	\N	\N
nm2718834	Abhijeet Chavan	\N	\N
nm4825523	Ashish Joshi	\N	\N
nm16961934	Kajal Kate	\N	\N
nm7833633	Shashank Ketkar	1985	\N
nm2994393	Pratima Kulkarni	\N	\N
nm14642142	Shivani Mundhekar	\N	\N
nm16666917	Vishwas Navare	\N	\N
nm5267183	Shashwati Pimplikar	\N	\N
nm2960333	Sulekha Talwalkar	\N	\N
nm3125271	Shashant Shah	\N	\N
nm14173735	Akshay Vaishali Suresh	\N	\N
nm6668295	Manaswini Lata Ravindra	\N	\N
nm10462683	Abhishek Gandhi	\N	\N
nm2404346	Ross Greenwood	\N	\N
nm4996960	Ed Boyd	\N	\N
nm8449281	Adam Creighton	\N	\N
nm6196107	Adam Dawes	\N	\N
nm8531306	Peter King	\N	\N
nm8059262	Angus Moore	\N	\N
nm12921529	Necip Maybarskan	\N	\N
nm12004189	Cem Guney	\N	\N
nm14103511	Omer Faruk Cura	\N	\N
nm0879766	Makiko Uchidate	1948	\N
nm0393362	Yûsuke Honma	\N	\N
nm0800166	Günther Simon	1925	1972
nm0362438	Hans Hardt-Hardtloff	1906	1974
nm0754021	Werner Röwekamp	1928	1982
nm0784240	Werner Senftleben	1925	2007
nm0699787	Wilfried Pucher	1940	\N
nm0944273	Marianne Wünscher	1930	1990
nm0248588	Martin Eckermann	1930	2005
nm2500298	Rolf Schneider	1932	\N
nm9855762	Jesús Mosquera	\N	\N
nm0144519	Cristina Castaño	1978	\N
nm8061858	María Pedraza	1996	\N
nm10387964	Jose De la Torre	1987	2024
nm9990798	Carlo Costanzia	\N	\N
nm10312343	Raudel Raúl Martiato	\N	\N
nm11010160	Juanjo Almeida	\N	\N
nm0781220	José Manuel Seda	1968	\N
nm2571452	Álex Gadea	1983	\N
nm2278325	Javier Mora	1975	\N
nm0580319	Iñaki Mercero	1967	\N
nm0073172	César Benítez	1957	\N
nm1289609	Juan Carlos Cueto	\N	\N
nm1287912	Rocío Martínez Llano	\N	\N
nm8644952	Ale Acosta	\N	\N
nm1255214	Johnny Yebra	\N	\N
nm0273206	Ángel Armada	1972	\N
nm0107938	Fannie Brett	\N	\N
nm6006228	Brett Calo	\N	\N
nm10224485	Cristina G. Marfil	\N	\N
nm0500518	Eva Leira	\N	\N
nm0463990	Koldo Vallés	\N	\N
nm1905682	Jian Kang	\N	\N
nm1311087	Yi Qin	1922	2022
nm2616243	Ying Wu	\N	\N
nm1253885	Yan Zhang	\N	\N
nm0955486	Dan Zhao	1915	1980
nm2613425	Liting Chen	1910	2013
nm0943183	Weiyun Wu	1907	\N
nm0955808	Jinming Zhu	\N	\N
nm2840214	Pete Murray	1925	\N
nm0669398	Terry Pearson	\N	\N
nm2134874	Marjorie Proops	1911	1996
nm0706974	Gillian Raine	1926	2018
nm0709633	Leslie Randall	1924	2020
nm0744436	Leonard Rossiter	1926	1984
nm0861530	Frank Thornton	1921	2013
nm0587717	David Millard	\N	\N
nm2045259	Pia Arcangel	\N	\N
nm2069739	Arnold Clavio	\N	\N
nm13220986	Conrado Lumabas	\N	\N
nm9567219	Graham Clews	\N	\N
nm11274729	Greg Fairlie	\N	\N
nm4044495	Tom Urquhart	\N	\N
nm11274352	Ramia Farrage	\N	\N
nm0578577	Eligio Meléndez	1950	\N
nm0953344	Mario Zaragoza	\N	\N
nm5491262	Carla Casanova	\N	\N
nm3084099	Paulo Galindo	\N	\N
nm5489667	Teresa Cuevas	\N	\N
nm5491044	Dante	\N	\N
nm5490346	Sandra Freyre	\N	\N
nm5491421	Sergio Rued	\N	\N
nm5491248	Jorge López Salazar	\N	\N
nm5490914	Omar Rivero	\N	\N
nm5491732	Mizraim Sánchez	\N	\N
nm5490405	Miguel Ángel Huerta	\N	\N
nm0117152	Karyn Bryant	1968	\N
nm0578374	Robert Melstein	1974	\N
nm12101208	Paul Williams	1992	\N
nm2517133	Dai Henwood	\N	\N
nm6166307	Karen O'Leary	\N	\N
nm7292200	Melanie Bracewell	\N	\N
nm8934259	Ray O'Leary	\N	\N
nm12091487	Sieni Leo'o Olo	\N	\N
nm2715688	Josh Thomson	1981	\N
nm4065316	Claudine MacLean	\N	\N
nm0323628	Roger Gobeth	1973	\N
nm1137830	Maria Carolina Ribeiro	1975	\N
nm0798609	Juliana Silveira	1980	\N
nm1856834	Elisabetta Zenatti	\N	\N
nm1271743	Gabriela Fiore	\N	\N
nm1572484	Solange Keoleyan	\N	\N
nm0539254	Patricia Maldonado	1956	\N
nm0604358	Patrícia Moretzsohn	\N	\N
nm1376973	Rick Bonadio	1969	\N
nm9814677	Cristina de Giacomi	\N	\N
nm10710806	Anand Deverakonda	1996	\N
nm13813405	Emanuel Jabardast	\N	\N
nm15225286	Yawar Prince	\N	\N
nm15008283	Pragathi Srivasthava	1997	\N
nm8389781	Sudigali Sudheer	1987	\N
nm10490386	L.Y.S.N. Bharath	\N	\N
nm10490385	Kanaparthi Sai Nitin	\N	\N
nm16262524	Raj Kumar Kusuma	\N	\N
nm0097504	Alex Borstein	1971	\N
nm0001019	Robert Carradine	1954	\N
nm0240381	Hilary Duff	1987	\N
nm0266302	Jim Fall	\N	\N
nm0312454	Yani Gellman	1978	\N
nm0483047	Adam Lamberg	1984	\N
nm0737390	Stan Rogow	1948	2023
nm1032795	Clayton Snyder	1987	\N
nm0858969	Jake Thomas	\N	\N
nm0604699	Hallie Todd	1962	\N
nm0726613	John Rigelhof	\N	\N
nm0378532	Don Herbert	1917	2007
nm2112565	Jules Power	1921	2009
nm1105643	Kuppuswamy	\N	\N
nm0820286	Srividya	1953	2006
nm0419653	Jayabharathi	\N	\N
nm0707982	Ravindran Ramamurthy	\N	\N
nm0904499	Ramesh Vyas	\N	\N
nm0788155	Babu Shankar	\N	\N
nm11388828	Kiraneya	\N	\N
nm0503053	Roberto Leoni	1940	2024
nm4699864	Mario D'Andrea	\N	\N
nm1296124	Boris Johnson	1964	\N
nm2850888	Simon Stevens	\N	\N
nm11318317	Chris Whitty	\N	\N
nm1000502	Brennan Brown	1968	\N
nm0827735	Jenna Stern	1967	\N
nm0593107	Aleta Mitchell	\N	\N
nm2428200	Philip Hernandez	\N	\N
nm3590937	Anika Larsen	1973	\N
nm0422040	Timothy Jerome	1943	\N
nm6234226	Anne Keefe	\N	\N
nm0322306	Joanna Gleason	1950	\N
nm3577109	Sean Akers	\N	\N
nm0456693	Tim Kirkman	\N	\N
nm1768450	Todd Shotz	1974	\N
nm0034502	Steven Argila	\N	\N
nm3252439	Gabe Mayhan	\N	\N
nm8170129	Erin Blake	\N	\N
nm3274340	Christian Antidormi	1992	\N
nm1972368	Joel Slack-Smith	\N	\N
nm4867351	Collin Brooks	1893	\N
nm0114871	W.J. Brown	1894	1960
nm2167668	Graham Hutton	\N	\N
nm0410408	John Irwin	1912	1976
nm0906145	Victor Wagner	1959	\N
nm0716607	Carla Regina	1976	\N
nm0740856	Murilo Rosa	1970	\N
nm0784733	Bemvindo Sequeira	\N	\N
nm0578057	Jonas Mello	1937	2020
nm0016715	Carlos Alberto	1925	2007
nm0510626	Altair Lima	1936	2002
nm0685140	Míriam Pires	1927	2004
nm0241663	José Dumont	1950	\N
nm0673717	Jayme Periard	1961	\N
nm0042771	Walter Avancini	1935	2001
nm0044244	Lizânias Azevedo	\N	\N
nm0481498	Jacques Lagôa	1943	\N
nm0683305	Luiz Antonio Pilar	\N	\N
nm2152282	Gregório Bacic	\N	\N
nm0270805	Tairone Feitosa	\N	\N
nm0506367	Clóvis Levy	1944	\N
nm0681489	Menoti del Picchia	1892	1988
nm1507860	Manuel Giménez	\N	\N
nm1509566	Alfonso Yunta	\N	\N
nm2371046	Barkha Bisht	1979	\N
nm10485836	Vandana Lalwani	\N	\N
nm1778890	Indraneil Sengupta	1974	\N
nm12176576	Dev Dutt J. Gupta	\N	\N
nm7006227	Saba Mumtaz	\N	\N
nm9115584	Bhavna Vyas	\N	\N
nm0045119	Aruna Irani	1946	\N
nm0083534	Hemant Birje	1965	\N
nm6616708	Amit Kapoor	\N	\N
nm2071432	Satnam Kaur	\N	\N
nm1031555	Anil Nagrath	\N	\N
nm0655368	Amit Pachori	1985	\N
nm0764598	Sapna Sappu	1980	\N
nm0423656	Joginder Shelly	1949	2009
nm1391599	Kishan Shah	\N	\N
nm0791606	Cheryl Shepard	1966	\N
nm5474814	Hedi Honert	\N	\N
nm0120528	David C. Bunners	1966	\N
nm0291132	Anja Franke	1964	\N
nm0362510	Mickey Hardt	1969	\N
nm0031433	Brigitte Antonius	1933	\N
nm0509699	Madeleine Lierck	1949	\N
nm0165346	Claus Dieter Clausnitzer	1939	\N
nm1065525	Gerry Hungbauer	1961	\N
nm4568360	Patrick Caputo	\N	\N
nm0958133	Michaela Zschiechow	1956	\N
nm0014332	Meibrit Ahrens	\N	\N
nm0634928	Bele Nord	\N	\N
nm5825207	Britta K. Öhding	\N	\N
nm7823466	Barbara Kröger	\N	\N
nm0501607	Emmo Lempert	1953	\N
nm0250580	Claudia Effner	\N	\N
nm0126984	Tina Böckenhauer	\N	\N
nm1333810	Tuomas Enbuske	1977	\N
nm11089632	Nandan Loganathan	\N	\N
nm13294554	Mimmo	\N	\N
nm5407557	Preeti Sharma	\N	\N
nm12422192	Dharshna Sripal	\N	\N
nm11060042	K. Sulaiman	\N	\N
nm2289322	Sekhar Kammula	1972	\N
nm7130869	Vishnu Vijay	\N	\N
nm11338299	A.R. Kartik	\N	\N
nm11308400	Ramana Gopinath	\N	\N
nm11308401	Lobol Samy	\N	\N
nm10641838	R.K. Manohar	\N	\N
nm11308402	Archanan Karthik	\N	\N
nm11308403	Sabari Periyasamy	\N	\N
nm0001017	John Carradine	1906	1988
nm0593850	John Mitchum	1919	2001
nm0931868	Van Williams	1934	2016
nm9441821	Fatih Özkul	1980	\N
nm7970959	Nihan Omuz	\N	\N
nm0000101	Dan Aykroyd	1952	\N
nm0163659	Anthony Clark	1964	\N
nm0792200	Kevin Sheridan	1982	\N
nm0057075	Brendon Ryan Barrett	1986	\N
nm0153733	Courtney Chase	1988	\N
nm0277772	Michael Finiguerra	\N	\N
nm0559977	Dakin Matthews	1940	\N
nm0664756	John Pasquin	1945	\N
nm0931285	Matt Williams	1951	\N
nm0689390	Jon Pollack	\N	\N
nm0535558	Gayle S. Maffeo	1941	2022
nm0625067	Caterina Nelli	\N	\N
nm0668234	Steve Paymer	1951	\N
nm0284262	Dan Foliart	\N	\N
nm14245966	Rogue Attraction	\N	\N
nm13702848	Dreaming Tabitha	\N	\N
nm4085521	Brent Venables	\N	\N
nm14421342	Emma Kenner	\N	\N
nm6666027	Sage Starkey	\N	\N
nm15242809	Krishnathulasi Bayi	\N	\N
nm10013178	Rhea George	\N	\N
nm0482421	Cherthala Lalitha	\N	\N
nm1032596	Seema G. Nair	1965	\N
nm14284362	Sruthika Suresh	\N	\N
nm14284361	Anjali Vinod	\N	\N
nm12664703	Faisal Adimali	\N	\N
nm14284241	Ganesh Shastry	\N	\N
nm7841383	Sinoj Nedungolam	\N	\N
nm14284244	Mrigasira Srikanth	\N	\N
nm0033243	Ramesh Aravind	1964	\N
nm11578973	Prakash Menon	\N	\N
nm7887368	Giridhar Diwan	\N	\N
nm14284363	Suneesh Palodu	\N	\N
nm14284364	Amal Sreenu	\N	\N
nm0674231	Rhea Perlman	1948	\N
nm0823507	Fredro Starr	1971	\N
nm0001406	Carol Kane	1952	\N
nm0005024	Terrence Howard	1969	\N
nm0767779	Camille Saviola	1950	2021
nm0094170	De'aundre Bonds	1976	\N
nm0365371	Talent Harris	\N	\N
nm0355318	Anthony C. Hall	\N	\N
nm0849612	Antwon Tanner	1975	\N
nm0397599	Shawn Michael Howard	1969	\N
nm0326837	Steve Gomer	\N	\N
nm0742568	Seth Zvi Rosenfeld	\N	\N
nm0569198	Kathleen McGhee-Anderson	\N	\N
nm0000362	Danny DeVito	1944	\N
nm0667340	Dan Paulson	\N	\N
nm0787834	Michael Shamberg	1945	\N
nm0006108	Miles Goodman	1949	1996
nm0321142	DJ Kay Gee	1969	\N
nm0338577	Robbie Greenberg	1947	\N
nm0167986	Arthur Coburn	\N	\N
nm0498387	Tony Lee	\N	\N
nm0715296	Andrea Reed	\N	\N
nm0715762	Robi Reed	\N	\N
nm0667030	Victoria Paul	\N	\N
nm8058025	Casey Hester	\N	\N
nm9839122	Myers Jackson	\N	\N
nm7094827	Randy Martin	\N	2022
nm7780356	Chandra Rees	1983	\N
nm8359027	Melanie Eve	\N	\N
nm1186985	James Mossman	1926	1971
nm0062772	Keith Baxter	1933	2023
nm0002075	Peter Finch	1916	1977
nm0000027	Alec Guinness	1914	2000
nm0599910	Robert Montgomery	1904	1981
nm0694090	Dick Powell	1904	1963
nm0751983	Margaret Rutherford	1892	1972
nm0787289	Anthony Shaffer	1926	2001
nm0086527	Darrol Blake	1937	\N
nm1654135	Peter Adam	1929	2019
nm1313338	Chris Martin	\N	\N
nm1420414	Nieves Herrero	1957	\N
nm0171587	José Luis Coll	1931	2007
nm1896125	Inma Serrano	1968	\N
nm1714095	Ismael Serrano	1974	\N
nm0845081	Marta Sánchez	1965	\N
nm1778991	Tontxu	1971	\N
nm1541087	Rita Ferro Rodrigues	1976	\N
nm2407794	Nuno Graciano	1968	2023
nm2083911	Cláudia Semedo	1983	\N
nm0000792	Tom Arnold	1959	\N
nm0100381	Dennis Boutsikaris	\N	\N
nm0478844	Alison La Placa	1959	\N
nm0005227	Breckin Meyer	1974	\N
nm0090225	Michael Boatman	1964	\N
nm0082450	Paul Feig	1962	\N
nm0123078	Maryedith Burrell	1952	\N
nm0611898	Martin Mull	1943	2024
nm0036261	Jeannetta Arnette	\N	\N
nm0000394	Chris Farley	1964	1997
nm0504297	Michael Lessac	\N	\N
nm0534983	Joel Madison	\N	\N
nm0755245	David Sackeroff	\N	\N
nm0311361	Teo Gebert	\N	\N
nm0888668	Leah Vandenberg	\N	\N
nm0597944	Julie Money	\N	\N
nm0055400	Mark Barnard	\N	\N
nm1028419	Tammy Burnstock	\N	\N
nm1680298	Atiq Rahimi	1962	\N
nm0158928	Mamhoud Chokrollahi	\N	\N
nm0078775	Jacques Besse	\N	\N
nm0686020	Rafi Pitts	1967	\N
nm1833429	Rahul Singh	1976	\N
\.


--
-- Data for Name: ratings; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.ratings (title_id, rating, votes) FROM stdin;
tt7539072	4.8	76
tt2772922	6.4	8
tt15246970	7	28
tt0556919	8.6	62
tt1717440	7.2	39
tt2159401	5.1	16
tt2623294	7.9	1514
tt5829304	1	242
tt1410265	3.9	29
tt8543800	8.1	1279
tt1503241	7.7	5408
tt9164742	3.3	64
tt11989454	8.5	9
tt1519408	7.2	36
tt0848569	7.4	12
tt6023952	4.8	5
tt0517796	7	19
tt1194409	7.3	15
tt1014787	6.3	37
tt1934370	3	9
tt2635882	8.5	60
tt0099311	6.9	252
tt12338814	9.8	6
tt10270220	7.3	27
tt0602307	7.5	198
tt6842868	4.6	11
tt0595110	7.6	521
tt0781472	6.5	8
tt0613729	8	48
tt1377507	9.6	8
tt1921364	8.6	37
tt10537660	5	1855
tt0929487	7.3	45
tt14792880	7.1	7
tt3300460	8.9	45
tt4116048	3.5	32
tt3972084	6.8	288
tt6862016	7.2	332
tt7652348	8	513
tt3960290	5.8	7
tt5729504	8.7	7
tt0434722	6.9	82
tt10856380	6.7	221
tt12785856	5.3	2356
tt9659602	7.9	15
tt4796112	5.4	5
tt7314942	8.8	8
tt0387591	7.5	33
tt10171526	6.2	26
tt0861404	8.1	22
tt15546426	7.3	36
tt4032518	8	7
tt2128049	7.7	213
tt1442481	7.5	248
tt1102658	6.3	12
tt0677744	7.7	89
tt0859781	7.6	44
tt4792384	10	11
tt1090245	5.8	12
tt1056429	5.4	156
tt1775731	7.3	73
tt3586696	7.1	16
tt14857528	5	17483
tt2766738	5.6	8
tt29763055	6.3	6
tt14300608	1.2	28
tt14670512	6.5	6
tt0770166	5.4	35
tt1447574	4.4	6
tt1608197	7.6	27
tt31521526	1	17
tt1231037	7.8	22
tt0588612	8.1	39
tt0356541	8.7	22
tt28272315	7.3	704
tt0265680	7	29
tt1583288	6.4	59
tt0359907	5.5	18
tt6882594	8.9	22
tt3253548	4.9	284
tt1543912	7.4	17
tt21847944	8.8	6
tt14209750	5.3	307
tt0209238	3.3	113
tt19783884	4	11
tt1851545	8.6	59
tt0065067	8.6	8091
tt0053284	5.9	24
tt0610558	8.2	68
tt28781963	6.5	14
tt1027850	4.3	11
tt3516158	6.9	743
tt2304909	4.4	11
tt10116572	8.2	5
tt8574934	8	337
tt19393578	8.1	16
tt0578587	8.7	2239
tt0949735	7.7	45
tt0831920	7.8	6
tt0189774	6.6	38
tt0764900	7.5	18
tt2265137	7.5	24
tt15217060	5.2	19
tt7381354	5.4	13
tt5109270	7.2	19
tt11278474	6.3	35
tt5137972	8	761
tt13519572	10	13
tt0231023	7.1	30
tt9170956	9.3	19
tt0947424	6.9	11
tt1126391	5.1	278
tt2259113	7.9	11
tt0039733	5.6	52
tt0559186	7.5	114
tt15464032	7.3	7
tt0625535	7.8	20
tt4102584	5	5
tt3441310	5	8
tt0363410	5.7	765
tt14330574	7.7	294
tt0486023	8	28
tt10579682	5.8	91
tt20518086	7.3	56
tt12071826	6.5	8
tt1380155	7.3	67
tt1649437	5.2	116
tt3833682	5.2	927
tt9174832	7	276
tt1003213	6.6	9
tt28153227	7.1	26
tt0433570	6.7	43
tt0278788	4.5	8
tt1199264	6.3	9
tt0117784	5.9	1913
tt0614110	8	8
tt1999822	1.6	42
\.


--
-- Data for Name: titles; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.titles (title_id, type, primary_title, original_title, is_adult, premiered, ended, runtime_minutes, genres) FROM stdin;
tt4238836	tvEpisode	Episode dated 19 November 2014	Episode dated 19 November 2014	0	2014	\N	\N	News,Sport,Talk-Show
tt20918690	tvMovie	The Push	The Push	0	2022	\N	\N	Biography
tt35020055	tvEpisode	Episode dated 26 November 1992	Episode dated 26 November 1992	0	1992	\N	\N	Action,Comedy
tt12364528	tvEpisode	Episode #1.1	Episode #1.1	0	2017	\N	\N	Action,Drama,History
tt32667897	tvEpisode	Episode #1.1671	Episode #1.1671	0	1977	\N	30	News
tt33317334	tvEpisode	Expecting Heavy Losses	Expecting Heavy Losses	0	2013	\N	\N	Game-Show
tt29059237	tvEpisode	Dangerous Moments in the Wild Kingdom	Dangerous Moments in the Wild Kingdom	0	1985	\N	\N	Documentary,Family
tt7539072	movie	Xpiation	Xpiation	0	2017	\N	90	Horror
tt4006356	tvEpisode	Where L.A. Chefs Eat	Where L.A. Chefs Eat	0	2014	\N	\N	Action,Adventure,News
tt2772922	tvEpisode	Live Action Role Play	Live Action Role Play	0	2013	\N	\N	Documentary
tt27766765	tvMovie	Du chocolat pour sauver l'Amazonie	Du chocolat pour sauver l'Amazonie	0	2022	\N	52	Documentary
tt28537546	tvEpisode	O famoso queijo Canastra	O famoso queijo Canastra	0	2022	\N	\N	Reality-TV
tt7408744	tvEpisode	Katherine Schwarzenegger!/My Digestion Issues Almost Killed Me!/TLC's My Giant Life!/Our Family's Fight: Hunter Syndrome	Katherine Schwarzenegger!/My Digestion Issues Almost Killed Me!/TLC's My Giant Life!/Our Family's Fight: Hunter Syndrome	0	2017	\N	41	News,Talk-Show
tt15246970	tvEpisode	Are We Official?	Are We Official?	0	2021	\N	\N	Reality-TV,Sport
tt10638084	tvEpisode	Episode dated 8 July 2019	Episode dated 8 July 2019	0	2019	\N	\N	News
tt9095990	tvEpisode	Episode #1.105	Episode #1.105	0	2008	\N	\N	\N
tt0556919	tvEpisode	Tribute to the Dog	Tribute to the Dog	0	1964	\N	25	Western
tt23811384	video	Temptation 2	Temptation 2	1	2021	\N	\N	Adult
tt1717440	tvEpisode	Just Pursuing Doggedly	Just Pursuing Doggedly	0	2007	\N	25	Action,Adventure,Animation
tt15080802	tvEpisode	Episode #1.545	Episode #1.545	0	\N	\N	\N	Drama
tt2098935	tvEpisode	Foot-Fistless/Dance on Down the Road	Foot-Fistless/Dance on Down the Road	0	2010	\N	30	Drama
tt33501010	tvEpisode	Episode #1.5664	Episode #1.5664	0	2017	\N	35	News
tt1661414	video	Murray Cod Tactics	Murray Cod Tactics	0	2008	\N	60	Documentary
tt3381528	movie	The Dark Monsters	The Dark Monsters	0	2016	\N	90	Horror
tt2159401	tvEpisode	Do the Hustle	Do the Hustle	0	2012	\N	22	Comedy,Drama,Family
tt3926380	tvEpisode	Episode #1.668	Episode #1.668	0	\N	\N	\N	News
tt2623294	tvEpisode	Pepperwood	Pepperwood	0	2013	\N	20	Comedy,Romance
tt3361504	tvEpisode	Episode #9.60	Episode #9.60	0	2013	\N	\N	Talk-Show
tt2833904	tvEpisode	Postman Pat's Pigeon Post	Postman Pat's Pigeon Post	0	2004	\N	15	Animation,Comedy,Family
tt1584588	tvEpisode	Faulkner's Choice	Faulkner's Choice	0	1974	\N	\N	Drama,Fantasy,Horror
tt4205818	tvSeries	Digiknow uLive	Digiknow uLive	0	2014	\N	\N	News
tt7337888	tvEpisode	Episode #1.98	Episode #1.98	0	2011	\N	\N	Drama,Romance
tt7245680	tvEpisode	The Best Films of 2000	The Best Films of 2000	0	2000	\N	\N	Talk-Show
tt26738850	tvEpisode	Episode #1.23	Episode #1.23	0	2020	\N	\N	Comedy,Drama,Romance
tt2192472	tvEpisode	Episode #2.56	Episode #2.56	0	\N	\N	\N	Game-Show
tt5829304	tvSeries	The Tube's Hautest	The Tube's Hautest	0	2014	2015	\N	Comedy
tt14405152	short	The Other Side of Paradise	The Other Side of Paradise	0	2021	\N	\N	Action,Short
tt1998664	tvEpisode	Episode #1.4565	Episode #1.4565	0	2011	\N	\N	Drama,Family
tt9748862	tvEpisode	Episode dated 4 February 2010	Episode dated 4 February 2010	0	2010	\N	\N	Documentary,News,Talk-Show
tt3892090	tvEpisode	This Is Every YouTube Video Ever	This Is Every YouTube Video Ever	0	2014	\N	\N	Comedy
tt11852564	tvEpisode	DOD Experiment #2469	DOD Experiment #2469	1	2018	\N	\N	Adult
tt13870356	tvEpisode	Molestation... I Can't Live with This Accusation	Molestation... I Can't Live with This Accusation	0	2021	\N	45	Talk-Show
tt1410265	tvSeries	Eine für alle - Frauen können's besser	Eine für alle - Frauen können's besser	0	2009	2009	25	Drama,Romance
tt9851424	tvEpisode	Episode #1.216	Episode #1.216	0	1996	\N	\N	Crime,Drama,Mystery
tt4727818	tvEpisode	The Kirk Show Rises	The Kirk Show Rises	0	2014	\N	\N	Comedy
tt10819096	tvEpisode	Thayssa Ferraz Hooks Up With Rafa	Thayssa Ferraz Hooks Up With Rafa	1	2013	\N	25	Adult
tt8543800	tvEpisode	Utrax	Utrax	0	2019	\N	48	Action,Drama
tt1503241	tvEpisode	Spanish 101	Spanish 101	0	2009	\N	22	Comedy
tt0645345	tvEpisode	Choice of Evils	Choice of Evils	0	1974	\N	60	Drama
tt6233038	tvEpisode	Episode #1.3	Episode #1.3	0	2014	\N	\N	Drama
tt7597456	tvEpisode	Schwanz-Selfie! Der neue Trend!	Schwanz-Selfie! Der neue Trend!	1	2014	\N	\N	Adult
tt6073012	tvEpisode	Rubbing Ruby	Rubbing Ruby	1	2016	\N	\N	Adult
tt12549086	tvEpisode	June 15 2020	June 15 2020	0	2020	\N	\N	\N
tt14835916	tvEpisode	Censor	Censor	0	2021	\N	5	Comedy,Talk-Show
tt4864042	tvEpisode	You Can't Get Wetter Than Wet	You Can't Get Wetter Than Wet	1	2013	\N	\N	Adult
tt11590702	tvEpisode	Episode dated 1 August 2008	Episode dated 1 August 2008	0	2008	\N	\N	Family,Game-Show
tt22262504	movie	Verabredungen mit einem Dichter - Michael Krüger	Verabredungen mit einem Dichter - Michael Krüger	0	2022	\N	91	Documentary
tt7438896	tvEpisode	Multi Orgasmic Massage	Multi Orgasmic Massage	1	2014	\N	\N	Adult
tt0439950	tvSeries	New Comedy Showcase	New Comedy Showcase	0	1960	1960	30	Comedy
tt31170181	tvEpisode	24/05/2021 | Ep 277 | Anirudh Witnesses Cruelty!	24/05/2021 | Ep 277 | Anirudh Witnesses Cruelty!	0	2020	\N	\N	Drama,History,Romance
tt31414623	tvEpisode	Episode #1.3585	Episode #1.3585	0	2006	\N	\N	\N
tt5776374	short	By His Hand	By His Hand	0	2016	\N	3	Short
tt10095516	tvEpisode	Betsy Brandt/Ashanti/Gaby Dalkin	Betsy Brandt/Ashanti/Gaby Dalkin	0	2019	\N	\N	Talk-Show
tt11922202	tvEpisode	Episode #1.4943	Episode #1.4943	0	2018	\N	\N	Drama
tt13963314	tvEpisode	Episode #13.4	Episode #13.4	0	2020	\N	\N	Biography,Documentary
tt9694538	tvEpisode	Episode #1.357	Episode #1.357	0	2015	\N	30	Drama
tt6573900	movie	The Road to Woody Point	The Road to Woody Point	0	\N	\N	\N	Drama
tt29455600	tvEpisode	KIM CHANG WAN BAND	KIM CHANG WAN BAND	0	2023	\N	\N	Musical
tt30331769	tvEpisode	Episode #1.211	Episode #1.211	0	2023	\N	\N	\N
tt28480766	tvEpisode	Episode dated 4 February 2022	Episode dated 4 February 2022	0	2022	\N	30	News
tt7864088	tvEpisode	Mike Cernovich Call-In Show	Mike Cernovich Call-In Show	0	2018	\N	51	News
tt2949894	tvEpisode	Episode #3.7	Episode #3.7	0	2013	\N	54	Drama
tt10639480	tvEpisode	Episode #1.11	Episode #1.11	0	2005	\N	\N	Drama,Romance
tt4824340	tvEpisode	The Tongue Twister	The Tongue Twister	0	2015	\N	8	Comedy
tt22480418	tvEpisode	Episode #2.37	Episode #2.37	0	2017	\N	\N	Talk-Show
tt9865538	tvEpisode	Episode #1.124	Episode #1.124	0	2018	\N	\N	Comedy
tt6306690	tvEpisode	OMC's Car School/OMG OMC	OMC's Car School/OMG OMC	0	2016	\N	\N	Reality-TV
tt27868019	tvEpisode	Episode #1.137	Episode #1.137	0	2023	\N	\N	Drama
tt9164742	tvEpisode	Priyanka Chopra and Shahid Kapoor	Priyanka Chopra and Shahid Kapoor	0	2010	\N	\N	Comedy,Talk-Show
tt11724786	tvEpisode	Too Late to Know It's Too Soon for the Sex Talk	Too Late to Know It's Too Soon for the Sex Talk	0	2015	\N	\N	Documentary
tt0968456	tvEpisode	The Casualty	The Casualty	0	1976	\N	\N	Drama,Romance
tt9738958	tvEpisode	Episode #1.352	Episode #1.352	0	2011	\N	\N	Drama
tt5224992	tvEpisode	Jules Roy, l'homme debout	Jules Roy, l'homme debout	0	1996	\N	\N	Documentary
tt27766539	tvEpisode	Hochkaräter: Die blauen Steine der Pharaonen	Hochkaräter: Die blauen Steine der Pharaonen	0	2002	\N	\N	Documentary,History
tt1035025	tvEpisode	Episode #1.11	Episode #1.11	0	2004	\N	\N	Action
tt30270724	tvEpisode	Itsuwari no nikushimi-mori! Izuna no kioku!!	Itsuwari no nikushimi-mori! Izuna no kioku!!	0	2014	\N	\N	Action,Animation,Comedy
tt2196934	tvEpisode	Japanese Y House/Jamaican Dome/Canadian Tire Home	Japanese Y House/Jamaican Dome/Canadian Tire Home	0	2007	\N	\N	Reality-TV
tt14979026	tvEpisode	Kristy kinky kitchen sex	Kristy kinky kitchen sex	1	2012	\N	12	Adult
tt1374692	tvEpisode	Episode #14.32	Episode #14.32	0	2008	\N	\N	Action,Comedy,Drama
tt14752820	tvEpisode	Ashens Easter Special 2019	Ashens Easter Special 2019	0	2019	\N	\N	Comedy,Reality-TV,Talk-Show
tt11515280	tvEpisode	Mikhail Evdokimov	Mikhail Evdokimov	0	2006	\N	20	Biography,Documentary,Talk-Show
tt3315050	video	L'affaire Kellman	L'affaire Kellman	0	2011	\N	30	Adventure,Comedy,Short
tt11989454	short	The Birthday	The Birthday	0	2020	\N	9	Comedy,Drama,Horror
tt3888462	tvEpisode	Episode #1.4	Episode #1.4	0	\N	\N	\N	\N
tt14854768	tvEpisode	Episode #1.430	Episode #1.430	0	\N	\N	\N	Romance
tt26777958	short	Dear President Biden	Dear President Biden	0	2023	\N	40	Documentary,Short
tt9542852	tvEpisode	Santa's naughty little elf tied down & punished with forced orgasms	Santa's naughty little elf tied down & punished with forced orgasms	1	2018	\N	\N	Adult
tt0964158	tvEpisode	Peter Chan	Peter Chan	0	2006	\N	\N	Talk-Show
tt4047506	tvEpisode	Higher, faster, stronger	Higher, faster, stronger	0	\N	\N	\N	Animation
tt13529240	tvEpisode	Soldiers with Glasses - Industrial Centres - Frontline Generals - Out of the Trenches	Soldiers with Glasses - Industrial Centres - Frontline Generals - Out of the Trenches	0	2016	\N	\N	Documentary,History,War
tt9836520	tvEpisode	Episode #1.100	Episode #1.100	0	2003	\N	\N	Drama,Thriller
tt1519408	movie	The Cambodian Room: Situations with Antoine D'Agata	The Cambodian Room: Situations with Antoine D'Agata	0	2009	\N	56	Biography,Documentary
tt31598246	tvEpisode	Episode #1.9	Episode #1.9	0	1996	\N	\N	Drama,Romance
tt0122242	movie	Scare the Living	Scare the Living	0	1991	\N	\N	\N
tt0848446	short	Serapita	Serapita	0	1981	\N	\N	Drama,Short
tt10998086	tvEpisode	Episode #1.213	Episode #1.213	0	\N	\N	\N	Drama
tt15281282	tvEpisode	The Great Pandemic: Right Swipers	The Great Pandemic: Right Swipers	0	2020	\N	\N	Comedy
tt15137058	tvEpisode	Episode #1.3626	Episode #1.3626	0	\N	\N	\N	Family
tt28700626	tvEpisode	Dogs in Prison	Dogs in Prison	0	2020	\N	\N	Drama,Reality-TV
tt21350172	tvEpisode	The First Episode of Season 3	The First Episode of Season 3	0	2021	\N	\N	Adventure
tt16260146	short	Incurable Disease	Fujinoyamai	0	2020	\N	29	Documentary,Short
tt1213086	movie	Kôya no hate: zenpen	Kôya no hate: zenpen	0	1933	\N	\N	Drama
tt3266866	tvEpisode	Episode #1.39	Episode #1.39	0	\N	\N	\N	Drama
tt14776270	tvEpisode	Episode #1.161	Episode #1.161	0	\N	\N	\N	Drama
tt0848569	tvMovie	The Away Game	The Away Game	0	2006	\N	52	Documentary
tt4792354	tvEpisode	Babies and Big Rigs	Babies and Big Rigs	0	2010	\N	21	Reality-TV
tt28145625	tvSeries	Bela do Verão	Bela do Verão	0	2021	\N	\N	Reality-TV
tt11745344	tvEpisode	Episode #1.94	Episode #1.94	0	2013	\N	\N	Drama
tt0816529	video	I'm Staying with My Boys: The Heroic Life of Sgt. John Basilone, USMC	I'm Staying with My Boys: The Heroic Life of Sgt. John Basilone, USMC	0	2005	\N	45	Documentary
tt19370734	tvEpisode	3 Heures d'Agonie	3 Heures d'Agonie	0	2022	\N	\N	Documentary,Talk-Show
tt20605338	tvEpisode	Game Night: NBA Finals 2010, Game 7	Game Night: NBA Finals 2010, Game 7	0	2010	\N	\N	\N
tt2775302	tvEpisode	Episode dated 17 April 1992	Episode dated 17 April 1992	0	1992	\N	\N	News
tt25380318	tvEpisode	Krishna Gets Shocked	Krishna Gets Shocked	0	2022	\N	\N	Drama
tt6001760	tvEpisode	Sitter Jitters	Sitter Jitters	0	1984	\N	11	Animation,Comedy,Family
tt15766174	tvEpisode	11-11-2021	11-11-2021	0	2021	\N	60	Talk-Show
tt7151686	tvEpisode	Episode #2.4	Episode #2.4	0	1966	\N	\N	Family,Game-Show
tt6023952	movie	Poet Muslim Magomayev	Poet Muslim Magomayev	0	1971	\N	71	Biography,Music
tt4226490	tvEpisode	Marseille	Marseille	0	1997	\N	\N	Comedy,Family
tt5700008	tvEpisode	Episode #1.6	Episode #1.6	0	1995	\N	\N	Comedy
tt0517796	tvEpisode	Uncle Bentley and the Aunts	Uncle Bentley and the Aunts	0	1957	\N	30	Comedy,Family
tt5289806	short	Trip in Paris	Trip in Paris	0	2016	\N	12	Short
tt0595547	tvEpisode	Stefans Geheimnis	Stefans Geheimnis	0	1998	\N	\N	Drama
tt28551561	tvEpisode	Episode #1.55	Episode #1.55	0	2023	\N	52	Drama,Romance
tt9794826	tvEpisode	Brexit-Chaos: Wie geht es jetzt weiter?	Brexit-Chaos: Wie geht es jetzt weiter?	0	2018	\N	\N	Talk-Show
tt1194409	tvSpecial	1985 MLB All-Star Game	1985 MLB All-Star Game	0	1985	\N	174	Sport
tt1014787	video	AIDS Inc.	AIDS Inc.	0	2007	\N	120	Documentary
tt28712874	tvEpisode	#304 - America Ferrera	#304 - America Ferrera	0	2023	\N	\N	Biography,Documentary
tt30316821	tvEpisode	Episode #1.6	Episode #1.6	0	2025	\N	\N	Drama,Romance
tt14967056	tvSeries	Cohabitation	Cohabitation	0	2019	\N	8	Comedy
tt5356630	tvEpisode	Heat 3: Cartoons and Animations	Heat 3: Cartoons and Animations	0	1983	\N	50	Family
tt34625276	tvEpisode	All the Colors of the Dark (1972)/The Case of the Bloody Iris (1972)	All the Colors of the Dark (1972)/The Case of the Bloody Iris (1972)	0	2024	\N	\N	Horror,Talk-Show,Thriller
tt6312672	tvEpisode	Episode #1.264	Episode #1.264	0	1957	\N	\N	Drama,Romance
tt27662794	short	Look at Life: Controlled Landing	Look at Life: Controlled Landing	0	1961	\N	8	Documentary,Short
tt1934370	movie	Písen o veliké lásce	Písen o veliké lásce	0	1932	\N	\N	Drama
tt3888132	tvEpisode	Episode #1.54	Episode #1.54	0	\N	\N	\N	Crime,Drama,Romance
tt8720660	tvEpisode	19th June 2018 Evening News	19th June 2018 Evening News	0	2018	\N	\N	News
tt14018394	tvEpisode	Episode #1.14095	Episode #1.14095	0	2021	\N	37	Drama,Romance
tt26736246	tvEpisode	Episode 7	Episode 7	0	2023	\N	\N	Documentary
tt2635882	tvSeries	Buba Shel Layla	Buba Shel Layla	0	2011	\N	25	Comedy,Sport,Talk-Show
tt21215940	tvEpisode	Clue (SNES)	Clue (SNES)	0	2014	\N	\N	Comedy
tt1755773	tvEpisode	Buying the Games	Buying the Games	0	2004	\N	\N	Documentary,News
tt13223530	movie	Namma Kuzhaindagal	Namma Kuzhaindagal	0	1970	\N	\N	\N
tt12657232	tvEpisode	Episode #14.129	Episode #14.129	0	2005	\N	\N	Drama
tt25151784	tvEpisode	Episode #1.30	Episode #1.30	0	2023	\N	\N	Romance
tt15072918	tvEpisode	Les bidasses: le service militaire	Les bidasses: le service militaire	0	1983	\N	\N	\N
tt0099311	tvMovie	The Court-Martial of Jackie Robinson	The Court-Martial of Jackie Robinson	0	1990	\N	100	Biography,Drama
tt12338814	tvEpisode	Why Butch Hartman STINKS!!	Why Butch Hartman STINKS!!	0	2020	\N	\N	Comedy
tt9845442	tvEpisode	Episode #1.399	Episode #1.399	0	2016	\N	\N	Drama
tt5298464	tvEpisode	Episode #1.10	Episode #1.10	0	2015	\N	55	Crime,Mystery
tt11986152	tvEpisode	Chota Packet Bada Dhamaka	Chota Packet Bada Dhamaka	0	\N	\N	\N	Action,Animation
tt35441616	tvEpisode	Los Bipolares hablan de su nuevo disco "El hombre más feliz del mundo"	Los Bipolares hablan de su nuevo disco "El hombre más feliz del mundo"	0	2012	\N	\N	News,Talk-Show
tt10270220	tvEpisode	Sous la peau	Sous la peau	0	2019	\N	\N	Crime,Drama,Thriller
tt8514626	tvEpisode	Do You B'leed In Magic	Do You B'leed In Magic	0	2018	\N	\N	Comedy
tt6818168	tvEpisode	El Titi y Bruce Lee de peleas	El Titi y Bruce Lee de peleas	0	2010	\N	\N	Animation,Comedy
tt1886422	tvEpisode	Episode #1.47	Episode #1.47	0	2005	\N	\N	Comedy,Game-Show
tt30737907	tvEpisode	Kárpátalja Expressz	Kárpátalja Expressz	0	2011	\N	25	Documentary
tt14913300	tvEpisode	Mike Gutridge Interview	Mike Gutridge Interview	0	2021	\N	\N	Biography,Horror,Talk-Show
tt8658644	tvEpisode	Preparation For Bad Fortune. Based on chapter XXV in 'The Prince': 'Of the influence of fortune in human affairs, and how it may be counteracted'	Preparation For Bad Fortune. Based on chapter XXV in 'The Prince': 'Of the influence of fortune in human affairs, and how it may be counteracted'	0	2011	\N	\N	Documentary
tt27074230	tvEpisode	Episode #1.4359	Episode #1.4359	0	1973	\N	22	Drama,Romance
tt34153151	tvEpisode	Episode #1.1036	Episode #1.1036	0	1961	\N	22	Drama
tt7650018	tvEpisode	Avsnitt 2	Avsnitt 2	0	2017	\N	44	Talk-Show
tt0602307	tvEpisode	Cuisine à la Stalag 13	Cuisine à la Stalag 13	0	1970	\N	30	Comedy,War
tt3173212	tvEpisode	Episode #1.40	Episode #1.40	0	2011	\N	\N	Reality-TV
tt4085854	tvEpisode	2010 FWBC Camping Trip: Pastor Anderson's Sermon	2010 FWBC Camping Trip: Pastor Anderson's Sermon	0	2010	\N	32	Reality-TV
tt6842868	short	Addicted to Love	Addicted to Love	0	2017	\N	3	Comedy,Romance,Short
tt6445822	tvEpisode	Episode #1.6515	Episode #1.6515	0	2022	\N	28	Crime,Drama,Romance
tt10637370	tvEpisode	Scooter Derek, This Is Your Life	Scooter Derek, This Is Your Life	0	2019	\N	\N	Talk-Show
tt29273868	tvEpisode	Episode #1.5855	Episode #1.5855	0	1980	\N	60	Talk-Show
tt3637698	tvEpisode	Jon Lovitz/Ally Walker/Rusted Root	Jon Lovitz/Ally Walker/Rusted Root	0	1996	\N	57	Comedy,Music,Talk-Show
tt0595110	tvEpisode	Marcoh's Notes	Marukô nôto	0	2004	\N	24	Action,Adventure,Animation
tt7956220	tvEpisode	Episode #1.33	Episode #1.33	0	2008	\N	45	Comedy
tt32268246	tvEpisode	Randall Hall (2/7/12)	Randall Hall (2/7/12)	0	2012	\N	\N	Talk-Show
tt7489442	tvEpisode	Women's day special	Women's day special	0	\N	\N	\N	Comedy,Drama
tt8817384	tvEpisode	Episode #1.8	Episode #1.8	0	1998	\N	\N	Comedy,Romance
tt8849934	tvEpisode	Episode dated 23 October 2017	Episode dated 23 October 2017	0	2017	\N	\N	News
tt28578224	tvEpisode	Episode #1.5242	Episode #1.5242	0	1983	\N	42	Crime,Drama,Romance
tt26446160	tvEpisode	Voittaja ratkeaa!	Voittaja ratkeaa!	0	2020	\N	\N	Reality-TV
tt0781472	movie	Seventh Anniversary	Seventh Anniversary	0	2003	\N	76	Romance
tt27199631	tvEpisode	Episode #1.340	Episode #1.340	0	2022	\N	\N	Drama
tt1063739	tvEpisode	Episode #1.6591	Episode #1.6591	0	2007	\N	22	Comedy,Drama,Romance
tt16066310	tvEpisode	20. mai 2014 kl. 20:55	20. mai 2014 kl. 20:55	0	2014	\N	\N	News
tt0613729	tvEpisode	The Bob Hope Show	The Bob Hope Show	0	1962	\N	30	Comedy
tt1377507	short	Let Me Go	Let Me Go	0	2009	\N	7	Comedy,Short
tt0320300	short	Portret: Miki Muster	Portret: Miki Muster	0	1997	\N	31	Short
tt4218926	videoGame	Surface 4: The Pantheon	Surface 4: The Pantheon	0	2013	\N	\N	Mystery
tt1900675	tvEpisode	Surprising Health Dangers You Never Knew	Surprising Health Dangers You Never Knew	0	2011	\N	41	News,Talk-Show
tt7543426	tvEpisode	Episode dated 27 October 2017	Episode dated 27 October 2017	0	2017	\N	\N	News,Talk-Show
tt13192086	tvEpisode	Episode #13.60	Episode #13.60	0	\N	\N	60	Drama,Talk-Show
tt0011342	short	It's a Boy	It's a Boy	0	1920	\N	\N	Comedy,Short
tt6859608	tvEpisode	Episode #1.36	Episode #1.36	0	2010	\N	\N	Drama
tt3127864	tvEpisode	Robert Reaves: Oct. 1 Testimony (Day 3, Part 1)	Robert Reaves: Oct. 1 Testimony (Day 3, Part 1)	0	2009	\N	\N	Documentary
tt15794426	tvEpisode	10. okt. 2019 - Politisk kvarter	10. okt. 2019 - Politisk kvarter	0	2019	\N	\N	News
tt3218850	tvEpisode	Hernán escapa	Hernán escapa	0	2013	\N	42	Drama,Romance
tt35319700	tvEpisode	Interview with Wes Huff and GodLogic	Interview with Wes Huff and GodLogic	0	2024	\N	\N	Talk-Show
tt0456813	tvSeries	Viva el teatro	Viva el teatro	0	2005	\N	\N	Comedy
tt21270542	tvEpisode	Jessica und Jennifer	Jessica und Jennifer	0	2017	\N	\N	Reality-TV
tt32727495	tvEpisode	Episode #1.10	Episode #1.10	0	2009	\N	\N	Drama,Fantasy
tt16235608	tvEpisode	Episode #3.150	Episode #3.150	0	1991	\N	\N	Game-Show
tt18072628	tvEpisode	19/10/2021	19/10/2021	0	2021	\N	202	Comedy,Talk-Show
tt11630922	tvEpisode	Episode #1.351	Episode #1.351	0	\N	\N	\N	Crime,Horror,Sci-Fi
tt3287444	tvEpisode	Episode dated 31 October 2013	Episode dated 31 October 2013	0	2013	\N	\N	News
tt1921364	tvEpisode	Wasiyat	Wasiyat	0	1993	\N	43	Adventure,Crime,Mystery
tt12163244	tvEpisode	Episode #1.8	Episode #1.8	0	\N	\N	\N	Mystery,Thriller
tt5608490	tvSpecial	45th Grey Cup	45th Grey Cup	0	1957	\N	\N	Sport
tt0847203	tvSeries	Tim Stack's Family Vacation	Tim Stack's Family Vacation	0	2007	\N	\N	Comedy
tt2101793	tvEpisode	Haley/Mary	Haley/Mary	0	2011	\N	\N	Documentary
tt10537660	movie	Do You Do You Saint-Tropez	Mystère à Saint-Tropez	0	2021	\N	89	Comedy,Crime,Mystery
tt19722430	tvEpisode	Twitch sperrt User, Triller kämpft gegen Tik Tok, Eishockey und Fußball	Twitch sperrt User, Triller kämpft gegen Tik Tok, Eishockey und Fußball	0	2020	\N	\N	News
tt11611354	tvEpisode	Alyssa Bustamante	Alyssa Bustamante	0	2020	\N	\N	Crime,Documentary
tt30276030	tvEpisode	Episode #1.5784	Episode #1.5784	0	1998	\N	30	News
tt0510524	tvEpisode	Mutterliebe	Mutterliebe	0	2003	\N	\N	Drama
tt28549748	movie	Full Moon	Full Moon	0	\N	\N	\N	\N
tt18073740	tvEpisode	Episode #1.2877	Episode #1.2877	0	\N	\N	\N	Animation,Comedy,Family
tt3413830	tvEpisode	Episode dated 12 February 1994	Episode dated 12 February 1994	0	1994	\N	\N	Family
tt8553926	short	The Principles of Magnetic Workholding	The Principles of Magnetic Workholding	0	1972	\N	30	Documentary,Short
tt0929487	movie	Uksuum Cauyai: The Drums of Winter	Uksuum Cauyai: The Drums of Winter	0	1989	\N	90	Documentary,Music
tt14021866	tvEpisode	50 People Try To Make Dough	50 People Try To Make Dough	0	2019	\N	\N	Reality-TV
tt28655501	tvEpisode	Episode #1.113	Episode #1.113	0	\N	\N	\N	Comedy
tt14792880	short	Jane	Jane	0	2021	\N	16	Drama,Short
tt0563260	tvEpisode	Bionic Man	Bionic Man	0	2002	\N	27	Drama
tt1323446	tvEpisode	Episode #1.12	Episode #1.12	0	2007	\N	\N	Comedy,News,Reality-TV
tt2687770	tvEpisode	Episode dated 11 January 1979	Episode dated 11 January 1979	0	1979	\N	\N	News
tt4121898	short	Pubs in Portsmouth	Pubs in Portsmouth	0	2013	\N	20	Short,Talk-Show
tt31436314	movie	John and Lisa's Food Trip Down Under	John and Lisa's Food Trip Down Under	0	2024	\N	60	Documentary
tt15801560	tvEpisode	107 Nickelodeon Facts You Should Know!	107 Nickelodeon Facts You Should Know!	0	2021	\N	23	Comedy,Documentary
tt3300460	video	Gli Squallor	Gli Squallor	0	2013	\N	150	Documentary
tt8836372	short	Oslo Havn	Oslo Havn	0	1984	\N	15	Documentary,Short
tt15254298	tvEpisode	Episode #1.565	Episode #1.565	0	\N	\N	\N	Drama
tt1738052	tvEpisode	Carnival of Animals	Carnival of Animals	0	1977	\N	\N	Music
tt15132940	tvEpisode	Episode dated 28 July 2021	Episode dated 28 July 2021	0	2021	\N	\N	News
tt13651344	tvEpisode	Episode #1.1037	Episode #1.1037	0	\N	\N	\N	News
tt4116048	short	Patton Oswalt Confronts His Haters	Patton Oswalt Confronts His Haters	0	2014	\N	\N	Comedy,Short
tt1099850	tvEpisode	Hell's Kitchen vs. Harlem	Hell's Kitchen vs. Harlem	0	2006	\N	22	Comedy
tt11843952	tvEpisode	Episode #3.116	Episode #3.116	0	1997	\N	\N	Comedy,Drama,Music
tt4568854	short	The Encounters	The Encounters	0	\N	\N	10	Action,Drama,Short
tt1377041	tvEpisode	Episode dated 28 October 1991	Episode dated 28 October 1991	0	1991	\N	\N	News,Talk-Show
tt13622092	tvEpisode	Episode dated 10 December 2020	Episode dated 10 December 2020	0	2020	\N	\N	\N
tt9489942	tvEpisode	Teacher's Pet	Teacher's Pet	0	2018	\N	\N	Documentary,Short
tt3972084	short	Café para llevar	Café para llevar	0	2014	\N	13	Drama,Short
tt3469120	tvEpisode	Elephant	Elephant	0	\N	\N	11	Animation,Family
tt5390838	tvEpisode	Episode #1.4888	Episode #1.4888	0	\N	\N	\N	News
tt9030736	tvEpisode	1922 - Berlijn	1922 - Berlijn	0	2007	\N	35	Documentary,History,War
tt4970204	tvEpisode	Last Goodbye	Last Goodbye	0	2015	\N	43	Documentary
tt12233736	tvEpisode	Episode #3.3	Episode #3.3	0	1995	\N	\N	Comedy,Family,Game-Show
tt8670340	tvEpisode	Episode #1.177	Episode #1.177	0	1999	\N	60	Drama,Romance
tt1957978	short	Nagarjunakonda	Nagarjunakonda	0	1958	\N	\N	Documentary,Short
tt6862016	movie	The Expat	The Expat	0	2021	\N	\N	Thriller
tt6151298	short	Inner Kitty	Inner Kitty	0	2016	\N	6	Comedy,Short
tt31037916	tvEpisode	Panorama 21/10/74	Panorama 21/10/74	0	1974	\N	\N	Documentary,News
tt7652348	tvEpisode	ACCELERATING TRAGEDY: A UNIVERSE VANISHES!	ACCELERATING TRAGEDY: A UNIVERSE VANISHES!	0	2017	\N	\N	Action,Adventure,Animation
tt21054968	tvEpisode	9 More Video Game WTFs (CONTINUED)	9 More Video Game WTFs (CONTINUED)	0	2010	\N	2	Documentary
tt4462914	tvEpisode	Episode #1.50	Episode #1.50	0	\N	\N	\N	\N
tt1924831	tvEpisode	Madeleine Kamman	Madeleine Kamman	0	2001	\N	\N	\N
tt35277076	tvEpisode	Episode dated 29 March 1992	Episode dated 29 March 1992	0	1992	\N	\N	Talk-Show
tt9335082	tvEpisode	Episode #1.11	Episode #1.11	0	2017	\N	\N	Drama
tt22502976	tvEpisode	The Pizzeria	The Pizzeria	0	2022	\N	\N	Animation
tt3551418	tvEpisode	Episode #1.1	Episode #1.1	0	2014	\N	\N	Comedy
tt4138122	tvEpisode	Episode #1.37	Episode #1.37	0	\N	\N	\N	Family
tt8086740	tvEpisode	Episode #1.66	Episode #1.66	0	1983	\N	\N	\N
tt27482522	tvEpisode	Episode dated 15 June 2016	Episode dated 15 June 2016	0	2016	\N	\N	News
tt5731836	tvEpisode	Episode #1.982	Episode #1.982	0	1996	\N	22	Drama
tt10664536	tvEpisode	Chuck Grows a Mustache	Chuck Grows a Mustache	0	1951	\N	\N	Comedy,Family
tt3960290	movie	On the Hook	On the Hook	0	2012	\N	105	Drama
tt7187398	tvEpisode	Episode #1.4	Episode #1.4	0	\N	\N	45	Documentary
tt15419914	movie	Committed to the Craft	Committed to the Craft	0	2022	\N	\N	Documentary
tt17678208	tvEpisode	S1E11	S1E11	0	2022	\N	\N	Game-Show
tt0500733	tvEpisode	Episode dated 26 April 1980	Episode dated 26 April 1980	0	1980	\N	\N	Family,Music,News
tt0918116	tvEpisode	Unhealthy Competition	Unhealthy Competition	0	2006	\N	\N	Family
tt28658425	tvEpisode	Cambridge, Massachusetts	Cambridge, Massachusetts	0	2023	\N	\N	Crime
tt10063006	tvEpisode	Round of 64: Iona vs. North Carolina	Round of 64: Iona vs. North Carolina	0	2019	\N	\N	Sport
tt0989024	video	Long John	Long John	0	2002	\N	\N	Comedy
tt14717216	short	Nosso Amor Vai Embora	Nosso Amor Vai Embora	0	2020	\N	\N	Documentary,Short
tt2350455	tvEpisode	Episode dated 9 February 2004	Episode dated 9 February 2004	0	2004	\N	\N	\N
tt28565287	tvEpisode	Episode dated 19 August 2023	Episode dated 19 August 2023	0	2023	\N	\N	Talk-Show
tt5729504	short	Thirst	Thirst	0	2015	\N	8	Drama,Short
tt2794440	tvEpisode	Aflevering 4670	Aflevering 4670	0	2013	\N	\N	Drama,Romance
tt0346778	short	A College Boomerang	A College Boomerang	0	1916	\N	\N	Comedy,Short
tt6989356	tvEpisode	Wie gewonnen, so zerronnen	Wie gewonnen, so zerronnen	0	2014	\N	\N	Drama,Family,Romance
tt0873148	tvEpisode	Episode dated 28 September 2006	Episode dated 28 September 2006	0	2006	\N	\N	Documentary
tt2559248	tvEpisode	Ice Chip Off the Old Block	Ice Chip Off the Old Block	0	2012	\N	22	Reality-TV
tt0434722	tvSeries	Spoorloos verdwenen	Spoorloos verdwenen	0	2006	2008	50	Crime,Drama
tt10856380	tvSeries	Ever Night 2	Jiang Ye 2	0	2020	2020	45	Action,Adventure,Drama
tt12785856	tvEpisode	Of Mages, Malice, and Monstrous Mayhem	Of Mages, Malice, and Monstrous Mayhem	0	2022	\N	42	Action,Adventure,Drama
tt9659602	tvEpisode	Margam Castle	Margam Castle	0	2019	\N	43	Reality-TV
tt0342135	short	Blood Will Tell	Blood Will Tell	0	1913	\N	22	Drama,Short
tt1011941	tvEpisode	Episode #1.17	Episode #1.17	0	2000	\N	\N	Drama
tt27434153	tvEpisode	Episode #1.3991	Episode #1.3991	0	1980	\N	43	Drama,Romance
tt4796112	short	T. Rex	T. Rex	0	2015	\N	11	Drama,Short
tt6104550	tvEpisode	Folks!/K2/One False Move/Poison Ivy/Leaving Normal	Folks!/K2/One False Move/Poison Ivy/Leaving Normal	0	1992	\N	\N	Talk-Show
tt21399842	tvEpisode	Episode #4.8	Episode #4.8	0	2018	\N	\N	Comedy,Family
tt9828132	tvEpisode	Devon	Devon	0	\N	\N	\N	Reality-TV
tt32296243	movie	Hell in Paradise	Hell in Paradise	0	\N	\N	\N	Thriller
tt35403804	short	The Wilderness	The Wilderness	0	2023	\N	12	Mystery,Short
tt7314942	tvEpisode	Sleep to Grow	Sleep to Grow	0	2017	\N	\N	Drama
tt2329014	tvEpisode	Episode #15.6	Episode #15.6	0	2011	\N	\N	Comedy,Documentary
tt0387591	tvMovie	Shock & Awe: The Return of 'Alien'	Shock & Awe: The Return of 'Alien'	0	2003	\N	25	Documentary
tt15593990	tvEpisode	8. august 2013	8. august 2013	0	2013	\N	\N	News
tt31417485	movie	Chupp	Chupp	0	2024	\N	133	Thriller
tt7002484	tvEpisode	Don't Touch Her 5	Don't Touch Her 5	1	2017	\N	\N	Adult
tt12689750	tvEpisode	Pork Chop Phooey	Pork Chop Phooey	0	1975	\N	6	Animation,Comedy,Family
tt3580762	tvEpisode	Grab Dinner By The Tail	Grab Dinner By The Tail	0	2014	\N	\N	Reality-TV
tt20876436	video	Maximum Perversum 55 - Gierige Fotzen	Maximum Perversum 55 - Gierige Fotzen	1	1997	\N	83	Adult
tt13557514	tvEpisode	Episode #1.89	Episode #1.89	0	2019	\N	\N	Animation,Short
tt33703890	tvEpisode	Conspiracy Theories That Turned Out to Be True	Conspiracy Theories That Turned Out to Be True	0	2024	\N	15	Crime,Horror,Mystery
tt32919395	tvEpisode	Episode #1.2087	Episode #1.2087	0	2003	\N	35	News
tt11148068	tvEpisode	Episode #1.52	Episode #1.52	0	1956	\N	\N	Talk-Show
tt1519237	tvSeries	Wunder-Bar	Wunder-Bar	0	1995	1996	45	Game-Show
tt10171526	short	And So He Opens His Eyes	And So He Opens His Eyes	0	2019	\N	12	Comedy,Fantasy,Horror
tt0861404	tvEpisode	The Truth About Mother Goose	The Truth About Mother Goose	0	1963	\N	60	Adventure,Drama,Family
tt17157440	tvEpisode	Der Glitzerbaum	Der Glitzerbaum	0	2017	\N	44	Crime,Reality-TV
tt9397578	tvEpisode	Episode 4	Episode 4	0	2018	\N	22	Drama
tt3328042	tvEpisode	Greed and Lust	Greed and Lust	0	2013	\N	\N	Crime,Documentary
tt22173936	tvEpisode	People Pleasers - Pros and Cons for Maids	People Pleasers - Pros and Cons for Maids	0	2017	\N	\N	Talk-Show
tt19366840	tvEpisode	Episode #15.157	Episode #15.157	0	\N	\N	30	Documentary,Family
tt10685242	tvEpisode	The Gift of the End of the World	The Gift of the End of the World	0	2017	\N	\N	Talk-Show
tt1488643	tvEpisode	Ramón y Marta empiezan de nuevo	Ramón y Marta empiezan de nuevo	0	2009	\N	\N	Drama,War
tt1620046	tvEpisode	The Great Outdoors	The Great Outdoors	0	1977	\N	24	Adventure,Comedy,Family
tt15546426	videoGame	Dodgeball Academia	Dodgeball Academia	0	2021	\N	\N	Action,Adventure,Sport
tt5117170	tvSeries	The Last Lion	The Last Lion	0	\N	\N	\N	Biography
tt9348060	tvEpisode	Deux steamés avec Normand L'Amour	Deux steamés avec Normand L'Amour	0	2010	\N	8	Talk-Show
tt18250548	tvEpisode	America, Do You Have What It Takes?	America, Do You Have What It Takes?	0	2023	\N	\N	Game-Show,Reality-TV
tt9740696	tvEpisode	Episode #1.170	Episode #1.170	0	2006	\N	\N	Drama
tt4042080	tvEpisode	Episode #1.5	Episode #1.5	0	2014	\N	30	Animation,Comedy,History
tt1157067	tvEpisode	Un embarazo de altura	Un embarazo de altura	0	1994	\N	\N	Comedy
tt22010336	tvEpisode	Episode #1.28	Episode #1.28	0	1991	\N	\N	Drama,Romance
tt2451782	short	Paul the Dowser: Opening a Portal to the 5th Dimension	Paul the Dowser: Opening a Portal to the 5th Dimension	0	2014	\N	12	Comedy,Documentary,Sci-Fi
tt4032518	tvEpisode	Sir Nigel Hawthorne: Remembered	Sir Nigel Hawthorne: Remembered	0	2002	\N	42	Biography,Documentary,Music
tt8564538	tvEpisode	Episode #3.101	Episode #3.101	0	1987	\N	\N	Family,Musical
tt2128049	tvEpisode	Love Means Nothing in Tennis	Love Means Nothing in Tennis	0	2012	\N	59	Comedy,Crime,Drama
tt21432634	tvEpisode	Episode #1.27	Episode #1.27	0	2019	\N	\N	Animation
tt15556682	tvEpisode	Episode #1.592	Episode #1.592	0	\N	\N	\N	Comedy,Drama
tt9053968	tvEpisode	2010 Week 2	2010 Week 2	0	\N	\N	\N	News,Sport,Talk-Show
tt9562714	tvEpisode	Episode dated 22 May 2017	Episode dated 22 May 2017	0	2017	\N	\N	News
tt5528154	tvEpisode	Avsnitt 5	Avsnitt 5	0	2016	\N	42	Reality-TV
tt22515600	tvEpisode	Ana Rose Makes Fireworks With Her Pussy On Independence Day!	Ana Rose Makes Fireworks With Her Pussy On Independence Day!	1	2019	\N	32	Adult
tt23980592	tvEpisode	Episode #1.147	Episode #1.147	0	2021	\N	\N	History
tt6079884	short	Adrian's Story	Adrian's Story	0	2015	\N	3	Documentary,Short
tt8523010	tvEpisode	Episode dated 6 June 2018	Episode dated 6 June 2018	0	2018	\N	\N	Talk-Show
tt7691376	tvEpisode	Episode #1.135	Episode #1.135	0	2010	\N	\N	Drama,Romance
tt1442481	movie	#73, Shaanthi Nivaasa	#73, Shaanthi Nivaasa	0	2007	\N	157	Drama,Family,Musical
tt11746020	tvEpisode	Episode #1.388	Episode #1.388	0	\N	\N	\N	Comedy
tt6671550	tvEpisode	Episode dated 17 March 2017	Episode dated 17 March 2017	0	2017	\N	\N	Talk-Show
tt9262768	tvEpisode	Episode #1.64	Episode #1.64	0	2009	\N	\N	Romance
tt1102658	tvEpisode	Dackel kross süß-sauer	Dackel kross süß-sauer	0	2001	\N	24	Comedy
tt22485744	tvEpisode	Selbstvorwürfe	Selbstvorwürfe	0	2022	\N	\N	Drama,Romance
tt7755274	tvEpisode	Side of Chilaquiles	Side of Chilaquiles	0	2017	\N	\N	Comedy
tt21025742	tvEpisode	Let's Just Swing	Let's Just Swing	1	2006	\N	24	Adult
tt11462094	tvEpisode	Episode #1.2656	Episode #1.2656	0	2019	\N	\N	Drama
tt11929294	tvEpisode	Guyland	Guyland	0	2017	\N	18	Comedy,Crime
tt30875330	tvEpisode	July 12, 2022	July 12, 2022	0	2022	\N	\N	News,Talk-Show
tt2097975	tvSeries	Aru hi watashi wa	Aru hi watashi wa	0	1967	1968	\N	\N
tt19488364	tvEpisode	S01E01	S01E01	0	2022	\N	\N	Music,Reality-TV
tt8575766	tvEpisode	Machinaka gunyagunya nendoron	Machinaka gunyagunya nendoron	0	2015	\N	\N	Animation,Comedy,Drama
tt4680650	short	Surprise Visit	Surprise Visit	0	2014	\N	7	Comedy,Short
tt10758690	tvEpisode	Episode #1.32	Episode #1.32	0	1965	\N	\N	Drama
tt35505147	tvEpisode	Episode dated 2 June 2022	Episode dated 2 June 2022	0	\N	\N	\N	News,Talk-Show
tt0677744	tvEpisode	Convictions	Convictions	0	2002	\N	43	Crime,Drama,Mystery
tt9394610	tvEpisode	Top 10 Most Expensive Sci-Fi Movies Ever Made	Top 10 Most Expensive Sci-Fi Movies Ever Made	0	2017	\N	\N	Comedy,Talk-Show
tt29768105	short	Dopady lhostejnosti	Dopady lhostejnosti	0	2019	\N	11	Short
tt13419618	tvEpisode	Episode #3.49	Episode #3.49	0	\N	\N	\N	News
tt10601554	tvEpisode	Episode #3.5	Episode #3.5	0	2019	\N	\N	Drama
tt0859781	tvEpisode	New Chairs	New Chairs	0	1953	\N	30	Comedy,Drama,Family
tt8569992	tvEpisode	Episode #2.105	Episode #2.105	0	1990	\N	\N	Family,Game-Show,Musical
tt7738656	short	What You're Doing is Bad	What You're Doing is Bad	0	\N	\N	8	Comedy,Drama,Short
tt4792384	tvEpisode	2. Ta Challenge tou Borat: B' Meros	2. Ta Challenge tou Borat: B' Meros	0	2015	\N	\N	Comedy,Talk-Show
tt31638715	movie	Miracle on the Precipice	Miracle on the Precipice	0	\N	\N	\N	Adventure
tt9385690	tvEpisode	Episode #1.126	Episode #1.126	0	2006	\N	\N	Action,Adventure,Fantasy
tt26407927	movie	The Last Song: Maxi's Revenge	The Last Song: Maxi's Revenge	0	2023	\N	\N	Crime,Drama
tt0942967	tvEpisode	Episode #1.80	Episode #1.80	0	2007	\N	\N	Talk-Show
tt8729732	tvEpisode	Episode #1.173	Episode #1.173	0	1969	\N	\N	\N
tt2029103	tvEpisode	Episode #1.29	Episode #1.29	0	2001	\N	\N	Drama
tt13864070	short	Sparks Underwater	Sparks Underwater	0	\N	\N	20	Drama,Short
tt7964934	tvEpisode	Episode #1.64	Episode #1.64	0	2008	\N	45	Comedy
tt11453472	tvEpisode	Episode #1.314	Episode #1.314	0	\N	\N	22	Drama
tt27862030	tvMiniSeries	Building The Last of Us	Building The Last of Us	0	2023	2023	27	Documentary
tt4836258	tvEpisode	Episode #1.4	Episode #1.4	0	2012	\N	\N	Comedy
tt1090245	video	Nulla è impossibile	Nulla è impossibile	1	2004	\N	90	Adult
tt1469806	tvEpisode	Episode #7.11	Episode #7.11	0	1978	\N	43	Family,Game-Show
tt9366082	tvEpisode	Episode #1.504	Episode #1.504	0	2001	\N	\N	Drama
tt6512960	tvEpisode	Il peso del potere	Il peso del potere	0	2016	\N	\N	Comedy
tt11767638	short	Are You Really Gone	Are You Really Gone	0	2020	\N	\N	Drama,Short
tt33363660	tvEpisode	Episode #1.46	Episode #1.46	0	1952	\N	\N	News
tt21203940	tvEpisode	Sonu surprises the Roadies!	Sonu surprises the Roadies!	0	2022	\N	\N	Adventure,Reality-TV
tt1056429	short	Kusama's Self-Obliteration	Kusama's Self-Obliteration	0	1967	\N	24	Short
tt1775731	tvEpisode	Doug's Career Anxiety/Doug's Big Brawl	Doug's Career Anxiety/Doug's Big Brawl	0	1993	\N	24	Adventure,Animation,Drama
tt3586696	tvMiniSeries	MyChonny Moves In	MyChonny Moves In	0	2015	\N	\N	Comedy
tt11061646	tvEpisode	Episode dated 19 April 2011	Episode dated 19 April 2011	0	2011	\N	\N	Comedy,Talk-Show
tt15363798	tvEpisode	Episode #1.134	Episode #1.134	0	\N	\N	\N	Family
tt0472390	movie	Küssen ist keine Sünd'	Küssen ist keine Sünd'	0	1926	\N	\N	\N
tt27853071	tvEpisode	Episode #1.2037	Episode #1.2037	0	1959	\N	15	Drama,Romance
tt13775164	tvEpisode	Episode dated 5 January 2021	Episode dated 5 January 2021	0	2021	\N	180	News,Talk-Show
tt20427582	tvEpisode	Die Doppelmoral von DEKARLDENT	Die Doppelmoral von DEKARLDENT	0	2022	\N	\N	Talk-Show
tt20230648	short	When your girl send you to the store to get tampons	When your girl send you to the store to get tampons	0	2021	\N	\N	Comedy,Short
tt20255790	short	Dark Mode	Dark Mode	0	2022	\N	19	Short
tt19880574	tvEpisode	Secret History of Sonic & Tails	Secret History of Sonic & Tails	0	2016	\N	\N	Comedy
tt1846858	tvEpisode	The Secret of Etiquette	The Secret of Etiquette	0	2012	\N	\N	Comedy
tt32143484	short	Principal Matters	Principal Matters	0	2024	\N	6	Comedy,Short
tt14219894	tvEpisode	Episode #1.95	Episode #1.95	0	\N	\N	\N	Drama
tt11392830	tvEpisode	Episode #1.443	Episode #1.443	0	\N	\N	\N	Romance
tt11141946	tvEpisode	044	044	0	2000	\N	\N	Drama,Family,Romance
tt6271738	tvEpisode	Pablo tiene un plan para liberar a Cristian	Pablo tiene un plan para liberar a Cristian	0	2016	\N	44	Romance
tt31037164	tvEpisode	Pamela Hutchinson	Pamela Hutchinson	0	2024	\N	\N	Crime
tt5246612	tvEpisode	Episode #11.74	Episode #11.74	0	2015	\N	\N	Family
tt33074220	tvEpisode	Episode #1.1462	Episode #1.1462	0	1980	\N	30	News
tt21849144	tvEpisode	Episode #6.2	Episode #6.2	0	1973	\N	50	Music
tt15990172	tvEpisode	17. mars 2021 kl. 23:00	17. mars 2021 kl. 23:00	0	2021	\N	\N	News
tt6661132	tvEpisode	Episode #8.9	Episode #8.9	0	1969	\N	\N	Family
tt11768570	tvEpisode	Episode #1.2986	Episode #1.2986	0	2020	\N	33	Drama,Romance
tt8871964	tvEpisode	Episode #1.144	Episode #1.144	0	1983	\N	\N	Comedy
tt7462896	tvEpisode	Mithi is jamuna's child	Mithi is jamuna's child	0	2008	\N	\N	Drama
tt14857528	movie	Time Cut	Time Cut	0	2024	\N	91	Horror,Mystery,Sci-Fi
tt1186204	short	Cupid on the Job	Cupid on the Job	0	1912	\N	\N	Comedy,Short
tt32003302	tvSeries	Viajate el Valle	Viajate el Valle	0	2020	2021	\N	Documentary
tt1078593	short	Ricky Cooper	Ricky Cooper	0	2007	\N	17	Comedy,Short
tt3185008	tvEpisode	Stor lycka, stor fara	Stor lycka, stor fara	0	1987	\N	44	Drama
tt10576374	tvEpisode	Episode #1.227	Episode #1.227	0	2014	\N	\N	Comedy
tt6806954	tvEpisode	Episode dated 13 July 1996	Episode dated 13 July 1996	0	1996	\N	27	News,Talk-Show
tt30272245	tvEpisode	Episode #1.5336	Episode #1.5336	0	1996	\N	60	News
tt9630990	tvEpisode	Dont Break The Rules	Dont Break The Rules	1	2017	\N	\N	Adult
tt0512119	tvEpisode	El susto	El susto	0	2002	\N	\N	Comedy,Drama,Family
tt13849900	tvEpisode	Episode #1.2401	Episode #1.2401	0	\N	\N	\N	News,Talk-Show
tt2592776	video	Tin Machine: Live at the Docks	Tin Machine: Live at the Docks	0	1992	\N	88	Music
tt2766738	movie	Nightrunners	Nightrunners	0	2015	\N	88	Drama,Thriller
tt7419208	tvEpisode	College Football - McGowan	College Football - McGowan	0	2015	\N	\N	Documentary,Sport
tt35662168	tvEpisode	Episode #1.100	Episode #1.100	0	2024	\N	\N	Drama
tt29763055	tvEpisode	Der Pfarrer und die Frauen	Der Pfarrer und die Frauen	0	2023	\N	44	Comedy
tt12416946	tvEpisode	Episode dated 28 May 2020	Episode dated 28 May 2020	0	2020	\N	\N	News,Talk-Show
tt5948646	tvEpisode	Episode #1.142	Episode #1.142	0	2011	\N	\N	Drama,Romance
tt5661452	tvEpisode	Episode #33.75	Episode #33.75	0	2016	\N	23	Drama
tt7760258	tvEpisode	Episode #1.116	Episode #1.116	0	1979	\N	60	Drama,Romance,Thriller
tt3648730	movie	Pathé Ballet: 50 jaar het Nationale Ballet	Pathé Ballet: 50 jaar het Nationale Ballet	0	2011	\N	\N	Music
tt34671460	tvEpisode	Episode #1.98	Episode #1.98	0	2024	\N	\N	Comedy
tt11664918	tvEpisode	Episode #1.61	Episode #1.61	0	\N	\N	\N	Drama
tt2914258	tvEpisode	Episode #1.77	Episode #1.77	0	2011	\N	\N	Drama,Music,Romance
tt31307672	movie	California Summer	California Summer	1	1984	\N	96	Adult
tt1332982	tvEpisode	Episode dated 20 January 1987	Episode dated 20 January 1987	0	1987	\N	\N	Talk-Show
tt27758943	tvEpisode	Episode #2.51	Episode #2.51	0	2023	\N	\N	Reality-TV
tt14300608	tvEpisode	Episode #1.38	Episode #1.38	0	2014	\N	\N	Drama,Romance
tt4956656	tvEpisode	Episode #1.12	Episode #1.12	0	\N	\N	\N	\N
tt12322766	tvEpisode	Episode #1.81	Episode #1.81	0	\N	\N	\N	News,Talk-Show
tt1153299	tvEpisode	Episode #1.46	Episode #1.46	0	1996	\N	\N	\N
tt12377228	tvEpisode	Real Life Stranger Things	Real Life Stranger Things	0	2020	\N	\N	Documentary,News
tt11071286	tvEpisode	The Man Who Won't Marry - Part 2	The Man Who Won't Marry - Part 2	0	2009	\N	\N	Comedy
tt28351416	tvEpisode	Episode #1.25	Episode #1.25	0	1964	\N	30	Drama,Romance
tt12282948	tvEpisode	Episode #2.70	Episode #2.70	0	\N	\N	\N	Drama,Fantasy,Horror
tt31975094	tvEpisode	Episode #1.129	Episode #1.129	0	2023	\N	\N	Reality-TV,Romance
tt14670512	tvEpisode	Vypusk 73: Poezd ushyol, Izobretatel', Turist-89	Vypusk 73: Poezd ushyol, Izobretatel', Turist-89	0	1989	\N	22	Comedy,Family
tt6158740	short	Cry Wolf	Cry Wolf	0	2017	\N	9	Horror,Short,Thriller
tt22939126	tvEpisode	Football: Jesuit Marauders at Elk Grove Thundering Herd	Football: Jesuit Marauders at Elk Grove Thundering Herd	0	2022	\N	158	Sport
tt26677468	tvEpisode	Episode #2.130	Episode #2.130	0	2006	\N	\N	Talk-Show
tt0788857	tvEpisode	Episode #1.9	Episode #1.9	0	1996	\N	\N	Comedy
tt9188754	tvEpisode	Episode #1.132	Episode #1.132	0	2004	\N	\N	Drama,Romance
tt3830482	short	Frog Spawn	Frog Spawn	0	2015	\N	9	Comedy,Fantasy,Short
tt0770166	short	The 14th Morning	The 14th Morning	0	2004	\N	9	Drama,Short
tt6749720	tvEpisode	Caught in a Tight Situation	Caught in a Tight Situation	1	2009	\N	\N	Adult,Drama
tt27852182	tvEpisode	July 2018	July 2018	0	2018	\N	\N	News
tt28804769	tvEpisode	Episode #1.184	Episode #1.184	0	\N	\N	30	Drama
tt33344071	movie	Dzaomalaza et le boutre brûlé	Dzaomalaza et le boutre brûlé	0	2009	\N	50	Drama
tt7485318	short	Minnie	Minnie	0	2012	\N	10	Short
tt6646754	tvEpisode	Miedo en el piso 50	Miedo en el piso 50	0	1964	\N	\N	Horror
tt11013382	tvEpisode	Episode #1.76	Episode #1.76	0	\N	\N	\N	Drama
tt1447574	tvEpisode	Bring in 'Da Boyz, Bring in 'Da Skunk	Bring in 'Da Boyz, Bring in 'Da Skunk	0	2009	\N	44	Game-Show,Reality-TV,Romance
tt2006696	short	Bipolar	Bipolar	0	2011	\N	10	Drama,Mystery,Short
tt12386854	tvEpisode	Episode #1.1519	Episode #1.1519	0	\N	\N	\N	Animation,Comedy,Family
tt1608197	movie	Sacred Earth	Sacred Earth	0	2010	\N	46	Documentary
tt2372868	tvEpisode	Episode #1.6324	Episode #1.6324	0	2012	\N	30	Crime,Drama,Romance
tt1661341	tvSpecial	1997 Norwest Sun Bowl	1997 Norwest Sun Bowl	0	1997	\N	\N	Sport
tt3263246	tvEpisode	Deuxième époque: Nans - Firmin	Deuxième époque: Nans - Firmin	0	1976	\N	27	Drama
tt31521526	tvEpisode	Lowlands	Lowlands	0	2022	\N	30	Documentary
tt29622278	tvEpisode	Als Au-Pair-Oma im Ausland	Als Au-Pair-Oma im Ausland	0	2014	\N	\N	Documentary
tt0917825	tvEpisode	Episode dated 18 October 2006	Episode dated 18 October 2006	0	2006	\N	\N	Game-Show
tt6841546	tvEpisode	Episode #1.53	Episode #1.53	0	2017	\N	60	News,Talk-Show
tt12425162	tvEpisode	Episode #1.3837	Episode #1.3837	0	2010	\N	\N	Drama
tt12841228	tvEpisode	Episode #1.746	Episode #1.746	0	\N	\N	\N	Drama
tt32583227	tvEpisode	Marty Ingels and Pat Carroll - Day 3	Marty Ingels and Pat Carroll - Day 3	0	1968	\N	\N	Game-Show
tt14903798	tvEpisode	Episode #1.179	Episode #1.179	0	\N	\N	\N	Comedy,Talk-Show
tt14649272	tvEpisode	Ninku Trap!	Ninku Trap!	0	1995	\N	\N	Action,Adventure,Animation
tt15338250	tvEpisode	La Nochevieja de Pepe el Manco	La Nochevieja de Pepe el Manco	0	1970	\N	\N	\N
tt13410454	tvEpisode	Nature Sketch	Nature Sketch	0	2020	\N	\N	\N
tt10440792	tvEpisode	Episode #1.685	Episode #1.685	0	2004	\N	\N	Family
tt30134520	tvEpisode	Episode #1.54	Episode #1.54	0	\N	\N	\N	Drama
tt11212068	tvEpisode	Episode dated 9 January 1975	Episode dated 9 January 1975	0	1975	\N	\N	News,Talk-Show
tt1262791	tvEpisode	999	999	0	2008	\N	\N	Comedy,Drama,Romance
tt5560176	short	Pizza Delivery	Pizza Delivery	0	2016	\N	\N	Comedy,Short
tt21237734	tvEpisode	Tour de France 2022, 6. Etappe: Binche - Longwy	Tour de France 2022, 6. Etappe: Binche - Longwy	0	2022	\N	\N	Documentary,News,Sport
tt32673507	tvEpisode	Episode #1.2008	Episode #1.2008	0	1978	\N	\N	News
tt1231037	tvEpisode	A Little Heart to Heart with Miss Bangor	A Little Heart to Heart with Miss Bangor	0	1978	\N	50	Crime,Drama
tt8004590	tvEpisode	Episode #1.45	Episode #1.45	0	1991	\N	\N	Drama,Romance
tt12266198	tvEpisode	Episode #3.110	Episode #3.110	0	1996	\N	\N	Crime,Drama
tt32571245	tvEpisode	Episode #1.355	Episode #1.355	0	2024	\N	\N	Drama
tt10102514	tvEpisode	Episode dated 26 April 2019	Episode dated 26 April 2019	0	2019	\N	\N	News
tt9161154	tvEpisode	Episode #1.157	Episode #1.157	0	2004	\N	\N	\N
tt1060340	tvEpisode	Episode #2.7	Episode #2.7	0	2003	\N	\N	Comedy
tt28718363	tvEpisode	The Mental Internet	The Mental Internet	0	\N	\N	\N	Mystery
tt0588612	tvEpisode	My Mother, Myself	My Mother, Myself	0	2002	\N	\N	Comedy,Drama,Romance
tt12474486	tvEpisode	Episode #1.184	Episode #1.184	0	\N	\N	\N	Drama
tt8557030	tvEpisode	Episode #9.201	Episode #9.201	0	2018	\N	21	Comedy
tt14189116	tvEpisode	The Last Days of Rome	The Last Days of Rome	0	2023	\N	\N	Comedy,Drama
tt0356541	tvMovie	Don Giovanni	Don Giovanni	0	2003	\N	160	Comedy,Drama,Music
tt3352606	tvEpisode	Episode #19.199	Episode #19.199	0	2003	\N	\N	Family,Game-Show
tt28272315	tvEpisode	Hot Pot/Tart	Hot Pot/Tart	0	2024	\N	26	Adventure,Animation,Comedy
tt0265680	movie	Sa-ti vorbesc despre mine	Sa-ti vorbesc despre mine	0	1988	\N	90	Drama
tt14346444	tvEpisode	Episode #1.277	Episode #1.277	0	\N	\N	\N	Drama
tt6519822	tvEpisode	1994: Day 5 Highlights	1994: Day 5 Highlights	0	1994	\N	\N	Sport
tt27796652	tvEpisode	Episode #12.44	Episode #12.44	0	2012	\N	\N	Game-Show,Reality-TV
tt1583288	movie	Police Dog Dream	Kinako: Minarai keisatsuken no monogatari	0	2010	\N	113	Drama
tt21929312	tvEpisode	Episode #7.160	Episode #7.160	0	2019	\N	\N	Drama,Romance
tt1065505	video	Slime Ballin'	Slime Ballin'	1	2007	\N	\N	Adult
tt0488784	short	Il sostituto	Il sostituto	0	2004	\N	\N	Comedy,Short
tt7406470	tvEpisode	RetroBlasting DragonCon 2012 Day 3 - A Cast of Thousands!	RetroBlasting DragonCon 2012 Day 3 - A Cast of Thousands!	0	2012	\N	5	Documentary,History
tt12587368	tvEpisode	Tim Robbins/Lauren Holly/Doris Wishman	Tim Robbins/Lauren Holly/Doris Wishman	0	1998	\N	57	Comedy,Music,Talk-Show
tt8278224	short	What Did You Do at School Today?	What did you do at school today?	0	1974	\N	26	Adventure,Comedy,Documentary
tt17279806	tvEpisode	Episode #1.4	Episode #1.4	0	1996	\N	25	\N
tt7212038	tvEpisode	Episode #26.12	Episode #26.12	0	2016	\N	\N	News
tt32314643	tvEpisode	NEW FRIENDS!	NEW FRIENDS!	0	2023	\N	\N	Adventure
tt14937828	tvEpisode	Episode #1.124	Episode #1.124	0	\N	\N	\N	Animation,Family
tt15377674	tvEpisode	A Turning Point For Karna	A Turning Point For Karna	0	2003	\N	\N	Drama,Fantasy,History
tt9556120	tvEpisode	True Booty	True Booty	1	2010	\N	\N	Adult
tt12665608	tvEpisode	Episode #1.31	Episode #1.31	0	\N	\N	\N	Drama
tt2000621	tvEpisode	Episode dated 27 November 2000	Episode dated 27 November 2000	0	2000	\N	\N	\N
tt5552732	tvEpisode	Episode #1.16	Episode #1.16	0	2015	\N	61	Drama
tt0359907	movie	The Blessed Marriage	El robat el mukadass	0	1960	\N	124	Drama
tt7492390	tvEpisode	Episode dated 17 May 2016	Episode dated 17 May 2016	0	2016	\N	\N	Talk-Show
tt5664906	tvEpisode	Blowing Bruno	Blowing Bruno	1	2012	\N	\N	Adult
tt6142420	tvEpisode	Coco Blue Fucks a Working Man	Coco Blue Fucks a Working Man	1	2014	\N	\N	Adult
tt11007452	tvEpisode	Karma	Karma	0	\N	\N	\N	Crime
tt6882594	tvEpisode	We Got You!	We Got You!	0	2017	\N	58	Comedy,Drama
tt11799310	tvEpisode	Episode #3.101	Episode #3.101	0	1988	\N	\N	Game-Show
tt31613783	short	Dark and Stormy	Dark and Stormy	0	2024	\N	\N	Horror,Short
tt33505950	tvEpisode	05/10/2024	05/10/2024	0	2024	\N	\N	Reality-TV,Talk-Show
tt34378891	tvEpisode	The Steam Train Crew	The Steam Train Crew	0	1983	\N	\N	\N
tt0959645	tvEpisode	House of War: Uprising at Mazar-e Sharif	House of War: Uprising at Mazar-e Sharif	0	2002	\N	\N	Documentary
tt3253548	movie	Naveena Saraswathi Sabatham	Naveena Saraswathi Sabatham	0	2013	\N	149	Comedy,Fantasy
tt3616530	tvEpisode	Episode dated 13 May 2005	Episode dated 13 May 2005	0	2005	\N	\N	\N
tt21228384	tvEpisode	Episode #1.9399	Episode #1.9399	0	2022	\N	\N	Crime,Drama,Romance
tt35496897	tvEpisode	Episode dated 2 March 2006	Episode dated 2 March 2006	0	2006	\N	\N	Talk-Show
tt14649086	tvEpisode	Kathleen Kennedy's future at Lucasfilm EXPOSED! New report hints Star Wars CEOs time is up!	Kathleen Kennedy's future at Lucasfilm EXPOSED! New report hints Star Wars CEOs time is up!	0	2021	\N	\N	Comedy,News,Talk-Show
tt23630322	tvEpisode	Episode #1.17	Episode #1.17	0	1974	\N	\N	Drama,Romance
tt15162908	tvEpisode	A Fresh Start For Sirat	A Fresh Start For Sirat	0	2021	\N	22	Drama
tt0886298	tvEpisode	Episode dated 13 November 1997	Episode dated 13 November 1997	0	1997	\N	\N	Comedy,Music,Talk-Show
tt20232790	tvEpisode	Ironman Weltmeisterschaft 2021 - heimspiel! extra live	Ironman Weltmeisterschaft 2021 - heimspiel! extra live	0	2022	\N	\N	Reality-TV
tt8571698	short	Onthou	Onthou	0	2016	\N	24	Drama,Short
tt12851260	tvEpisode	Mobilize! Type-05 GS Assist Robot	Mobilize! Type-05 GS Assist Robot	0	2004	\N	\N	Action,Adventure,Fantasy
tt9898808	tvEpisode	Equivalent Exchange Part 2	Equivalent Exchange Part 2	0	2011	\N	14	Adventure,Comedy
tt33891233	tvEpisode	Episode #1.556	Episode #1.556	0	2024	\N	\N	Drama,Family,Romance
tt18550394	tvEpisode	Episode #1.2540	Episode #1.2540	0	\N	\N	\N	Musical
tt0593671	tvEpisode	Hawkeye, the Mother	Hawkeye, the Mother	0	1961	\N	30	Comedy,Western
tt25134250	tvEpisode	Episode #1.5975	Episode #1.5975	0	2016	\N	\N	Adventure,Animation,Comedy
tt15242844	tvEpisode	Episode #5.5	Episode #5.5	0	\N	\N	\N	Drama
tt23038242	tvEpisode	Destination Park City	Destination Park City	0	2017	\N	\N	News
tt32311504	tvEpisode	Episode #1.892	Episode #1.892	0	2022	\N	\N	Drama
tt3285806	tvEpisode	Episode #18.33	Episode #18.33	0	2013	\N	60	Talk-Show
tt18972796	tvEpisode	Episode #16.3	Episode #16.3	0	2007	\N	\N	Musical
tt1219030	short	Chi è il merlo?	Chi è il merlo?	0	1916	\N	\N	Short
tt0402177	short	Feeding Pigeons in the Streets of Venice	Feeding Pigeons in the Streets of Venice	0	1903	\N	\N	Documentary,Short
tt1543912	short	Surfing Soweto	Surfing Soweto	0	2007	\N	36	Short
tt21847944	short	Asidh	Asidh	0	2021	\N	23	Short
tt15430796	tvEpisode	Episode #1.515	Episode #1.515	0	2021	\N	\N	Drama
tt15536550	tvEpisode	Episode dated 9 October 2021	Episode dated 9 October 2021	0	2021	\N	\N	Documentary
tt0932489	tvEpisode	Boxing Day Special	Boxing Day Special	0	2006	\N	\N	Game-Show
tt27543327	tvEpisode	Episode #1.2	Episode #1.2	0	1968	\N	\N	Family
tt35694555	short	La lune se lève	La lune se lève	0	2024	\N	23	Drama,Short
tt35666315	tvEpisode	Episode dated 4 February 2025	Episode dated 4 February 2025	0	2025	\N	\N	Documentary,News,Talk-Show
tt14209750	movie	Bhala Thandanana	Bhala Thandanana	0	2022	\N	134	Drama
tt5204928	tvEpisode	Episode #12.38	Episode #12.38	0	2015	\N	\N	\N
tt0497649	video	Only Darkness	Only Darkness	0	1999	\N	90	Thriller
tt23775892	tvEpisode	Episode #1.25	Episode #1.25	0	1962	\N	30	Drama,Romance
tt8791338	tvEpisode	Deserted Hospital Investigation	Deserted Hospital Investigation	0	2018	\N	\N	Horror,Reality-TV
tt16392986	tvEpisode	Episode #1.179	Episode #1.179	0	2021	\N	40	Comedy,Talk-Show
tt6212638	short	It Was Just a Look	It Was Just a Look	0	2015	\N	2	Short
tt1953696	tvEpisode	Episode #37.91	Episode #37.91	0	2009	\N	\N	Family,Game-Show
tt15331130	tvEpisode	Episode #1.3	Episode #1.3	0	1965	\N	\N	Music
tt12919508	tvEpisode	Episode #1.177	Episode #1.177	0	\N	\N	30	Drama,Family
tt33089346	short	War Within	War Within	0	2021	\N	2	Short,Thriller
tt2682874	tvEpisode	Episode dated 30 March 1972	Episode dated 30 March 1972	0	1972	\N	\N	News
tt32194594	tvEpisode	Episode #1.84	Episode #1.84	0	\N	\N	\N	Comedy
tt16116680	tvEpisode	My (mini) Youtube blowup... A Thank you Khadija Mbowe	My (mini) Youtube blowup... A Thank you Khadija Mbowe	0	2021	\N	\N	\N
tt1453138	tvEpisode	Episode dated 16 February 1953	Episode dated 16 February 1953	0	1953	\N	\N	News,Talk-Show
tt9431514	tvEpisode	Border - Gavaskar Trophy 2016-17: 4th Test, Day 3	Border - Gavaskar Trophy 2016-17: 4th Test, Day 3	0	2017	\N	\N	Sport
tt0209238	video	Planet Patrol	Planet Patrol	0	1999	\N	72	Family,Sci-Fi
tt21820818	tvEpisode	Episode #30.6	Episode #30.6	0	2018	\N	\N	Game-Show
tt19783884	movie	Sadako Returned	Sadako Returned	0	2016	\N	62	Horror
tt26520924	tvEpisode	Episode #1.65	Episode #1.65	0	1984	\N	\N	Drama,Romance
tt34881417	tvEpisode	Black Friday Bonanza	Black Friday Bonanza	0	2024	\N	\N	Talk-Show
tt5718344	tvEpisode	Tärinää	Tärinää	0	2016	\N	\N	Comedy,Drama,Family
tt4250698	short	That's So Relatable: Emoticon	That's So Relatable: Emoticon	0	2013	\N	5	Short
tt13039288	tvEpisode	Arazoak	Arazoak	0	2020	\N	\N	Drama
tt23873022	tvEpisode	Episode #1.12	Episode #1.12	0	2022	\N	\N	Drama
tt27351845	tvEpisode	Episode #1.31	Episode #1.31	0	1961	\N	\N	Comedy,Romance
tt24636338	tvEpisode	Episode #1.13	Episode #1.13	0	2017	\N	\N	Drama
tt0843215	tvSeries	Poker Night Live	Poker Night Live	0	2006	\N	240	Sport
tt14693764	tvEpisode	Episode #3.18	Episode #3.18	0	2020	\N	\N	Comedy,Family
tt1840061	tvEpisode	Episode dated 25 April 1995	Episode dated 25 April 1995	0	1995	\N	73	Comedy,Game-Show
tt16316102	tvEpisode	Episode 11	Episode 11	0	2021	\N	\N	Drama
tt1137806	tvEpisode	Episode #1.112	Episode #1.112	0	2000	\N	\N	Drama
tt10299134	short	Retorno	Retorno	0	1951	\N	\N	Short
tt0006470	movie	Broken Fetters	Broken Fetters	0	1916	\N	50	Drama
tt18182704	tvEpisode	Episode #1.3016	Episode #1.3016	0	2021	\N	\N	Comedy,Drama
tt4351608	tvEpisode	Bad Tortoise Club	Bad Tortoise Club	0	2014	\N	\N	Comedy
tt33306919	tvEpisode	MY ROOMMATE	MY ROOMMATE	0	2016	\N	11	Talk-Show
tt1851545	tvEpisode	Wagner: Siegfried	Wagner: Siegfried	0	2011	\N	242	Musical
tt4532816	tvEpisode	Episode #3.7	Episode #3.7	0	1990	\N	\N	Sport
tt33307384	video	My Very First Boyfriend	My Very First Boyfriend	1	2024	\N	120	Adult
tt0065067	movie	The Witness	A tanú	0	1969	\N	105	Comedy,Drama
tt6640976	movie	The Xian Factor	The Xian Factor	0	2011	\N	\N	Talk-Show
tt1086983	tvEpisode	Episode dated 17 August 2007	Episode dated 17 August 2007	0	2007	\N	\N	Talk-Show
tt18685564	tvEpisode	Episode #1.1954	Episode #1.1954	0	\N	\N	\N	Musical
tt7110126	tvEpisode	Episode #1.217	Episode #1.217	0	1980	\N	22	Drama,Romance
tt14654960	tvEpisode	Episode #2.2	Episode #2.2	0	2017	\N	\N	Action,Drama,War
tt0053284	movie	The Young Lady from the Riverside	Slecna od vody	0	1959	\N	76	Comedy
tt22020222	tvEpisode	Herregud! Har du tatt barten?	Herregud! Har du tatt barten?	0	2022	\N	\N	Reality-TV
tt1923649	tvEpisode	Episode #1.6182	Episode #1.6182	0	2011	\N	\N	Drama,Romance
tt3159556	short	Jacob	Jacob	0	2013	\N	23	Fantasy,Horror,Short
tt17053136	tvEpisode	Episode #1.5578	Episode #1.5578	0	\N	\N	\N	Music,Musical
tt0620419	tvEpisode	Strike Me Catholic	Strike Me Catholic	0	1981	\N	\N	Comedy
tt32143010	tvSeries	Barbour & Saku: Through the Woods	Barbour & Saku: Through the Woods	0	2021	2021	41	Reality-TV
tt19265202	tvEpisode	Episode #1.1230	Episode #1.1230	0	\N	\N	\N	Comedy,Talk-Show
tt14447986	tvEpisode	Episode #1.122	Episode #1.122	0	\N	\N	\N	Drama
tt11641994	tvEpisode	Episode #1.196	Episode #1.196	0	\N	\N	\N	Drama
tt4403386	tvEpisode	Palmira Roc a l'hospital	Palmira Roc a l'hospital	0	1980	\N	\N	Family
tt0610558	tvEpisode	A Frenzied Affair	A Frenzied Affair	0	1992	\N	47	Crime,Drama,Mystery
tt6561598	tvEpisode	The Chibi Project Finale: Part 1	The Chibi Project Finale: Part 1	0	2016	\N	\N	Comedy
tt28267345	tvEpisode	Episode #1.31	Episode #1.31	0	1979	\N	\N	Drama
tt27218612	tvEpisode	Episode #1.288	Episode #1.288	0	\N	\N	\N	Talk-Show
tt7872180	tvEpisode	De geheimzinnige brief	De geheimzinnige brief	0	2008	\N	\N	Animation,Family,Fantasy
tt28781963	short	Hunting Party	Hunting Party	0	2023	\N	5	Action,Comedy,Horror
tt2130205	videoGame	Sports Centre	Sports Centre	0	1979	\N	\N	Sport
tt13794292	tvMiniSeries	Amazon Music Holiday Plays	Amazon Music Holiday Plays	0	2020	2020	\N	\N
tt5415004	tvEpisode	Episode #1.7772	Episode #1.7772	0	\N	\N	\N	News
tt0890496	tvEpisode	Episode #10.30	Episode #10.30	0	2006	\N	60	Talk-Show
tt10740900	tvEpisode	Episode dated 21 May 2019	Episode dated 21 May 2019	0	2019	\N	\N	Talk-Show
tt15150880	tvEpisode	Asian Koel (SG Edition)	Asian Koel (SG Edition)	0	2021	\N	\N	Animation
tt21115914	short	Te quise y te estoy queriendo, como dice la canción	Te quise y te estoy queriendo, como dice la canción	0	2015	\N	\N	Short
tt15554138	tvEpisode	Buy This House	Buy This House	1	2021	\N	\N	Adult,Drama
tt32612686	tvEpisode	Kim Kardashian, Skyhooks, Geocaching & the Mr Olympia contest	Kim Kardashian, Skyhooks, Geocaching & the Mr Olympia contest	0	2024	\N	29	Comedy,Game-Show
tt1027850	movie	Rani Aur Maharani	Rani Aur Maharani	0	1993	\N	\N	Action,Thriller
tt1102857	tvEpisode	Wave Goodbye to Grandpa	Wave Goodbye to Grandpa	0	1961	\N	60	Drama
tt4558196	short	Le cardon	Le cardon	0	1928	\N	5	Documentary,Short
tt8354154	tvEpisode	Star Light Not so Bright/Operamatic	Star Light Not so Bright/Operamatic	0	2019	\N	25	Animation,Family,Fantasy
tt11882154	tvEpisode	Episode #1.120	Episode #1.120	0	\N	\N	\N	Romance
tt5928890	short	Marv and the Mugger	Marv and the Mugger	0	2016	\N	4	Comedy,Short
tt8905534	tvEpisode	Episode #1.5	Episode #1.5	0	1990	\N	\N	Drama
tt0233746	short	Foul Play; or, A False Friend	Foul Play; or, A False Friend	0	1907	\N	\N	Drama,Short
tt5858950	short	Reinforced	Reinforced	0	2016	\N	9	Short,War
tt1610647	tvEpisode	Episode dated 24 October 2008	Episode dated 24 October 2008	0	2008	\N	\N	Music
tt15533722	tvEpisode	Pick me girl	Pick me girl	0	2021	\N	22	Drama
tt3661304	tvEpisode	Aquele do Doutor Google	Aquele do Doutor Google	0	2013	\N	\N	Comedy
tt11529056	tvEpisode	Episode #1.183	Episode #1.183	0	2019	\N	\N	Crime,Drama,Romance
tt3516158	movie	A Few Cubic Meters of Love	Chand metre moka'ab eshgh	0	2014	\N	90	Drama,Romance
tt17347984	movie	Untouched	Untouched	0	2020	\N	54	Documentary
tt2298217	tvEpisode	The Shattered Lives	The Shattered Lives	0	1979	\N	\N	Documentary
tt31248845	tvEpisode	Episode dated 19 January 2024	Episode dated 19 January 2024	0	2024	\N	\N	News,Sport
tt7368942	tvEpisode	Episode #1.133	Episode #1.133	0	2014	\N	\N	Comedy
tt2304909	movie	Shrimp Crawl	Shrimp Crawl	0	2013	\N	101	Action,Drama,Music
tt32306164	tvEpisode	Episode #1.78	Episode #1.78	0	2022	\N	\N	Comedy
tt10116572	tvEpisode	Episode #2.1	Episode #2.1	0	2019	\N	\N	Comedy
tt27612202	tvEpisode	Episode #1.537	Episode #1.537	0	\N	\N	\N	Talk-Show
tt15006474	tvEpisode	The Hidden Horror Next Door	The Hidden Horror Next Door	0	2016	\N	\N	Documentary
tt8574934	tvEpisode	Choose Love!	Choose Love!	0	2019	\N	29	Action,Adventure,Comedy
tt6742466	tvEpisode	Shark Week på Level Up stream (Opptak)	Shark Week på Level Up stream (Opptak)	0	2016	\N	\N	Comedy,News
tt3254764	tvEpisode	Suicide	Suicide	0	2014	\N	\N	Comedy,Drama
tt13820436	tvEpisode	Episode dated 12 January 2021	Episode dated 12 January 2021	0	2021	\N	60	Talk-Show
tt4402648	tvEpisode	Episode dated 25 April 2007	Episode dated 25 April 2007	0	2007	\N	\N	News,Talk-Show
tt6640698	tvEpisode	Episode #1.47	Episode #1.47	0	2004	\N	\N	Romance
tt14517868	tvEpisode	Episode #1.54	Episode #1.54	0	\N	\N	\N	Drama
tt1688637	tvSpecial	1959 NFL Championship Game	1959 NFL Championship Game	0	1959	\N	\N	Sport
tt11000728	tvSeries	Two Fat Ghouls	Two Fat Ghouls	0	2003	2010	\N	Comedy,Horror,Mystery
tt14882786	tvEpisode	Episode #1.93	Episode #1.93	0	\N	\N	\N	Drama
tt15545194	tvEpisode	Best of LESBO mit Lara - Teil1	Best of LESBO mit Lara - Teil1	1	2016	\N	\N	Adult
tt15928716	tvEpisode	12. feb. 2018 kl. 18:50	12. feb. 2018 kl. 18:50	0	2018	\N	\N	News
tt12035086	tvEpisode	Episode #1.2836	Episode #1.2836	0	\N	\N	22	Drama
tt13216892	tvEpisode	Horror Hotel	Horror Hotel	0	1972	\N	\N	Comedy,Drama,Fantasy
tt15302624	tvEpisode	Episode 3	Episode 3	0	2010	\N	\N	Documentary
tt19393578	tvEpisode	Hawaii 5-0	Hawaii 5-0	0	2023	\N	\N	Documentary,Sport
tt13155330	tvEpisode	Tøffe tider	Tøffe tider	0	2019	\N	\N	Reality-TV
tt0578587	tvEpisode	Gourmet Night	Gourmet Night	0	1975	\N	29	Comedy
tt15218448	tvEpisode	Episode #1.129	Episode #1.129	0	\N	\N	\N	Drama,Mystery
tt0949735	video	He Who Must Not Be Named	He Who Must Not Be Named	0	2006	\N	11	Documentary,Short
tt12249274	tvEpisode	Episode #5.197	Episode #5.197	0	1998	\N	\N	Crime,Drama
tt0831920	tvMovie	Pepernoten voor Sinterklaas	Pepernoten voor Sinterklaas	0	1995	\N	35	Drama
tt3017522	tvEpisode	Episode #1.179	Episode #1.179	0	2012	\N	\N	Drama
tt0560873	tvEpisode	Episode dated 10 February 2004	Episode dated 10 February 2004	0	2004	\N	\N	News
tt15832596	tvEpisode	19. mai - Frankrike åpner restauranter	19. mai - Frankrike åpner restauranter	0	2021	\N	\N	News
tt31727138	tvEpisode	Les suffragettes du village	Les suffragettes du village	0	1983	\N	\N	Drama,History,War
tt1529491	tvEpisode	Änkans skärv	Änkans skärv	0	1973	\N	\N	Comedy
tt3784214	tvEpisode	Gabriel Over the White House	Gabriel Over the White House	0	2014	\N	31	Comedy,Drama,Fantasy
tt11098984	tvEpisode	Episode #1.30	Episode #1.30	0	2019	\N	\N	Drama
tt29978742	tvEpisode	Episode #1.6	Episode #1.6	0	1999	\N	\N	Game-Show
tt32930981	tvEpisode	Episode #1.20	Episode #1.20	0	2010	\N	\N	Family
tt27171255	tvEpisode	Episode #4.124	Episode #4.124	0	2016	\N	\N	News
tt0189774	video	My Bare Lady	My Bare Lady	1	1989	\N	85	Adult,Musical
tt10484608	tvEpisode	Episode #1.115	Episode #1.115	0	1996	\N	\N	Drama,Romance
tt5024110	tvEpisode	Episode dated 20 December 2013	Episode dated 20 December 2013	0	2013	\N	\N	Talk-Show
tt0227618	short	Herrmann, the Great Conjuror	Le temple de la magie	0	1902	\N	\N	Fantasy,Short
tt12946208	tvEpisode	Episode #1.63	Episode #1.63	0	\N	\N	\N	Drama
tt5925108	video	The Rule of Law at Sea	Umi ni okeru hou no shihai	0	2016	\N	2	Documentary,Short
tt32310542	tvEpisode	Episode #9.92	Episode #9.92	0	1981	\N	\N	News,Talk-Show
tt17489272	tvEpisode	Episode #1.6385	Episode #1.6385	0	\N	\N	\N	Music,Musical
tt9463002	tvEpisode	Episode #1.89	Episode #1.89	0	2007	\N	\N	Drama
tt33355808	tvEpisode	Episode #1.2366	Episode #1.2366	0	2004	\N	60	News
tt2520442	short	Guanajuato	Guanajuato	0	2012	\N	3	Short
tt6966764	tvEpisode	Final Copa del Rey 2017 #2	Final Copa del Rey 2017 #2	0	2017	\N	\N	Sport,Talk-Show
tt17348354	tvEpisode	Episode dated 28 June 1991	Episode dated 28 June 1991	0	1991	\N	\N	Talk-Show
tt0764900	movie	Tokyo 1960	Tokyo 1960	0	1957	\N	\N	Action,Sci-Fi
tt34078878	tvEpisode	Episode #1.5	Episode #1.5	0	1953	\N	15	Family
tt6178036	tvEpisode	1989: Day 4, Part 2	1989: Day 4, Part 2	0	1989	\N	\N	Sport
tt12639282	tvEpisode	Episode #1.647	Episode #1.647	0	\N	\N	\N	Drama
tt1369419	tvEpisode	Star Wars: Episode III - Revenge of the Sith	Star Wars: Episode III - Revenge of the Sith	0	2005	\N	\N	Horror
tt9092036	tvEpisode	¡El Renca Juniors F.C volvió a ganar!	¡El Renca Juniors F.C volvió a ganar!	0	2018	\N	\N	Comedy,Drama,Romance
tt5120812	tvEpisode	Liza	Liza	0	2015	\N	\N	Comedy
tt8327428	tvEpisode	Episode dated 30 April 1981	Episode dated 30 April 1981	0	1981	\N	\N	Game-Show
tt1784130	tvSeries	Old Town Orange County	Old Town Orange County	0	2010	\N	30	\N
tt1864770	tvEpisode	Patton, Puller and Franks	Patton, Puller and Franks	0	2005	\N	\N	History,War
tt6435744	tvEpisode	Episode #6.93	Episode #6.93	0	2016	\N	\N	News,Talk-Show
tt27483570	tvEpisode	Episode #1.1881	Episode #1.1881	0	1977	\N	22	Drama,Mystery,Romance
tt0510608	tvEpisode	Un solitario corazón	Un solitario corazón	0	1996	\N	90	Drama,Romance
tt2266888	tvEpisode	Dowry Demands	Dowry Demands	0	1989	\N	\N	News
tt2265137	movie	Accession	Accession	0	2012	\N	80	Drama
tt0916054	tvEpisode	Speed Dating	Speed Dating	0	2005	\N	\N	Adventure,Comedy,Drama
tt15865148	tvEpisode	25. november 2020	25. november 2020	0	2020	\N	\N	\N
tt25866418	tvEpisode	Episode #1.1176	Episode #1.1176	0	\N	\N	\N	Comedy
tt15217060	tvMiniSeries	Oshi no Oujisama	Oshi no Oujisama	0	2021	\N	\N	Romance
tt23647666	tvEpisode	Episode #1.50	Episode #1.50	0	1962	\N	30	Biography,Drama
tt29380847	tvEpisode	How logical are you? A legendary experiment	How logical are you? A legendary experiment	0	2023	\N	9	Documentary
tt2617350	tvEpisode	Taliban/Suicide Bomber/Nixon on Nixon	Taliban/Suicide Bomber/Nixon on Nixon	0	1998	\N	\N	Documentary,News
tt7381354	short	La Vieja	La Vieja	0	2016	\N	10	Horror,Short
tt6585060	tvEpisode	Episode #1.3	Episode #1.3	0	2003	\N	\N	Animation,Comedy
tt5109270	tvEpisode	The Interview	The Interview	0	1974	\N	55	Adventure,Animation,Comedy
tt9270812	tvEpisode	Who will get the boomerang?/Magic belt/Three wishes/I want to win	Who will get the boomerang?/Magic belt/Three wishes/I want to win	0	\N	\N	\N	Animation
tt28418769	tvEpisode	Popsicle Pussy	Popsicle Pussy	1	2016	\N	\N	Adult
tt11278474	tvEpisode	Beta	Beta	0	2020	\N	8	Drama,Sci-Fi,Short
tt1033081	tvEpisode	Episode #1.185	Episode #1.185	0	1962	\N	22	Comedy,Drama,Romance
tt3596966	tvEpisode	Episode dated 21 March 2014	Episode dated 21 March 2014	0	2014	\N	\N	News
tt5137972	tvEpisode	Lost Crane	Lost Crane	0	2016	\N	56	Action,Adventure,Drama
tt19393640	short	Beach	Beach	0	2018	\N	\N	Drama,Short
tt33086604	tvEpisode	Episode #1.54	Episode #1.54	0	2024	\N	\N	Game-Show
tt13519572	short	XOXO: Chrissy Teigen	XOXO: Chrissy Teigen	0	2015	\N	2	Reality-TV,Short
tt15175624	tvEpisode	Episode #7.49	Episode #7.49	0	2015	\N	\N	Family,Musical
tt5899540	tvEpisode	Episode #1.3030	Episode #1.3030	0	1977	\N	\N	Drama,Romance
tt14928162	video	Lary Kidd: Keys on the Table	Lary Kidd: Keys on the Table	0	2021	\N	3	Music,Short
tt31925849	videoGame	Warhammer 40,000: Warpforge	Warhammer 40,000: Warpforge	0	2023	\N	\N	Sci-Fi
tt0231023	tvSeries	Evening	Evening Magazine	0	1976	1989	30	News
tt9170956	tvEpisode	Lost	Lost	0	2018	\N	\N	Adventure,Music,Mystery
tt1099047	tvEpisode	Episode dated 12 November 1973	Episode dated 12 November 1973	0	1973	\N	\N	Game-Show
tt0947424	tvEpisode	Garbage Mountain	Garbage Mountain	0	2006	\N	\N	Documentary
tt15221538	tvEpisode	Episode #1.711	Episode #1.711	0	\N	\N	\N	Horror
tt10396382	tvEpisode	Dead Reckoning, Where Are You	Dead Reckoning, Where Are You	0	2018	\N	\N	Action,Adventure,Animation
tt26915667	tvEpisode	Donae'o	Donae'o	0	2019	\N	\N	Comedy,Short,Talk-Show
tt32718599	tvEpisode	Episode #1.3269	Episode #1.3269	0	1983	\N	30	News
tt14712892	tvEpisode	Episode #1.49	Episode #1.49	0	\N	\N	\N	Drama,Family,Romance
tt21812496	tvEpisode	Episode #28.13	Episode #28.13	0	2016	\N	\N	Game-Show
tt6072618	tvEpisode	Episode #1.128	Episode #1.128	0	2016	\N	\N	Comedy,Drama,Romance
tt1126391	movie	Gentlemen Officers: Save the Emperor	Gospoda ofitsery: Spasti imperatora	0	2008	\N	104	Action,History
tt1269504	tvEpisode	The Window Box	The Window Box	0	1967	\N	\N	Comedy
tt2259113	tvEpisode	Rick Gordon, One-Man Army	Rick Gordon, One-Man Army	0	1986	\N	21	Action,Adventure,Animation
tt14229440	tvEpisode	The French Nuclear Tests. That the Present White Australia Policy is in the Best Interests of the Country.	The French Nuclear Tests. That the Present White Australia Policy is in the Best Interests of the Country.	0	1966	\N	\N	Talk-Show
tt14352700	tvEpisode	Episode #1.370	Episode #1.370	0	\N	\N	\N	Drama,Romance
tt2440974	short	Totengräber	Totengräber	0	2006	\N	\N	Sci-Fi,Short
tt7188458	tvEpisode	Casino Royale 1954 Review	Casino Royale 1954 Review	0	2013	\N	\N	Comedy
tt21807344	tvEpisode	Marge The Sloth and Boris Tell Very Funny Jokes at Comedy Night	Marge The Sloth and Boris Tell Very Funny Jokes at Comedy Night	0	2019	\N	\N	Animation
tt7340268	tvEpisode	Khushi Returns Home	Khushi Returns Home	0	\N	\N	\N	Drama,Fantasy
tt14637280	tvEpisode	Episode #1.22	Episode #1.22	0	1980	\N	\N	Drama,History
tt9728862	tvEpisode	Episode dated 8 January 2018	Episode dated 8 January 2018	0	2018	\N	\N	Documentary,News,Talk-Show
tt9311350	short	Att handla är väl ingen match	Att handla är väl ingen match	0	2018	\N	\N	Comedy,Short
tt15730130	tvEpisode	Episode dated 21 January 2008	Episode dated 21 January 2008	0	2008	\N	\N	News
tt25437988	tvEpisode	Episode #6.408	Episode #6.408	0	\N	\N	\N	Drama
tt19719968	tvEpisode	The Good Word	The Good Word	0	2021	\N	\N	Sport
tt15459418	tvEpisode	Episode #1.36	Episode #1.36	0	\N	\N	\N	Drama
tt21840660	tvEpisode	Episode dated 9 October 1968	Episode dated 9 October 1968	0	1968	\N	\N	\N
tt14427442	tvEpisode	Unterwegs am Untermain	Unterwegs am Untermain	0	2019	\N	\N	\N
tt7626414	tvEpisode	Brewed Awakening	Brewed Awakening	0	2017	\N	\N	\N
tt9713888	tvEpisode	What Is Ritu's Secret?	What Is Ritu's Secret?	0	2000	\N	\N	Drama
tt8177954	tvEpisode	Episode #1.86	Episode #1.86	0	1985	\N	\N	Drama,Romance
tt35051778	tvEpisode	Episode dated 20 October 2023	Episode dated 20 October 2023	0	2023	\N	\N	Music,Talk-Show
tt24908102	tvEpisode	Alba's Zevon Mummification	Alba's Zevon Mummification	1	2022	\N	\N	Adult
tt7858508	tvEpisode	Les larmes de la Mésopotamie	Les larmes de la Mésopotamie	0	2002	\N	52	Documentary
tt7649806	tvEpisode	Episode #1.15	Episode #1.15	0	1998	\N	22	Drama,Romance
tt0039733	movie	Mrs. Fitzherbert	Mrs. Fitzherbert	0	1947	\N	99	Drama,History
tt12989780	tvEpisode	Episode #1.827	Episode #1.827	0	\N	\N	\N	Romance
tt35427962	tvEpisode	Special: Much More Railgun	Special: Much More Railgun	0	2010	\N	\N	Action,Animation,Comedy
tt1705051	short	The Birds, Like	The Birds, Like	0	2009	\N	9	Drama,Short
tt15868668	video	Volga -62	Volga -62	0	1962	\N	1	Short
tt14622056	tvEpisode	La Poucave	La Poucave	0	1995	\N	1	Short
tt15414696	tvEpisode	Episode dated 31 March 1974	Episode dated 31 March 1974	0	1974	\N	\N	\N
tt26731393	tvEpisode	Nice Boys Time	Nice Boys Time	0	2022	\N	\N	Game-Show,Reality-TV
tt10835872	tvEpisode	Episode #1.105	Episode #1.105	0	\N	\N	10	Adventure,Animation,Comedy
tt0559186	tvEpisode	Flashdance with Death	Flashdance with Death	0	1994	\N	45	Crime,Drama,Mystery
tt15464032	tvEpisode	Bad Business	Bad Business	0	2023	\N	\N	Animation
tt16138628	short	Heather	Heather	0	2022	\N	\N	Comedy,Drama,Short
tt9521782	tvEpisode	Clip: archetype kidnaps sun strider	Clip: archetype kidnaps sun strider	0	\N	\N	9	Sport
tt0625535	tvEpisode	Lassie and the Dynamite	Lassie and the Dynamite	0	1965	\N	30	Adventure,Drama,Family
tt4102584	short	Submerge: The Chronicles of Ni're	Submerge: The Chronicles of Ni're	0	2014	\N	15	Sci-Fi,Short
tt5408148	tvEpisode	Episode #1.4388	Episode #1.4388	0	\N	\N	\N	News
tt17488280	tvEpisode	Episode #2.199	Episode #2.199	0	2014	\N	\N	News
tt32306806	tvEpisode	A HORROR GAME.. ABOUT ME!? | Better To Upload (CoryxKenshin Hiatus Game)	A HORROR GAME.. ABOUT ME!? | Better To Upload (CoryxKenshin Hiatus Game)	0	2018	\N	16	Action,Comedy,Horror
tt5556050	tvEpisode	What Does It Really Mean to Cut Out Carbs?	What Does It Really Mean to Cut Out Carbs?	0	2016	\N	41	Talk-Show
tt23748734	tvEpisode	Episode #1.365	Episode #1.365	0	2022	\N	\N	Drama
tt1943093	tvEpisode	Návrat na místo cinu	Návrat na místo cinu	0	2010	\N	\N	Reality-TV
tt6459858	tvEpisode	Episode #22.113	Episode #22.113	0	2017	\N	\N	Action,Comedy,Drama
tt6964766	tvEpisode	Une employée bien trop jolie	Une employée bien trop jolie	0	2014	\N	\N	Drama
tt1962479	tvEpisode	Episode dated 25 November 1999	Episode dated 25 November 1999	0	1999	\N	\N	Talk-Show
tt16478966	tvEpisode	Por Que a TERRA Não Cai no ESPAÇO?	Por Que a TERRA Não Cai no ESPAÇO?	0	2021	\N	16	Adventure,Comedy,Family
tt7660616	tvEpisode	Episode dated 12 November 2017	Episode dated 12 November 2017	0	2017	\N	\N	Talk-Show
tt12533114	short	Pi	Pi	0	2014	\N	8	Short
tt8713632	movie	Galahad	Galahad	0	\N	\N	\N	Action
tt12009126	tvEpisode	Episode #1.39	Episode #1.39	0	2019	\N	\N	Family,Game-Show,Talk-Show
tt12418382	tvSpecial	Catch Us If You Can	Catch Us If You Can	0	1980	\N	60	Comedy
tt14491504	tvEpisode	Die ungeschnittenen Szenen	Die ungeschnittenen Szenen	0	2021	\N	\N	Reality-TV
tt8925042	tvEpisode	Odessa, Iron Storm!	Odessa, Iron Storm!	0	2009	\N	\N	Action,Animation,Drama
tt11242480	tvEpisode	Mavis and Emily	Mavis and Emily	0	1995	\N	\N	Drama
tt10471826	tvEpisode	1200. Bölüm	1200. Bölüm	0	2015	\N	\N	Drama
tt3441310	movie	48M	48M	0	2013	\N	97	Drama
tt2706964	tvEpisode	Episode dated 19 February 2013	Episode dated 19 February 2013	0	2013	\N	\N	Talk-Show
tt8003492	tvEpisode	Episode #1.104	Episode #1.104	0	1982	\N	22	Romance
tt20219118	tvEpisode	Episode #1.159	Episode #1.159	0	2021	\N	\N	Romance
tt11561864	tvEpisode	Episode #1.98	Episode #1.98	0	\N	\N	\N	Romance
tt16251418	tvEpisode	Indo-Pacifique: nouveau centre du monde?	Indo-Pacifique: nouveau centre du monde?	0	2021	\N	13	Documentary
tt0363410	movie	The Fall of Abdulhamit	Abdülhamid Düserken	0	2003	\N	121	Drama,History
tt14264940	tvEpisode	Programa exibido em 26/09/2002	Programa exibido em 26/09/2002	0	2002	\N	60	Comedy
tt1618645	tvEpisode	Episode #1.23	Episode #1.23	0	2010	\N	\N	\N
tt14330574	tvSeries	Sunset Paradise	Sunset Paradise	0	2021	2021	\N	Action,Adventure,Animation
tt3586122	short	Dead Dog: Chubby Money Comedy	Dead Dog: Chubby Money Comedy	0	2014	\N	\N	Comedy,Short
tt0486023	short	Birth of an Island	Surtur fer sunnan	0	1964	\N	23	Short
tt6291148	tvEpisode	Episode dated 5 December 2016	Episode dated 5 December 2016	0	2016	\N	\N	News
tt17686678	tvEpisode	Episode #1.177	Episode #1.177	0	2021	\N	60	Drama,Romance
tt21106494	tvEpisode	Episode #1.443	Episode #1.443	0	2021	\N	\N	Drama
tt33412589	tvEpisode	Death Smiles on a Murderer & Torture Chamber of Dr Sadism	Death Smiles on a Murderer & Torture Chamber of Dr Sadism	0	\N	\N	\N	Crime,Drama,Horror
tt13102558	tvEpisode	Episode #1.85	Episode #1.85	0	\N	\N	\N	\N
tt15074516	tvEpisode	Episode #1.62	Episode #1.62	0	\N	\N	\N	Talk-Show
tt10761844	short	The coach	The coach	0	2010	\N	\N	Comedy,Short
tt6172450	tvEpisode	1986: Day 2, Part 5	1986: Day 2, Part 5	0	1986	\N	\N	Sport
tt5178078	tvEpisode	De voksne	De voksne	0	2015	\N	\N	Documentary
tt7850788	tvEpisode	Episode #1.60	Episode #1.60	0	1999	\N	\N	\N
tt28328229	tvSeries	Mali Shoghl bi Al Souq	Mali Shoghl bi Al Souq	0	2021	2021	\N	Comedy,Drama
tt6617024	tvEpisode	Die Vorstellung	Die Vorstellung	0	2014	\N	41	Documentary
tt7030662	tvEpisode	Health and Fitness	Health and Fitness	0	2017	\N	\N	Talk-Show
tt20764916	tvEpisode	Barron & Calan Get Busy	Barron & Calan Get Busy	1	2017	\N	25	Adult
tt10579682	tvSeries	Donyaye Shirin	Donyaye Shirin	0	1997	1997	\N	Comedy,Drama,Family
tt5762262	tvEpisode	Episode #1.860	Episode #1.860	0	2009	\N	33	Drama,Romance
tt12457138	tvEpisode	Episode #76.94	Episode #76.94	0	2017	\N	\N	Game-Show
tt15731634	tvEpisode	Smallest Joys	Smallest Joys	0	2021	\N	\N	Animation,Comedy,Drama
tt27130766	tvEpisode	Episode #1.546	Episode #1.546	0	2022	\N	\N	Drama
tt19368930	tvEpisode	Episode #2.2	Episode #2.2	0	2022	\N	\N	Action,Animation,Sci-Fi
tt2699826	movie	Maut Ki Lalkar	Maut Ki Lalkar	0	1989	\N	\N	Action
tt4109186	tvEpisode	Date Night	Date Night	0	2010	\N	\N	Comedy
tt12040496	tvEpisode	Chi la fa l'aspetti!	Chi la fa l'aspetti!	0	2020	\N	\N	Comedy
tt16451586	tvEpisode	4. des. 2021 - Foreldre siktet etter skoleskyting	4. des. 2021 - Foreldre siktet etter skoleskyting	0	2021	\N	\N	News
tt0173115	short	Razboi fara arme	Razboi fara arme	0	1929	\N	\N	Documentary,Short
tt20518086	tvEpisode	Thirst to be the First/The Fourth Bath	Thirst to be the First/The Fourth Bath	0	2023	\N	\N	Adventure,Animation,Comedy
tt32813893	tvEpisode	Episode dated 5 July 2024	Episode dated 5 July 2024	0	2024	\N	\N	News
tt11719276	short	On My Honour	On My Honour	0	2019	\N	17	Adventure,Drama,Short
tt1442696	tvEpisode	Shi Fu Huang/Paul Wong	Shi Fu Huang/Paul Wong	0	1989	\N	\N	Crime,Documentary
tt10610930	tvEpisode	Episode #1.224	Episode #1.224	0	2010	\N	\N	Drama
tt9566692	video	Trump Adminstration's first 20 month according to Nostradamus	Trump Adminstration's first 20 month according to Nostradamus	0	2018	\N	\N	Documentary,Short
tt27716240	tvEpisode	Episode #87.88	Episode #87.88	0	2023	\N	\N	Game-Show
tt12071826	tvEpisode	Episode #22.14	Episode #22.14	0	2020	\N	58	Drama
tt14583032	tvEpisode	Episode #1.382	Episode #1.382	0	1984	\N	12	Adventure,Animation,Comedy
tt6109374	tvEpisode	Episode #6.38	Episode #6.38	0	2016	\N	\N	Game-Show
tt11603920	tvEpisode	Koppig als een Breton	Koppig als een Breton	0	2016	\N	\N	Documentary
tt9808626	tvEpisode	Episode #1.185	Episode #1.185	0	2018	\N	\N	Comedy
tt23031270	tvEpisode	Mengalah Bukan Kalah? (Katanya)	Mengalah Bukan Kalah? (Katanya)	0	2022	\N	\N	Drama,Romance
tt29426335	tvEpisode	Crystal Meth Addict: Tabitha	Crystal Meth Addict: Tabitha	0	2021	\N	\N	Biography,Documentary,Talk-Show
tt33398124	tvEpisode	Episode dated 9 January 1993	Episode dated 9 January 1993	0	1993	\N	\N	Sport,Talk-Show
tt9218950	tvEpisode	Episode #1.69	Episode #1.69	0	1970	\N	\N	Drama,Romance
tt16305888	tvEpisode	Episode #1.27	Episode #1.27	0	2020	\N	18	\N
tt33292647	short	Island: From Dreams to Ruin	Island: From Dreams to Ruin	0	2024	\N	\N	Comedy,Short
tt6895004	tvEpisode	Episode #1.83	Episode #1.83	0	2002	\N	45	Drama
tt0423440	tvMovie	Un homme va être assassiné	Un homme va être assassiné	0	1984	\N	\N	\N
tt4614348	tvEpisode	Floyd Mayweather	Floyd Mayweather	0	2006	\N	\N	Sport
tt9316852	tvEpisode	Episode #1.87	Episode #1.87	0	2004	\N	\N	Drama
tt13720628	tvEpisode	Episode #1.12	Episode #1.12	0	\N	\N	\N	Talk-Show
tt19035206	tvEpisode	Episode #1.5735	Episode #1.5735	0	\N	\N	\N	Action,Comedy,Family
tt12674950	tvEpisode	Episode #14.178	Episode #14.178	0	2005	\N	\N	Drama
tt16293802	tvEpisode	Sternstunde Philosophie: Muschgs bilaterale Verhandlungen (01/04): Günter Grass	Sternstunde Philosophie: Muschgs bilaterale Verhandlungen (01/04): Günter Grass	0	1998	\N	\N	Talk-Show
tt21333468	tvEpisode	Episode #1.440	Episode #1.440	0	\N	\N	\N	Drama,Romance
tt16844416	tvEpisode	ONE NIGHT STAND SIMULATOR Date Ariane (ft. PG & Rico The Giant)	ONE NIGHT STAND SIMULATOR Date Ariane (ft. PG & Rico The Giant)	0	2019	\N	\N	Comedy
tt1380155	short	Minnie the Moocher	Minnie the Moocher	0	1942	\N	3	Comedy,Music,Short
tt10779734	tvEpisode	Episode #1.67	Episode #1.67	0	\N	\N	\N	Comedy,Drama
tt12129522	tvEpisode	Episode #1.205	Episode #1.205	0	\N	\N	\N	Drama
tt2134439	tvEpisode	National Mayhem 2011	National Mayhem 2011	0	2011	\N	37	Sport
tt11258434	tvEpisode	Episode #1.775	Episode #1.775	0	2013	\N	\N	Romance
tt1649437	short	Voitures automobiles	Voitures automobiles	0	1896	\N	1	Documentary,Short
tt4268058	tvEpisode	Episode #1.75	Episode #1.75	0	\N	\N	8	Drama,Romance
tt34766855	tvEpisode	Episode #1.3019	Episode #1.3019	0	2024	\N	\N	Drama,Romance
tt31835154	tvSeries	Amsterdam Empire	Amsterdam Empire	0	2025	\N	\N	Crime,Drama
tt19299112	tvEpisode	Episode #13.97	Episode #13.97	0	\N	\N	30	Documentary,Family
tt13547672	tvEpisode	Episode #1.1	Episode #1.1	0	2016	\N	\N	Comedy
tt6557360	short	Kim and I	Kim and I	0	2016	\N	6	Comedy,Short
tt10354428	tvEpisode	Episode #1.102	Episode #1.102	0	2009	\N	23	Drama,Romance
tt26916649	tvEpisode	Episode #1.209	Episode #1.209	0	\N	\N	\N	\N
tt3369484	tvEpisode	Working Boy	Working Boy	0	2013	\N	\N	Comedy
tt15247144	tvEpisode	Episode #1.947	Episode #1.947	0	\N	\N	\N	Talk-Show
tt35351398	tvEpisode	Episode #1.69	Episode #1.69	0	2024	\N	\N	Romance
tt0973143	tvEpisode	Episode #31.24	Episode #31.24	0	1996	\N	30	Game-Show
tt22783318	tvEpisode	Episode #2.14	Episode #2.14	0	\N	\N	30	Drama
tt1983546	tvEpisode	Devils, Wombats & Roos	Devils, Wombats & Roos	0	2008	\N	\N	Adventure,Documentary,Family
tt17320254	movie	Cannabelle	Cannabelle	0	\N	\N	\N	Comedy
tt11173828	tvEpisode	Episode #1.13	Episode #1.13	0	1988	\N	\N	Drama
tt9032410	short	Mind of Fear	Mind of Fear	0	\N	\N	\N	Drama,Short
tt15526260	tvEpisode	Feet Are a Battlefield	Feet Are a Battlefield	0	2021	\N	\N	Reality-TV
tt12968796	tvEpisode	Trump Drops His 2nd Term Agenda And Any Sane Person Would Agree With It, I Now Plan To Vote Trump	Trump Drops His 2nd Term Agenda And Any Sane Person Would Agree With It, I Now Plan To Vote Trump	0	2020	\N	\N	News
tt2666112	short	Hollywood Hair	Hollywood Hair	0	2012	\N	30	Comedy,Drama,Short
tt32103424	tvEpisode	Episode #1.19	Episode #1.19	0	2024	\N	\N	Comedy,Talk-Show
tt12362468	tvEpisode	2009/10: 19/9/09	2009/10: 19/9/09	0	2009	\N	\N	Sport
tt24666788	tvEpisode	Episode #1.561	Episode #1.561	0	2022	\N	\N	Drama
tt7374892	tvEpisode	Judith Light/Tina Campbell	Judith Light/Tina Campbell	0	2017	\N	\N	Talk-Show
tt26628211	tvSeries	Grammata kai arithmoi	Grammata kai arithmoi	0	1976	1981	\N	Game-Show
tt11971386	tvEpisode	Episode #1.403	Episode #1.403	0	\N	\N	\N	Drama,Romance
tt12480920	tvEpisode	Episode #1.4476	Episode #1.4476	0	\N	\N	30	Crime,Drama,Mystery
tt35661309	tvEpisode	Aphmau Plays Cupid	Aphmau Plays Cupid	0	2016	\N	\N	Comedy,Drama,Romance
tt3833682	movie	Tinker'	Tinker'	0	2017	\N	97	Drama,Family,Sci-Fi
tt29426348	tvSeries	At Issue with Mark Welp	At Issue with Mark Welp	0	2023	\N	27	News,Talk-Show
tt5890218	short	The Boundaries Within	The Boundaries Within	0	2016	\N	15	Drama,Short
tt7820026	movie	Kaoyaku to bakudan musume	Kaoyaku to bakudan musume	0	1959	\N	79	Comedy,Crime
tt0652431	tvEpisode	En viaje soñado	En viaje soñado	0	2000	\N	\N	Crime,Drama,Thriller
tt13740204	tvEpisode	Episode #1.2505	Episode #1.2505	0	\N	\N	\N	Family,Fantasy,Music
tt27034988	tvEpisode	Episode #1.1084	Episode #1.1084	0	\N	\N	\N	Talk-Show
tt11382658	tvEpisode	A Weekend in Scarecrow Park	A Weekend in Scarecrow Park	0	2019	\N	\N	Documentary
tt35289244	tvEpisode	Episode #5.15	Episode #5.15	0	2023	\N	\N	Comedy,Game-Show,Reality-TV
tt20236540	tvEpisode	Episode #4.119	Episode #4.119	0	2020	\N	\N	Comedy
tt16403092	tvEpisode	Episode dated 17 December 2021	Episode dated 17 December 2021	0	2021	\N	\N	News
tt8060214	tvEpisode	Episode #1.26	Episode #1.26	0	1983	\N	\N	Action,Adventure,Drama
tt33413595	tvEpisode	Episode #2.5	Episode #2.5	0	2024	\N	\N	Game-Show
tt10008500	tvEpisode	Episode #1.2	Episode #1.2	0	2017	\N	51	Reality-TV
tt20912518	tvEpisode	Huggy Wuggy Has a Baby! Kissy Missy is Pregnant! Poppy Playtime Animation	Huggy Wuggy Has a Baby! Kissy Missy is Pregnant! Poppy Playtime Animation	0	2021	\N	3	Animation
tt8688978	tvEpisode	Wiosno wrócisz?	Wiosno wrócisz?	0	2015	\N	25	Comedy
tt8341294	tvEpisode	Episode #1.57	Episode #1.57	0	2001	\N	\N	Drama
tt4503454	tvEpisode	Episode #5.4	Episode #5.4	0	2001	\N	\N	Comedy,Game-Show
tt6721530	tvEpisode	Reifenwechsel auf zwei Rädern	Reifenwechsel auf zwei Rädern	0	2012	\N	\N	Documentary
tt10501086	tvEpisode	Episode #1.574	Episode #1.574	0	1984	\N	\N	Drama,Romance
tt3271034	short	Flirting or Coquetry	Flirting or Coquetry	0	2013	\N	4	Animation,Comedy,Short
tt16295072	tvEpisode	All About Nimrat Kaur	All About Nimrat Kaur	0	2021	\N	\N	Documentary
tt1141875	tvEpisode	Episode #1.11	Episode #1.11	0	2005	\N	\N	Drama
tt0535347	tvEpisode	Episode dated 18 June 1983	Episode dated 18 June 1983	0	1983	\N	\N	Musical
tt5267136	tvEpisode	Episode dated 8 December 2015	Episode dated 8 December 2015	0	2015	\N	\N	News
tt35616254	tvEpisode	Episode #1.861	Episode #1.861	0	2024	\N	\N	Drama
tt20190372	tvEpisode	Episode #1.69	Episode #1.69	0	2022	\N	30	News,Talk-Show
tt22471238	short	Designing the Prolific Game	Designing the Prolific Game	0	2022	\N	10	Documentary,Short
tt2265025	tvEpisode	Episode #1.72	Episode #1.72	0	2000	\N	15	Drama
tt0988679	tvMovie	Jupitersinfonie	Jupitersinfonie	0	1963	\N	\N	\N
tt9174832	tvEpisode	Piloto	Piloto	0	2019	\N	\N	Crime,Drama,Thriller
tt6822284	tvSeries	Campus Connection	Campus Connection	0	1982	1985	\N	Talk-Show
tt1003213	movie	Yao yuan de ai	Yao yuan de ai	0	1948	\N	\N	\N
tt3509392	tvEpisode	Episode #2.1	Episode #2.1	0	1976	\N	\N	Game-Show
tt16973386	tvEpisode	Episode #1.2189	Episode #1.2189	0	\N	\N	\N	News
tt11655708	tvEpisode	Episode #13.227	Episode #13.227	0	2019	\N	\N	News
tt2657846	short	Ismael	Ismael	0	2012	\N	18	Drama,Family,Fantasy
tt1583044	tvEpisode	Episode dated 5 May 2005	Episode dated 5 May 2005	0	2005	\N	\N	News,Talk-Show
tt28153227	tvEpisode	Truffle Pig	Truffle Pig	0	2023	\N	\N	Comedy
tt8378948	tvEpisode	Episode #1.62	Episode #1.62	0	2005	\N	40	Family,Fantasy,Musical
tt32622133	tvEpisode	Sarkaar 4 Episode 7	Sarkaar 4 Episode 7	0	2024	\N	49	Game-Show,Reality-TV
tt3191942	tvEpisode	Episode dated 16 November 2006	Episode dated 16 November 2006	0	2006	\N	\N	News
tt0433570	video	Hilary's Roman Adventure	Hilary's Roman Adventure	0	2004	\N	93	Documentary
tt13337830	tvEpisode	Episode #1.407	Episode #1.407	0	\N	\N	\N	Family
tt0278788	movie	High Noon	Uchchi Veyil	0	1990	\N	105	Drama
tt12570470	tvEpisode	Kiraneya in: The Secret Powers of Kiraneya	Kiraneya in: The Secret Powers of Kiraneya	1	2019	\N	\N	Adult
tt15196124	tvEpisode	Exploding Weed Seeds (28,546 fps Slow Motion)	Exploding Weed Seeds (28,546 fps Slow Motion)	0	2021	\N	\N	Documentary
tt7915840	movie	Cain's Island	Cain's Island	0	\N	\N	\N	Action,Crime,Thriller
tt14060846	tvEpisode	Episode dated 15 February 2021	Episode dated 15 February 2021	0	2021	\N	\N	News
tt11483678	short	Morning Into Night	Morning Into Night	0	\N	\N	\N	Drama,Short
tt1916818	tvEpisode	The Heist	The Heist	0	2011	\N	\N	Comedy,Drama,Family
tt2196723	tvEpisode	Episode dated 10 November 1950	Episode dated 10 November 1950	0	1950	\N	\N	Talk-Show
tt13508726	tvEpisode	Episode #1.118	Episode #1.118	0	2011	\N	\N	\N
tt30246749	tvEpisode	Episode #1.172	Episode #1.172	0	\N	\N	\N	Drama
tt8491464	tvEpisode	Episode #1.117	Episode #1.117	0	1997	\N	\N	Action,Crime,Drama
tt1956753	tvEpisode	Episode dated 4 November 1999	Episode dated 4 November 1999	0	1999	\N	\N	\N
tt2502264	tvEpisode	Carefree Coastal Living in Tarifa, Spain	Carefree Coastal Living in Tarifa, Spain	0	2012	\N	22	Reality-TV
tt14528300	tvEpisode	Episode #1.25	Episode #1.25	0	\N	\N	\N	Drama,Romance
tt4318198	movie	Jungle Lioness	Junglee Sherni	0	2004	\N	\N	Action
tt5989082	tvEpisode	Der Unfall	Der Unfall	0	2016	\N	\N	Drama
tt2314165	tvEpisode	Jumalaa ei ole	Jumalaa ei ole	0	2008	\N	\N	Documentary
tt14435270	tvEpisode	Episode #1.211	Episode #1.211	0	\N	\N	\N	Drama
tt11788230	tvEpisode	Episode #1.185	Episode #1.185	0	2019	\N	\N	Drama
tt1284952	tvEpisode	Captain Hooks and Aborigines	Captain Hooks and Aborigines	0	1975	\N	\N	Adventure
tt31182969	tvSeries	Iki Balkon	Iki Balkon	0	2023	2023	7	Animation,Family
tt1199264	tvEpisode	Trick and Treat	Trick and Treat	0	1997	\N	\N	Comedy,Family
tt27485673	tvEpisode	TRAPPED IN THE ATTIC BY AN OBSESSED FAN!	TRAPPED IN THE ATTIC BY AN OBSESSED FAN!	0	2016	\N	\N	Comedy,Drama
tt23771282	tvEpisode	Teaching Theme Park People How to Paint - The Rogue Attraction	Teaching Theme Park People How to Paint - The Rogue Attraction	0	2022	\N	\N	Talk-Show
tt33306826	tvEpisode	Temple at Oklahoma	Temple at Oklahoma	0	2024	\N	\N	Sport
tt33043193	tvEpisode	The Perfect Day in Hollywood Studios Has Changed -- Lightning Lane Multi Pass	The Perfect Day in Hollywood Studios Has Changed -- Lightning Lane Multi Pass	0	2024	\N	\N	News
tt29077591	tvEpisode	Episode #1.327	Episode #1.327	0	2023	\N	\N	Drama,Family,Romance
tt0117784	movie	Sunset Park	Sunset Park	0	1996	\N	99	Drama,Sport
tt6335768	tvEpisode	The Lone Wolf's Nightmare vs. Casey's Too Tall Lake House	The Lone Wolf's Nightmare vs. Casey's Too Tall Lake House	0	2016	\N	40	Reality-TV
tt8621708	tvEpisode	The Romance of Crime Fiction	The Romance of Crime Fiction	0	1970	\N	\N	Documentary
tt2044311	tvEpisode	Episode dated 15 July 1997	Episode dated 15 July 1997	0	1997	\N	\N	\N
tt12304568	tvEpisode	Episode dated 28 June 2006	Episode dated 28 June 2006	0	2006	\N	\N	Talk-Show
tt0614110	tvEpisode	Ottumwa 52501	Ottumwa 52501	0	1992	\N	\N	Comedy
tt12111948	tvEpisode	Eggs - Scrambled Eggs	Eggs - Scrambled Eggs	0	2006	\N	25	Family
tt1999822	movie	Afghanistan, un état impossible?	Afghanistan, un état impossible?	0	2002	\N	52	Documentary
tt4048860	tvEpisode	Episode #1.9	Episode #1.9	0	1999	\N	\N	Thriller
\.


--
-- Name: people idx_17750_sqlite_autoindex_people_1; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.people
    ADD CONSTRAINT idx_17750_sqlite_autoindex_people_1 PRIMARY KEY (person_id);


--
-- Name: titles idx_17755_sqlite_autoindex_titles_1; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.titles
    ADD CONSTRAINT idx_17755_sqlite_autoindex_titles_1 PRIMARY KEY (title_id);


--
-- Name: akas akas_title_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.akas
    ADD CONSTRAINT akas_title_id_fkey FOREIGN KEY (title_id) REFERENCES public.titles(title_id);


--
-- Name: crew crew_person_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.crew
    ADD CONSTRAINT crew_person_id_fkey FOREIGN KEY (person_id) REFERENCES public.people(person_id);


--
-- Name: crew crew_title_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.crew
    ADD CONSTRAINT crew_title_id_fkey FOREIGN KEY (title_id) REFERENCES public.titles(title_id);


--
-- Name: episodes episodes_episode_title_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.episodes
    ADD CONSTRAINT episodes_episode_title_id_fkey FOREIGN KEY (episode_title_id) REFERENCES public.titles(title_id);


--
-- Name: episodes episodes_show_title_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.episodes
    ADD CONSTRAINT episodes_show_title_id_fkey FOREIGN KEY (show_title_id) REFERENCES public.titles(title_id);


--
-- PostgreSQL database dump complete
--

