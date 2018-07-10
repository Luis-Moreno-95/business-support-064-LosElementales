--
-- PostgreSQL database dump
--

-- Dumped from database version 10.4
-- Dumped by pg_dump version 10.4

SET statement_timeout = 0;
SET lock_timeout = 0;
SET idle_in_transaction_session_timeout = 0;
SET client_encoding = 'UTF8';
SET standard_conforming_strings = on;
SELECT pg_catalog.set_config('search_path', '', false);
SET check_function_bodies = false;
SET client_min_messages = warning;
SET row_security = off;

--
-- Name: DATABASE postgres; Type: COMMENT; Schema: -; Owner: postgres
--

COMMENT ON DATABASE postgres IS 'default administrative connection database';


--
-- Name: reciclando; Type: SCHEMA; Schema: -; Owner: postgres
--

CREATE SCHEMA reciclando;


ALTER SCHEMA reciclando OWNER TO postgres;

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
-- Name: clasificacion; Type: TABLE; Schema: reciclando; Owner: postgres
--

CREATE TABLE reciclando.clasificacion (
    id_clasificacion integer NOT NULL,
    descripcion_clasificacion text
);


ALTER TABLE reciclando.clasificacion OWNER TO postgres;

--
-- Name: TABLE clasificacion; Type: COMMENT; Schema: reciclando; Owner: postgres
--

COMMENT ON TABLE reciclando.clasificacion IS 'Tabla de clasificación de las preguntas.';


--
-- Name: clasificacion_id_clasificacion_seq; Type: SEQUENCE; Schema: reciclando; Owner: postgres
--

CREATE SEQUENCE reciclando.clasificacion_id_clasificacion_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE reciclando.clasificacion_id_clasificacion_seq OWNER TO postgres;

--
-- Name: clasificacion_id_clasificacion_seq; Type: SEQUENCE OWNED BY; Schema: reciclando; Owner: postgres
--

ALTER SEQUENCE reciclando.clasificacion_id_clasificacion_seq OWNED BY reciclando.clasificacion.id_clasificacion;


--
-- Name: clasificacion_pregunta; Type: TABLE; Schema: reciclando; Owner: postgres
--

CREATE TABLE reciclando.clasificacion_pregunta (
    id_clasificacion integer,
    id_pregunta integer
);


ALTER TABLE reciclando.clasificacion_pregunta OWNER TO postgres;

--
-- Name: TABLE clasificacion_pregunta; Type: COMMENT; Schema: reciclando; Owner: postgres
--

COMMENT ON TABLE reciclando.clasificacion_pregunta IS 'Tabla de detalle entre clasificación y pregunta';


--
-- Name: contenido; Type: TABLE; Schema: reciclando; Owner: postgres
--

CREATE TABLE reciclando.contenido (
    id_contenido integer NOT NULL,
    id_usuario_contenido integer,
    fecha_creacion_contenido timestamp with time zone,
    fecha_modificacion_contenido timestamp with time zone,
    id_estado_contenido integer,
    nombre_contenido text,
    descripcion_contenido text,
    ruta_multimedia_contenido text
);


ALTER TABLE reciclando.contenido OWNER TO postgres;

--
-- Name: contenido_clasificacion; Type: TABLE; Schema: reciclando; Owner: postgres
--

CREATE TABLE reciclando.contenido_clasificacion (
    id_contenido integer,
    id_clasificacion integer
);


ALTER TABLE reciclando.contenido_clasificacion OWNER TO postgres;

--
-- Name: TABLE contenido_clasificacion; Type: COMMENT; Schema: reciclando; Owner: postgres
--

COMMENT ON TABLE reciclando.contenido_clasificacion IS 'Tabla de detalle entre contenido y clasificacion';


--
-- Name: contenido_id_contenido_seq; Type: SEQUENCE; Schema: reciclando; Owner: postgres
--

CREATE SEQUENCE reciclando.contenido_id_contenido_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE reciclando.contenido_id_contenido_seq OWNER TO postgres;

--
-- Name: contenido_id_contenido_seq; Type: SEQUENCE OWNED BY; Schema: reciclando; Owner: postgres
--

ALTER SEQUENCE reciclando.contenido_id_contenido_seq OWNED BY reciclando.contenido.id_contenido;


--
-- Name: estados; Type: TABLE; Schema: reciclando; Owner: postgres
--

CREATE TABLE reciclando.estados (
    id_estado integer NOT NULL,
    descripcion_estado text
);


ALTER TABLE reciclando.estados OWNER TO postgres;

--
-- Name: TABLE estados; Type: COMMENT; Schema: reciclando; Owner: postgres
--

COMMENT ON TABLE reciclando.estados IS 'Tabla de estados';


--
-- Name: estados_id_estado_seq; Type: SEQUENCE; Schema: reciclando; Owner: postgres
--

CREATE SEQUENCE reciclando.estados_id_estado_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE reciclando.estados_id_estado_seq OWNER TO postgres;

--
-- Name: estados_id_estado_seq; Type: SEQUENCE OWNED BY; Schema: reciclando; Owner: postgres
--

ALTER SEQUENCE reciclando.estados_id_estado_seq OWNED BY reciclando.estados.id_estado;


--
-- Name: pregunta; Type: TABLE; Schema: reciclando; Owner: postgres
--

CREATE TABLE reciclando.pregunta (
    id_pregunta integer NOT NULL,
    descripcion_pregunta text,
    peso_pregunta integer,
    id_estado_pregunta integer
);


ALTER TABLE reciclando.pregunta OWNER TO postgres;

--
-- Name: pregunta_id_pregunta_seq; Type: SEQUENCE; Schema: reciclando; Owner: postgres
--

CREATE SEQUENCE reciclando.pregunta_id_pregunta_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE reciclando.pregunta_id_pregunta_seq OWNER TO postgres;

--
-- Name: pregunta_id_pregunta_seq; Type: SEQUENCE OWNED BY; Schema: reciclando; Owner: postgres
--

ALTER SEQUENCE reciclando.pregunta_id_pregunta_seq OWNED BY reciclando.pregunta.id_pregunta;


--
-- Name: rol; Type: TABLE; Schema: reciclando; Owner: postgres
--

CREATE TABLE reciclando.rol (
    id_rol integer NOT NULL,
    nombre_rol text,
    descripcion_rol text
);


ALTER TABLE reciclando.rol OWNER TO postgres;

--
-- Name: TABLE rol; Type: COMMENT; Schema: reciclando; Owner: postgres
--

COMMENT ON TABLE reciclando.rol IS 'Tabla de roles';


--
-- Name: rol_id_rol_seq; Type: SEQUENCE; Schema: reciclando; Owner: postgres
--

CREATE SEQUENCE reciclando.rol_id_rol_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE reciclando.rol_id_rol_seq OWNER TO postgres;

--
-- Name: rol_id_rol_seq; Type: SEQUENCE OWNED BY; Schema: reciclando; Owner: postgres
--

ALTER SEQUENCE reciclando.rol_id_rol_seq OWNED BY reciclando.rol.id_rol;


--
-- Name: usuario; Type: TABLE; Schema: reciclando; Owner: postgres
--

CREATE TABLE reciclando.usuario (
    id_usuario integer NOT NULL,
    nombres_usuario text,
    apellidos_usuario text,
    fecha_nacimiento_usuario date,
    id_estado_usuario integer,
    clave_usuario text,
    fecha_modificacion_usuario timestamp with time zone,
    fecha_ultimo_ingreso_usuario timestamp with time zone,
    fecha_creacion_usuario timestamp with time zone,
    puntaje_usuario integer
);


ALTER TABLE reciclando.usuario OWNER TO postgres;

--
-- Name: usuario_id_usuario_seq; Type: SEQUENCE; Schema: reciclando; Owner: postgres
--

CREATE SEQUENCE reciclando.usuario_id_usuario_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE reciclando.usuario_id_usuario_seq OWNER TO postgres;

--
-- Name: usuario_id_usuario_seq; Type: SEQUENCE OWNED BY; Schema: reciclando; Owner: postgres
--

ALTER SEQUENCE reciclando.usuario_id_usuario_seq OWNED BY reciclando.usuario.id_usuario;


--
-- Name: usuario_rol; Type: TABLE; Schema: reciclando; Owner: postgres
--

CREATE TABLE reciclando.usuario_rol (
    id_rol integer,
    id_usuario integer
);


ALTER TABLE reciclando.usuario_rol OWNER TO postgres;

--
-- Name: clasificacion id_clasificacion; Type: DEFAULT; Schema: reciclando; Owner: postgres
--

ALTER TABLE ONLY reciclando.clasificacion ALTER COLUMN id_clasificacion SET DEFAULT nextval('reciclando.clasificacion_id_clasificacion_seq'::regclass);


--
-- Name: contenido id_contenido; Type: DEFAULT; Schema: reciclando; Owner: postgres
--

ALTER TABLE ONLY reciclando.contenido ALTER COLUMN id_contenido SET DEFAULT nextval('reciclando.contenido_id_contenido_seq'::regclass);


--
-- Name: estados id_estado; Type: DEFAULT; Schema: reciclando; Owner: postgres
--

ALTER TABLE ONLY reciclando.estados ALTER COLUMN id_estado SET DEFAULT nextval('reciclando.estados_id_estado_seq'::regclass);


--
-- Name: pregunta id_pregunta; Type: DEFAULT; Schema: reciclando; Owner: postgres
--

ALTER TABLE ONLY reciclando.pregunta ALTER COLUMN id_pregunta SET DEFAULT nextval('reciclando.pregunta_id_pregunta_seq'::regclass);


--
-- Name: rol id_rol; Type: DEFAULT; Schema: reciclando; Owner: postgres
--

ALTER TABLE ONLY reciclando.rol ALTER COLUMN id_rol SET DEFAULT nextval('reciclando.rol_id_rol_seq'::regclass);


--
-- Name: usuario id_usuario; Type: DEFAULT; Schema: reciclando; Owner: postgres
--

ALTER TABLE ONLY reciclando.usuario ALTER COLUMN id_usuario SET DEFAULT nextval('reciclando.usuario_id_usuario_seq'::regclass);


--
-- Data for Name: clasificacion; Type: TABLE DATA; Schema: reciclando; Owner: postgres
--

COPY reciclando.clasificacion (id_clasificacion, descripcion_clasificacion) FROM stdin;
\.


--
-- Data for Name: clasificacion_pregunta; Type: TABLE DATA; Schema: reciclando; Owner: postgres
--

COPY reciclando.clasificacion_pregunta (id_clasificacion, id_pregunta) FROM stdin;
\.


--
-- Data for Name: contenido; Type: TABLE DATA; Schema: reciclando; Owner: postgres
--

COPY reciclando.contenido (id_contenido, id_usuario_contenido, fecha_creacion_contenido, fecha_modificacion_contenido, id_estado_contenido, nombre_contenido, descripcion_contenido, ruta_multimedia_contenido) FROM stdin;
\.


--
-- Data for Name: contenido_clasificacion; Type: TABLE DATA; Schema: reciclando; Owner: postgres
--

COPY reciclando.contenido_clasificacion (id_contenido, id_clasificacion) FROM stdin;
\.


--
-- Data for Name: estados; Type: TABLE DATA; Schema: reciclando; Owner: postgres
--

COPY reciclando.estados (id_estado, descripcion_estado) FROM stdin;
\.


--
-- Data for Name: pregunta; Type: TABLE DATA; Schema: reciclando; Owner: postgres
--

COPY reciclando.pregunta (id_pregunta, descripcion_pregunta, peso_pregunta, id_estado_pregunta) FROM stdin;
\.


--
-- Data for Name: rol; Type: TABLE DATA; Schema: reciclando; Owner: postgres
--

COPY reciclando.rol (id_rol, nombre_rol, descripcion_rol) FROM stdin;
\.


--
-- Data for Name: usuario; Type: TABLE DATA; Schema: reciclando; Owner: postgres
--

COPY reciclando.usuario (id_usuario, nombres_usuario, apellidos_usuario, fecha_nacimiento_usuario, id_estado_usuario, clave_usuario, fecha_modificacion_usuario, fecha_ultimo_ingreso_usuario, fecha_creacion_usuario, puntaje_usuario) FROM stdin;
\.


--
-- Data for Name: usuario_rol; Type: TABLE DATA; Schema: reciclando; Owner: postgres
--

COPY reciclando.usuario_rol (id_rol, id_usuario) FROM stdin;
\.


--
-- Name: clasificacion_id_clasificacion_seq; Type: SEQUENCE SET; Schema: reciclando; Owner: postgres
--

SELECT pg_catalog.setval('reciclando.clasificacion_id_clasificacion_seq', 1, false);


--
-- Name: contenido_id_contenido_seq; Type: SEQUENCE SET; Schema: reciclando; Owner: postgres
--

SELECT pg_catalog.setval('reciclando.contenido_id_contenido_seq', 1, false);


--
-- Name: estados_id_estado_seq; Type: SEQUENCE SET; Schema: reciclando; Owner: postgres
--

SELECT pg_catalog.setval('reciclando.estados_id_estado_seq', 1, false);


--
-- Name: pregunta_id_pregunta_seq; Type: SEQUENCE SET; Schema: reciclando; Owner: postgres
--

SELECT pg_catalog.setval('reciclando.pregunta_id_pregunta_seq', 1, false);


--
-- Name: rol_id_rol_seq; Type: SEQUENCE SET; Schema: reciclando; Owner: postgres
--

SELECT pg_catalog.setval('reciclando.rol_id_rol_seq', 1, false);


--
-- Name: usuario_id_usuario_seq; Type: SEQUENCE SET; Schema: reciclando; Owner: postgres
--

SELECT pg_catalog.setval('reciclando.usuario_id_usuario_seq', 1, false);


--
-- Name: clasificacion clasificacion_pkey; Type: CONSTRAINT; Schema: reciclando; Owner: postgres
--

ALTER TABLE ONLY reciclando.clasificacion
    ADD CONSTRAINT clasificacion_pkey PRIMARY KEY (id_clasificacion);


--
-- Name: contenido contenido_pkey; Type: CONSTRAINT; Schema: reciclando; Owner: postgres
--

ALTER TABLE ONLY reciclando.contenido
    ADD CONSTRAINT contenido_pkey PRIMARY KEY (id_contenido);


--
-- Name: estados estados_pkey; Type: CONSTRAINT; Schema: reciclando; Owner: postgres
--

ALTER TABLE ONLY reciclando.estados
    ADD CONSTRAINT estados_pkey PRIMARY KEY (id_estado);


--
-- Name: pregunta id_pregunta_pk; Type: CONSTRAINT; Schema: reciclando; Owner: postgres
--

ALTER TABLE ONLY reciclando.pregunta
    ADD CONSTRAINT id_pregunta_pk PRIMARY KEY (id_pregunta);


--
-- Name: usuario id_usuario_pk; Type: CONSTRAINT; Schema: reciclando; Owner: postgres
--

ALTER TABLE ONLY reciclando.usuario
    ADD CONSTRAINT id_usuario_pk PRIMARY KEY (id_usuario);


--
-- Name: rol rol_pkey; Type: CONSTRAINT; Schema: reciclando; Owner: postgres
--

ALTER TABLE ONLY reciclando.rol
    ADD CONSTRAINT rol_pkey PRIMARY KEY (id_rol);


--
-- Name: fki_usuario_estado_fk; Type: INDEX; Schema: reciclando; Owner: postgres
--

CREATE INDEX fki_usuario_estado_fk ON reciclando.usuario USING btree (id_estado_usuario);


--
-- Name: contenido estado_contenido_fk; Type: FK CONSTRAINT; Schema: reciclando; Owner: postgres
--

ALTER TABLE ONLY reciclando.contenido
    ADD CONSTRAINT estado_contenido_fk FOREIGN KEY (id_estado_contenido) REFERENCES reciclando.estados(id_estado);


--
-- Name: pregunta estado_pregunta_fk; Type: FK CONSTRAINT; Schema: reciclando; Owner: postgres
--

ALTER TABLE ONLY reciclando.pregunta
    ADD CONSTRAINT estado_pregunta_fk FOREIGN KEY (id_estado_pregunta) REFERENCES reciclando.estados(id_estado);


--
-- Name: contenido_clasificacion id_clasificacion_contenido_fk; Type: FK CONSTRAINT; Schema: reciclando; Owner: postgres
--

ALTER TABLE ONLY reciclando.contenido_clasificacion
    ADD CONSTRAINT id_clasificacion_contenido_fk FOREIGN KEY (id_contenido) REFERENCES reciclando.contenido(id_contenido);


--
-- Name: clasificacion_pregunta id_clasificacion_fk; Type: FK CONSTRAINT; Schema: reciclando; Owner: postgres
--

ALTER TABLE ONLY reciclando.clasificacion_pregunta
    ADD CONSTRAINT id_clasificacion_fk FOREIGN KEY (id_clasificacion) REFERENCES reciclando.clasificacion(id_clasificacion);


--
-- Name: contenido_clasificacion id_contenido_clasificacion_fk; Type: FK CONSTRAINT; Schema: reciclando; Owner: postgres
--

ALTER TABLE ONLY reciclando.contenido_clasificacion
    ADD CONSTRAINT id_contenido_clasificacion_fk FOREIGN KEY (id_clasificacion) REFERENCES reciclando.clasificacion(id_clasificacion);


--
-- Name: clasificacion_pregunta id_pregunta_fk; Type: FK CONSTRAINT; Schema: reciclando; Owner: postgres
--

ALTER TABLE ONLY reciclando.clasificacion_pregunta
    ADD CONSTRAINT id_pregunta_fk FOREIGN KEY (id_pregunta) REFERENCES reciclando.pregunta(id_pregunta);


--
-- Name: usuario_rol id_rol_usuario_fk; Type: FK CONSTRAINT; Schema: reciclando; Owner: postgres
--

ALTER TABLE ONLY reciclando.usuario_rol
    ADD CONSTRAINT id_rol_usuario_fk FOREIGN KEY (id_rol) REFERENCES reciclando.rol(id_rol);


--
-- Name: usuario_rol id_usuario_rol_fk; Type: FK CONSTRAINT; Schema: reciclando; Owner: postgres
--

ALTER TABLE ONLY reciclando.usuario_rol
    ADD CONSTRAINT id_usuario_rol_fk FOREIGN KEY (id_usuario) REFERENCES reciclando.usuario(id_usuario);


--
-- Name: usuario usuario_estado_fk; Type: FK CONSTRAINT; Schema: reciclando; Owner: postgres
--

ALTER TABLE ONLY reciclando.usuario
    ADD CONSTRAINT usuario_estado_fk FOREIGN KEY (id_estado_usuario) REFERENCES reciclando.estados(id_estado);


--
-- PostgreSQL database dump complete
--

