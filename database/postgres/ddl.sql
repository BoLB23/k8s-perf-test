-- Table: public.pod-test

-- DROP TABLE public."pod-test";

CREATE TABLE public."pod-test"
(
    id integer NOT NULL DEFAULT nextval('"pod-test_id_seq"'::regclass),
    job_name character varying COLLATE pg_catalog."default" NOT NULL,
    pod_name character varying COLLATE pg_catalog."default" NOT NULL,
    initialized date,
    scheduled date,
    ready date,
    containerready date,
    CONSTRAINT "pod-test_pkey" PRIMARY KEY (id)
)
WITH (
    OIDS = FALSE
)
TABLESPACE pg_default;

ALTER TABLE public."pod-test"
    OWNER to perftest;
