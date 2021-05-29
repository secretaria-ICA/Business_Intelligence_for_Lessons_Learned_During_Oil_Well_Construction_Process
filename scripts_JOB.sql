-- Step                : Combination lookup/update
-- Database Connection : dw_licoes_aprendidas
-- SQL                  : CREATE TABLE dim_fluido

(

  sk_fluido BIGSERIAL

, nm_fluido TEXT

, version TIMESTAMP

)

;CREATE UNIQUE INDEX idx_dim_fluido_pk ON dim_fluido(sk_fluido)

;



CREATE INDEX idx_dim_fluido_lookup ON dim_fluido(nm_fluido)

;





-------------------------------------------------------------------------------------------

-- Step                : Combination lookup/update
-- Database Connection : dw_licoes_aprendidas
-- SQL                  : CREATE TABLE dim_localizacao

(

  sk_localizacao BIGSERIAL

, unidade_operacional VARCHAR(200)

, campo VARCHAR(200)

, nm_poco VARCHAR(200)

, nk_localizacao VARCHAR(50)

, version TIMESTAMP

)

;CREATE UNIQUE INDEX idx_dim_localizacao_pk ON dim_localizacao(sk_localizacao)

;



CREATE INDEX idx_dim_localizacao_lookup ON dim_localizacao(unidade_operacional, campo, nm_poco, nk_localizacao)

;





-------------------------------------------------------------------------------------------

-- Step                : Combination lookup/update
-- Database Connection : dw_licoes_aprendidas
-- SQL                  : CREATE TABLE dim_gerencia

(

  sk_gerencia BIGSERIAL

, nm_gerencia VARCHAR(200)

, version TIMESTAMP

)

;CREATE UNIQUE INDEX idx_dim_gerencia_pk ON dim_gerencia(sk_gerencia)

;



CREATE INDEX idx_dim_gerencia_lookup ON dim_gerencia(nm_gerencia)

;





-------------------------------------------------------------------------------------------

-- Step                : Combination lookup/update
-- Database Connection : dw_licoes_aprendidas
-- SQL                  : CREATE TABLE dim_sonda

(

  sk_sonda BIGSERIAL

, nome_sonda VARCHAR(200)

, tipo_sonda VARCHAR(28)

, version TIMESTAMP

)

;CREATE UNIQUE INDEX idx_dim_sonda_pk ON dim_sonda(sk_sonda)

;



CREATE INDEX idx_dim_sonda_lookup ON dim_sonda(nome_sonda, tipo_sonda)

;





-------------------------------------------------------------------------------------------

-- Step                : Combination lookup/update
-- Database Connection : dw_licoes_aprendidas
-- SQL                  : CREATE TABLE dim_autor

(

  sk_autor BIGSERIAL

, nk_autor VARCHAR(10)

, nm_autor VARCHAR(200)

, version TIMESTAMP

)

;CREATE UNIQUE INDEX idx_dim_autor_pk ON dim_autor(sk_autor)

;



CREATE INDEX idx_dim_autor_lookup ON dim_autor(nk_autor, nm_autor)

;





-------------------------------------------------------------------------------------------

-- Step                : Combination lookup/update
-- Database Connection : dw_licoes_aprendidas
-- SQL                  : CREATE TABLE dim_operacao

(

  sk_operacao BIGSERIAL

, nm_intervencao VARCHAR(200)

, nm_atividade VARCHAR(200)

, nm_operacao VARCHAR(200)

, nm_fase VARCHAR(200)

, nk_operacao VARCHAR(50)

, version TIMESTAMP

)

;CREATE UNIQUE INDEX idx_dim_operacao_pk ON dim_operacao(sk_operacao)

;



CREATE INDEX idx_dim_operacao_lookup ON dim_operacao(nm_intervencao, nm_atividade, nm_operacao, nm_fase, nk_operacao)

;





-------------------------------------------------------------------------------------------

-- Step                : Combination lookup/update
-- Database Connection : dw_licoes_aprendidas
-- SQL                  : CREATE TABLE dim_data

(

  sk_data BIGSERIAL

, nk_data TIMESTAMP

, version TIMESTAMP

)

;CREATE UNIQUE INDEX idx_dim_data_pk ON dim_data(sk_data)

;



CREATE INDEX idx_dim_data_lookup ON dim_data(nk_data)

;





-------------------------------------------------------------------------------------------

-- Step                : Combination lookup/update
-- Database Connection : dw_licoes_aprendidas
-- SQL                  : CREATE TABLE "ft_licao_aprendida "

(

  tech BIGSERIAL

, tipo VARCHAR(200)

, aplicacao VARCHAR(200)

, descricao TEXT

, status VARCHAR(200)

, avaliacao INTEGER

, sk_data BIGINT

, sk_operacao BIGINT

, sk_autor BIGINT

, sk_sonda BIGINT

, sk_gerencia BIGINT

, sk_localizacao BIGINT

, sk_fluido BIGINT

, version TIMESTAMP

)

;CREATE UNIQUE INDEX "idx_ft_licao_aprendida _pk" ON "ft_licao_aprendida "(tech)

;



CREATE INDEX "idx_ft_licao_aprendida _lookup" ON "ft_licao_aprendida "(tipo, aplicacao, descricao, status, avaliacao, sk_data, sk_operacao, sk_autor, sk_sonda, sk_gerencia, sk_localizacao, sk_fluido)

;



