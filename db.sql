--
-- PostgreSQL database cluster dump
--

-- Started on 2026-07-28 16:51:29 CAT

\restrict sYyJhEzg5FQhGwhrWE4d3RdeanYSU3YKZMWRTaLJ3ctvYdJpk5G7XzrKWZmZzbo

SET default_transaction_read_only = off;

SET client_encoding = 'UTF8';
SET standard_conforming_strings = on;

--
-- Roles
--

CREATE ROLE asuna;
ALTER ROLE asuna WITH SUPERUSER INHERIT NOCREATEROLE NOCREATEDB LOGIN NOREPLICATION NOBYPASSRLS;
CREATE ROLE postgres;
ALTER ROLE postgres WITH SUPERUSER INHERIT CREATEROLE CREATEDB LOGIN REPLICATION BYPASSRLS;

--
-- User Configurations
--








\unrestrict sYyJhEzg5FQhGwhrWE4d3RdeanYSU3YKZMWRTaLJ3ctvYdJpk5G7XzrKWZmZzbo

--
-- Databases
--

--
-- Database "template1" dump
--

\connect template1

--
-- PostgreSQL database dump
--

\restrict 9Nqhc7wcbuZndhk5i7zVyWI6zMCGhQRwiWo7rdezPdaUDQ0XBklPHjwjBNqL8Id

-- Dumped from database version 16.13 (Ubuntu 16.13-0ubuntu0.24.04.1)
-- Dumped by pg_dump version 16.13 (Ubuntu 16.13-0ubuntu0.24.04.1)

-- Started on 2026-07-28 16:51:30 CAT

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

-- Completed on 2026-07-28 16:51:30 CAT

--
-- PostgreSQL database dump complete
--

\unrestrict 9Nqhc7wcbuZndhk5i7zVyWI6zMCGhQRwiWo7rdezPdaUDQ0XBklPHjwjBNqL8Id

--
-- Database "haki" dump
--

--
-- PostgreSQL database dump
--

\restrict mqwT7rzI2UXNcaRqSghJgEMVQ2nBNbWVg2N8pfCBR3Tfdh1kTVrFsYe2eHppx7O

-- Dumped from database version 16.13 (Ubuntu 16.13-0ubuntu0.24.04.1)
-- Dumped by pg_dump version 16.13 (Ubuntu 16.13-0ubuntu0.24.04.1)

-- Started on 2026-07-28 16:51:30 CAT

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
-- TOC entry 3490 (class 1262 OID 16388)
-- Name: haki; Type: DATABASE; Schema: -; Owner: postgres
--

CREATE DATABASE haki WITH TEMPLATE = template0 ENCODING = 'UTF8' LOCALE_PROVIDER = libc LOCALE = 'fr_FR.UTF-8';


ALTER DATABASE haki OWNER TO postgres;

\unrestrict mqwT7rzI2UXNcaRqSghJgEMVQ2nBNbWVg2N8pfCBR3Tfdh1kTVrFsYe2eHppx7O
\connect haki
\restrict mqwT7rzI2UXNcaRqSghJgEMVQ2nBNbWVg2N8pfCBR3Tfdh1kTVrFsYe2eHppx7O

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
-- TOC entry 224 (class 1259 OID 16457)
-- Name: article; Type: TABLE; Schema: public; Owner: asuna
--

CREATE TABLE public.article (
    articleid integer NOT NULL,
    titre character varying NOT NULL,
    date_create date NOT NULL,
    contenu text,
    piecesjointes text,
    typepiece character varying,
    userid integer
);


ALTER TABLE public.article OWNER TO asuna;

--
-- TOC entry 223 (class 1259 OID 16456)
-- Name: article_articleid_seq; Type: SEQUENCE; Schema: public; Owner: asuna
--

CREATE SEQUENCE public.article_articleid_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public.article_articleid_seq OWNER TO asuna;

--
-- TOC entry 3491 (class 0 OID 0)
-- Dependencies: 223
-- Name: article_articleid_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: asuna
--

ALTER SEQUENCE public.article_articleid_seq OWNED BY public.article.articleid;


--
-- TOC entry 222 (class 1259 OID 16440)
-- Name: attribuerdossier; Type: TABLE; Schema: public; Owner: asuna
--

CREATE TABLE public.attribuerdossier (
    attribuerid integer NOT NULL,
    date date NOT NULL,
    status character varying,
    userid integer,
    dossierid integer
);


ALTER TABLE public.attribuerdossier OWNER TO asuna;

--
-- TOC entry 221 (class 1259 OID 16439)
-- Name: attribuerdossier_attribuerid_seq; Type: SEQUENCE; Schema: public; Owner: asuna
--

CREATE SEQUENCE public.attribuerdossier_attribuerid_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public.attribuerdossier_attribuerid_seq OWNER TO asuna;

--
-- TOC entry 3492 (class 0 OID 0)
-- Dependencies: 221
-- Name: attribuerdossier_attribuerid_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: asuna
--

ALTER SEQUENCE public.attribuerdossier_attribuerid_seq OWNED BY public.attribuerdossier.attribuerid;


--
-- TOC entry 218 (class 1259 OID 16415)
-- Name: categorie_incident; Type: TABLE; Schema: public; Owner: asuna
--

CREATE TABLE public.categorie_incident (
    categorie_id integer NOT NULL,
    designation character varying,
    etat character varying,
    date date,
    niveau character varying(50)
);


ALTER TABLE public.categorie_incident OWNER TO asuna;

--
-- TOC entry 217 (class 1259 OID 16414)
-- Name: cateogie_incident_id_seq; Type: SEQUENCE; Schema: public; Owner: asuna
--

CREATE SEQUENCE public.cateogie_incident_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public.cateogie_incident_id_seq OWNER TO asuna;

--
-- TOC entry 3493 (class 0 OID 0)
-- Dependencies: 217
-- Name: cateogie_incident_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: asuna
--

ALTER SEQUENCE public.cateogie_incident_id_seq OWNED BY public.categorie_incident.categorie_id;


--
-- TOC entry 220 (class 1259 OID 16422)
-- Name: incident; Type: TABLE; Schema: public; Owner: asuna
--

CREATE TABLE public.incident (
    lieu character varying,
    id_incident integer NOT NULL,
    description text,
    date_incident date DEFAULT CURRENT_TIMESTAMP,
    status character varying,
    population_id integer,
    anonyme boolean,
    categorieid integer,
    annexe character varying,
    typeannexe character varying,
    date_create date
);


ALTER TABLE public.incident OWNER TO asuna;

--
-- TOC entry 219 (class 1259 OID 16421)
-- Name: incident_id_incident_seq; Type: SEQUENCE; Schema: public; Owner: asuna
--

CREATE SEQUENCE public.incident_id_incident_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public.incident_id_incident_seq OWNER TO asuna;

--
-- TOC entry 3494 (class 0 OID 0)
-- Dependencies: 219
-- Name: incident_id_incident_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: asuna
--

ALTER SEQUENCE public.incident_id_incident_seq OWNED BY public.incident.id_incident;


--
-- TOC entry 216 (class 1259 OID 16406)
-- Name: utilisateurs; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.utilisateurs (
    userid integer NOT NULL,
    noms character varying(150) NOT NULL,
    email character varying(150),
    phone character varying(150),
    mdp text,
    code integer,
    type character varying(20),
    etat character varying(20),
    date_create date,
    username character(50) NOT NULL,
    adresse text
);


ALTER TABLE public.utilisateurs OWNER TO postgres;

--
-- TOC entry 215 (class 1259 OID 16405)
-- Name: utilisateurs_userid_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.utilisateurs_userid_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public.utilisateurs_userid_seq OWNER TO postgres;

--
-- TOC entry 3495 (class 0 OID 0)
-- Dependencies: 215
-- Name: utilisateurs_userid_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.utilisateurs_userid_seq OWNED BY public.utilisateurs.userid;


--
-- TOC entry 3320 (class 2604 OID 16460)
-- Name: article articleid; Type: DEFAULT; Schema: public; Owner: asuna
--

ALTER TABLE ONLY public.article ALTER COLUMN articleid SET DEFAULT nextval('public.article_articleid_seq'::regclass);


--
-- TOC entry 3319 (class 2604 OID 16443)
-- Name: attribuerdossier attribuerid; Type: DEFAULT; Schema: public; Owner: asuna
--

ALTER TABLE ONLY public.attribuerdossier ALTER COLUMN attribuerid SET DEFAULT nextval('public.attribuerdossier_attribuerid_seq'::regclass);


--
-- TOC entry 3316 (class 2604 OID 16418)
-- Name: categorie_incident categorie_id; Type: DEFAULT; Schema: public; Owner: asuna
--

ALTER TABLE ONLY public.categorie_incident ALTER COLUMN categorie_id SET DEFAULT nextval('public.cateogie_incident_id_seq'::regclass);


--
-- TOC entry 3317 (class 2604 OID 16425)
-- Name: incident id_incident; Type: DEFAULT; Schema: public; Owner: asuna
--

ALTER TABLE ONLY public.incident ALTER COLUMN id_incident SET DEFAULT nextval('public.incident_id_incident_seq'::regclass);


--
-- TOC entry 3315 (class 2604 OID 16409)
-- Name: utilisateurs userid; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.utilisateurs ALTER COLUMN userid SET DEFAULT nextval('public.utilisateurs_userid_seq'::regclass);


--
-- TOC entry 3484 (class 0 OID 16457)
-- Dependencies: 224
-- Data for Name: article; Type: TABLE DATA; Schema: public; Owner: asuna
--

COPY public.article (articleid, titre, date_create, contenu, piecesjointes, typepiece, userid) FROM stdin;
1	Test article 	2026-04-13	<p><strong>Goma, RDC</strong> – Dans une ère de surveillance accrue, la dénonciation anonyme devient le seul rempart pour les populations vulnérables contre l'impunité.</p><h2>Le cryptage de bout en bout</h2><p>Toutes les informations transmises via notre plateforme sont chiffrées. Même l'équipe de <strong>Lonford Devs</strong> ne peut accéder au contenu sans votre clé privée.</p><blockquote><p>"La justice commence par le droit de parler sans crainte." - Équipe TAASISI</p></blockquote><ul><li><p>Anonymat garanti par IP Masking.</p></li><li><p>Preuves stockées sur Blockchain légère.</p></li><li><p>Signalement possible sans internet (Mode Offline).</p></li></ul><p></p>	9965a158fa7ec9e6f46124884e719be6	image/jpeg	1
3	fast	2026-04-13		ec5c0fe866649aa43fc99c8d543a608f	image/jpeg	1
2	Autre article	2026-04-13	<p><strong>Goma, RDC</strong> – Dans une ère de surveillance accrue, la dénonciation anonyme devient le seul rempart pour les populations vulnérables contre l'impunité.</p><h2>Le cryptage de bout en bout</h2><p>Toutes les informations transmises via notre plateforme sont chiffrées. Même l'équipe de <strong>Lonford Devs</strong> ne peut accéder au contenu sans votre clé privée.</p><blockquote><p>"La justice commence par le droit de parler sans crainte." - Équipe TAASISI</p></blockquote><ul><li><p>Anonymat garanti par IP Masking.</p></li><li><p>Preuves stockées sur Blockchain légère.</p></li><li><p>Signalement possible sans internet (Mode Offline).</p></li></ul><p></p>	6cfbefab27d9d2f78011335f895fdfa8	image/png	2
4	Application de gestion de plainte	2026-04-14	<p>À l’ère du numérique, les organisations – qu’elles soient publiques ou privées – doivent répondre de manière rapide, transparente et efficace aux préoccupations de leurs usagers. Dans ce contexte, les applications de gestion de plainte s’imposent comme des outils indispensables pour structurer, suivre et résoudre les réclamations de manière professionnelle.</p><h4>Qu’est-ce qu’une application de gestion de plainte ?</h4><p>Une application de gestion de plainte est une plateforme numérique conçue pour centraliser les réclamations des clients, citoyens ou usagers. Elle permet de soumettre une plainte, de la suivre en temps réel, et d’assurer son traitement jusqu’à sa résolution. Ces applications peuvent être accessibles via mobile, web ou intégrées aux systèmes internes d’une organisation.</p><h4>Fonctionnalités principales</h4><p>Une bonne application de gestion de plainte offre généralement les fonctionnalités suivantes :</p><ul><li><p><strong>Soumission simplifiée des plaintes</strong> : formulaires intuitifs permettant de décrire le problème, joindre des documents ou des images.</p></li><li><p><strong>Suivi en temps réel</strong> : l’utilisateur peut consulter l’état d’avancement de sa plainte.</p></li><li><p><strong>Attribution automatique</strong> : les plaintes sont dirigées vers les services compétents.</p></li><li><p><strong>Historique et traçabilité</strong> : toutes les interactions sont enregistrées pour garantir la transparence.</p></li><li><p><strong>Notifications</strong> : alertes envoyées aux utilisateurs et aux gestionnaires pour les tenir informés.</p></li><li><p><strong>Tableaux de bord analytiques</strong> : outils de reporting pour identifier les tendances et améliorer les services.</p></li></ul><h4>Avantages pour les organisations</h4><p>L’adoption d’une telle application présente de nombreux bénéfices :</p><ul><li><p><strong>Amélioration de la satisfaction des usagers</strong> grâce à des réponses rapides et structurées.</p></li><li><p><strong>Gain de temps et d’efficacité</strong> dans le traitement des plaintes.</p></li><li><p><strong>Réduction des erreurs humaines</strong> grâce à l’automatisation.</p></li><li><p><strong>Meilleure prise de décision</strong> grâce aux données collectées et analysées.</p></li><li><p><strong>Renforcement de la transparence et de la confiance</strong> entre l’organisation et ses usagers.</p></li></ul><h4>Cas d’utilisation</h4><p>Les applications de gestion de plainte sont utilisées dans divers secteurs :</p><ul><li><p><strong>Services publics</strong> : gestion des plaintes des citoyens (routes, électricité, eau, etc.).</p></li><li><p><strong>Entreprises privées</strong> : service client et support technique.</p></li><li><p><strong>Institutions financières</strong> : traitement des litiges clients.</p></li><li><p><strong>Établissements de santé</strong> : retour des patients sur les services reçus.</p></li></ul><h4>Enjeux et défis</h4><p>Malgré leurs avantages, ces applications doivent relever certains défis :</p><ul><li><p><strong>Accessibilité numérique</strong> : garantir que tous les usagers puissent utiliser l’application.</p></li><li><p><strong>Protection des données</strong> : sécuriser les informations sensibles.</p></li><li><p><strong>Adoption par les utilisateurs</strong> : encourager les citoyens ou clients à utiliser la plateforme.</p></li><li><p><strong>Formation du personnel</strong> : assurer une bonne prise en main de l’outil par les équipes.</p></li></ul><h4>Conclusion</h4><p>Les applications de gestion de plainte représentent un progrès majeur dans la gestion de la relation usager. En facilitant la communication, en améliorant la réactivité et en apportant une meilleure visibilité sur les problèmes rencontrés, elles contribuent à une gouvernance plus efficace et à une meilleure qualité de service. Dans un monde où la satisfaction des utilisateurs est devenue essentielle, investir dans ce type de solution n’est plus une option, mais une nécessité.</p>	1776179584523.jpg	image/jpeg	1
5	gad	2026-04-18	<h1><strong>egtt</strong></h1><p><s>cvdvrvr</s></p>	7619984930653994577c6934e152a995	image/jpeg	1
\.


--
-- TOC entry 3482 (class 0 OID 16440)
-- Dependencies: 222
-- Data for Name: attribuerdossier; Type: TABLE DATA; Schema: public; Owner: asuna
--

COPY public.attribuerdossier (attribuerid, date, status, userid, dossierid) FROM stdin;
1	2026-04-07	en cours	\N	2
4	2026-04-10	abandonner	1	1
6	2026-04-12	abandonner	1	1
2	2026-04-07	cloturer	1	4
7	2026-04-18	cloturer	1	7
5	2026-04-10	cloturer	1	5
8	2026-05-04	abandonner	1	8
\.


--
-- TOC entry 3478 (class 0 OID 16415)
-- Dependencies: 218
-- Data for Name: categorie_incident; Type: TABLE DATA; Schema: public; Owner: asuna
--

COPY public.categorie_incident (categorie_id, designation, etat, date, niveau) FROM stdin;
1	Fraude	actif	2026-03-19	faible
2	Corruption	actif	2026-03-19	moyen
\.


--
-- TOC entry 3480 (class 0 OID 16422)
-- Dependencies: 220
-- Data for Name: incident; Type: TABLE DATA; Schema: public; Owner: asuna
--

COPY public.incident (lieu, id_incident, description, date_incident, status, population_id, anonyme, categorieid, annexe, typeannexe, date_create) FROM stdin;
Beni, Tamende	1	Blablabla	2026-04-05	actif	0	t	1	\N	\N	2026-04-05
Beni, Tamende	2	Blablabla	2026-04-05	actif	0	t	2	\N	\N	2026-04-05
Beni, Tamende	3	Blablabla	2026-04-05	actif	0	t	2	\N	\N	2026-04-05
Beni, Tamende	4	Blablabla	2026-04-05	actif	0	t	2	\N	\N	2026-04-05
Ville de Beni, Q. Tamende	5	Un agent de la dgi, nous a taxer des faux imports,...	2026-04-09	actif	0	t	1	\N	\N	2026-04-10
Beni	6	mm	2026-04-10	actif	0	t	1	\N	\N	2026-04-10
Beni	7	trhtrjjtyjtmgn	2026-04-01	actif	0	t	1	\N	\N	2026-04-18
Goma 	8	J'ai ete victime d'un harcelement,.......	2026-05-04	actif	0	t	1	\N	\N	2026-05-04
\.


--
-- TOC entry 3476 (class 0 OID 16406)
-- Dependencies: 216
-- Data for Name: utilisateurs; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.utilisateurs (userid, noms, email, phone, mdp, code, type, etat, date_create, username, adresse) FROM stdin;
2	Malik Will	gad@gmail.com	243826711828	423#malik	\N	juriste	actif	2026-04-13	will                                              	Beni
1	Gad Malik	gadmalik423@gmail.com	243993886474	423#malik	\N	juriste	actif	2026-03-12	gadmalik                                          	Beni, tamende
\.


--
-- TOC entry 3496 (class 0 OID 0)
-- Dependencies: 223
-- Name: article_articleid_seq; Type: SEQUENCE SET; Schema: public; Owner: asuna
--

SELECT pg_catalog.setval('public.article_articleid_seq', 5, true);


--
-- TOC entry 3497 (class 0 OID 0)
-- Dependencies: 221
-- Name: attribuerdossier_attribuerid_seq; Type: SEQUENCE SET; Schema: public; Owner: asuna
--

SELECT pg_catalog.setval('public.attribuerdossier_attribuerid_seq', 8, true);


--
-- TOC entry 3498 (class 0 OID 0)
-- Dependencies: 217
-- Name: cateogie_incident_id_seq; Type: SEQUENCE SET; Schema: public; Owner: asuna
--

SELECT pg_catalog.setval('public.cateogie_incident_id_seq', 2, true);


--
-- TOC entry 3499 (class 0 OID 0)
-- Dependencies: 219
-- Name: incident_id_incident_seq; Type: SEQUENCE SET; Schema: public; Owner: asuna
--

SELECT pg_catalog.setval('public.incident_id_incident_seq', 8, true);


--
-- TOC entry 3500 (class 0 OID 0)
-- Dependencies: 215
-- Name: utilisateurs_userid_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.utilisateurs_userid_seq', 2, true);


--
-- TOC entry 3324 (class 2606 OID 16430)
-- Name: categorie_incident categorie_id_pk; Type: CONSTRAINT; Schema: public; Owner: asuna
--

ALTER TABLE ONLY public.categorie_incident
    ADD CONSTRAINT categorie_id_pk PRIMARY KEY (categorie_id);


--
-- TOC entry 3327 (class 2606 OID 16437)
-- Name: incident incident_pk; Type: CONSTRAINT; Schema: public; Owner: asuna
--

ALTER TABLE ONLY public.incident
    ADD CONSTRAINT incident_pk PRIMARY KEY (id_incident);


--
-- TOC entry 3322 (class 2606 OID 16413)
-- Name: utilisateurs utilisateurs_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.utilisateurs
    ADD CONSTRAINT utilisateurs_pkey PRIMARY KEY (userid);


--
-- TOC entry 3325 (class 1259 OID 16438)
-- Name: categorie_incident_id_idx; Type: INDEX; Schema: public; Owner: asuna
--

CREATE INDEX categorie_incident_id_idx ON public.categorie_incident USING btree (categorie_id);


--
-- TOC entry 3331 (class 2606 OID 16463)
-- Name: article article_utilisateurs_fk; Type: FK CONSTRAINT; Schema: public; Owner: asuna
--

ALTER TABLE ONLY public.article
    ADD CONSTRAINT article_utilisateurs_fk FOREIGN KEY (userid) REFERENCES public.utilisateurs(userid);


--
-- TOC entry 3329 (class 2606 OID 16451)
-- Name: attribuerdossier attribuerdossier_incident_fk; Type: FK CONSTRAINT; Schema: public; Owner: asuna
--

ALTER TABLE ONLY public.attribuerdossier
    ADD CONSTRAINT attribuerdossier_incident_fk FOREIGN KEY (dossierid) REFERENCES public.incident(id_incident);


--
-- TOC entry 3330 (class 2606 OID 16446)
-- Name: attribuerdossier attribuerdossier_utilisateurs_fk; Type: FK CONSTRAINT; Schema: public; Owner: asuna
--

ALTER TABLE ONLY public.attribuerdossier
    ADD CONSTRAINT attribuerdossier_utilisateurs_fk FOREIGN KEY (userid) REFERENCES public.utilisateurs(userid);


--
-- TOC entry 3328 (class 2606 OID 16431)
-- Name: incident incident_categorie_incident_fk; Type: FK CONSTRAINT; Schema: public; Owner: asuna
--

ALTER TABLE ONLY public.incident
    ADD CONSTRAINT incident_categorie_incident_fk FOREIGN KEY (categorieid) REFERENCES public.categorie_incident(categorie_id) ON UPDATE CASCADE ON DELETE RESTRICT;


-- Completed on 2026-07-28 16:51:31 CAT

--
-- PostgreSQL database dump complete
--

\unrestrict mqwT7rzI2UXNcaRqSghJgEMVQ2nBNbWVg2N8pfCBR3Tfdh1kTVrFsYe2eHppx7O

--
-- Database "postgres" dump
--

\connect postgres

--
-- PostgreSQL database dump
--

\restrict qp5aJh1G5rfkMEOhIh7OVjw59gbxxMRoE3nePlfrW87oY2qGiENGFoatBk9zWse

-- Dumped from database version 16.13 (Ubuntu 16.13-0ubuntu0.24.04.1)
-- Dumped by pg_dump version 16.13 (Ubuntu 16.13-0ubuntu0.24.04.1)

-- Started on 2026-07-28 16:51:31 CAT

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

-- Completed on 2026-07-28 16:51:31 CAT

--
-- PostgreSQL database dump complete
--

\unrestrict qp5aJh1G5rfkMEOhIh7OVjw59gbxxMRoE3nePlfrW87oY2qGiENGFoatBk9zWse

--
-- Database "tchike" dump
--

--
-- PostgreSQL database dump
--

\restrict L0BUatNx0wOJ6UjWYlSIzQdLgkr8JVz1TcrfavdpMFUcySOPjut129Mu4v9Nkau

-- Dumped from database version 16.13 (Ubuntu 16.13-0ubuntu0.24.04.1)
-- Dumped by pg_dump version 16.13 (Ubuntu 16.13-0ubuntu0.24.04.1)

-- Started on 2026-07-28 16:51:31 CAT

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
-- TOC entry 3795 (class 1262 OID 16469)
-- Name: tchike; Type: DATABASE; Schema: -; Owner: postgres
--

CREATE DATABASE tchike WITH TEMPLATE = template0 ENCODING = 'UTF8' LOCALE_PROVIDER = libc LOCALE = 'fr_FR.UTF-8';


ALTER DATABASE tchike OWNER TO postgres;

\unrestrict L0BUatNx0wOJ6UjWYlSIzQdLgkr8JVz1TcrfavdpMFUcySOPjut129Mu4v9Nkau
\connect tchike
\restrict L0BUatNx0wOJ6UjWYlSIzQdLgkr8JVz1TcrfavdpMFUcySOPjut129Mu4v9Nkau

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
-- TOC entry 2 (class 3079 OID 16476)
-- Name: uuid-ossp; Type: EXTENSION; Schema: -; Owner: -
--

CREATE EXTENSION IF NOT EXISTS "uuid-ossp" WITH SCHEMA public;


--
-- TOC entry 3796 (class 0 OID 0)
-- Dependencies: 2
-- Name: EXTENSION "uuid-ossp"; Type: COMMENT; Schema: -; Owner: 
--

COMMENT ON EXTENSION "uuid-ossp" IS 'generate universally unique identifiers (UUIDs)';


SET default_tablespace = '';

SET default_table_access_method = heap;

--
-- TOC entry 222 (class 1259 OID 16600)
-- Name: annees; Type: TABLE; Schema: public; Owner: asuna
--

CREATE TABLE public.annees (
    anneeid uuid DEFAULT public.uuid_generate_v4() NOT NULL,
    designation character varying(50) NOT NULL,
    datedebut date NOT NULL,
    datefin date NOT NULL,
    status character varying(20) DEFAULT 'actif'::character varying,
    date_create timestamp without time zone DEFAULT CURRENT_TIMESTAMP
);


ALTER TABLE public.annees OWNER TO asuna;

--
-- TOC entry 239 (class 1259 OID 25083)
-- Name: assignercours; Type: TABLE; Schema: public; Owner: asuna
--

CREATE TABLE public.assignercours (
    assignercoursid uuid DEFAULT gen_random_uuid() NOT NULL,
    classeecoleid uuid NOT NULL,
    userid uuid NOT NULL,
    assignerutilisateurid uuid NOT NULL,
    ecoleid uuid NOT NULL,
    status character varying(15) DEFAULT 'actif'::character varying,
    date_create timestamp without time zone DEFAULT CURRENT_TIMESTAMP,
    matiereid uuid NOT NULL
);


ALTER TABLE public.assignercours OWNER TO asuna;

--
-- TOC entry 237 (class 1259 OID 16993)
-- Name: assignerfonction; Type: TABLE; Schema: public; Owner: asuna
--

CREATE TABLE public.assignerfonction (
    assignerfonctionid uuid DEFAULT gen_random_uuid() NOT NULL,
    fonctionnaliteid uuid NOT NULL,
    categorieutilisateurid uuid NOT NULL,
    date date DEFAULT CURRENT_DATE,
    date_creation timestamp without time zone DEFAULT CURRENT_TIMESTAMP,
    status character varying(15) DEFAULT 'actif'::character varying
);


ALTER TABLE public.assignerfonction OWNER TO asuna;

--
-- TOC entry 238 (class 1259 OID 17012)
-- Name: assignerutilisateur; Type: TABLE; Schema: public; Owner: asuna
--

CREATE TABLE public.assignerutilisateur (
    assignerutilisateurid uuid DEFAULT gen_random_uuid() NOT NULL,
    ecoleid uuid NOT NULL,
    userid uuid NOT NULL,
    categorieutilisateurid uuid NOT NULL,
    status character varying(15) DEFAULT 'actif'::character varying,
    date_creation timestamp without time zone DEFAULT CURRENT_TIMESTAMP
);


ALTER TABLE public.assignerutilisateur OWNER TO asuna;

--
-- TOC entry 226 (class 1259 OID 16660)
-- Name: attribueroptions; Type: TABLE; Schema: public; Owner: asuna
--

CREATE TABLE public.attribueroptions (
    optionecoleid uuid DEFAULT public.uuid_generate_v4() NOT NULL,
    ecoleid uuid NOT NULL,
    optionid uuid NOT NULL,
    status character varying(20) DEFAULT 'actif'::character varying,
    date_create timestamp without time zone DEFAULT CURRENT_TIMESTAMP
);


ALTER TABLE public.attribueroptions OWNER TO asuna;

--
-- TOC entry 227 (class 1259 OID 16680)
-- Name: attribuersections; Type: TABLE; Schema: public; Owner: asuna
--

CREATE TABLE public.attribuersections (
    sectionecoleid uuid DEFAULT public.uuid_generate_v4() NOT NULL,
    ecoleid uuid NOT NULL,
    sectionid uuid NOT NULL,
    status character varying(20) DEFAULT 'actif'::character varying,
    date_create timestamp without time zone DEFAULT CURRENT_TIMESTAMP
);


ALTER TABLE public.attribuersections OWNER TO asuna;

--
-- TOC entry 236 (class 1259 OID 16980)
-- Name: categorieutilisateur; Type: TABLE; Schema: public; Owner: asuna
--

CREATE TABLE public.categorieutilisateur (
    categorieutilisateurid uuid DEFAULT gen_random_uuid() NOT NULL,
    designation character varying(100) NOT NULL,
    ecoleid uuid NOT NULL,
    date_creation timestamp without time zone DEFAULT CURRENT_TIMESTAMP,
    status character varying(15) DEFAULT 'actif'::character varying,
    description character varying(250),
    pedagogique boolean
);


ALTER TABLE public.categorieutilisateur OWNER TO asuna;

--
-- TOC entry 225 (class 1259 OID 16642)
-- Name: classeecoles; Type: TABLE; Schema: public; Owner: asuna
--

CREATE TABLE public.classeecoles (
    classeecoleid uuid DEFAULT public.uuid_generate_v4() NOT NULL,
    classeid uuid NOT NULL,
    ecoleid uuid NOT NULL,
    numero character varying(10),
    status character varying(20) DEFAULT 'actif'::character varying,
    date_create timestamp without time zone DEFAULT CURRENT_TIMESTAMP,
    sectionecoleid uuid
);


ALTER TABLE public.classeecoles OWNER TO asuna;

--
-- TOC entry 220 (class 1259 OID 16532)
-- Name: classes; Type: TABLE; Schema: public; Owner: asuna
--

CREATE TABLE public.classes (
    classeid uuid DEFAULT public.uuid_generate_v4() NOT NULL,
    designation character varying(100) NOT NULL,
    status character varying(20) DEFAULT 'actif'::character varying,
    date_create timestamp without time zone DEFAULT CURRENT_TIMESTAMP,
    sectionid uuid NOT NULL,
    optionid uuid
);


ALTER TABLE public.classes OWNER TO asuna;

--
-- TOC entry 241 (class 1259 OID 33274)
-- Name: cotes; Type: TABLE; Schema: public; Owner: asuna
--

CREATE TABLE public.cotes (
    coteid uuid DEFAULT gen_random_uuid() NOT NULL,
    valeur numeric(5,2) NOT NULL,
    mention character varying(100),
    status character varying(15) DEFAULT 'actif'::character varying,
    date_create timestamp without time zone DEFAULT CURRENT_TIMESTAMP,
    evaluationid uuid NOT NULL,
    eleveid uuid NOT NULL,
    ecoleid uuid NOT NULL,
    anneeid uuid NOT NULL,
    CONSTRAINT check_cote_positive CHECK ((valeur >= (0)::numeric))
);


ALTER TABLE public.cotes OWNER TO asuna;

--
-- TOC entry 242 (class 1259 OID 33303)
-- Name: dashboard_widgets; Type: TABLE; Schema: public; Owner: asuna
--

CREATE TABLE public.dashboard_widgets (
    widgetid uuid DEFAULT public.uuid_generate_v4() NOT NULL,
    component_name character varying(100) NOT NULL,
    display_name character varying(150) NOT NULL,
    category character varying(20) NOT NULL,
    created_at timestamp without time zone DEFAULT now(),
    fonctionnaliteid uuid NOT NULL,
    CONSTRAINT chk_widget_category CHECK (((category)::text = ANY ((ARRAY['card'::character varying, 'list'::character varying, 'chart'::character varying])::text[])))
);


ALTER TABLE public.dashboard_widgets OWNER TO asuna;

--
-- TOC entry 217 (class 1259 OID 16495)
-- Name: ecoles; Type: TABLE; Schema: public; Owner: asuna
--

CREATE TABLE public.ecoles (
    ecoleid uuid DEFAULT public.uuid_generate_v4() NOT NULL,
    designation character varying(150) NOT NULL,
    adresse character varying(255),
    logo character varying(255),
    devise character varying(255) DEFAULT 'USD'::character varying,
    ville character varying(100),
    phone character varying(20),
    email character varying(100),
    siteweb character varying(255),
    status character varying(20) DEFAULT 'actif'::character varying,
    date_create timestamp without time zone DEFAULT CURRENT_TIMESTAMP,
    userid uuid
);


ALTER TABLE public.ecoles OWNER TO asuna;

--
-- TOC entry 228 (class 1259 OID 16700)
-- Name: eleves; Type: TABLE; Schema: public; Owner: asuna
--

CREATE TABLE public.eleves (
    eleveid uuid DEFAULT public.uuid_generate_v4() NOT NULL,
    nom character varying(50) NOT NULL,
    postnom character varying(50),
    prenom character varying(50),
    datenaissance date,
    lieunaissance character varying(100),
    sexe character varying(10),
    adresse text,
    status character varying(20) DEFAULT 'actif'::character varying,
    date_create timestamp without time zone DEFAULT CURRENT_TIMESTAMP,
    matricule character varying(10) NOT NULL
);


ALTER TABLE public.eleves OWNER TO asuna;

--
-- TOC entry 240 (class 1259 OID 25126)
-- Name: evaluations; Type: TABLE; Schema: public; Owner: asuna
--

CREATE TABLE public.evaluations (
    evaluationid uuid DEFAULT gen_random_uuid() NOT NULL,
    maxima numeric(5,2) NOT NULL,
    categorie character varying(50) NOT NULL,
    date date NOT NULL,
    status character varying(15) DEFAULT 'actif'::character varying,
    date_create timestamp without time zone DEFAULT CURRENT_TIMESTAMP,
    assignercoursid uuid NOT NULL,
    ecoleid uuid NOT NULL,
    userid uuid NOT NULL,
    periodeid uuid NOT NULL,
    sousperiodeid uuid,
    anneeid uuid,
    CONSTRAINT check_maxima_positif CHECK ((maxima > (0)::numeric))
);


ALTER TABLE public.evaluations OWNER TO asuna;

--
-- TOC entry 235 (class 1259 OID 16930)
-- Name: fonctionnalite; Type: TABLE; Schema: public; Owner: asuna
--

CREATE TABLE public.fonctionnalite (
    fonctionnaliteid uuid DEFAULT gen_random_uuid() NOT NULL,
    designation character varying(100) NOT NULL,
    icone character varying(50),
    route character varying(100),
    status character varying(15) DEFAULT 'actif'::character varying,
    date_creation timestamp without time zone DEFAULT CURRENT_TIMESTAMP,
    description character varying(200)
);


ALTER TABLE public.fonctionnalite OWNER TO asuna;

--
-- TOC entry 231 (class 1259 OID 16789)
-- Name: frais; Type: TABLE; Schema: public; Owner: asuna
--

CREATE TABLE public.frais (
    fraisid uuid DEFAULT gen_random_uuid() NOT NULL,
    designation character varying(255) NOT NULL,
    montant numeric(10,2) NOT NULL,
    devise character varying(10) NOT NULL,
    status character varying(50),
    periodecomptableid uuid,
    anneeid uuid NOT NULL,
    sectionid uuid,
    classeid uuid,
    optionid uuid,
    ecoleid uuid,
    CONSTRAINT check_montant_positif CHECK ((montant >= (0)::numeric))
);


ALTER TABLE public.frais OWNER TO asuna;

--
-- TOC entry 229 (class 1259 OID 16710)
-- Name: inscriptions; Type: TABLE; Schema: public; Owner: asuna
--

CREATE TABLE public.inscriptions (
    inscriptionid uuid DEFAULT public.uuid_generate_v4() NOT NULL,
    eleveid uuid NOT NULL,
    ecoleid uuid NOT NULL,
    classeid uuid NOT NULL,
    sectionid uuid NOT NULL,
    anneeid uuid NOT NULL,
    date date DEFAULT CURRENT_DATE,
    datefin date,
    status character varying(20) DEFAULT 'en cours'::character varying,
    date_create timestamp without time zone DEFAULT CURRENT_TIMESTAMP
);


ALTER TABLE public.inscriptions OWNER TO asuna;

--
-- TOC entry 234 (class 1259 OID 16850)
-- Name: lignepaiements; Type: TABLE; Schema: public; Owner: asuna
--

CREATE TABLE public.lignepaiements (
    lignepaiementid uuid DEFAULT gen_random_uuid() NOT NULL,
    paiementid uuid NOT NULL,
    fraisid uuid NOT NULL,
    eleveid uuid NOT NULL,
    anneeid uuid NOT NULL,
    ecoleid uuid NOT NULL,
    montant numeric(10,2) NOT NULL,
    devise character varying(10) NOT NULL,
    date date DEFAULT CURRENT_DATE,
    status character varying(15) DEFAULT 'actif'::character varying NOT NULL,
    CONSTRAINT check_montant_positif CHECK ((montant > (0)::numeric))
);


ALTER TABLE public.lignepaiements OWNER TO asuna;

--
-- TOC entry 221 (class 1259 OID 16550)
-- Name: matieres; Type: TABLE; Schema: public; Owner: asuna
--

CREATE TABLE public.matieres (
    matiereid uuid DEFAULT public.uuid_generate_v4() NOT NULL,
    designation character varying(150) NOT NULL,
    coefficient numeric(4,2) DEFAULT 1.0,
    chargehoraire integer,
    status character varying(20) DEFAULT 'actif'::character varying,
    date_create timestamp without time zone DEFAULT CURRENT_TIMESTAMP,
    classeid uuid NOT NULL
);


ALTER TABLE public.matieres OWNER TO asuna;

--
-- TOC entry 219 (class 1259 OID 16519)
-- Name: options; Type: TABLE; Schema: public; Owner: asuna
--

CREATE TABLE public.options (
    optionid uuid DEFAULT public.uuid_generate_v4() NOT NULL,
    designation character varying(100) NOT NULL,
    status character varying(20) DEFAULT 'actif'::character varying,
    date_create timestamp without time zone DEFAULT CURRENT_TIMESTAMP,
    abreviation character varying
);


ALTER TABLE public.options OWNER TO asuna;

--
-- TOC entry 233 (class 1259 OID 16827)
-- Name: paiements; Type: TABLE; Schema: public; Owner: asuna
--

CREATE TABLE public.paiements (
    paiementid uuid DEFAULT gen_random_uuid() NOT NULL,
    numero integer NOT NULL,
    date timestamp without time zone DEFAULT CURRENT_TIMESTAMP,
    eleveid uuid NOT NULL,
    ecoleid uuid NOT NULL,
    userid uuid NOT NULL,
    status character varying(15) DEFAULT 'actif'::character varying NOT NULL,
    modepaiement character varying DEFAULT 'cash'::character varying NOT NULL,
    idtrans character varying,
    datetrans date
);


ALTER TABLE public.paiements OWNER TO asuna;

--
-- TOC entry 232 (class 1259 OID 16826)
-- Name: paiements_numero_seq; Type: SEQUENCE; Schema: public; Owner: asuna
--

CREATE SEQUENCE public.paiements_numero_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public.paiements_numero_seq OWNER TO asuna;

--
-- TOC entry 3797 (class 0 OID 0)
-- Dependencies: 232
-- Name: paiements_numero_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: asuna
--

ALTER SEQUENCE public.paiements_numero_seq OWNED BY public.paiements.numero;


--
-- TOC entry 223 (class 1259 OID 16608)
-- Name: periodes; Type: TABLE; Schema: public; Owner: asuna
--

CREATE TABLE public.periodes (
    periodeid uuid DEFAULT public.uuid_generate_v4() NOT NULL,
    designation character varying(100) NOT NULL,
    datedebut date NOT NULL,
    datefin date NOT NULL,
    status character varying(20) DEFAULT 'actif'::character varying,
    date_create timestamp without time zone DEFAULT CURRENT_TIMESTAMP,
    anneeid uuid NOT NULL,
    sectionid uuid NOT NULL,
    CONSTRAINT check_dates_periode CHECK ((datefin >= datedebut))
);


ALTER TABLE public.periodes OWNER TO asuna;

--
-- TOC entry 230 (class 1259 OID 16762)
-- Name: periodescomptables; Type: TABLE; Schema: public; Owner: asuna
--

CREATE TABLE public.periodescomptables (
    periodecomptableid uuid DEFAULT gen_random_uuid() NOT NULL,
    designation character varying(255) NOT NULL,
    datedebut date NOT NULL,
    datefin date NOT NULL,
    status character varying(50),
    sectionid uuid NOT NULL,
    ecoleid uuid NOT NULL,
    anneeid uuid NOT NULL,
    userid uuid,
    CONSTRAINT check_dates CHECK ((datefin > datedebut))
);


ALTER TABLE public.periodescomptables OWNER TO asuna;

--
-- TOC entry 243 (class 1259 OID 33339)
-- Name: refresh_tokens; Type: TABLE; Schema: public; Owner: asuna
--

CREATE TABLE public.refresh_tokens (
    id uuid DEFAULT gen_random_uuid() NOT NULL,
    userid uuid,
    token text NOT NULL,
    created_at timestamp without time zone DEFAULT CURRENT_TIMESTAMP,
    expires_at timestamp without time zone NOT NULL
);


ALTER TABLE public.refresh_tokens OWNER TO asuna;

--
-- TOC entry 218 (class 1259 OID 16511)
-- Name: sections; Type: TABLE; Schema: public; Owner: asuna
--

CREATE TABLE public.sections (
    sectionid uuid DEFAULT public.uuid_generate_v4() NOT NULL,
    designation character varying(100) NOT NULL,
    status character varying(20) DEFAULT 'actif'::character varying,
    date_create timestamp without time zone DEFAULT CURRENT_TIMESTAMP
);


ALTER TABLE public.sections OWNER TO asuna;

--
-- TOC entry 224 (class 1259 OID 16627)
-- Name: sousperiodes; Type: TABLE; Schema: public; Owner: asuna
--

CREATE TABLE public.sousperiodes (
    sousperiodeid uuid DEFAULT public.uuid_generate_v4() NOT NULL,
    designation character varying(100) NOT NULL,
    datedebut date NOT NULL,
    datefin date NOT NULL,
    coefficient numeric(4,2) DEFAULT 1.0,
    status character varying(20) DEFAULT 'actif'::character varying,
    date_create timestamp without time zone DEFAULT CURRENT_TIMESTAMP,
    periodeid uuid NOT NULL,
    CONSTRAINT check_dates_sousperiode CHECK ((datefin >= datedebut))
);


ALTER TABLE public.sousperiodes OWNER TO asuna;

--
-- TOC entry 216 (class 1259 OID 16487)
-- Name: utilisateurs; Type: TABLE; Schema: public; Owner: asuna
--

CREATE TABLE public.utilisateurs (
    userid uuid DEFAULT public.uuid_generate_v4() NOT NULL,
    nom character varying(50) NOT NULL,
    prenom character varying(50),
    phone character varying(20),
    categorie character varying(30),
    status character varying(20) DEFAULT 'actif'::character varying,
    date_create timestamp without time zone DEFAULT CURRENT_TIMESTAMP,
    datenaiss date,
    mdp character varying,
    adresse character varying,
    email character varying,
    genre character(1),
    authid character varying,
    matricule character varying(50),
    codeaff character varying(10),
    datecode timestamp without time zone
);


ALTER TABLE public.utilisateurs OWNER TO asuna;

--
-- TOC entry 3459 (class 2604 OID 16831)
-- Name: paiements numero; Type: DEFAULT; Schema: public; Owner: asuna
--

ALTER TABLE ONLY public.paiements ALTER COLUMN numero SET DEFAULT nextval('public.paiements_numero_seq'::regclass);


--
-- TOC entry 3768 (class 0 OID 16600)
-- Dependencies: 222
-- Data for Name: annees; Type: TABLE DATA; Schema: public; Owner: asuna
--

COPY public.annees (anneeid, designation, datedebut, datefin, status, date_create) FROM stdin;
706a6854-725e-4f83-83e1-c6149f87324a	2025-2026	2025-08-10	2026-07-02	actif	2026-04-30 10:44:53.185594
\.


--
-- TOC entry 3785 (class 0 OID 25083)
-- Dependencies: 239
-- Data for Name: assignercours; Type: TABLE DATA; Schema: public; Owner: asuna
--

COPY public.assignercours (assignercoursid, classeecoleid, userid, assignerutilisateurid, ecoleid, status, date_create, matiereid) FROM stdin;
bcbdb8dc-f4a4-4d3f-8897-5ee3f0218966	d946dda7-e718-4344-8fc5-8443cbabcf4a	e6287f79-89b0-4662-bed0-0b60a96e0cf3	fca2bf97-8853-46a2-98ae-4cf35450baad	442002dc-27b3-499e-aa2f-2680aea52676	actif	2026-05-16 07:25:42.11798	08dc5b25-7f2c-4e4b-8160-d9e924d634c8
91040897-b87b-4174-a1f8-98a21eae7e69	08a5813f-9148-4d3a-9490-f5f88e2859d9	8e1d7de0-3ceb-4599-96fe-bf8d3ee1a62f	8c1d6335-eba5-44d8-acc8-5cfe97400bc2	fe0514b0-8532-4b4c-ba5d-714314a41979	actif	2026-05-31 11:37:52.571228	08dc5b25-7f2c-4e4b-8160-d9e924d634c8
04d07b26-e3c3-4822-827a-837a357551e9	08a5813f-9148-4d3a-9490-f5f88e2859d9	8e1d7de0-3ceb-4599-96fe-bf8d3ee1a62f	8c1d6335-eba5-44d8-acc8-5cfe97400bc2	fe0514b0-8532-4b4c-ba5d-714314a41979	actif	2026-06-08 17:20:18.237734	08dc5b25-7f2c-4e4b-8160-d9e924d634c8
e8f99b5e-348d-4afc-bab3-4cc3b868ab47	544b0ac6-2f8e-48f2-82e0-bf6c77bb6f47	8e1d7de0-3ceb-4599-96fe-bf8d3ee1a62f	8c1d6335-eba5-44d8-acc8-5cfe97400bc2	fe0514b0-8532-4b4c-ba5d-714314a41979	actif	2026-06-08 17:20:18.242025	08dc5b25-7f2c-4e4b-8160-d9e924d634c8
8845bb36-f2fb-4077-9678-15df96e00edd	08a5813f-9148-4d3a-9490-f5f88e2859d9	8e1d7de0-3ceb-4599-96fe-bf8d3ee1a62f	b90b4462-7654-4b36-81c8-f05c9b5b3e25	fe0514b0-8532-4b4c-ba5d-714314a41979	actif	2026-07-09 12:51:42.885473	08dc5b25-7f2c-4e4b-8160-d9e924d634c8
2b807387-292b-4bbc-954b-f9bdd99ec2da	544b0ac6-2f8e-48f2-82e0-bf6c77bb6f47	8e1d7de0-3ceb-4599-96fe-bf8d3ee1a62f	b90b4462-7654-4b36-81c8-f05c9b5b3e25	fe0514b0-8532-4b4c-ba5d-714314a41979	actif	2026-07-09 12:51:42.881101	08dc5b25-7f2c-4e4b-8160-d9e924d634c8
37759987-2234-478c-8080-f3764f260107	2f557581-268e-4a47-8fa5-57b4b523ea27	ea569fff-ed57-498b-b9b2-0fbcd00b380f	321fd76d-1511-4368-9f21-4905bda69583	64809946-97b1-4ce4-996c-77ca690adc52	actif	2026-07-10 21:52:52.586765	08dc5b25-7f2c-4e4b-8160-d9e924d634c8
\.


--
-- TOC entry 3783 (class 0 OID 16993)
-- Dependencies: 237
-- Data for Name: assignerfonction; Type: TABLE DATA; Schema: public; Owner: asuna
--

COPY public.assignerfonction (assignerfonctionid, fonctionnaliteid, categorieutilisateurid, date, date_creation, status) FROM stdin;
e0667af0-a914-436c-bb0c-0586a2a5138f	b284f3eb-216f-4d47-a703-ca4fb4859337	c50dbb5e-678a-4cc8-bdad-ecf52fc42f55	2026-05-13	2026-05-13 22:37:04.791016	actif
ac475939-f629-4758-baad-dc98b9002d42	22f8fa99-c1e2-4c73-8b6c-0e44e7c76a3f	c50dbb5e-678a-4cc8-bdad-ecf52fc42f55	2026-05-13	2026-05-13 22:37:04.853263	actif
5f8aa70d-951c-429f-a33a-6dd1e445dc69	b284f3eb-216f-4d47-a703-ca4fb4859337	28310fe4-e327-44a9-9c32-d3addf80df65	2026-05-30	2026-05-30 22:31:07.97014	actif
c843384c-c9ef-4005-b1b4-c23cf1110f98	22f8fa99-c1e2-4c73-8b6c-0e44e7c76a3f	28310fe4-e327-44a9-9c32-d3addf80df65	2026-05-30	2026-05-30 22:31:07.970943	actif
73874086-614c-4fdf-b03d-a5c97c92b8cc	91997dc7-b57e-48ce-9f5c-8e978d6f37cd	28310fe4-e327-44a9-9c32-d3addf80df65	2026-05-30	2026-05-30 22:31:08.041637	actif
dee9a6a1-cac2-47d4-99d3-6e2547d13ddf	5b17bf72-8af0-4368-aa50-5728ec932091	28310fe4-e327-44a9-9c32-d3addf80df65	2026-05-30	2026-05-30 22:31:08.048287	actif
550bcdf9-8068-44da-a1ff-3719a4c3a3dc	74fffa88-730c-4c90-b033-2f03be4b93ef	28310fe4-e327-44a9-9c32-d3addf80df65	2026-05-30	2026-05-30 22:31:08.051367	actif
e59dfbd9-b3ae-4639-9395-58e6b0e58bdd	4682cd62-8d9c-417a-b2ff-1c4a42a7f01e	28310fe4-e327-44a9-9c32-d3addf80df65	2026-05-30	2026-05-30 22:31:08.055548	actif
8f3d2484-d5a1-4b57-b07e-f94972256a2f	7fa3b4c4-ccf5-4eb3-b8ce-bac409edeb63	28310fe4-e327-44a9-9c32-d3addf80df65	2026-05-30	2026-05-30 22:31:08.061325	actif
308bcb98-fa0a-4093-8bdd-755f145659c7	77ba7253-141a-41d2-a2c1-466a5f86429c	28310fe4-e327-44a9-9c32-d3addf80df65	2026-05-30	2026-05-30 22:31:08.063731	actif
8b3d28e7-5a4b-45b3-85c7-ee2dd0f58ded	b6eced13-800a-493d-946c-d5722c716227	28310fe4-e327-44a9-9c32-d3addf80df65	2026-05-30	2026-05-30 22:31:08.062255	actif
02932505-abe0-4b6b-baa1-6eefcce6069d	4682cd62-8d9c-417a-b2ff-1c4a42a7f01e	e73b15f8-6f4f-4521-9963-e3e13ee2a433	2026-05-31	2026-05-31 10:15:12.527978	actif
c7f6e226-8206-4360-9bab-56d0f6ebdb0d	77ba7253-141a-41d2-a2c1-466a5f86429c	e73b15f8-6f4f-4521-9963-e3e13ee2a433	2026-05-31	2026-05-31 10:15:12.577914	actif
c536f69f-5cf5-472c-b705-5f081a931d26	b284f3eb-216f-4d47-a703-ca4fb4859337	a7e847b6-dfa5-460b-a111-10cf9aa1805b	2026-07-10	2026-07-10 21:03:18.701749	actif
953c6c77-c68f-44e1-b322-f9c459134d28	b2c78a02-203a-4e28-8b64-450845b3b1ce	a7e847b6-dfa5-460b-a111-10cf9aa1805b	2026-07-10	2026-07-10 21:03:18.730208	actif
b2f0d0ec-4517-4d14-92a4-cdcd8d64e067	8e44423d-29a5-485a-bdd8-ff05ccb4e9c0	a7e847b6-dfa5-460b-a111-10cf9aa1805b	2026-07-10	2026-07-10 21:03:18.753375	actif
e3b0fc3a-3205-46b9-be8d-60c866121aa9	74fffa88-730c-4c90-b033-2f03be4b93ef	a7e847b6-dfa5-460b-a111-10cf9aa1805b	2026-07-10	2026-07-10 21:03:18.893393	actif
54f187e1-5935-40b3-9de8-5abc7255f3c5	22f8fa99-c1e2-4c73-8b6c-0e44e7c76a3f	a7e847b6-dfa5-460b-a111-10cf9aa1805b	2026-07-10	2026-07-10 21:03:18.90997	actif
79808133-d83d-49d3-8ac4-24b6ad70bce5	4682cd62-8d9c-417a-b2ff-1c4a42a7f01e	a7e847b6-dfa5-460b-a111-10cf9aa1805b	2026-07-10	2026-07-10 21:03:18.911493	actif
2ebf4f28-2ab0-4415-b9f7-715dcf3be202	77ba7253-141a-41d2-a2c1-466a5f86429c	a7e847b6-dfa5-460b-a111-10cf9aa1805b	2026-07-10	2026-07-10 21:03:18.914633	actif
f583a9ae-de16-4a59-ac9d-ed9434a36bb1	7fa3b4c4-ccf5-4eb3-b8ce-bac409edeb63	a7e847b6-dfa5-460b-a111-10cf9aa1805b	2026-07-10	2026-07-10 21:03:18.922763	actif
8234dee7-1488-451d-9233-f6dab723e443	5b17bf72-8af0-4368-aa50-5728ec932091	a7e847b6-dfa5-460b-a111-10cf9aa1805b	2026-07-10	2026-07-10 21:03:18.923436	actif
62957d96-b163-4c6e-954a-21436b7be990	91997dc7-b57e-48ce-9f5c-8e978d6f37cd	a7e847b6-dfa5-460b-a111-10cf9aa1805b	2026-07-10	2026-07-10 21:03:18.920147	actif
b30989b4-2caa-4927-9d09-06529a254c9c	e6618538-960d-4d81-96bf-36c6a57bc2bf	a7e847b6-dfa5-460b-a111-10cf9aa1805b	2026-07-10	2026-07-10 21:03:18.945213	actif
7592a4e5-ae3d-46f4-b874-22315d343872	b6eced13-800a-493d-946c-d5722c716227	a7e847b6-dfa5-460b-a111-10cf9aa1805b	2026-07-10	2026-07-10 21:03:18.949808	actif
9b5e49fc-0e37-439f-bd1c-dfe449e9cbf7	4682cd62-8d9c-417a-b2ff-1c4a42a7f01e	87546dcc-6166-44a2-84fe-ed788002a8d8	2026-07-10	2026-07-10 21:15:19.283629	actif
efb4e9bd-5828-495f-b460-8807cc18e7bb	77ba7253-141a-41d2-a2c1-466a5f86429c	87546dcc-6166-44a2-84fe-ed788002a8d8	2026-07-10	2026-07-10 21:15:19.359646	actif
09195808-193e-42cf-825a-3b329e6966c0	b284f3eb-216f-4d47-a703-ca4fb4859337	2a44171b-fade-4094-9dd5-531eeddd6b32	2026-07-14	2026-07-14 20:16:49.679478	actif
23a9515b-20bc-4571-b1d0-13880f8dee54	22f8fa99-c1e2-4c73-8b6c-0e44e7c76a3f	2a44171b-fade-4094-9dd5-531eeddd6b32	2026-07-14	2026-07-14 20:16:49.741947	actif
1f48ecfc-e625-468d-a294-4802af239665	7fa3b4c4-ccf5-4eb3-b8ce-bac409edeb63	2a44171b-fade-4094-9dd5-531eeddd6b32	2026-07-14	2026-07-14 20:16:49.757572	actif
\.


--
-- TOC entry 3784 (class 0 OID 17012)
-- Dependencies: 238
-- Data for Name: assignerutilisateur; Type: TABLE DATA; Schema: public; Owner: asuna
--

COPY public.assignerutilisateur (assignerutilisateurid, ecoleid, userid, categorieutilisateurid, status, date_creation) FROM stdin;
fca2bf97-8853-46a2-98ae-4cf35450baad	442002dc-27b3-499e-aa2f-2680aea52676	e6287f79-89b0-4662-bed0-0b60a96e0cf3	c50dbb5e-678a-4cc8-bdad-ecf52fc42f55	actif	2026-05-14 10:03:51.08045
62836579-2865-4ac8-be0b-03d19ccb25bb	fe0514b0-8532-4b4c-ba5d-714314a41979	e5f5e640-cb34-4e44-96e0-6c494ad4a874	28310fe4-e327-44a9-9c32-d3addf80df65	actif	2026-05-30 22:31:08.035924
8c1d6335-eba5-44d8-acc8-5cfe97400bc2	fe0514b0-8532-4b4c-ba5d-714314a41979	8e1d7de0-3ceb-4599-96fe-bf8d3ee1a62f	e73b15f8-6f4f-4521-9963-e3e13ee2a433	supprimé	2026-05-31 10:16:11.888166
b90b4462-7654-4b36-81c8-f05c9b5b3e25	fe0514b0-8532-4b4c-ba5d-714314a41979	8e1d7de0-3ceb-4599-96fe-bf8d3ee1a62f	e73b15f8-6f4f-4521-9963-e3e13ee2a433	actif	2026-07-08 21:09:23.309745
ee2fb80d-2866-473f-901a-4a691bad2b2f	fe0514b0-8532-4b4c-ba5d-714314a41979	8e1d7de0-3ceb-4599-96fe-bf8d3ee1a62f	28310fe4-e327-44a9-9c32-d3addf80df65	supprimé	2026-07-08 21:07:42.818455
820ef0ab-1ccc-4672-9ec7-e785c81ffd03	64809946-97b1-4ce4-996c-77ca690adc52	e0a6b23b-23a6-4c20-a71e-c4ad5d669116	a7e847b6-dfa5-460b-a111-10cf9aa1805b	actif	2026-07-10 21:03:18.836424
321fd76d-1511-4368-9f21-4905bda69583	64809946-97b1-4ce4-996c-77ca690adc52	ea569fff-ed57-498b-b9b2-0fbcd00b380f	87546dcc-6166-44a2-84fe-ed788002a8d8	actif	2026-07-10 21:19:51.808182
15c2e808-d97d-4598-bd0c-5bf9e773a671	fe0514b0-8532-4b4c-ba5d-714314a41979	ea569fff-ed57-498b-b9b2-0fbcd00b380f	e73b15f8-6f4f-4521-9963-e3e13ee2a433	actif	2026-07-11 12:15:04.760328
d08471a4-002c-4862-8990-c63a05a2528d	64809946-97b1-4ce4-996c-77ca690adc52	e0a6b23b-23a6-4c20-a71e-c4ad5d669116	87546dcc-6166-44a2-84fe-ed788002a8d8	actif	2026-07-17 17:28:24.855728
\.


--
-- TOC entry 3772 (class 0 OID 16660)
-- Dependencies: 226
-- Data for Name: attribueroptions; Type: TABLE DATA; Schema: public; Owner: asuna
--

COPY public.attribueroptions (optionecoleid, ecoleid, optionid, status, date_create) FROM stdin;
fc6dc294-f489-4f1f-ba95-cfc67f3d3a55	23e755ec-abdd-40a1-82a4-0543761976f0	b40cd763-ccd9-452f-8514-fd9a9bdcbf17	actif	2026-04-26 07:14:28.278994
3910092c-f58e-4b31-a30e-f5a48da0e06a	d0d3c5fe-eb72-4e75-96f6-256c67ecd28e	b40cd763-ccd9-452f-8514-fd9a9bdcbf17	actif	2026-04-26 14:35:31.608664
7bf5c446-efde-4e90-8b4a-cda9a812f415	d0d3c5fe-eb72-4e75-96f6-256c67ecd28e	0aa39d4d-dc7f-4d62-a91b-0a3c7f10dc99	actif	2026-04-26 14:35:31.610258
b0d28056-1d00-4d09-b410-e9496ab6caf3	8fc6e0a8-82e5-4b64-9943-349e80ceff4e	b40cd763-ccd9-452f-8514-fd9a9bdcbf17	actif	2026-04-27 09:43:14.256373
ae179a14-ab71-4101-a8a7-74f71116ec84	442002dc-27b3-499e-aa2f-2680aea52676	b40cd763-ccd9-452f-8514-fd9a9bdcbf17	actif	2026-04-27 09:55:26.071601
6993670c-9ed2-4186-b049-94317c1b4168	fe0514b0-8532-4b4c-ba5d-714314a41979	b40cd763-ccd9-452f-8514-fd9a9bdcbf17	actif	2026-05-30 21:35:48.718942
d9545d9e-9d05-451a-8862-75f9d76cdfd8	fe0514b0-8532-4b4c-ba5d-714314a41979	0aa39d4d-dc7f-4d62-a91b-0a3c7f10dc99	actif	2026-05-30 21:35:48.781762
\.


--
-- TOC entry 3773 (class 0 OID 16680)
-- Dependencies: 227
-- Data for Name: attribuersections; Type: TABLE DATA; Schema: public; Owner: asuna
--

COPY public.attribuersections (sectionecoleid, ecoleid, sectionid, status, date_create) FROM stdin;
5c8995d1-59d0-483b-8eca-00735072eb8d	23e755ec-abdd-40a1-82a4-0543761976f0	94c9d47e-1751-4539-a75a-14354b3c8bc9	actif	2026-04-26 06:46:16.435756
01b3947b-7868-41b9-b764-de0f5dc330f5	23e755ec-abdd-40a1-82a4-0543761976f0	a9b03448-fd9d-4d34-a958-8e05721a7c88	actif	2026-04-26 06:46:16.432164
dc0074f0-d28c-4044-99d2-5b675bfd73e3	23e755ec-abdd-40a1-82a4-0543761976f0	ef470adc-9ea1-420b-9a52-0ba5bfff5574	actif	2026-04-26 07:04:27.647493
744383ef-6974-4718-a694-ab72f8a165e9	d0d3c5fe-eb72-4e75-96f6-256c67ecd28e	94c9d47e-1751-4539-a75a-14354b3c8bc9	actif	2026-04-26 14:35:31.572917
3b01e70a-f04b-4fd6-bded-6354d9f3dd4b	d0d3c5fe-eb72-4e75-96f6-256c67ecd28e	a9b03448-fd9d-4d34-a958-8e05721a7c88	actif	2026-04-26 14:35:31.611124
bc251372-d99f-4c6d-bd9d-62e66fc3df9e	d0d3c5fe-eb72-4e75-96f6-256c67ecd28e	ef470adc-9ea1-420b-9a52-0ba5bfff5574	actif	2026-04-26 14:35:31.612005
97cd5776-5b79-4049-992f-638ae705eabb	8fc6e0a8-82e5-4b64-9943-349e80ceff4e	ef470adc-9ea1-420b-9a52-0ba5bfff5574	actif	2026-04-27 09:43:14.415769
42fa626b-6971-4798-ad2f-7ad3ab4bf520	8fc6e0a8-82e5-4b64-9943-349e80ceff4e	94c9d47e-1751-4539-a75a-14354b3c8bc9	actif	2026-04-27 09:43:14.431895
96e624ac-487e-472d-88e3-d35a43b2a319	8fc6e0a8-82e5-4b64-9943-349e80ceff4e	a9b03448-fd9d-4d34-a958-8e05721a7c88	actif	2026-04-27 09:43:14.435862
2f435e2d-760c-465f-964f-0131f2d304d9	442002dc-27b3-499e-aa2f-2680aea52676	94c9d47e-1751-4539-a75a-14354b3c8bc9	actif	2026-04-27 09:55:26.201426
a6508e19-b994-41a5-82ed-42cec3bebd63	442002dc-27b3-499e-aa2f-2680aea52676	ef470adc-9ea1-420b-9a52-0ba5bfff5574	actif	2026-04-27 09:55:26.221741
0d3907f5-3655-42e5-8119-d7b339b7a27a	442002dc-27b3-499e-aa2f-2680aea52676	a9b03448-fd9d-4d34-a958-8e05721a7c88	actif	2026-04-27 09:55:26.227086
ba3ed6b4-5d63-4d48-a5ee-c62d762701d0	fe0514b0-8532-4b4c-ba5d-714314a41979	94c9d47e-1751-4539-a75a-14354b3c8bc9	actif	2026-05-30 21:35:48.674016
d34d323d-492a-4124-8924-b3bf259dafac	fe0514b0-8532-4b4c-ba5d-714314a41979	a9b03448-fd9d-4d34-a958-8e05721a7c88	actif	2026-05-30 21:35:48.745653
4f079938-a708-41b6-9aa4-8f33b1d3fb12	fe0514b0-8532-4b4c-ba5d-714314a41979	ef470adc-9ea1-420b-9a52-0ba5bfff5574	actif	2026-05-30 21:35:48.74654
3e682c36-7cce-43cc-90ff-feb718ddce11	64809946-97b1-4ce4-996c-77ca690adc52	94c9d47e-1751-4539-a75a-14354b3c8bc9	actif	2026-07-10 21:05:20.781541
24e03340-8652-4793-ad6c-22fd429ea625	64809946-97b1-4ce4-996c-77ca690adc52	a9b03448-fd9d-4d34-a958-8e05721a7c88	actif	2026-07-10 21:05:20.783934
90a1a4a4-4038-405b-9f0c-6fd3e048c675	64809946-97b1-4ce4-996c-77ca690adc52	ef470adc-9ea1-420b-9a52-0ba5bfff5574	actif	2026-07-10 21:05:20.855663
\.


--
-- TOC entry 3782 (class 0 OID 16980)
-- Dependencies: 236
-- Data for Name: categorieutilisateur; Type: TABLE DATA; Schema: public; Owner: asuna
--

COPY public.categorieutilisateur (categorieutilisateurid, designation, ecoleid, date_creation, status, description, pedagogique) FROM stdin;
618a7ce7-f639-4cfd-b22b-56a98234fd0a	Enseignant	442002dc-27b3-499e-aa2f-2680aea52676	2026-05-13 22:32:42.321684	actif	description	t
6f226f34-7dc6-4f13-baa0-a75661324378	Directeur	442002dc-27b3-499e-aa2f-2680aea52676	2026-05-13 22:34:49.445933	actif	description du directeur	t
c50dbb5e-678a-4cc8-bdad-ecf52fc42f55	Comptable	442002dc-27b3-499e-aa2f-2680aea52676	2026-05-13 22:37:04.776771	actif	Description du comptable	t
28310fe4-e327-44a9-9c32-d3addf80df65	Administrateur Ecole	fe0514b0-8532-4b4c-ba5d-714314a41979	2026-05-30 22:31:07.963098	actif	Gestion globale de l'ecole	f
e73b15f8-6f4f-4521-9963-e3e13ee2a433	Enseignant	fe0514b0-8532-4b4c-ba5d-714314a41979	2026-05-31 10:15:12.485315	actif	L'enseignant pourras acceder a la gestion des cotes et evaluations	t
a7e847b6-dfa5-460b-a111-10cf9aa1805b	Administrateur Ecole	64809946-97b1-4ce4-996c-77ca690adc52	2026-07-10 21:03:18.679128	actif	Gestion globale de l'ecole	f
87546dcc-6166-44a2-84fe-ed788002a8d8	Enseignant	64809946-97b1-4ce4-996c-77ca690adc52	2026-07-10 21:15:19.273245	actif	Cette akskddjkfkfkfk	t
2a44171b-fade-4094-9dd5-531eeddd6b32	Prefet	64809946-97b1-4ce4-996c-77ca690adc52	2026-07-14 20:16:49.662638	actif	Utilisateur qui vas gerer les isncription et les cours	f
\.


--
-- TOC entry 3771 (class 0 OID 16642)
-- Dependencies: 225
-- Data for Name: classeecoles; Type: TABLE DATA; Schema: public; Owner: asuna
--

COPY public.classeecoles (classeecoleid, classeid, ecoleid, numero, status, date_create, sectionecoleid) FROM stdin;
d946dda7-e718-4344-8fc5-8443cbabcf4a	237bd390-a5f4-4b25-87ba-8b3549d59198	442002dc-27b3-499e-aa2f-2680aea52676	C	actif	2026-04-27 12:44:07.058796	\N
08a5813f-9148-4d3a-9490-f5f88e2859d9	237bd390-a5f4-4b25-87ba-8b3549d59198	fe0514b0-8532-4b4c-ba5d-714314a41979	A	actif	2026-05-31 11:36:49.531228	\N
544b0ac6-2f8e-48f2-82e0-bf6c77bb6f47	237bd390-a5f4-4b25-87ba-8b3549d59198	fe0514b0-8532-4b4c-ba5d-714314a41979	B	actif	2026-06-07 08:24:05.130556	ba3ed6b4-5d63-4d48-a5ee-c62d762701d0
c1cb5e7b-8036-4f20-aa72-70ba53f3fd45	bdcde6b6-3a83-4cc4-9c0b-089df5cb6b5f	fe0514b0-8532-4b4c-ba5d-714314a41979	A	actif	2026-06-26 20:24:07.7815	ba3ed6b4-5d63-4d48-a5ee-c62d762701d0
2f557581-268e-4a47-8fa5-57b4b523ea27	237bd390-a5f4-4b25-87ba-8b3549d59198	64809946-97b1-4ce4-996c-77ca690adc52	A	actif	2026-07-10 21:10:39.465608	3e682c36-7cce-43cc-90ff-feb718ddce11
\.


--
-- TOC entry 3766 (class 0 OID 16532)
-- Dependencies: 220
-- Data for Name: classes; Type: TABLE DATA; Schema: public; Owner: asuna
--

COPY public.classes (classeid, designation, status, date_create, sectionid, optionid) FROM stdin;
237bd390-a5f4-4b25-87ba-8b3549d59198	1		2026-04-25 10:50:47.747028	a9b03448-fd9d-4d34-a958-8e05721a7c88	\N
1466c034-a4d3-4432-93a8-15a62690d7cb	I ère année 	actif	2026-04-26 14:36:37.687126	ef470adc-9ea1-420b-9a52-0ba5bfff5574	0aa39d4d-dc7f-4d62-a91b-0a3c7f10dc99
bdcde6b6-3a83-4cc4-9c0b-089df5cb6b5f	1ere	actif	2026-06-26 20:22:50.416812	94c9d47e-1751-4539-a75a-14354b3c8bc9	\N
\.


--
-- TOC entry 3787 (class 0 OID 33274)
-- Dependencies: 241
-- Data for Name: cotes; Type: TABLE DATA; Schema: public; Owner: asuna
--

COPY public.cotes (coteid, valeur, mention, status, date_create, evaluationid, eleveid, ecoleid, anneeid) FROM stdin;
9472ca35-db24-4b92-ad55-b589168f1353	7.00	C	actif	2026-06-12 21:22:43.75982	92084c76-5d22-4389-b707-566e276deffe	d306e6e0-1714-4377-926c-30c9db884a9c	fe0514b0-8532-4b4c-ba5d-714314a41979	706a6854-725e-4f83-83e1-c6149f87324a
fdb99775-d2aa-4a0e-975a-23c7fe3c02d1	8.00	B	actif	2026-06-15 17:58:10.369896	92084c76-5d22-4389-b707-566e276deffe	2de702ca-c485-469c-b45f-c663e65c8660	fe0514b0-8532-4b4c-ba5d-714314a41979	706a6854-725e-4f83-83e1-c6149f87324a
86b460e8-12ab-4dc1-ba9c-eec353040727	5.00	F	actif	2026-07-11 15:17:58.002291	025af78a-6f92-41cc-afcd-42d5e0d677f2	d061197e-c718-446e-be02-b593407541eb	64809946-97b1-4ce4-996c-77ca690adc52	706a6854-725e-4f83-83e1-c6149f87324a
89a69a6b-2a78-4822-8b1a-02ea460c1ce1	8.00	B	actif	2026-07-11 15:17:58.019079	025af78a-6f92-41cc-afcd-42d5e0d677f2	e57b2145-9ab9-4f9a-b871-00d5cf53517d	64809946-97b1-4ce4-996c-77ca690adc52	706a6854-725e-4f83-83e1-c6149f87324a
e4c5babe-64c5-4eed-aaca-a86c67724f6d	4.00	F	actif	2026-07-11 15:17:58.025861	025af78a-6f92-41cc-afcd-42d5e0d677f2	ff9ff4c0-36ec-4e27-817d-3ccbcc980c64	64809946-97b1-4ce4-996c-77ca690adc52	706a6854-725e-4f83-83e1-c6149f87324a
071dc70b-32bf-44a2-b080-b9a5192d43ba	5.00	F	actif	2026-07-11 15:17:58.036121	025af78a-6f92-41cc-afcd-42d5e0d677f2	b063e44a-e690-448f-b3be-c5e5e81f6521	64809946-97b1-4ce4-996c-77ca690adc52	706a6854-725e-4f83-83e1-c6149f87324a
96806103-272e-41d2-ad08-e783a5a5ea33	3.00	F	actif	2026-07-10 21:55:56.754781	65c2bfa9-f3cd-474b-b035-354658f54f19	ff9ff4c0-36ec-4e27-817d-3ccbcc980c64	64809946-97b1-4ce4-996c-77ca690adc52	706a6854-725e-4f83-83e1-c6149f87324a
a210416f-40d1-4af3-b4f9-90761fa17698	8.00	B	actif	2026-07-11 09:46:30.135512	65c2bfa9-f3cd-474b-b035-354658f54f19	e57b2145-9ab9-4f9a-b871-00d5cf53517d	64809946-97b1-4ce4-996c-77ca690adc52	706a6854-725e-4f83-83e1-c6149f87324a
e19b2f17-5b12-4871-8e9b-f74754ce1661	6.00	D	actif	2026-07-11 15:14:07.5348	65c2bfa9-f3cd-474b-b035-354658f54f19	b063e44a-e690-448f-b3be-c5e5e81f6521	64809946-97b1-4ce4-996c-77ca690adc52	706a6854-725e-4f83-83e1-c6149f87324a
d8363205-ea65-4d56-8a00-28783bf267af	10.00	A	actif	2026-07-11 12:12:05.224948	65c2bfa9-f3cd-474b-b035-354658f54f19	d061197e-c718-446e-be02-b593407541eb	64809946-97b1-4ce4-996c-77ca690adc52	706a6854-725e-4f83-83e1-c6149f87324a
e0dcef43-2cb6-4afe-8e6f-185285c3570a	3.00	F	actif	2026-07-14 20:19:00.81628	65c2bfa9-f3cd-474b-b035-354658f54f19	6d7ebe7e-6271-478e-a96e-f2b92680678d	64809946-97b1-4ce4-996c-77ca690adc52	706a6854-725e-4f83-83e1-c6149f87324a
6104bce0-cb9e-4003-8df8-dcc7bc1ee572	3.00	F	actif	2026-07-17 17:30:15.823944	a81adb6e-55d9-414e-bf39-eeaa8569b93f	e57b2145-9ab9-4f9a-b871-00d5cf53517d	64809946-97b1-4ce4-996c-77ca690adc52	706a6854-725e-4f83-83e1-c6149f87324a
f1c90e8c-cee6-43b1-aa22-123d0d867dc0	10.00	A	actif	2026-07-17 17:30:15.825522	a81adb6e-55d9-414e-bf39-eeaa8569b93f	ff9ff4c0-36ec-4e27-817d-3ccbcc980c64	64809946-97b1-4ce4-996c-77ca690adc52	706a6854-725e-4f83-83e1-c6149f87324a
6f3153a6-101a-4660-b43c-cf5e563370bd	6.00	D	actif	2026-07-17 17:30:15.830001	a81adb6e-55d9-414e-bf39-eeaa8569b93f	d061197e-c718-446e-be02-b593407541eb	64809946-97b1-4ce4-996c-77ca690adc52	706a6854-725e-4f83-83e1-c6149f87324a
38aa698f-675e-4fe1-a727-021d90553fbb	1.00	F	actif	2026-07-17 17:30:15.832508	a81adb6e-55d9-414e-bf39-eeaa8569b93f	b063e44a-e690-448f-b3be-c5e5e81f6521	64809946-97b1-4ce4-996c-77ca690adc52	706a6854-725e-4f83-83e1-c6149f87324a
bbbd1e55-888f-49e8-837a-796b0976fec9	1.00	F	actif	2026-07-17 17:30:15.856326	a81adb6e-55d9-414e-bf39-eeaa8569b93f	6d7ebe7e-6271-478e-a96e-f2b92680678d	64809946-97b1-4ce4-996c-77ca690adc52	706a6854-725e-4f83-83e1-c6149f87324a
\.


--
-- TOC entry 3788 (class 0 OID 33303)
-- Dependencies: 242
-- Data for Name: dashboard_widgets; Type: TABLE DATA; Schema: public; Owner: asuna
--

COPY public.dashboard_widgets (widgetid, component_name, display_name, category, created_at, fonctionnaliteid) FROM stdin;
c7900358-7956-449a-8138-cfa3c7b9a8af	CardEleves	Nombre total d'élèves	card	2026-07-10 09:52:48.391595	b284f3eb-216f-4d47-a703-ca4fb4859337
1454c2dc-94fa-4c9d-a651-8de4eb4478db	CardUtilisateurs	Nombre d'utilisateurs	card	2026-07-10 09:52:48.391595	22f8fa99-c1e2-4c73-8b6c-0e44e7c76a3f
9650808d-7b96-4ba2-86d2-ce09e89d836e	CardFrais	Total des Frais scolaires	card	2026-07-10 09:52:48.391595	74fffa88-730c-4c90-b033-2f03be4b93ef
c7490b67-6e18-49b1-8583-edacf1cef86e	CardPaiements	Total des Paiements perçus	card	2026-07-10 09:52:48.391595	5b17bf72-8af0-4368-aa50-5728ec932091
147c679c-f9a7-4c80-b4bb-f6d5095c0998	CardCours	Nombre de cours programmés	card	2026-07-10 09:52:48.391595	4682cd62-8d9c-417a-b2ff-1c4a42a7f01e
753d371d-1567-48a6-9e2b-0f02019c40aa	CardEvaluations	Nombre d'évaluations créées	card	2026-07-10 09:52:48.391595	77ba7253-141a-41d2-a2c1-466a5f86429c
0d371b21-1b4b-4f39-a438-4a88bbef625b	CardClasses	Nombre total de classes	card	2026-07-10 09:52:48.391595	e6618538-960d-4d81-96bf-36c6a57bc2bf
93fd5588-b06e-4cb9-882e-8d30440e2861	CardInscriptionsAttente	Inscriptions en attente de validation	card	2026-07-10 09:52:48.391595	8e44423d-29a5-485a-bdd8-ff05ccb4e9c0
c767710c-d52f-4120-b68b-46cd2c8e3b5e	ListEleve	Dernières inscriptions validées	list	2026-07-10 14:05:23.118257	b284f3eb-216f-4d47-a703-ca4fb4859337
4b872ac2-0f61-4066-b9d9-08036e9b6e27	ListUtilisateur	Derniers utilisateurs assignés	list	2026-07-10 14:05:23.118257	22f8fa99-c1e2-4c73-8b6c-0e44e7c76a3f
f0ee1e12-e5d0-4ede-aa73-35c04aa792af	ListEvaluations	Dernières évaluations ajoutées	list	2026-07-10 14:05:23.118257	77ba7253-141a-41d2-a2c1-466a5f86429c
9adc5bcd-9f0b-42ab-965c-8d7bb34a7da2	ListPaiements	Dernières lignes de paiements	list	2026-07-10 14:05:23.118257	5b17bf72-8af0-4368-aa50-5728ec932091
79553e0b-6130-4157-8a56-af5d3d001fd3	ChartInscriptions	Évolution mensuelle des inscriptions	chart	2026-07-11 09:05:31.454351	b284f3eb-216f-4d47-a703-ca4fb4859337
4cb9bcee-9765-4e0e-926d-e67cf4ac50bf	ChartFinances	Flux des recettes mensuelles	chart	2026-07-11 09:05:31.454351	5b17bf72-8af0-4368-aa50-5728ec932091
7f9cc20a-ecfd-4ebf-aeea-a838a9a3fd3e	ChartElevesParClasse	Répartition des élèves par classe	chart	2026-07-11 09:05:31.454351	e6618538-960d-4d81-96bf-36c6a57bc2bf
7ddebe08-bf48-420d-abb3-289682d51580	ChartTauxReussite	Statistiques de réussite aux évaluations	chart	2026-07-11 09:05:31.454351	77ba7253-141a-41d2-a2c1-466a5f86429c
\.


--
-- TOC entry 3763 (class 0 OID 16495)
-- Dependencies: 217
-- Data for Name: ecoles; Type: TABLE DATA; Schema: public; Owner: asuna
--

COPY public.ecoles (ecoleid, designation, adresse, logo, devise, ville, phone, email, siteweb, status, date_create, userid) FROM stdin;
8fc6e0a8-82e5-4b64-9943-349e80ceff4e	Lonford	Nord-Kivu, Beni, Tamende	\N	USD	Beni	\N	\N	\N	en attente	2026-04-24 10:34:41.776056	\N
23e755ec-abdd-40a1-82a4-0543761976f0	Lonford	Beni	\N	USD	Beni	\N	\N	\N	en attente	2026-04-24 10:42:09.314479	\N
04785bac-ed56-4f1e-8c85-3d595ca3a36a	Savana	Beni	\N	USD	Beni	\N	\N	\N	en attente	2026-04-26 14:23:02.64058	\N
d0d3c5fe-eb72-4e75-96f6-256c67ecd28e	Bungulu	Q.Beu	\N	USD	Beni	\N	\N	\N	en attente	2026-04-26 14:33:03.183597	\N
1ef11bdc-d283-484f-9197-92deb87e98c0	Savana	Kanzuli	\N	USD	Beni	\N	\N	\N	en attente	2026-04-26 22:35:38.076236	\N
442002dc-27b3-499e-aa2f-2680aea52676	Savana School	Beni, C. Bungulu, Q. Kanzuli 	\N	USD	Beni	\N	\N	\N	en attente	2026-04-27 09:07:41.385098	e6287f79-89b0-4662-bed0-0b60a96e0cf3
fe0514b0-8532-4b4c-ba5d-714314a41979	TCHIKE	BENI	\N	USD	Beni	\N	\N	\N	active	2026-05-30 09:23:47.643186	e5f5e640-cb34-4e44-96e0-6c494ad4a874
64809946-97b1-4ce4-996c-77ca690adc52	LONFORD	Beni	\N	USD	Beni	\N	\N	\N	active	2026-07-10 20:57:14.743133	e0a6b23b-23a6-4c20-a71e-c4ad5d669116
\.


--
-- TOC entry 3774 (class 0 OID 16700)
-- Dependencies: 228
-- Data for Name: eleves; Type: TABLE DATA; Schema: public; Owner: asuna
--

COPY public.eleves (eleveid, nom, postnom, prenom, datenaissance, lieunaissance, sexe, adresse, status, date_create, matricule) FROM stdin;
53fe469d-ee3a-414d-b04b-d3aae49e5df5	KABUYAYA	\N	Gad	\N	\N	M	\N		2026-05-02 21:04:59.9343	Sav-6a-001
4e6c8079-7e1a-47e9-8f74-1d494fd5773b	KABUYAYA	\N	Dan	\N	\N	M	\N		2026-05-02 21:17:58.686165	Sav-6a-002
8959ffe9-a744-4f95-ab1c-c787fdc09bde	KABUYAYA	\N	Pacifique	\N	\N	M	\N		2026-05-02 21:19:56.255955	Sav-6a-003
49a08ad1-687b-40dc-b5a1-62b275105dfd	Gad	\N	423	\N	\N	M	\N		2026-05-02 21:24:23.44767	Sav-6a-008
2fd2d908-7d46-4b4b-9e16-c7006aba7bf9	Gad	\N	423	\N	\N	M	\N		2026-05-02 21:25:28.71071	Sav-6a-007
f3d881e2-5334-4d60-9449-fefadd00eab6	KABUYAYA	\N	Will	\N	\N	M	\N		2026-05-02 21:29:03.246538	Sav-6a-006
b7b54981-fca0-4f1d-aebc-877b843a3738	KABUYAYA	\N	Gad	\N	\N	M	\N		2026-05-02 21:34:13.438284	Sav-6a-010
154cdf52-1a8d-4c97-90fd-d966552bcbad	KABUYAYA	\N	Dan	\N	\N	M	\N		2026-05-02 21:37:17.937076	Sav-6a-011
a750cb41-b444-407a-82e4-f911323d7c07	Eustache	MAHAMBA	KAKULE	\N	\N	M	\N		2026-05-03 15:45:59.350884	Sav-6a-013
d306e6e0-1714-4377-926c-30c9db884a9c	KABUYAYA	MALIKIDOGO	Gad	\N	\N	M	\N		2026-05-02 21:42:34.428842	Sav-6a-014
2de702ca-c485-469c-b45f-c663e65c8660	Claude	Binga	-	\N	\N	M	\N		2026-06-15 17:29:11.399338	TCH-6a-002
5f85002d-6cb2-498f-a34e-88620befe657	MUHINDO	MAHAMBA	Eustache	\N	\N	M	\N	actif	2026-06-30 09:54:56.961573	TCH-6a-004
030694de-3f12-428c-8844-f870e507f736	MUHIMA	BUHAKA	LIONNEL	\N	\N	M	\N	actif	2026-06-26 20:25:45.699476	TCH-6a-003
ff9ff4c0-36ec-4e27-817d-3ccbcc980c64	Grace	Mwinja	Chiru	\N	\N	F	\N		2026-07-10 21:11:21.650526	LON-6a-001
e57b2145-9ab9-4f9a-b871-00d5cf53517d	MUMBERE	Kitsama	Elie	\N	\N	M	\N		2026-07-11 08:43:50.903391	LON-6a-002
d061197e-c718-446e-be02-b593407541eb	CLAUDE	Binga 	-	\N	\N	M	\N		2026-07-11 12:10:48.81429	LON-6a-003
b063e44a-e690-448f-b3be-c5e5e81f6521	MUMBERE	MUSAVULI	PAUL	\N	\N	M	\N		2026-07-11 14:44:50.672915	LON-6a-004
be89767e-f2cf-4b4a-a52d-df4dbbfacea3	ELIE	MUMBERE	KITSAMA	\N	\N	M	\N		2026-07-14 20:07:01.047139	TCH-6a-006
6d7ebe7e-6271-478e-a96e-f2b92680678d	PALUKU	BUHAKA	LIONNEL	\N	\N	M	\N		2026-07-14 20:10:45.668047	LON-6a-005
\.


--
-- TOC entry 3786 (class 0 OID 25126)
-- Dependencies: 240
-- Data for Name: evaluations; Type: TABLE DATA; Schema: public; Owner: asuna
--

COPY public.evaluations (evaluationid, maxima, categorie, date, status, date_create, assignercoursid, ecoleid, userid, periodeid, sousperiodeid, anneeid) FROM stdin;
92084c76-5d22-4389-b707-566e276deffe	10.00	1	2026-03-13	actif	2026-05-31 13:42:44.708381	91040897-b87b-4174-a1f8-98a21eae7e69	fe0514b0-8532-4b4c-ba5d-714314a41979	8e1d7de0-3ceb-4599-96fe-bf8d3ee1a62f	b4aa7643-648b-4dc0-a70d-fa0d91f1efd9	1eac222c-bb18-4393-9728-8fa22b67c901	706a6854-725e-4f83-83e1-c6149f87324a
fcef80ce-aa89-49a7-9ba7-922a00e6847f	10.00	2	2026-06-08	actif	2026-06-08 17:22:27.071924	e8f99b5e-348d-4afc-bab3-4cc3b868ab47	fe0514b0-8532-4b4c-ba5d-714314a41979	8e1d7de0-3ceb-4599-96fe-bf8d3ee1a62f	b4aa7643-648b-4dc0-a70d-fa0d91f1efd9	1eac222c-bb18-4393-9728-8fa22b67c901	706a6854-725e-4f83-83e1-c6149f87324a
afb2b86b-f486-4859-b893-742357cdf4d2	10.00	2	2026-06-08	actif	2026-06-08 17:22:35.435725	e8f99b5e-348d-4afc-bab3-4cc3b868ab47	fe0514b0-8532-4b4c-ba5d-714314a41979	8e1d7de0-3ceb-4599-96fe-bf8d3ee1a62f	b4aa7643-648b-4dc0-a70d-fa0d91f1efd9	1eac222c-bb18-4393-9728-8fa22b67c901	706a6854-725e-4f83-83e1-c6149f87324a
65c2bfa9-f3cd-474b-b035-354658f54f19	10.00	1	2026-07-10	actif	2026-07-10 21:55:03.210475	37759987-2234-478c-8080-f3764f260107	64809946-97b1-4ce4-996c-77ca690adc52	ea569fff-ed57-498b-b9b2-0fbcd00b380f	b4aa7643-648b-4dc0-a70d-fa0d91f1efd9	1eac222c-bb18-4393-9728-8fa22b67c901	706a6854-725e-4f83-83e1-c6149f87324a
025af78a-6f92-41cc-afcd-42d5e0d677f2	10.00	1	2026-07-10	actif	2026-07-10 22:00:50.494287	37759987-2234-478c-8080-f3764f260107	64809946-97b1-4ce4-996c-77ca690adc52	ea569fff-ed57-498b-b9b2-0fbcd00b380f	ec25b6c4-62c7-4bce-b2f6-b7050178f884	1eac222c-bb18-4393-9728-8fa22b67c901	706a6854-725e-4f83-83e1-c6149f87324a
9315cb54-018f-4547-bfe2-735e37d1d9a3	10.00	1	2026-07-10	actif	2026-07-10 22:01:49.402365	37759987-2234-478c-8080-f3764f260107	64809946-97b1-4ce4-996c-77ca690adc52	ea569fff-ed57-498b-b9b2-0fbcd00b380f	ec25b6c4-62c7-4bce-b2f6-b7050178f884	1eac222c-bb18-4393-9728-8fa22b67c901	706a6854-725e-4f83-83e1-c6149f87324a
a81adb6e-55d9-414e-bf39-eeaa8569b93f	10.00	1	2026-07-10	actif	2026-07-10 22:04:20.274719	37759987-2234-478c-8080-f3764f260107	64809946-97b1-4ce4-996c-77ca690adc52	ea569fff-ed57-498b-b9b2-0fbcd00b380f	ec25b6c4-62c7-4bce-b2f6-b7050178f884	1eac222c-bb18-4393-9728-8fa22b67c901	706a6854-725e-4f83-83e1-c6149f87324a
\.


--
-- TOC entry 3781 (class 0 OID 16930)
-- Dependencies: 235
-- Data for Name: fonctionnalite; Type: TABLE DATA; Schema: public; Owner: asuna
--

COPY public.fonctionnalite (fonctionnaliteid, designation, icone, route, status, date_creation, description) FROM stdin;
b284f3eb-216f-4d47-a703-ca4fb4859337	Gestion d'élèves 	user-graduate	/eleves	actif	2026-05-13 19:25:54.757414	Ici sera inscrit et reinscrits les eleves
22f8fa99-c1e2-4c73-8b6c-0e44e7c76a3f	Gestion d'utilisateurs	users	/utilisateurs	actif	2026-05-13 22:05:54.969638	Ici on gere les utilisateur et leur categorie
91997dc7-b57e-48ce-9f5c-8e978d6f37cd	Périodes comptables	calendar-days	/periodes-comptable	actif	2026-05-30 21:41:44.058457	gestion des periodes de paiements
74fffa88-730c-4c90-b033-2f03be4b93ef	Frais	money-bill	/frais	actif	2026-05-30 21:42:12.68134	Gestion des frais a payé
5b17bf72-8af0-4368-aa50-5728ec932091	Gestion des paiements	money-bill	/gestion-paiements	actif	2026-05-30 21:47:24.561512	Gestion de paiements des eleves
4682cd62-8d9c-417a-b2ff-1c4a42a7f01e	Gestion des cours	book-open	/gestion-cours	actif	2026-05-30 21:48:04.28399	gestion des cours de l'enseignants
7fa3b4c4-ccf5-4eb3-b8ce-bac409edeb63	Assignation des cours	book	/assignation-cours	actif	2026-05-30 21:50:44.515407	Assignation des cours aux enseignants 
b6eced13-800a-493d-946c-d5722c716227	Assignation des classes	user-tie	/assignation-classes	actif	2026-05-30 21:51:42.779543	assignation des classes aux enseignants
77ba7253-141a-41d2-a2c1-466a5f86429c	Evaluations	clipboard-check	/evaluations	actif	2026-05-30 21:53:28.432641	ajout des evaluations
e6618538-960d-4d81-96bf-36c6a57bc2bf	Gestion des classes	chalkboard-teacher	/gestion-classes	actif	2026-05-30 23:00:55.526809	Ajout et modification des classes
b2c78a02-203a-4e28-8b64-450845b3b1ce	Categorie d'utilisateur	user-tag	/categories-utilisateurs	actif	2026-05-31 10:13:34.436569	gestion des roles et de type d'utilisateur
8e44423d-29a5-485a-bdd8-ff05ccb4e9c0	Confirmer inscription	user-check	/confirm-eleves	actif	2026-06-15 17:39:08.057625	il s'agit de confirmer les 
\.


--
-- TOC entry 3777 (class 0 OID 16789)
-- Dependencies: 231
-- Data for Name: frais; Type: TABLE DATA; Schema: public; Owner: asuna
--

COPY public.frais (fraisid, designation, montant, devise, status, periodecomptableid, anneeid, sectionid, classeid, optionid, ecoleid) FROM stdin;
26541193-4052-4d64-97c0-c1eab78cf8ee	Frais inscription	5.00	USD	actif	\N	706a6854-725e-4f83-83e1-c6149f87324a	\N	\N	\N	442002dc-27b3-499e-aa2f-2680aea52676
dfee30a7-4b7c-4db1-bab5-50f9bb0389dd	Frais scolaire	50.00	USD	actif	\N	706a6854-725e-4f83-83e1-c6149f87324a	d34d323d-492a-4124-8924-b3bf259dafac	\N	\N	fe0514b0-8532-4b4c-ba5d-714314a41979
96914a66-300d-47c7-b9a7-d65e9f595de2	Frais d'inscription	7.00	USD	actif	\N	706a6854-725e-4f83-83e1-c6149f87324a	d34d323d-492a-4124-8924-b3bf259dafac	\N	\N	fe0514b0-8532-4b4c-ba5d-714314a41979
58a20770-e761-4be8-b23f-34e5455e542a	Frais scolaire	65.00	USD	actif	\N	706a6854-725e-4f83-83e1-c6149f87324a	ba3ed6b4-5d63-4d48-a5ee-c62d762701d0	\N	\N	fe0514b0-8532-4b4c-ba5d-714314a41979
063c9a57-03ad-4a30-93b7-0d02a14ef099	Frais scolaire	65.00	USD	\N	37e82564-eca6-45ca-9b5f-d5e582d64307	706a6854-725e-4f83-83e1-c6149f87324a	ba3ed6b4-5d63-4d48-a5ee-c62d762701d0	\N	\N	fe0514b0-8532-4b4c-ba5d-714314a41979
e5bc6122-b9e3-4153-bdab-9043566abed3	Frais scolaire	60.00	USD	actif	df0af7c5-940d-4508-9f0b-e67fe074df33	706a6854-725e-4f83-83e1-c6149f87324a	d34d323d-492a-4124-8924-b3bf259dafac	\N	\N	fe0514b0-8532-4b4c-ba5d-714314a41979
bac49d94-c78c-4e16-b658-e5929ab772c7	Frais scolaire	70.00	USD	actif	f62415e5-0c34-4cc0-be59-8b834c431144	706a6854-725e-4f83-83e1-c6149f87324a	24e03340-8652-4793-ad6c-22fd429ea625	\N	\N	64809946-97b1-4ce4-996c-77ca690adc52
7d121baa-5be2-4aa6-ad62-292456ada578	Frais technique	10.00	USD	actif	f62415e5-0c34-4cc0-be59-8b834c431144	706a6854-725e-4f83-83e1-c6149f87324a	24e03340-8652-4793-ad6c-22fd429ea625	\N	\N	64809946-97b1-4ce4-996c-77ca690adc52
8f0af760-2534-4b0a-9a87-a5b34b51efc2	Frais scolaire	90.00	USD	\N	9e965302-1ab9-4f02-b27a-c0b97f7be148	706a6854-725e-4f83-83e1-c6149f87324a	3e682c36-7cce-43cc-90ff-feb718ddce11	\N	\N	64809946-97b1-4ce4-996c-77ca690adc52
\.


--
-- TOC entry 3775 (class 0 OID 16710)
-- Dependencies: 229
-- Data for Name: inscriptions; Type: TABLE DATA; Schema: public; Owner: asuna
--

COPY public.inscriptions (inscriptionid, eleveid, ecoleid, classeid, sectionid, anneeid, date, datefin, status, date_create) FROM stdin;
8219b7c1-d91a-43c7-93d2-3f4894d17c1a	d306e6e0-1714-4377-926c-30c9db884a9c	442002dc-27b3-499e-aa2f-2680aea52676	d946dda7-e718-4344-8fc5-8443cbabcf4a	a9b03448-fd9d-4d34-a958-8e05721a7c88	706a6854-725e-4f83-83e1-c6149f87324a	2026-05-02	\N	en cours	2026-05-02 21:42:34.448054
3f59ce75-dd50-4a6d-871e-587b6e0c0484	a750cb41-b444-407a-82e4-f911323d7c07	442002dc-27b3-499e-aa2f-2680aea52676	d946dda7-e718-4344-8fc5-8443cbabcf4a	a9b03448-fd9d-4d34-a958-8e05721a7c88	706a6854-725e-4f83-83e1-c6149f87324a	2026-05-03	\N	en cours	2026-05-03 15:45:59.383427
43e721fc-5dd3-4da4-8751-aca52ca7977c	d306e6e0-1714-4377-926c-30c9db884a9c	fe0514b0-8532-4b4c-ba5d-714314a41979	08a5813f-9148-4d3a-9490-f5f88e2859d9	a9b03448-fd9d-4d34-a958-8e05721a7c88	706a6854-725e-4f83-83e1-c6149f87324a	2026-06-06	\N	valide	2026-06-06 21:16:53.717815
bc25baf9-4830-4c7c-a598-a5a495407106	2de702ca-c485-469c-b45f-c663e65c8660	fe0514b0-8532-4b4c-ba5d-714314a41979	08a5813f-9148-4d3a-9490-f5f88e2859d9	a9b03448-fd9d-4d34-a958-8e05721a7c88	706a6854-725e-4f83-83e1-c6149f87324a	2026-06-15	\N	valide	2026-06-15 17:29:11.419764
ec34ab6c-73ac-407b-9eb5-04a76325c69f	2de702ca-c485-469c-b45f-c663e65c8660	442002dc-27b3-499e-aa2f-2680aea52676	d946dda7-e718-4344-8fc5-8443cbabcf4a	a9b03448-fd9d-4d34-a958-8e05721a7c88	706a6854-725e-4f83-83e1-c6149f87324a	2026-06-15	\N	en cours	2026-06-15 18:01:09.010093
b3292682-bd39-4fcf-bbb2-045f4566c804	5f85002d-6cb2-498f-a34e-88620befe657	fe0514b0-8532-4b4c-ba5d-714314a41979	c1cb5e7b-8036-4f20-aa72-70ba53f3fd45	94c9d47e-1751-4539-a75a-14354b3c8bc9	706a6854-725e-4f83-83e1-c6149f87324a	2026-06-30	\N	supprimé	2026-06-30 09:54:56.983249
4e4ce733-e9b7-4de7-87dc-9f652d7ec898	030694de-3f12-428c-8844-f870e507f736	fe0514b0-8532-4b4c-ba5d-714314a41979	c1cb5e7b-8036-4f20-aa72-70ba53f3fd45	94c9d47e-1751-4539-a75a-14354b3c8bc9	706a6854-725e-4f83-83e1-c6149f87324a	2026-06-26	\N	supprimé	2026-06-26 20:25:45.714264
2376b4eb-904e-40b5-8d40-40980eb53f74	030694de-3f12-428c-8844-f870e507f736	fe0514b0-8532-4b4c-ba5d-714314a41979	08a5813f-9148-4d3a-9490-f5f88e2859d9	94c9d47e-1751-4539-a75a-14354b3c8bc9	706a6854-725e-4f83-83e1-c6149f87324a	2026-07-09	\N	valide	2026-07-09 11:02:24.908844
de4db683-9824-473e-8f3e-243f34110f30	ff9ff4c0-36ec-4e27-817d-3ccbcc980c64	64809946-97b1-4ce4-996c-77ca690adc52	2f557581-268e-4a47-8fa5-57b4b523ea27	a9b03448-fd9d-4d34-a958-8e05721a7c88	706a6854-725e-4f83-83e1-c6149f87324a	2026-07-10	\N	valide	2026-07-10 21:11:21.67385
69a21a5c-c53b-4696-b393-313ef7a254b6	e57b2145-9ab9-4f9a-b871-00d5cf53517d	64809946-97b1-4ce4-996c-77ca690adc52	2f557581-268e-4a47-8fa5-57b4b523ea27	a9b03448-fd9d-4d34-a958-8e05721a7c88	706a6854-725e-4f83-83e1-c6149f87324a	2026-07-11	\N	valide	2026-07-11 08:43:50.935646
362c0e83-eb70-4f12-b5c1-85a32a6f4af0	d061197e-c718-446e-be02-b593407541eb	64809946-97b1-4ce4-996c-77ca690adc52	2f557581-268e-4a47-8fa5-57b4b523ea27	a9b03448-fd9d-4d34-a958-8e05721a7c88	706a6854-725e-4f83-83e1-c6149f87324a	2026-07-11	\N	valide	2026-07-11 12:10:48.824844
2f8f5896-993e-4250-a94b-8c072fbf504e	b063e44a-e690-448f-b3be-c5e5e81f6521	64809946-97b1-4ce4-996c-77ca690adc52	2f557581-268e-4a47-8fa5-57b4b523ea27	a9b03448-fd9d-4d34-a958-8e05721a7c88	706a6854-725e-4f83-83e1-c6149f87324a	2026-07-11	\N	valide	2026-07-11 14:44:50.685694
4ffc41b6-bec7-461f-ab0b-830a8092ec00	be89767e-f2cf-4b4a-a52d-df4dbbfacea3	fe0514b0-8532-4b4c-ba5d-714314a41979	08a5813f-9148-4d3a-9490-f5f88e2859d9	a9b03448-fd9d-4d34-a958-8e05721a7c88	706a6854-725e-4f83-83e1-c6149f87324a	2026-07-14	\N	en cours	2026-07-14 20:07:01.075379
6944f257-42ed-4cb7-b109-d5b2fda0e818	6d7ebe7e-6271-478e-a96e-f2b92680678d	64809946-97b1-4ce4-996c-77ca690adc52	2f557581-268e-4a47-8fa5-57b4b523ea27	a9b03448-fd9d-4d34-a958-8e05721a7c88	706a6854-725e-4f83-83e1-c6149f87324a	2026-07-14	\N	valide	2026-07-14 20:10:45.686395
\.


--
-- TOC entry 3780 (class 0 OID 16850)
-- Dependencies: 234
-- Data for Name: lignepaiements; Type: TABLE DATA; Schema: public; Owner: asuna
--

COPY public.lignepaiements (lignepaiementid, paiementid, fraisid, eleveid, anneeid, ecoleid, montant, devise, date, status) FROM stdin;
37e8fe8c-7bc5-48a1-8809-ca47336e8a90	bb511e06-f4c1-4631-8620-2e83997d7800	26541193-4052-4d64-97c0-c1eab78cf8ee	a750cb41-b444-407a-82e4-f911323d7c07	706a6854-725e-4f83-83e1-c6149f87324a	442002dc-27b3-499e-aa2f-2680aea52676	5.00	USD	2026-05-08	actif
562c872a-b336-4904-8798-7495a64f7817	25f79df5-ff03-4be9-ac4c-da0dbf3df37f	96914a66-300d-47c7-b9a7-d65e9f595de2	d306e6e0-1714-4377-926c-30c9db884a9c	706a6854-725e-4f83-83e1-c6149f87324a	fe0514b0-8532-4b4c-ba5d-714314a41979	7.00	USD	2026-06-08	actif
069e60ce-73a3-4e15-a9b3-f1965c6dfd36	25f79df5-ff03-4be9-ac4c-da0dbf3df37f	dfee30a7-4b7c-4db1-bab5-50f9bb0389dd	d306e6e0-1714-4377-926c-30c9db884a9c	706a6854-725e-4f83-83e1-c6149f87324a	fe0514b0-8532-4b4c-ba5d-714314a41979	4.50	USD	2026-06-08	actif
bbaa4c7f-7f1b-4649-aa8a-5f5d148c4ac5	04a5c49a-9d59-4f82-b5f4-20be4ff866c7	7d121baa-5be2-4aa6-ad62-292456ada578	ff9ff4c0-36ec-4e27-817d-3ccbcc980c64	706a6854-725e-4f83-83e1-c6149f87324a	64809946-97b1-4ce4-996c-77ca690adc52	10.00	USD	2026-07-10	actif
dc0dfd14-47ac-416f-80a8-c8ea34bb06ab	e56a4a1f-dc69-4f89-b463-3f7e1d3ab49c	bac49d94-c78c-4e16-b658-e5929ab772c7	ff9ff4c0-36ec-4e27-817d-3ccbcc980c64	706a6854-725e-4f83-83e1-c6149f87324a	64809946-97b1-4ce4-996c-77ca690adc52	10.00	USD	2026-07-10	actif
c38d53e9-6c48-491e-b872-1f929fc0509e	a04c5912-c889-4cfa-96d2-7dc7a74156e8	bac49d94-c78c-4e16-b658-e5929ab772c7	ff9ff4c0-36ec-4e27-817d-3ccbcc980c64	706a6854-725e-4f83-83e1-c6149f87324a	64809946-97b1-4ce4-996c-77ca690adc52	3.00	USD	2026-07-10	actif
ca458537-f2fb-499f-b159-8ff571ab3f5c	df119fb3-0f0f-468a-bc2a-8e0685e13c2d	bac49d94-c78c-4e16-b658-e5929ab772c7	ff9ff4c0-36ec-4e27-817d-3ccbcc980c64	706a6854-725e-4f83-83e1-c6149f87324a	64809946-97b1-4ce4-996c-77ca690adc52	1.00	USD	2026-07-10	actif
2464d25e-813c-49b8-99c6-c58b9b9d2ea7	084e0c6e-99b3-4eb3-851b-ffcd3dcf80ef	bac49d94-c78c-4e16-b658-e5929ab772c7	ff9ff4c0-36ec-4e27-817d-3ccbcc980c64	706a6854-725e-4f83-83e1-c6149f87324a	64809946-97b1-4ce4-996c-77ca690adc52	3.00	USD	2026-07-10	actif
49f24c4b-1915-4fe1-b830-e216c3a132d9	c9b46134-44ab-48ac-a181-63a712b5456b	bac49d94-c78c-4e16-b658-e5929ab772c7	ff9ff4c0-36ec-4e27-817d-3ccbcc980c64	706a6854-725e-4f83-83e1-c6149f87324a	64809946-97b1-4ce4-996c-77ca690adc52	1.00	USD	2026-07-10	actif
5a9df27e-ea51-455a-806c-f4a037c63a6a	39240c25-2ff6-49e5-8e0e-22af08b05a39	bac49d94-c78c-4e16-b658-e5929ab772c7	ff9ff4c0-36ec-4e27-817d-3ccbcc980c64	706a6854-725e-4f83-83e1-c6149f87324a	64809946-97b1-4ce4-996c-77ca690adc52	1.00	USD	2026-07-10	actif
bb1a2661-2f79-473c-a90f-4c2b2c7f2447	86279ac5-45f2-4c6a-ab25-296a605865e1	bac49d94-c78c-4e16-b658-e5929ab772c7	ff9ff4c0-36ec-4e27-817d-3ccbcc980c64	706a6854-725e-4f83-83e1-c6149f87324a	64809946-97b1-4ce4-996c-77ca690adc52	1.00	USD	2026-07-10	actif
e4e62802-1e56-430f-87b9-a2e53e2e96a4	fba5e4df-86b5-4aa7-a1bd-8bf56577b946	bac49d94-c78c-4e16-b658-e5929ab772c7	ff9ff4c0-36ec-4e27-817d-3ccbcc980c64	706a6854-725e-4f83-83e1-c6149f87324a	64809946-97b1-4ce4-996c-77ca690adc52	1.00	USD	2026-07-10	actif
1603abc6-744c-42f3-a88c-9fee3ab2091c	12ad97a4-72d9-42d3-b218-a23e875c7f70	bac49d94-c78c-4e16-b658-e5929ab772c7	ff9ff4c0-36ec-4e27-817d-3ccbcc980c64	706a6854-725e-4f83-83e1-c6149f87324a	64809946-97b1-4ce4-996c-77ca690adc52	1.00	USD	2026-07-10	actif
be4ffd23-e7a1-44a8-be0c-1c212b9653df	63e3a450-e330-4754-8ad8-a71ebec5e054	bac49d94-c78c-4e16-b658-e5929ab772c7	ff9ff4c0-36ec-4e27-817d-3ccbcc980c64	706a6854-725e-4f83-83e1-c6149f87324a	64809946-97b1-4ce4-996c-77ca690adc52	1.00	USD	2026-07-10	actif
5831f5ae-b033-433a-9134-e93378b6691b	0fbf03b6-b83c-40e0-a7ea-25a22ced84ee	bac49d94-c78c-4e16-b658-e5929ab772c7	ff9ff4c0-36ec-4e27-817d-3ccbcc980c64	706a6854-725e-4f83-83e1-c6149f87324a	64809946-97b1-4ce4-996c-77ca690adc52	1.00	USD	2026-07-10	actif
20b6627a-43ec-4a0f-b1d2-d9eb98927078	cb6fad22-3337-4451-a4c5-31bf20201d25	bac49d94-c78c-4e16-b658-e5929ab772c7	ff9ff4c0-36ec-4e27-817d-3ccbcc980c64	706a6854-725e-4f83-83e1-c6149f87324a	64809946-97b1-4ce4-996c-77ca690adc52	1.00	USD	2026-07-10	actif
0acb28f8-f022-40a7-89fc-168a1c2866f2	286541bd-2e16-4e3e-9b3d-9906e5479599	8f0af760-2534-4b0a-9a87-a5b34b51efc2	ff9ff4c0-36ec-4e27-817d-3ccbcc980c64	706a6854-725e-4f83-83e1-c6149f87324a	64809946-97b1-4ce4-996c-77ca690adc52	50.00	USD	2026-07-10	actif
5c2d9d6d-7587-40cc-9c76-4283c072c591	511c6e71-b793-426c-98fd-13b24c492f9c	8f0af760-2534-4b0a-9a87-a5b34b51efc2	ff9ff4c0-36ec-4e27-817d-3ccbcc980c64	706a6854-725e-4f83-83e1-c6149f87324a	64809946-97b1-4ce4-996c-77ca690adc52	10.00	USD	2026-07-10	actif
c7f3a655-9eab-4af7-b21a-d370c1bc39e1	70e4ef34-7fff-42c5-9e23-46a581dbabf6	8f0af760-2534-4b0a-9a87-a5b34b51efc2	ff9ff4c0-36ec-4e27-817d-3ccbcc980c64	706a6854-725e-4f83-83e1-c6149f87324a	64809946-97b1-4ce4-996c-77ca690adc52	10.00	USD	2026-07-10	actif
b54219cd-e4fb-4c14-9209-009ea5586a2d	023befa8-a7c3-40c1-b006-d6b87a09671d	58a20770-e761-4be8-b23f-34e5455e542a	030694de-3f12-428c-8844-f870e507f736	706a6854-725e-4f83-83e1-c6149f87324a	fe0514b0-8532-4b4c-ba5d-714314a41979	50.00	USD	2026-07-11	actif
e5edbe38-de27-4876-8a17-e65880ee1ea4	d2b966ec-2d7f-4e73-b5d0-16835e5188fd	dfee30a7-4b7c-4db1-bab5-50f9bb0389dd	2de702ca-c485-469c-b45f-c663e65c8660	706a6854-725e-4f83-83e1-c6149f87324a	fe0514b0-8532-4b4c-ba5d-714314a41979	50.00	USD	2026-07-13	actif
1f5106ec-c5e8-4576-933a-320d0e78945d	7475fbd0-220d-4346-91c5-78e1a79a0a9b	dfee30a7-4b7c-4db1-bab5-50f9bb0389dd	030694de-3f12-428c-8844-f870e507f736	706a6854-725e-4f83-83e1-c6149f87324a	fe0514b0-8532-4b4c-ba5d-714314a41979	25.00	USD	2026-07-13	actif
5e2baa64-1a0c-4c59-a5ef-d73dd4f689b3	1fe7012f-e30d-46af-ba2e-d7c270626149	dfee30a7-4b7c-4db1-bab5-50f9bb0389dd	030694de-3f12-428c-8844-f870e507f736	706a6854-725e-4f83-83e1-c6149f87324a	fe0514b0-8532-4b4c-ba5d-714314a41979	10.00	USD	2026-07-13	actif
f6ed49ad-0f21-4f10-acfa-fae71db270ef	bc03219e-66f0-4409-9857-1fd542118120	dfee30a7-4b7c-4db1-bab5-50f9bb0389dd	030694de-3f12-428c-8844-f870e507f736	706a6854-725e-4f83-83e1-c6149f87324a	fe0514b0-8532-4b4c-ba5d-714314a41979	10.00	USD	2026-07-13	actif
3de09937-7c80-48bf-812c-d44c7daead96	f826f207-4473-46d3-8138-e86ae3ac3991	e5bc6122-b9e3-4153-bdab-9043566abed3	030694de-3f12-428c-8844-f870e507f736	706a6854-725e-4f83-83e1-c6149f87324a	fe0514b0-8532-4b4c-ba5d-714314a41979	15.00	USD	2026-07-13	actif
a65334c1-8d81-427e-88ec-40c3df45dff5	4963592e-af0b-4030-a148-b575281b2cd6	dfee30a7-4b7c-4db1-bab5-50f9bb0389dd	030694de-3f12-428c-8844-f870e507f736	706a6854-725e-4f83-83e1-c6149f87324a	fe0514b0-8532-4b4c-ba5d-714314a41979	3.00	USD	2026-07-13	actif
f4fea32a-9dd5-4c98-b175-9989dd8b2f4c	2a3543fe-4d3f-42f0-aca5-9cc5ecce969b	e5bc6122-b9e3-4153-bdab-9043566abed3	d306e6e0-1714-4377-926c-30c9db884a9c	706a6854-725e-4f83-83e1-c6149f87324a	fe0514b0-8532-4b4c-ba5d-714314a41979	30.00	USD	2026-05-30	actif
8cf81567-3c84-427f-a5a7-f7bf814a7bb3	04a5c49a-9d59-4f82-b5f4-20be4ff866c7	bac49d94-c78c-4e16-b658-e5929ab772c7	ff9ff4c0-36ec-4e27-817d-3ccbcc980c64	706a6854-725e-4f83-83e1-c6149f87324a	64809946-97b1-4ce4-996c-77ca690adc52	45.00	USD	2026-04-10	actif
6a4475c4-c464-4dcc-b7f7-e519071931d8	e2c63f33-fd6c-495e-9c5b-0ae8fafcbb66	dfee30a7-4b7c-4db1-bab5-50f9bb0389dd	d306e6e0-1714-4377-926c-30c9db884a9c	706a6854-725e-4f83-83e1-c6149f87324a	fe0514b0-8532-4b4c-ba5d-714314a41979	45.50	USD	2026-04-07	actif
b23c131f-00b8-4a8f-b841-4b9482992d26	5fd4c252-80b9-489e-812d-7c07570f1a53	bac49d94-c78c-4e16-b658-e5929ab772c7	6d7ebe7e-6271-478e-a96e-f2b92680678d	706a6854-725e-4f83-83e1-c6149f87324a	64809946-97b1-4ce4-996c-77ca690adc52	35.00	USD	2026-07-14	actif
\.


--
-- TOC entry 3767 (class 0 OID 16550)
-- Dependencies: 221
-- Data for Name: matieres; Type: TABLE DATA; Schema: public; Owner: asuna
--

COPY public.matieres (matiereid, designation, coefficient, chargehoraire, status, date_create, classeid) FROM stdin;
08dc5b25-7f2c-4e4b-8160-d9e924d634c8	Coloriage	30.00	4	actif	2026-05-11 23:22:36.043416	237bd390-a5f4-4b25-87ba-8b3549d59198
\.


--
-- TOC entry 3765 (class 0 OID 16519)
-- Dependencies: 219
-- Data for Name: options; Type: TABLE DATA; Schema: public; Owner: asuna
--

COPY public.options (optionid, designation, status, date_create, abreviation) FROM stdin;
b40cd763-ccd9-452f-8514-fd9a9bdcbf17	Scientifique	actif	2026-04-24 15:12:21.523201	SC
0aa39d4d-dc7f-4d62-a91b-0a3c7f10dc99	Commercial et gestion 	actif	2026-04-26 14:33:59.654174	CG
\.


--
-- TOC entry 3779 (class 0 OID 16827)
-- Dependencies: 233
-- Data for Name: paiements; Type: TABLE DATA; Schema: public; Owner: asuna
--

COPY public.paiements (paiementid, numero, date, eleveid, ecoleid, userid, status, modepaiement, idtrans, datetrans) FROM stdin;
1d77fb18-b085-405a-bcd7-0efe4740f927	9	2026-05-08 22:30:55.642097	d306e6e0-1714-4377-926c-30c9db884a9c	442002dc-27b3-499e-aa2f-2680aea52676	e6287f79-89b0-4662-bed0-0b60a96e0cf3	actif	cash	\N	\N
f66e1e06-5320-4536-8442-b8ca7ad9ae56	10	2026-05-08 22:35:03.022456	d306e6e0-1714-4377-926c-30c9db884a9c	442002dc-27b3-499e-aa2f-2680aea52676	e6287f79-89b0-4662-bed0-0b60a96e0cf3	actif	cash	\N	\N
ebef568e-17ca-48bd-85c5-78844eb5072c	11	2026-05-08 22:37:56.653211	d306e6e0-1714-4377-926c-30c9db884a9c	442002dc-27b3-499e-aa2f-2680aea52676	e6287f79-89b0-4662-bed0-0b60a96e0cf3	actif	cash	\N	\N
bb511e06-f4c1-4631-8620-2e83997d7800	12	2026-05-08 22:40:05.806205	a750cb41-b444-407a-82e4-f911323d7c07	442002dc-27b3-499e-aa2f-2680aea52676	e6287f79-89b0-4662-bed0-0b60a96e0cf3	actif	cash	\N	\N
e2c63f33-fd6c-495e-9c5b-0ae8fafcbb66	13	2026-06-07 09:23:15.608384	d306e6e0-1714-4377-926c-30c9db884a9c	fe0514b0-8532-4b4c-ba5d-714314a41979	e5f5e640-cb34-4e44-96e0-6c494ad4a874	actif	cash	\N	\N
25f79df5-ff03-4be9-ac4c-da0dbf3df37f	14	2026-06-08 17:18:47.079126	d306e6e0-1714-4377-926c-30c9db884a9c	fe0514b0-8532-4b4c-ba5d-714314a41979	e5f5e640-cb34-4e44-96e0-6c494ad4a874	actif	cash	\N	\N
2a3543fe-4d3f-42f0-aca5-9cc5ecce969b	15	2026-06-30 09:45:37.832749	d306e6e0-1714-4377-926c-30c9db884a9c	fe0514b0-8532-4b4c-ba5d-714314a41979	e5f5e640-cb34-4e44-96e0-6c494ad4a874	actif	cash	\N	\N
04a5c49a-9d59-4f82-b5f4-20be4ff866c7	16	2026-07-10 21:28:43.171264	ff9ff4c0-36ec-4e27-817d-3ccbcc980c64	64809946-97b1-4ce4-996c-77ca690adc52	e0a6b23b-23a6-4c20-a71e-c4ad5d669116	actif	cash	\N	\N
e56a4a1f-dc69-4f89-b463-3f7e1d3ab49c	17	2026-07-10 22:20:42.795163	ff9ff4c0-36ec-4e27-817d-3ccbcc980c64	64809946-97b1-4ce4-996c-77ca690adc52	e0a6b23b-23a6-4c20-a71e-c4ad5d669116	actif	cash	\N	\N
a04c5912-c889-4cfa-96d2-7dc7a74156e8	18	2026-07-10 22:23:22.355668	ff9ff4c0-36ec-4e27-817d-3ccbcc980c64	64809946-97b1-4ce4-996c-77ca690adc52	e0a6b23b-23a6-4c20-a71e-c4ad5d669116	actif	cash	\N	\N
084e0c6e-99b3-4eb3-851b-ffcd3dcf80ef	20	2026-07-10 22:31:31.888983	ff9ff4c0-36ec-4e27-817d-3ccbcc980c64	64809946-97b1-4ce4-996c-77ca690adc52	e0a6b23b-23a6-4c20-a71e-c4ad5d669116	actif	cash	\N	\N
c9b46134-44ab-48ac-a181-63a712b5456b	21	2026-07-10 22:33:39.932188	ff9ff4c0-36ec-4e27-817d-3ccbcc980c64	64809946-97b1-4ce4-996c-77ca690adc52	e0a6b23b-23a6-4c20-a71e-c4ad5d669116	actif	cash	\N	\N
de182cbb-c62e-4b77-96be-be657b67117f	22	2026-07-10 22:35:45.918704	ff9ff4c0-36ec-4e27-817d-3ccbcc980c64	64809946-97b1-4ce4-996c-77ca690adc52	e0a6b23b-23a6-4c20-a71e-c4ad5d669116	actif	cash	\N	\N
39240c25-2ff6-49e5-8e0e-22af08b05a39	23	2026-07-10 22:38:50.059312	ff9ff4c0-36ec-4e27-817d-3ccbcc980c64	64809946-97b1-4ce4-996c-77ca690adc52	e0a6b23b-23a6-4c20-a71e-c4ad5d669116	actif	cash	\N	\N
86279ac5-45f2-4c6a-ab25-296a605865e1	24	2026-07-10 22:39:57.42829	ff9ff4c0-36ec-4e27-817d-3ccbcc980c64	64809946-97b1-4ce4-996c-77ca690adc52	e0a6b23b-23a6-4c20-a71e-c4ad5d669116	actif	cash	\N	\N
e84aa5da-a094-4421-8763-fc8b72caec84	25	2026-07-10 22:42:05.239619	ff9ff4c0-36ec-4e27-817d-3ccbcc980c64	64809946-97b1-4ce4-996c-77ca690adc52	e0a6b23b-23a6-4c20-a71e-c4ad5d669116	actif	cash	\N	\N
fba5e4df-86b5-4aa7-a1bd-8bf56577b946	26	2026-07-10 22:44:01.881281	ff9ff4c0-36ec-4e27-817d-3ccbcc980c64	64809946-97b1-4ce4-996c-77ca690adc52	e0a6b23b-23a6-4c20-a71e-c4ad5d669116	actif	cash	\N	\N
12ad97a4-72d9-42d3-b218-a23e875c7f70	27	2026-07-10 22:48:00.294159	ff9ff4c0-36ec-4e27-817d-3ccbcc980c64	64809946-97b1-4ce4-996c-77ca690adc52	e0a6b23b-23a6-4c20-a71e-c4ad5d669116	actif	cash	\N	\N
63e3a450-e330-4754-8ad8-a71ebec5e054	28	2026-07-10 22:53:54.120897	ff9ff4c0-36ec-4e27-817d-3ccbcc980c64	64809946-97b1-4ce4-996c-77ca690adc52	e0a6b23b-23a6-4c20-a71e-c4ad5d669116	actif	cash	\N	\N
0fbf03b6-b83c-40e0-a7ea-25a22ced84ee	31	2026-07-10 22:57:48.419783	ff9ff4c0-36ec-4e27-817d-3ccbcc980c64	64809946-97b1-4ce4-996c-77ca690adc52	e0a6b23b-23a6-4c20-a71e-c4ad5d669116	actif	cash	\N	\N
cb6fad22-3337-4451-a4c5-31bf20201d25	32	2026-07-10 23:01:35.663275	ff9ff4c0-36ec-4e27-817d-3ccbcc980c64	64809946-97b1-4ce4-996c-77ca690adc52	e0a6b23b-23a6-4c20-a71e-c4ad5d669116	actif	cash	\N	\N
286541bd-2e16-4e3e-9b3d-9906e5479599	34	2026-07-10 23:05:40.67418	ff9ff4c0-36ec-4e27-817d-3ccbcc980c64	64809946-97b1-4ce4-996c-77ca690adc52	e0a6b23b-23a6-4c20-a71e-c4ad5d669116	actif	cash	\N	\N
511c6e71-b793-426c-98fd-13b24c492f9c	35	2026-07-10 23:06:45.321748	ff9ff4c0-36ec-4e27-817d-3ccbcc980c64	64809946-97b1-4ce4-996c-77ca690adc52	e0a6b23b-23a6-4c20-a71e-c4ad5d669116	actif	cash	\N	\N
70e4ef34-7fff-42c5-9e23-46a581dbabf6	36	2026-07-10 23:08:56.436123	ff9ff4c0-36ec-4e27-817d-3ccbcc980c64	64809946-97b1-4ce4-996c-77ca690adc52	e0a6b23b-23a6-4c20-a71e-c4ad5d669116	actif	cash	\N	\N
023befa8-a7c3-40c1-b006-d6b87a09671d	37	2026-07-11 10:46:36.04649	030694de-3f12-428c-8844-f870e507f736	fe0514b0-8532-4b4c-ba5d-714314a41979	e5f5e640-cb34-4e44-96e0-6c494ad4a874	actif	cash	\N	\N
f8f3db36-1268-4d5b-9156-7995e852b974	38	2026-07-11 15:06:20.709331	b063e44a-e690-448f-b3be-c5e5e81f6521	64809946-97b1-4ce4-996c-77ca690adc52	e0a6b23b-23a6-4c20-a71e-c4ad5d669116	actif	cash	\N	\N
d2b966ec-2d7f-4e73-b5d0-16835e5188fd	39	2026-07-13 11:24:31.049692	2de702ca-c485-469c-b45f-c663e65c8660	fe0514b0-8532-4b4c-ba5d-714314a41979	e5f5e640-cb34-4e44-96e0-6c494ad4a874	actif	Banque	mao293992	\N
6aba9fdf-5c5c-4d64-aac8-55a1c3aebacf	40	2026-07-13 11:26:48.967589	2de702ca-c485-469c-b45f-c663e65c8660	fe0514b0-8532-4b4c-ba5d-714314a41979	e5f5e640-cb34-4e44-96e0-6c494ad4a874	actif	cash		\N
7475fbd0-220d-4346-91c5-78e1a79a0a9b	43	2026-07-13 12:54:34.40065	030694de-3f12-428c-8844-f870e507f736	fe0514b0-8532-4b4c-ba5d-714314a41979	e5f5e640-cb34-4e44-96e0-6c494ad4a874	actif			\N
1fe7012f-e30d-46af-ba2e-d7c270626149	44	2026-07-13 13:07:26.287923	030694de-3f12-428c-8844-f870e507f736	fe0514b0-8532-4b4c-ba5d-714314a41979	e5f5e640-cb34-4e44-96e0-6c494ad4a874	actif	Banque	10MalaMfhfhe	\N
bc03219e-66f0-4409-9857-1fd542118120	45	2026-07-13 13:19:38.099069	030694de-3f12-428c-8844-f870e507f736	fe0514b0-8532-4b4c-ba5d-714314a41979	e5f5e640-cb34-4e44-96e0-6c494ad4a874	actif	Banque	10393928	\N
f826f207-4473-46d3-8138-e86ae3ac3991	46	2026-07-13 13:35:50.505849	030694de-3f12-428c-8844-f870e507f736	fe0514b0-8532-4b4c-ba5d-714314a41979	e5f5e640-cb34-4e44-96e0-6c494ad4a874	actif	Banque	nanfmsf	2026-07-13
4963592e-af0b-4030-a148-b575281b2cd6	47	2026-07-13 13:42:47.692544	030694de-3f12-428c-8844-f870e507f736	fe0514b0-8532-4b4c-ba5d-714314a41979	e5f5e640-cb34-4e44-96e0-6c494ad4a874	actif	Banque	101010	2026-07-03
df119fb3-0f0f-468a-bc2a-8e0685e13c2d	19	2026-06-10 22:27:42.083	ff9ff4c0-36ec-4e27-817d-3ccbcc980c64	64809946-97b1-4ce4-996c-77ca690adc52	e0a6b23b-23a6-4c20-a71e-c4ad5d669116	actif	cash	\N	\N
5fd4c252-80b9-489e-812d-7c07570f1a53	48	2026-07-14 20:14:16.172282	6d7ebe7e-6271-478e-a96e-f2b92680678d	64809946-97b1-4ce4-996c-77ca690adc52	e0a6b23b-23a6-4c20-a71e-c4ad5d669116	actif	Banque	18924f0214	2026-07-13
\.


--
-- TOC entry 3769 (class 0 OID 16608)
-- Dependencies: 223
-- Data for Name: periodes; Type: TABLE DATA; Schema: public; Owner: asuna
--

COPY public.periodes (periodeid, designation, datedebut, datefin, status, date_create, anneeid, sectionid) FROM stdin;
ec25b6c4-62c7-4bce-b2f6-b7050178f884	1e Trimestre	2026-02-12	2026-03-13	actif	2026-05-11 21:26:20.384989	706a6854-725e-4f83-83e1-c6149f87324a	94c9d47e-1751-4539-a75a-14354b3c8bc9
b4aa7643-648b-4dc0-a70d-fa0d91f1efd9	1e Trimestre	2026-02-12	2026-03-13	actif	2026-05-11 21:26:20.43548	706a6854-725e-4f83-83e1-c6149f87324a	a9b03448-fd9d-4d34-a958-8e05721a7c88
\.


--
-- TOC entry 3776 (class 0 OID 16762)
-- Dependencies: 230
-- Data for Name: periodescomptables; Type: TABLE DATA; Schema: public; Owner: asuna
--

COPY public.periodescomptables (periodecomptableid, designation, datedebut, datefin, status, sectionid, ecoleid, anneeid, userid) FROM stdin;
3e28c8b0-860b-485d-b4e2-a0b2db4b9771	1e Trimestre	2026-04-13	2026-04-15	\N	2f435e2d-760c-465f-964f-0131f2d304d9	442002dc-27b3-499e-aa2f-2680aea52676	706a6854-725e-4f83-83e1-c6149f87324a	e6287f79-89b0-4662-bed0-0b60a96e0cf3
dd7d2aa2-9f9d-449f-8c43-cfaefc215abc	1e Trimestre	2026-04-13	2026-04-15	\N	0d3907f5-3655-42e5-8119-d7b339b7a27a	442002dc-27b3-499e-aa2f-2680aea52676	706a6854-725e-4f83-83e1-c6149f87324a	e6287f79-89b0-4662-bed0-0b60a96e0cf3
2a77b4f6-5cb5-42d9-8bbf-0e3a08229b8f	2e trimestre	2026-06-01	2026-08-01		4f079938-a708-41b6-9aa4-8f33b1d3fb12	fe0514b0-8532-4b4c-ba5d-714314a41979	706a6854-725e-4f83-83e1-c6149f87324a	e5f5e640-cb34-4e44-96e0-6c494ad4a874
e7e3005b-c614-409e-80b3-890432b7924e	1e trimestre	2025-08-08	2026-07-01	actif	ba3ed6b4-5d63-4d48-a5ee-c62d762701d0	fe0514b0-8532-4b4c-ba5d-714314a41979	706a6854-725e-4f83-83e1-c6149f87324a	e5f5e640-cb34-4e44-96e0-6c494ad4a874
df0af7c5-940d-4508-9f0b-e67fe074df33	1e trimestre	2025-08-07	2026-07-01	actif	d34d323d-492a-4124-8924-b3bf259dafac	fe0514b0-8532-4b4c-ba5d-714314a41979	706a6854-725e-4f83-83e1-c6149f87324a	e5f5e640-cb34-4e44-96e0-6c494ad4a874
4e5b9293-df36-4c20-be0a-c0c69c05af55	1e trimestre	2025-08-09	2026-07-02	actif	4f079938-a708-41b6-9aa4-8f33b1d3fb12	fe0514b0-8532-4b4c-ba5d-714314a41979	706a6854-725e-4f83-83e1-c6149f87324a	e5f5e640-cb34-4e44-96e0-6c494ad4a874
37e82564-eca6-45ca-9b5f-d5e582d64307	2e trimestre	2026-05-31	2026-08-31	actif	ba3ed6b4-5d63-4d48-a5ee-c62d762701d0	fe0514b0-8532-4b4c-ba5d-714314a41979	706a6854-725e-4f83-83e1-c6149f87324a	e5f5e640-cb34-4e44-96e0-6c494ad4a874
ec264b19-ff1c-451a-a305-a442a9b0b510	2e trimestre	2026-07-06	2026-08-31	actif	d34d323d-492a-4124-8924-b3bf259dafac	fe0514b0-8532-4b4c-ba5d-714314a41979	706a6854-725e-4f83-83e1-c6149f87324a	e5f5e640-cb34-4e44-96e0-6c494ad4a874
9e965302-1ab9-4f02-b27a-c0b97f7be148	1e trimestre	2026-01-01	2026-09-09	actif	3e682c36-7cce-43cc-90ff-feb718ddce11	64809946-97b1-4ce4-996c-77ca690adc52	706a6854-725e-4f83-83e1-c6149f87324a	e0a6b23b-23a6-4c20-a71e-c4ad5d669116
f62415e5-0c34-4cc0-be59-8b834c431144	1e trimestre	2026-01-01	2026-09-09	actif	24e03340-8652-4793-ad6c-22fd429ea625	64809946-97b1-4ce4-996c-77ca690adc52	706a6854-725e-4f83-83e1-c6149f87324a	e0a6b23b-23a6-4c20-a71e-c4ad5d669116
143fcf61-b1cb-4a8f-9681-b52cb993d369	1e trimestre	2026-01-01	2026-09-09	actif	90a1a4a4-4038-405b-9f0c-6fd3e048c675	64809946-97b1-4ce4-996c-77ca690adc52	706a6854-725e-4f83-83e1-c6149f87324a	e0a6b23b-23a6-4c20-a71e-c4ad5d669116
\.


--
-- TOC entry 3789 (class 0 OID 33339)
-- Dependencies: 243
-- Data for Name: refresh_tokens; Type: TABLE DATA; Schema: public; Owner: asuna
--

COPY public.refresh_tokens (id, userid, token, created_at, expires_at) FROM stdin;
efed2dde-7256-45d2-b009-0240dc521e2d	e0a6b23b-23a6-4c20-a71e-c4ad5d669116	eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJpZCI6ImUwYTZiMjNiLTIzYTYtNGMyMC1hNzFlLWM0YWQ1ZDY2OTExNiIsImlhdCI6MTc4NTIzNDkzMywiZXhwIjoxNzg3ODI2OTMzfQ.eS6tIebjEdKGsqU-b9fNzgyyBlG070spiY92tPhDzZQ	2026-07-28 12:35:33.657347	2026-08-27 12:35:33.656
\.


--
-- TOC entry 3764 (class 0 OID 16511)
-- Dependencies: 218
-- Data for Name: sections; Type: TABLE DATA; Schema: public; Owner: asuna
--

COPY public.sections (sectionid, designation, status, date_create) FROM stdin;
94c9d47e-1751-4539-a75a-14354b3c8bc9	Primaire	actif	2026-04-24 14:39:03.796358
a9b03448-fd9d-4d34-a958-8e05721a7c88	Maternel	actif	2026-04-24 14:42:06.249055
ef470adc-9ea1-420b-9a52-0ba5bfff5574	Secondaire	actif	2026-04-24 14:49:54.299232
\.


--
-- TOC entry 3770 (class 0 OID 16627)
-- Dependencies: 224
-- Data for Name: sousperiodes; Type: TABLE DATA; Schema: public; Owner: asuna
--

COPY public.sousperiodes (sousperiodeid, designation, datedebut, datefin, coefficient, status, date_create, periodeid) FROM stdin;
1eac222c-bb18-4393-9728-8fa22b67c901	1ere periode	2026-05-01	2026-05-15	1.00	actif	2026-05-11 22:19:50.05182	b4aa7643-648b-4dc0-a70d-fa0d91f1efd9
\.


--
-- TOC entry 3762 (class 0 OID 16487)
-- Dependencies: 216
-- Data for Name: utilisateurs; Type: TABLE DATA; Schema: public; Owner: asuna
--

COPY public.utilisateurs (userid, nom, prenom, phone, categorie, status, date_create, datenaiss, mdp, adresse, email, genre, authid, matricule, codeaff, datecode) FROM stdin;
5db4c4fb-6313-415a-a4aa-33083d69c2e1	Mahamba	Eustache 	0972592158	utilisateur	actif	2026-04-26 14:31:50.228305	2004-04-26	12345678	\N	mahambaeustache1@gmail.com	M	9Iq4nc35gMT42C75Xzy7o0mMSC43	\N	\N	\N
e5f5e640-cb34-4e44-96e0-6c494ad4a874	Gad	Malik	243826711828	ecole_administrateur	actif	2026-05-30 08:30:58.923488	2005-03-13	423#malik	\N	gadmalik@gmail.com	M	B3UbK95gOTM1oDxuN4iqdoV74W93	\N	TCH-165830	2026-05-30 09:35:22.214
e6287f79-89b0-4662-bed0-0b60a96e0cf3	Malik	Gad	243993886474	administrateur	actif	2026-04-23 15:25:17.589533	2005-03-13	423#malik	\N	gadmalik423@gmail.com	M	S60qhkIlDvb5Nll2O9y6imIm96i2	\N	TCH-748564	2026-05-30 07:43:14.236
1bb55143-5138-4a1d-a1a2-0554e349eb3b	GRACE	CHIRU	24399000000	administrateur	actif	2026-05-03 15:37:55.736103	2008-09-15	grace0808	\N	grace@gmail.com	F	quYPb3hk7AS0HBzLPb5WwxuiYve2	\N	\N	\N
8e1d7de0-3ceb-4599-96fe-bf8d3ee1a62f	Malik	Gad	243990410828	utilisateur	actif	2026-05-31 10:04:28.765653	2000-03-13	423#malik	\N	malik@gmail.com	M	TDuUxqD3htTQL5PNqXlNikqMlYP2	\N	\N	2026-07-08 20:35:24.125
ea569fff-ed57-498b-b9b2-0fbcd00b380f	Grace 	Chiru	24399900000	utilisateur	actif	2026-07-10 21:18:24.810385	1995-11-18	grace0808	\N	gracemwinja@gmail.com	F	JOWl968aRlMF0ROxWSccbxdrB5O2	\N	\N	2026-07-11 12:14:22.603
e0a6b23b-23a6-4c20-a71e-c4ad5d669116	Gad	Malik	243891547050	ecole_administrateur	actif	2026-07-10 20:56:33.325754	1999-03-13	423#malik	\N	gmalik@gmail.com	M	vMF1mTcI0POTBnhKgLHRT76p3RN2	\N	\N	2026-07-17 17:27:48.092
\.


--
-- TOC entry 3798 (class 0 OID 0)
-- Dependencies: 232
-- Name: paiements_numero_seq; Type: SEQUENCE SET; Schema: public; Owner: asuna
--

SELECT pg_catalog.setval('public.paiements_numero_seq', 48, true);


--
-- TOC entry 3513 (class 2606 OID 16607)
-- Name: annees annees_pkey; Type: CONSTRAINT; Schema: public; Owner: asuna
--

ALTER TABLE ONLY public.annees
    ADD CONSTRAINT annees_pkey PRIMARY KEY (anneeid);


--
-- TOC entry 3549 (class 2606 OID 25090)
-- Name: assignercours assignercours_pkey; Type: CONSTRAINT; Schema: public; Owner: asuna
--

ALTER TABLE ONLY public.assignercours
    ADD CONSTRAINT assignercours_pkey PRIMARY KEY (assignercoursid);


--
-- TOC entry 3545 (class 2606 OID 17001)
-- Name: assignerfonction assignerfonction_pkey; Type: CONSTRAINT; Schema: public; Owner: asuna
--

ALTER TABLE ONLY public.assignerfonction
    ADD CONSTRAINT assignerfonction_pkey PRIMARY KEY (assignerfonctionid);


--
-- TOC entry 3547 (class 2606 OID 17019)
-- Name: assignerutilisateur assignerutilisateur_pkey; Type: CONSTRAINT; Schema: public; Owner: asuna
--

ALTER TABLE ONLY public.assignerutilisateur
    ADD CONSTRAINT assignerutilisateur_pkey PRIMARY KEY (assignerutilisateurid);


--
-- TOC entry 3521 (class 2606 OID 16669)
-- Name: attribueroptions attribueroptions_ecoleid_optionid_key; Type: CONSTRAINT; Schema: public; Owner: asuna
--

ALTER TABLE ONLY public.attribueroptions
    ADD CONSTRAINT attribueroptions_ecoleid_optionid_key UNIQUE (ecoleid, optionid);


--
-- TOC entry 3523 (class 2606 OID 16667)
-- Name: attribueroptions attribueroptions_pkey; Type: CONSTRAINT; Schema: public; Owner: asuna
--

ALTER TABLE ONLY public.attribueroptions
    ADD CONSTRAINT attribueroptions_pkey PRIMARY KEY (optionecoleid);


--
-- TOC entry 3525 (class 2606 OID 16689)
-- Name: attribuersections attribuersections_ecoleid_sectionid_key; Type: CONSTRAINT; Schema: public; Owner: asuna
--

ALTER TABLE ONLY public.attribuersections
    ADD CONSTRAINT attribuersections_ecoleid_sectionid_key UNIQUE (ecoleid, sectionid);


--
-- TOC entry 3527 (class 2606 OID 16687)
-- Name: attribuersections attribuersections_pkey; Type: CONSTRAINT; Schema: public; Owner: asuna
--

ALTER TABLE ONLY public.attribuersections
    ADD CONSTRAINT attribuersections_pkey PRIMARY KEY (sectionecoleid);


--
-- TOC entry 3543 (class 2606 OID 16987)
-- Name: categorieutilisateur categorieutilisateur_pkey; Type: CONSTRAINT; Schema: public; Owner: asuna
--

ALTER TABLE ONLY public.categorieutilisateur
    ADD CONSTRAINT categorieutilisateur_pkey PRIMARY KEY (categorieutilisateurid);


--
-- TOC entry 3519 (class 2606 OID 16649)
-- Name: classeecoles classeecoles_pkey; Type: CONSTRAINT; Schema: public; Owner: asuna
--

ALTER TABLE ONLY public.classeecoles
    ADD CONSTRAINT classeecoles_pkey PRIMARY KEY (classeecoleid);


--
-- TOC entry 3509 (class 2606 OID 16539)
-- Name: classes classes_pkey; Type: CONSTRAINT; Schema: public; Owner: asuna
--

ALTER TABLE ONLY public.classes
    ADD CONSTRAINT classes_pkey PRIMARY KEY (classeid);


--
-- TOC entry 3553 (class 2606 OID 33282)
-- Name: cotes cotes_pkey; Type: CONSTRAINT; Schema: public; Owner: asuna
--

ALTER TABLE ONLY public.cotes
    ADD CONSTRAINT cotes_pkey PRIMARY KEY (coteid);


--
-- TOC entry 3555 (class 2606 OID 33312)
-- Name: dashboard_widgets dashboard_widgets_component_name_key; Type: CONSTRAINT; Schema: public; Owner: asuna
--

ALTER TABLE ONLY public.dashboard_widgets
    ADD CONSTRAINT dashboard_widgets_component_name_key UNIQUE (component_name);


--
-- TOC entry 3557 (class 2606 OID 33310)
-- Name: dashboard_widgets dashboard_widgets_pkey; Type: CONSTRAINT; Schema: public; Owner: asuna
--

ALTER TABLE ONLY public.dashboard_widgets
    ADD CONSTRAINT dashboard_widgets_pkey PRIMARY KEY (widgetid);


--
-- TOC entry 3503 (class 2606 OID 16505)
-- Name: ecoles ecoles_pkey; Type: CONSTRAINT; Schema: public; Owner: asuna
--

ALTER TABLE ONLY public.ecoles
    ADD CONSTRAINT ecoles_pkey PRIMARY KEY (ecoleid);


--
-- TOC entry 3529 (class 2606 OID 16709)
-- Name: eleves eleves_pkey; Type: CONSTRAINT; Schema: public; Owner: asuna
--

ALTER TABLE ONLY public.eleves
    ADD CONSTRAINT eleves_pkey PRIMARY KEY (eleveid);


--
-- TOC entry 3551 (class 2606 OID 25134)
-- Name: evaluations evaluations_pkey; Type: CONSTRAINT; Schema: public; Owner: asuna
--

ALTER TABLE ONLY public.evaluations
    ADD CONSTRAINT evaluations_pkey PRIMARY KEY (evaluationid);


--
-- TOC entry 3541 (class 2606 OID 16937)
-- Name: fonctionnalite fonctionnalite_pkey; Type: CONSTRAINT; Schema: public; Owner: asuna
--

ALTER TABLE ONLY public.fonctionnalite
    ADD CONSTRAINT fonctionnalite_pkey PRIMARY KEY (fonctionnaliteid);


--
-- TOC entry 3535 (class 2606 OID 16795)
-- Name: frais frais_pkey; Type: CONSTRAINT; Schema: public; Owner: asuna
--

ALTER TABLE ONLY public.frais
    ADD CONSTRAINT frais_pkey PRIMARY KEY (fraisid);


--
-- TOC entry 3531 (class 2606 OID 16718)
-- Name: inscriptions inscriptions_pkey; Type: CONSTRAINT; Schema: public; Owner: asuna
--

ALTER TABLE ONLY public.inscriptions
    ADD CONSTRAINT inscriptions_pkey PRIMARY KEY (inscriptionid);


--
-- TOC entry 3539 (class 2606 OID 16857)
-- Name: lignepaiements lignepaiements_pkey; Type: CONSTRAINT; Schema: public; Owner: asuna
--

ALTER TABLE ONLY public.lignepaiements
    ADD CONSTRAINT lignepaiements_pkey PRIMARY KEY (lignepaiementid);


--
-- TOC entry 3511 (class 2606 OID 16558)
-- Name: matieres matieres_pkey; Type: CONSTRAINT; Schema: public; Owner: asuna
--

ALTER TABLE ONLY public.matieres
    ADD CONSTRAINT matieres_pkey PRIMARY KEY (matiereid);


--
-- TOC entry 3507 (class 2606 OID 16526)
-- Name: options options_pkey; Type: CONSTRAINT; Schema: public; Owner: asuna
--

ALTER TABLE ONLY public.options
    ADD CONSTRAINT options_pkey PRIMARY KEY (optionid);


--
-- TOC entry 3537 (class 2606 OID 16834)
-- Name: paiements paiements_pkey; Type: CONSTRAINT; Schema: public; Owner: asuna
--

ALTER TABLE ONLY public.paiements
    ADD CONSTRAINT paiements_pkey PRIMARY KEY (paiementid);


--
-- TOC entry 3515 (class 2606 OID 16616)
-- Name: periodes periodes_pkey; Type: CONSTRAINT; Schema: public; Owner: asuna
--

ALTER TABLE ONLY public.periodes
    ADD CONSTRAINT periodes_pkey PRIMARY KEY (periodeid);


--
-- TOC entry 3533 (class 2606 OID 16768)
-- Name: periodescomptables periodescomptable_pkey; Type: CONSTRAINT; Schema: public; Owner: asuna
--

ALTER TABLE ONLY public.periodescomptables
    ADD CONSTRAINT periodescomptable_pkey PRIMARY KEY (periodecomptableid);


--
-- TOC entry 3559 (class 2606 OID 33347)
-- Name: refresh_tokens refresh_tokens_pkey; Type: CONSTRAINT; Schema: public; Owner: asuna
--

ALTER TABLE ONLY public.refresh_tokens
    ADD CONSTRAINT refresh_tokens_pkey PRIMARY KEY (id);


--
-- TOC entry 3505 (class 2606 OID 16518)
-- Name: sections sections_pkey; Type: CONSTRAINT; Schema: public; Owner: asuna
--

ALTER TABLE ONLY public.sections
    ADD CONSTRAINT sections_pkey PRIMARY KEY (sectionid);


--
-- TOC entry 3517 (class 2606 OID 16636)
-- Name: sousperiodes sousperiodes_pkey; Type: CONSTRAINT; Schema: public; Owner: asuna
--

ALTER TABLE ONLY public.sousperiodes
    ADD CONSTRAINT sousperiodes_pkey PRIMARY KEY (sousperiodeid);


--
-- TOC entry 3501 (class 2606 OID 16494)
-- Name: utilisateurs utilisateurs_pkey; Type: CONSTRAINT; Schema: public; Owner: asuna
--

ALTER TABLE ONLY public.utilisateurs
    ADD CONSTRAINT utilisateurs_pkey PRIMARY KEY (userid);


--
-- TOC entry 3603 (class 2606 OID 25121)
-- Name: assignercours assignercours_matieres_fk; Type: FK CONSTRAINT; Schema: public; Owner: asuna
--

ALTER TABLE ONLY public.assignercours
    ADD CONSTRAINT assignercours_matieres_fk FOREIGN KEY (matiereid) REFERENCES public.matieres(matiereid) ON DELETE CASCADE;


--
-- TOC entry 3567 (class 2606 OID 33269)
-- Name: classeecoles classeecoles_attribuersections_fk; Type: FK CONSTRAINT; Schema: public; Owner: asuna
--

ALTER TABLE ONLY public.classeecoles
    ADD CONSTRAINT classeecoles_attribuersections_fk FOREIGN KEY (sectionecoleid) REFERENCES public.attribuersections(sectionecoleid);


--
-- TOC entry 3608 (class 2606 OID 25155)
-- Name: evaluations evaluations_annees_fk; Type: FK CONSTRAINT; Schema: public; Owner: asuna
--

ALTER TABLE ONLY public.evaluations
    ADD CONSTRAINT evaluations_annees_fk FOREIGN KEY (anneeid) REFERENCES public.annees(anneeid);


--
-- TOC entry 3579 (class 2606 OID 16779)
-- Name: periodescomptables fk_annee; Type: FK CONSTRAINT; Schema: public; Owner: asuna
--

ALTER TABLE ONLY public.periodescomptables
    ADD CONSTRAINT fk_annee FOREIGN KEY (anneeid) REFERENCES public.annees(anneeid) ON DELETE CASCADE;


--
-- TOC entry 3574 (class 2606 OID 16739)
-- Name: inscriptions fk_annee_ins; Type: FK CONSTRAINT; Schema: public; Owner: asuna
--

ALTER TABLE ONLY public.inscriptions
    ADD CONSTRAINT fk_annee_ins FOREIGN KEY (anneeid) REFERENCES public.annees(anneeid) ON DELETE CASCADE;


--
-- TOC entry 3564 (class 2606 OID 16617)
-- Name: periodes fk_annee_periode; Type: FK CONSTRAINT; Schema: public; Owner: asuna
--

ALTER TABLE ONLY public.periodes
    ADD CONSTRAINT fk_annee_periode FOREIGN KEY (anneeid) REFERENCES public.annees(anneeid) ON DELETE CASCADE;


--
-- TOC entry 3598 (class 2606 OID 17007)
-- Name: assignerfonction fk_assign_cat; Type: FK CONSTRAINT; Schema: public; Owner: asuna
--

ALTER TABLE ONLY public.assignerfonction
    ADD CONSTRAINT fk_assign_cat FOREIGN KEY (categorieutilisateurid) REFERENCES public.categorieutilisateur(categorieutilisateurid) ON DELETE CASCADE;


--
-- TOC entry 3599 (class 2606 OID 17002)
-- Name: assignerfonction fk_assign_func; Type: FK CONSTRAINT; Schema: public; Owner: asuna
--

ALTER TABLE ONLY public.assignerfonction
    ADD CONSTRAINT fk_assign_func FOREIGN KEY (fonctionnaliteid) REFERENCES public.fonctionnalite(fonctionnaliteid) ON DELETE CASCADE;


--
-- TOC entry 3597 (class 2606 OID 16988)
-- Name: categorieutilisateur fk_cat_ecole; Type: FK CONSTRAINT; Schema: public; Owner: asuna
--

ALTER TABLE ONLY public.categorieutilisateur
    ADD CONSTRAINT fk_cat_ecole FOREIGN KEY (ecoleid) REFERENCES public.ecoles(ecoleid) ON DELETE CASCADE;


--
-- TOC entry 3563 (class 2606 OID 16559)
-- Name: matieres fk_classe_matiere; Type: FK CONSTRAINT; Schema: public; Owner: asuna
--

ALTER TABLE ONLY public.matieres
    ADD CONSTRAINT fk_classe_matiere FOREIGN KEY (classeid) REFERENCES public.classes(classeid) ON DELETE CASCADE;


--
-- TOC entry 3568 (class 2606 OID 16650)
-- Name: classeecoles fk_classe_ref; Type: FK CONSTRAINT; Schema: public; Owner: asuna
--

ALTER TABLE ONLY public.classeecoles
    ADD CONSTRAINT fk_classe_ref FOREIGN KEY (classeid) REFERENCES public.classes(classeid) ON DELETE CASCADE;


--
-- TOC entry 3613 (class 2606 OID 33298)
-- Name: cotes fk_cote_annee; Type: FK CONSTRAINT; Schema: public; Owner: asuna
--

ALTER TABLE ONLY public.cotes
    ADD CONSTRAINT fk_cote_annee FOREIGN KEY (anneeid) REFERENCES public.annees(anneeid) ON DELETE CASCADE;


--
-- TOC entry 3614 (class 2606 OID 33293)
-- Name: cotes fk_cote_ecole; Type: FK CONSTRAINT; Schema: public; Owner: asuna
--

ALTER TABLE ONLY public.cotes
    ADD CONSTRAINT fk_cote_ecole FOREIGN KEY (ecoleid) REFERENCES public.ecoles(ecoleid) ON DELETE CASCADE;


--
-- TOC entry 3615 (class 2606 OID 33288)
-- Name: cotes fk_cote_eleve; Type: FK CONSTRAINT; Schema: public; Owner: asuna
--

ALTER TABLE ONLY public.cotes
    ADD CONSTRAINT fk_cote_eleve FOREIGN KEY (eleveid) REFERENCES public.eleves(eleveid) ON DELETE CASCADE;


--
-- TOC entry 3616 (class 2606 OID 33283)
-- Name: cotes fk_cote_evaluation; Type: FK CONSTRAINT; Schema: public; Owner: asuna
--

ALTER TABLE ONLY public.cotes
    ADD CONSTRAINT fk_cote_evaluation FOREIGN KEY (evaluationid) REFERENCES public.evaluations(evaluationid) ON DELETE CASCADE;


--
-- TOC entry 3604 (class 2606 OID 25101)
-- Name: assignercours fk_cours_assign_user; Type: FK CONSTRAINT; Schema: public; Owner: asuna
--

ALTER TABLE ONLY public.assignercours
    ADD CONSTRAINT fk_cours_assign_user FOREIGN KEY (assignerutilisateurid) REFERENCES public.assignerutilisateur(assignerutilisateurid) ON DELETE CASCADE;


--
-- TOC entry 3605 (class 2606 OID 25091)
-- Name: assignercours fk_cours_classe; Type: FK CONSTRAINT; Schema: public; Owner: asuna
--

ALTER TABLE ONLY public.assignercours
    ADD CONSTRAINT fk_cours_classe FOREIGN KEY (classeecoleid) REFERENCES public.classeecoles(classeecoleid) ON DELETE CASCADE;


--
-- TOC entry 3606 (class 2606 OID 25106)
-- Name: assignercours fk_cours_ecole; Type: FK CONSTRAINT; Schema: public; Owner: asuna
--

ALTER TABLE ONLY public.assignercours
    ADD CONSTRAINT fk_cours_ecole FOREIGN KEY (ecoleid) REFERENCES public.ecoles(ecoleid) ON DELETE CASCADE;


--
-- TOC entry 3607 (class 2606 OID 25096)
-- Name: assignercours fk_cours_user; Type: FK CONSTRAINT; Schema: public; Owner: asuna
--

ALTER TABLE ONLY public.assignercours
    ADD CONSTRAINT fk_cours_user FOREIGN KEY (userid) REFERENCES public.utilisateurs(userid) ON DELETE CASCADE;


--
-- TOC entry 3580 (class 2606 OID 16774)
-- Name: periodescomptables fk_ecole; Type: FK CONSTRAINT; Schema: public; Owner: asuna
--

ALTER TABLE ONLY public.periodescomptables
    ADD CONSTRAINT fk_ecole FOREIGN KEY (ecoleid) REFERENCES public.ecoles(ecoleid) ON DELETE CASCADE;


--
-- TOC entry 3570 (class 2606 OID 16670)
-- Name: attribueroptions fk_ecole_assign_opt; Type: FK CONSTRAINT; Schema: public; Owner: asuna
--

ALTER TABLE ONLY public.attribueroptions
    ADD CONSTRAINT fk_ecole_assign_opt FOREIGN KEY (ecoleid) REFERENCES public.ecoles(ecoleid) ON DELETE CASCADE;


--
-- TOC entry 3572 (class 2606 OID 16690)
-- Name: attribuersections fk_ecole_assign_sec; Type: FK CONSTRAINT; Schema: public; Owner: asuna
--

ALTER TABLE ONLY public.attribuersections
    ADD CONSTRAINT fk_ecole_assign_sec FOREIGN KEY (ecoleid) REFERENCES public.ecoles(ecoleid) ON DELETE CASCADE;


--
-- TOC entry 3575 (class 2606 OID 16724)
-- Name: inscriptions fk_ecole_ins; Type: FK CONSTRAINT; Schema: public; Owner: asuna
--

ALTER TABLE ONLY public.inscriptions
    ADD CONSTRAINT fk_ecole_ins FOREIGN KEY (ecoleid) REFERENCES public.ecoles(ecoleid) ON DELETE CASCADE;


--
-- TOC entry 3569 (class 2606 OID 16655)
-- Name: classeecoles fk_ecole_ref; Type: FK CONSTRAINT; Schema: public; Owner: asuna
--

ALTER TABLE ONLY public.classeecoles
    ADD CONSTRAINT fk_ecole_ref FOREIGN KEY (ecoleid) REFERENCES public.ecoles(ecoleid) ON DELETE CASCADE;


--
-- TOC entry 3576 (class 2606 OID 16719)
-- Name: inscriptions fk_eleve_ins; Type: FK CONSTRAINT; Schema: public; Owner: asuna
--

ALTER TABLE ONLY public.inscriptions
    ADD CONSTRAINT fk_eleve_ins FOREIGN KEY (eleveid) REFERENCES public.eleves(eleveid) ON DELETE CASCADE;


--
-- TOC entry 3609 (class 2606 OID 25135)
-- Name: evaluations fk_eval_cours; Type: FK CONSTRAINT; Schema: public; Owner: asuna
--

ALTER TABLE ONLY public.evaluations
    ADD CONSTRAINT fk_eval_cours FOREIGN KEY (assignercoursid) REFERENCES public.assignercours(assignercoursid) ON DELETE CASCADE;


--
-- TOC entry 3610 (class 2606 OID 25140)
-- Name: evaluations fk_eval_ecole; Type: FK CONSTRAINT; Schema: public; Owner: asuna
--

ALTER TABLE ONLY public.evaluations
    ADD CONSTRAINT fk_eval_ecole FOREIGN KEY (ecoleid) REFERENCES public.ecoles(ecoleid) ON DELETE CASCADE;


--
-- TOC entry 3611 (class 2606 OID 25150)
-- Name: evaluations fk_eval_periode; Type: FK CONSTRAINT; Schema: public; Owner: asuna
--

ALTER TABLE ONLY public.evaluations
    ADD CONSTRAINT fk_eval_periode FOREIGN KEY (periodeid) REFERENCES public.periodes(periodeid);


--
-- TOC entry 3612 (class 2606 OID 25145)
-- Name: evaluations fk_eval_user; Type: FK CONSTRAINT; Schema: public; Owner: asuna
--

ALTER TABLE ONLY public.evaluations
    ADD CONSTRAINT fk_eval_user FOREIGN KEY (userid) REFERENCES public.utilisateurs(userid);


--
-- TOC entry 3583 (class 2606 OID 16801)
-- Name: frais fk_frais_annee; Type: FK CONSTRAINT; Schema: public; Owner: asuna
--

ALTER TABLE ONLY public.frais
    ADD CONSTRAINT fk_frais_annee FOREIGN KEY (anneeid) REFERENCES public.annees(anneeid) ON DELETE CASCADE;


--
-- TOC entry 3584 (class 2606 OID 16811)
-- Name: frais fk_frais_classe; Type: FK CONSTRAINT; Schema: public; Owner: asuna
--

ALTER TABLE ONLY public.frais
    ADD CONSTRAINT fk_frais_classe FOREIGN KEY (classeid) REFERENCES public.classeecoles(classeecoleid) ON DELETE SET NULL;


--
-- TOC entry 3585 (class 2606 OID 16816)
-- Name: frais fk_frais_option; Type: FK CONSTRAINT; Schema: public; Owner: asuna
--

ALTER TABLE ONLY public.frais
    ADD CONSTRAINT fk_frais_option FOREIGN KEY (optionid) REFERENCES public.attribueroptions(optionecoleid) ON DELETE SET NULL;


--
-- TOC entry 3586 (class 2606 OID 16796)
-- Name: frais fk_frais_periode; Type: FK CONSTRAINT; Schema: public; Owner: asuna
--

ALTER TABLE ONLY public.frais
    ADD CONSTRAINT fk_frais_periode FOREIGN KEY (periodecomptableid) REFERENCES public.periodescomptables(periodecomptableid) ON DELETE CASCADE;


--
-- TOC entry 3587 (class 2606 OID 16806)
-- Name: frais fk_frais_section; Type: FK CONSTRAINT; Schema: public; Owner: asuna
--

ALTER TABLE ONLY public.frais
    ADD CONSTRAINT fk_frais_section FOREIGN KEY (sectionid) REFERENCES public.attribuersections(sectionecoleid) ON DELETE CASCADE;


--
-- TOC entry 3592 (class 2606 OID 16873)
-- Name: lignepaiements fk_ligne_annee; Type: FK CONSTRAINT; Schema: public; Owner: asuna
--

ALTER TABLE ONLY public.lignepaiements
    ADD CONSTRAINT fk_ligne_annee FOREIGN KEY (anneeid) REFERENCES public.annees(anneeid);


--
-- TOC entry 3593 (class 2606 OID 16878)
-- Name: lignepaiements fk_ligne_ecole; Type: FK CONSTRAINT; Schema: public; Owner: asuna
--

ALTER TABLE ONLY public.lignepaiements
    ADD CONSTRAINT fk_ligne_ecole FOREIGN KEY (ecoleid) REFERENCES public.ecoles(ecoleid);


--
-- TOC entry 3594 (class 2606 OID 16868)
-- Name: lignepaiements fk_ligne_eleve; Type: FK CONSTRAINT; Schema: public; Owner: asuna
--

ALTER TABLE ONLY public.lignepaiements
    ADD CONSTRAINT fk_ligne_eleve FOREIGN KEY (eleveid) REFERENCES public.eleves(eleveid);


--
-- TOC entry 3595 (class 2606 OID 16863)
-- Name: lignepaiements fk_ligne_frais; Type: FK CONSTRAINT; Schema: public; Owner: asuna
--

ALTER TABLE ONLY public.lignepaiements
    ADD CONSTRAINT fk_ligne_frais FOREIGN KEY (fraisid) REFERENCES public.frais(fraisid);


--
-- TOC entry 3596 (class 2606 OID 16858)
-- Name: lignepaiements fk_ligne_paiement_id; Type: FK CONSTRAINT; Schema: public; Owner: asuna
--

ALTER TABLE ONLY public.lignepaiements
    ADD CONSTRAINT fk_ligne_paiement_id FOREIGN KEY (paiementid) REFERENCES public.paiements(paiementid) ON DELETE CASCADE;


--
-- TOC entry 3571 (class 2606 OID 16675)
-- Name: attribueroptions fk_option_assign_opt; Type: FK CONSTRAINT; Schema: public; Owner: asuna
--

ALTER TABLE ONLY public.attribueroptions
    ADD CONSTRAINT fk_option_assign_opt FOREIGN KEY (optionid) REFERENCES public.options(optionid) ON DELETE CASCADE;


--
-- TOC entry 3561 (class 2606 OID 16545)
-- Name: classes fk_option_classe; Type: FK CONSTRAINT; Schema: public; Owner: asuna
--

ALTER TABLE ONLY public.classes
    ADD CONSTRAINT fk_option_classe FOREIGN KEY (optionid) REFERENCES public.options(optionid) ON DELETE SET NULL;


--
-- TOC entry 3589 (class 2606 OID 16840)
-- Name: paiements fk_paiement_ecole; Type: FK CONSTRAINT; Schema: public; Owner: asuna
--

ALTER TABLE ONLY public.paiements
    ADD CONSTRAINT fk_paiement_ecole FOREIGN KEY (ecoleid) REFERENCES public.ecoles(ecoleid) ON DELETE CASCADE;


--
-- TOC entry 3590 (class 2606 OID 16835)
-- Name: paiements fk_paiement_eleve; Type: FK CONSTRAINT; Schema: public; Owner: asuna
--

ALTER TABLE ONLY public.paiements
    ADD CONSTRAINT fk_paiement_eleve FOREIGN KEY (eleveid) REFERENCES public.eleves(eleveid) ON DELETE CASCADE;


--
-- TOC entry 3591 (class 2606 OID 16845)
-- Name: paiements fk_paiement_user; Type: FK CONSTRAINT; Schema: public; Owner: asuna
--

ALTER TABLE ONLY public.paiements
    ADD CONSTRAINT fk_paiement_user FOREIGN KEY (userid) REFERENCES public.utilisateurs(userid);


--
-- TOC entry 3566 (class 2606 OID 16637)
-- Name: sousperiodes fk_periode_sousperiode; Type: FK CONSTRAINT; Schema: public; Owner: asuna
--

ALTER TABLE ONLY public.sousperiodes
    ADD CONSTRAINT fk_periode_sousperiode FOREIGN KEY (periodeid) REFERENCES public.periodes(periodeid) ON DELETE CASCADE;


--
-- TOC entry 3581 (class 2606 OID 16769)
-- Name: periodescomptables fk_section; Type: FK CONSTRAINT; Schema: public; Owner: asuna
--

ALTER TABLE ONLY public.periodescomptables
    ADD CONSTRAINT fk_section FOREIGN KEY (sectionid) REFERENCES public.attribuersections(sectionecoleid) ON DELETE CASCADE;


--
-- TOC entry 3573 (class 2606 OID 16695)
-- Name: attribuersections fk_section_assign_sec; Type: FK CONSTRAINT; Schema: public; Owner: asuna
--

ALTER TABLE ONLY public.attribuersections
    ADD CONSTRAINT fk_section_assign_sec FOREIGN KEY (sectionid) REFERENCES public.sections(sectionid) ON DELETE CASCADE;


--
-- TOC entry 3562 (class 2606 OID 16540)
-- Name: classes fk_section_classe; Type: FK CONSTRAINT; Schema: public; Owner: asuna
--

ALTER TABLE ONLY public.classes
    ADD CONSTRAINT fk_section_classe FOREIGN KEY (sectionid) REFERENCES public.sections(sectionid) ON DELETE CASCADE;


--
-- TOC entry 3577 (class 2606 OID 16734)
-- Name: inscriptions fk_section_ins; Type: FK CONSTRAINT; Schema: public; Owner: asuna
--

ALTER TABLE ONLY public.inscriptions
    ADD CONSTRAINT fk_section_ins FOREIGN KEY (sectionid) REFERENCES public.sections(sectionid) ON DELETE CASCADE;


--
-- TOC entry 3565 (class 2606 OID 16622)
-- Name: periodes fk_section_periode; Type: FK CONSTRAINT; Schema: public; Owner: asuna
--

ALTER TABLE ONLY public.periodes
    ADD CONSTRAINT fk_section_periode FOREIGN KEY (sectionid) REFERENCES public.sections(sectionid) ON DELETE CASCADE;


--
-- TOC entry 3600 (class 2606 OID 17030)
-- Name: assignerutilisateur fk_user_cat; Type: FK CONSTRAINT; Schema: public; Owner: asuna
--

ALTER TABLE ONLY public.assignerutilisateur
    ADD CONSTRAINT fk_user_cat FOREIGN KEY (categorieutilisateurid) REFERENCES public.categorieutilisateur(categorieutilisateurid) ON DELETE CASCADE;


--
-- TOC entry 3601 (class 2606 OID 17020)
-- Name: assignerutilisateur fk_user_ecole; Type: FK CONSTRAINT; Schema: public; Owner: asuna
--

ALTER TABLE ONLY public.assignerutilisateur
    ADD CONSTRAINT fk_user_ecole FOREIGN KEY (ecoleid) REFERENCES public.ecoles(ecoleid) ON DELETE CASCADE;


--
-- TOC entry 3602 (class 2606 OID 17025)
-- Name: assignerutilisateur fk_user_id; Type: FK CONSTRAINT; Schema: public; Owner: asuna
--

ALTER TABLE ONLY public.assignerutilisateur
    ADD CONSTRAINT fk_user_id FOREIGN KEY (userid) REFERENCES public.utilisateurs(userid) ON DELETE CASCADE;


--
-- TOC entry 3560 (class 2606 OID 16506)
-- Name: ecoles fk_utilisateur; Type: FK CONSTRAINT; Schema: public; Owner: asuna
--

ALTER TABLE ONLY public.ecoles
    ADD CONSTRAINT fk_utilisateur FOREIGN KEY (userid) REFERENCES public.utilisateurs(userid) ON DELETE SET NULL;


--
-- TOC entry 3617 (class 2606 OID 33318)
-- Name: dashboard_widgets fk_widget_permission; Type: FK CONSTRAINT; Schema: public; Owner: asuna
--

ALTER TABLE ONLY public.dashboard_widgets
    ADD CONSTRAINT fk_widget_permission FOREIGN KEY (fonctionnaliteid) REFERENCES public.fonctionnalite(fonctionnaliteid) ON DELETE CASCADE;


--
-- TOC entry 3588 (class 2606 OID 16821)
-- Name: frais frais_ecoles_fk; Type: FK CONSTRAINT; Schema: public; Owner: asuna
--

ALTER TABLE ONLY public.frais
    ADD CONSTRAINT frais_ecoles_fk FOREIGN KEY (ecoleid) REFERENCES public.ecoles(ecoleid);


--
-- TOC entry 3578 (class 2606 OID 16757)
-- Name: inscriptions inscriptions_classeecoles_fk; Type: FK CONSTRAINT; Schema: public; Owner: asuna
--

ALTER TABLE ONLY public.inscriptions
    ADD CONSTRAINT inscriptions_classeecoles_fk FOREIGN KEY (classeid) REFERENCES public.classeecoles(classeecoleid);


--
-- TOC entry 3582 (class 2606 OID 16784)
-- Name: periodescomptables periodescomptable_utilisateurs_fk; Type: FK CONSTRAINT; Schema: public; Owner: asuna
--

ALTER TABLE ONLY public.periodescomptables
    ADD CONSTRAINT periodescomptable_utilisateurs_fk FOREIGN KEY (userid) REFERENCES public.utilisateurs(userid);


--
-- TOC entry 3618 (class 2606 OID 33348)
-- Name: refresh_tokens refresh_tokens_userid_fkey; Type: FK CONSTRAINT; Schema: public; Owner: asuna
--

ALTER TABLE ONLY public.refresh_tokens
    ADD CONSTRAINT refresh_tokens_userid_fkey FOREIGN KEY (userid) REFERENCES public.utilisateurs(userid) ON DELETE CASCADE;


-- Completed on 2026-07-28 16:51:32 CAT

--
-- PostgreSQL database dump complete
--

\unrestrict L0BUatNx0wOJ6UjWYlSIzQdLgkr8JVz1TcrfavdpMFUcySOPjut129Mu4v9Nkau

-- Completed on 2026-07-28 16:51:32 CAT

--
-- PostgreSQL database cluster dump complete
--

