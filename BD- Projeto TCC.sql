CREATE TABLE Tabl_servico (
  cod_os INTEGER UNSIGNED NOT NULL AUTO_INCREMENT,
  nome_serv VARCHAR(30) NULL,
  vlr_normal_ser FLOAT(10) NULL,
  vlr_contrato_serv FLOAT(10) NULL,
  anotacoes_serv VARCHAR(30) NULL,
  PRIMARY KEY(cod_os)
);

CREATE TABLE Tab_Clientes (
  cod_cli INTEGER UNSIGNED NOT NULL AUTO_INCREMENT,
  nome_cli VARCHAR(30) NULL,
  end_cli VARCHAR(30) NULL,
  fone_cli INT(11) NULL,
  cel_cli INT(11) NULL,
  bairro_cli VARCHAR(30) NULL,
  cep_cli INT(8) NULL,
  cidade_cli VARCHAR(30) NULL,
  estado_cli VARCHAR(30) NULL,
  cpf_cli INTEGER(11) UNSIGNED NULL,
  rg_cli INTEGER(8) UNSIGNED NULL,
  email_cli VARCHAR(25) NULL,
  dt_nasc_cli DATE NULL,
  dt_cad_cli DATE NULL,
  PRIMARY KEY(cod_cli)
);

CREATE TABLE Tab_Funcionarios (
  id INTEGER UNSIGNED NOT NULL AUTO_INCREMENT,
  nome_func VARCHAR(30) NULL,
  end_func VARCHAR(30) NULL,
  fone_func INT(11) NULL,
  cel_func INT(11) NULL,
  bairro_func VARCHAR(30) NULL,
  cep_func INT(8) NULL,
  cidade_func VARCHAR(30) NULL,
  estado_func VARCHAR(30) NULL,
  cfp_func INT(11) NULL,
  rg_func INT(8) NULL,
  email_func VARCHAR(25) NULL,
  dt_nasc_func DATE NULL,
  sal_func FLOAT NULL,
  dt_cad_func DATE NULL,
  PRIMARY KEY(id)
);

CREATE TABLE Tab_Funcionarios_has_Tab_Login (
  Tab_Funcionarios_id INTEGER UNSIGNED NOT NULL,
  Tab_Login_id INTEGER UNSIGNED NOT NULL,
  PRIMARY KEY(Tab_Funcionarios_id, Tab_Login_id),
  INDEX Tab_Funcionarios_has_Tab_Login_FKIndex1(Tab_Funcionarios_id),
  INDEX Tab_Funcionarios_has_Tab_Login_FKIndex2(Tab_Login_id)
);

CREATE TABLE Tab_Login (
  id INTEGER UNSIGNED NOT NULL AUTO_INCREMENT,
  usuario_login VARCHAR(10) NULL,
  senha_login VARCHAR(10) NULL,
  ger_func_login BOOL NULL,
  PRIMARY KEY(id)
);

CREATE TABLE Tab_ordem_servico (
  cod_os INTEGER UNSIGNED NOT NULL AUTO_INCREMENT,
  Tab_Funcionarios_id INTEGER UNSIGNED NOT NULL,
  Tab_Clientes_cod_cli INTEGER UNSIGNED NOT NULL,
  nome_cli_os VARCHAR(30) NULL,
  descricao_os VARCHAR(100) NULL,
  solicitante_os VARCHAR(30) NULL,
  fone_soli_os INT(11) NULL,
  defeito_os VARCHAR(100) NULL,
  reparo_os VARCHAR(100) NULL,
  dt_cad_os DATE NULL,
  de_entrega_os DATE NULL,
  situacao_os VARCHAR(10) NULL,
  vlr_prod_os FLOAT(10) NULL,
  vlr_servicos_os FLOAT(10) NULL,
  vlr_total_os FLOAT(10) NULL,
  cod_prod_os INT NULL,
  PRIMARY KEY(cod_os),
  INDEX Tab_ordem_servico_FKIndex1(Tab_Clientes_cod_cli),
  INDEX Tab_ordem_servico_FKIndex4(Tab_Funcionarios_id)
);

CREATE TABLE Tab_prod (
  cod_prd INTEGER UNSIGNED NOT NULL AUTO_INCREMENT,
  descricao_prd VARCHAR(50) NULL,
  marca_prd VARCHAR(30) NULL,
  fabricante_prd VARCHAR(30) NULL,
  qtde_min_prd NUMERIC(11) NULL,
  custo_prd FLOAT(10) NULL,
  vlr_varejo_prd FLOAT(8) NULL,
  vlr_promocao_prd FLOAT(10) NULL,
  anotacoes_prd VARCHAR(30) NULL,
  PRIMARY KEY(cod_prd)
);


