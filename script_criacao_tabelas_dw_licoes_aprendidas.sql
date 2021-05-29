
CREATE TABLE public.dim_fluido (
                sk_fluido INTEGER NOT NULL,
                nm_fluido VARCHAR(100) NOT NULL,
                CONSTRAINT sk_fluido PRIMARY KEY (sk_fluido)
);


CREATE TABLE public.dim_operacao (
                sk_operacao INTEGER NOT NULL,
                nk_operacao VARCHAR(50) NOT NULL,
                nm_intervencao VARCHAR(100) NOT NULL,
                nm_operacao VARCHAR(100) NOT NULL,
                nm_atividade VARCHAR(200) NOT NULL,
                nm_fase VARCHAR(200) NOT NULL,
                CONSTRAINT sk_operacao PRIMARY KEY (sk_operacao)
);


CREATE TABLE public.dim_autor (
                sk_autor INTEGER NOT NULL,
                nk_autor VARCHAR(10) NOT NULL,
                nm_autor VARCHAR(100) NOT NULL,
                CONSTRAINT sk_autor PRIMARY KEY (sk_autor)
);


CREATE TABLE public.dim_data (
                sk_data INTEGER NOT NULL,
                nk_data DATE NOT NULL,
                ano INTEGER NOT NULL,
                mes INTEGER NOT NULL,
                dia INTEGER NOT NULL,
                CONSTRAINT sk_data PRIMARY KEY (sk_data)
);


CREATE TABLE public.dim_gerencia (
                sk_gerencia INTEGER NOT NULL,
                nm_gerencia VARCHAR(200) NOT NULL,
                CONSTRAINT sk_gerencia PRIMARY KEY (sk_gerencia)
);


CREATE TABLE public.dim_sonda (
                sk_sonda INTEGER NOT NULL,
                tipo_sonda VARCHAR(50) NOT NULL,
                nome_sonda VARCHAR(50) NOT NULL,
                CONSTRAINT sk_sonda PRIMARY KEY (sk_sonda)
);


CREATE TABLE public.dim_localizacao (
                sk_localizacao INTEGER NOT NULL,
                nk_localizacao VARCHAR(50) NOT NULL,
                unidade_operacional VARCHAR(200) NOT NULL,
                campo VARCHAR(200) NOT NULL,
                nm_poco VARCHAR(200) NOT NULL,
                CONSTRAINT sk_localizacao PRIMARY KEY (sk_localizacao)
);


CREATE TABLE public.ft_licao_aprendida (
                sk_fluido INTEGER NOT NULL,
                sk_data INTEGER NOT NULL,
                sk_operacao INTEGER NOT NULL,
                sk_tipo INTEGER NOT NULL,
                sk_localizacao INTEGER NOT NULL,
                sk_gerencia INTEGER NOT NULL,
                sk_sonda INTEGER NOT NULL,
                sk_autor INTEGER NOT NULL,
                aplicacao VARCHAR NOT NULL,
                descricao VARCHAR NOT NULL,
                status VARCHAR NOT NULL,
                avaliacao INTEGER NOT NULL,
                tipo VARCHAR(50) NOT NULL
);


ALTER TABLE public.ft_licao_aprendida ADD CONSTRAINT dim_fluido_ft_licao_aprendida_fk
FOREIGN KEY (sk_fluido)
REFERENCES public.dim_fluido (sk_fluido)
ON DELETE NO ACTION
ON UPDATE NO ACTION
NOT DEFERRABLE;

ALTER TABLE public.ft_licao_aprendida ADD CONSTRAINT dim_operacao_ft_licao_aprendida_fk
FOREIGN KEY (sk_operacao)
REFERENCES public.dim_operacao (sk_operacao)
ON DELETE NO ACTION
ON UPDATE NO ACTION
NOT DEFERRABLE;

ALTER TABLE public.ft_licao_aprendida ADD CONSTRAINT dim_autor_ft_licao_aprendida_fk
FOREIGN KEY (sk_autor)
REFERENCES public.dim_autor (sk_autor)
ON DELETE NO ACTION
ON UPDATE NO ACTION
NOT DEFERRABLE;

ALTER TABLE public.ft_licao_aprendida ADD CONSTRAINT dim_data_ft_licao_aprendida_fk
FOREIGN KEY (sk_data)
REFERENCES public.dim_data (sk_data)
ON DELETE NO ACTION
ON UPDATE NO ACTION
NOT DEFERRABLE;

ALTER TABLE public.ft_licao_aprendida ADD CONSTRAINT dim_gerencia_ft_licao_aprendida_fk
FOREIGN KEY (sk_gerencia)
REFERENCES public.dim_gerencia (sk_gerencia)
ON DELETE NO ACTION
ON UPDATE NO ACTION
NOT DEFERRABLE;

ALTER TABLE public.ft_licao_aprendida ADD CONSTRAINT dim_sonda_ft_licao_aprendida_fk
FOREIGN KEY (sk_sonda)
REFERENCES public.dim_sonda (sk_sonda)
ON DELETE NO ACTION
ON UPDATE NO ACTION
NOT DEFERRABLE;

ALTER TABLE public.ft_licao_aprendida ADD CONSTRAINT dim_localizacao_ft_licao_aprendida_fk
FOREIGN KEY (sk_localizacao)
REFERENCES public.dim_localizacao (sk_localizacao)
ON DELETE NO ACTION
ON UPDATE NO ACTION
NOT DEFERRABLE;
