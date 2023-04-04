create database if not exists db_alertrem;
use db_alertrem;

create table tb_usuarios (
	codigo int not null auto_increment,
	nome varchar(50) not null,
    salt varchar(60) not null,
	senha varchar(256) not null,
	email varchar(100) not null,
	cpf char(14) not null,
    foto_perfil blob,
	data_cadastro date not null,
	primary key(codigo) 
);

insert into tb_usuarios values
('Bruno José', '$2b$10$0SnT75mO/YByx.PxJuW8ku', '$2b$10$0SnT75mO/YByx.PxJuW8kum1cnxMHrc2FE8JA9/v1D9R/19ds3ebq', 'bruno.jose@mail.com', '111.111.111-11'),
('João Lameiro', '$2b$10$O5f3QyjNR6ifod48Ih4Fr.', '$2b$10$O5f3QyjNR6ifod48Ih4Fr.5/z0FoMEvHNMPWjD6rwrnFtm1Q9QDLO', 'joao.lameiro@mail.com', '222.222.222-22'),
('Leonardo Silva', '$2b$10$w9U/x7XVydy4RzVn1b2Zt.', '$2b$10$w9U/x7XVydy4RzVn1b2Zt.dAOumB5dyvMDB.4kPCqaop4EwIMQeVC', 'leonardo.silva@mail.com', '333.333.333-33'),
('Gustavo Silva', '$2b$10$xFD0AUyAerdD3DP.F4cSOu', '$2b$10$xFD0AUyAerdD3DP.F4cSOuD0ntPeW05fIEC/GyLhCqFxMF6dZx54a', 'gustavo.silva@mail.com', '444.444.444-44'),
('Gabriel Silva', '$2b$10$H6RrhnaGlNYxHTSeDecR9O', '$2b$10$H6RrhnaGlNYxHTSeDecR9O9mPsGZqOTC8ZCgdghRnoXtlVOEoU39i', 'gabriel.silva@mail.com', '555.555.555-55'),
('Nathan Santos', '$2b$10$I5x1SWVst6OIFrRo.0vRN.', '$2b$10$I5x1SWVst6OIFrRo.0vRN.hj5NeZWFUiveK8j9mVPPqdNVIJ8saQS', 'nathan.santos@mail.com', '666.666.666-66');

create table tb_estacoes (
    codigo int not null auto_increment,
    nome varchar(50) not null,
    localizacao varchar(150) not null,
    banheiro varchar(50), -- Cada característica pode ter entre 4 valores (null, 'funcionando', 'em manutenção', 'quebrado')
    elevador varchar(50),
    terminal_interurbano varchar(50),
    terminal_urbano varchar(50),
    transferencia_interna varchar(50),
    bicicletario varchar(50),
    banheiro_acessivel varchar(50),
    estacao_acessivel varchar(50),
    rampa varchar(50),
    transposicao_plataformas varchar(50),
    escadas_rolantes varchar(50),
    acesso_elevador varchar(50),
    lanchonete varchar(50),
    emporio varchar(50),
    caixa_eletronico varchar(50),
    calcados varchar(50),
    telefone_p_surdos varchar(50),
    piso_tatil varchar(50),
    transferencia_gratuita varchar(50),
    acessorios varchar(50),
    farmacia varchar(50),
    rota_acessivel varchar(50),
    achados_perdidos varchar(50),

    primary key (codigo)
);

insert into tb_estacoes (nome, localizacao, banheiro, banheiro_acessivel, elevador, terminal_interurbano, terminal_urbano, transferencia_interna, bicicletario, estacao_acessivel, rampa, transposicao_plataformas, escadas_rolantes, acesso_elevador, lanchonete, emporio, caixa_eletronico, calcados) values
('osasco', 'Praça Antonio Menck, s/nº (Centro)/ Rua Erasmo Braga, s/nº (Bonfim) – Osasco 06093-090', 'funcionando', 'funcionando', 'funcionando', 'funcionando', 'funcionando', 'funcionando', 'funcionando', 'funcionando', 'funcionando', 'funcionando', 'funcionando', 'funcionando', 'funcionando', 'funcionando', 'funcionando', 'funcionando');

insert into tb_estacoes (nome, localizacao, banheiro, banheiro_acessivel, elevador, transferencia_interna, estacao_acessivel, rampa, transposicao_plataformas, telefone_p_surdos, acesso_elevador) values
('presidente altino', 'Rua Abílio Mendes, 08 - Presidente Altino - Osasco', 'funcionando', 'funcionando', 'funcionando', 'funcionando', 'funcionando', 'funcionando', 'funcionando', 'funcionando', 'funcionando');

insert into tb_estacoes (nome, localizacao, banheiro, banheiro_acessivel, bicicletario, piso_tatil, estacao_acessivel, transposicao_plataformas, telefone_p_surdos, acesso_elevador) values
('ceasa', 'Avenida das Nações Unidas, 1.390 - Vila Leopoldina - São Paulo 05311-000 ', 'funcionando', 'funcionando', 'funcionando', 'funcionando', 'funcionando', 'funcionando', 'funcionando', 'funcionando');

insert into tb_estacoes (nome, localizacao, banheiro, banheiro_acessivel, bicicletario, piso_tatil, estacao_acessivel, transposicao_plataformas, telefone_p_surdos, acesso_elevador, lanchonete) values
('vila lobos jaguare', 'Avenida das Nações Unidas, 2.100 - Jaguaré - São Paulo 05477-000 ', 'funcionando', 'funcionando', 'funcionando', 'funcionando', 'funcionando', 'funcionando', 'funcionando', 'funcionando', 'funcionando');

insert into tb_estacoes (nome, localizacao, banheiro, banheiro_acessivel, bicicletario, piso_tatil, estacao_acessivel, transposicao_plataformas, acesso_elevador, lanchonete) values
('cidade universitaria', 'Avenida das Nações Unidas, 6.202 - Jardim Universidade Pinheiros - São Paulo 05477-000 ', 'funcionando', 'funcionando', 'funcionando', 'funcionando', 'funcionando', 'funcionando', 'funcionando', 'funcionando');

insert into tb_estacoes (nome, localizacao, banheiro, banheiro_acessivel, terminal_interurbano, terminal_urbano, transferencia_gratuita, bicicletario, piso_tatil, estacao_acessivel, rampa, transposicao_plataformas, escadas_rolantes, acesso_elevador, lanchonete, emporio, acessorios, caixa_eletronico, farmacia) values
('pinheiros', 'Rua Capri, 145 - Pinheiros - São Paulo 05477-000 ', 'funcionando', 'funcionando', 'funcionando', 'funcionando', 'funcionando', 'funcionando', 'funcionando', 'funcionando', 'funcionando', 'funcionando', 'funcionando', 'funcionando', 'funcionando', 'funcionando', 'funcionando', 'funcionando', 'funcionando');

insert into tb_estacoes (nome, localizacao, banheiro, banheiro_acessivel, piso_tatil, estacao_acessivel, transposicao_plataformas, telefone_p_surdos, escadas_rolantes, acesso_elevador) values
('hebraica reboucas', 'Rua Ofélia, 255 - Pinheiros - São Paulo 05423-110', 'funcionando', 'funcionando', 'funcionando', 'funcionando', 'funcionando', 'funcionando', 'funcionando', 'funcionando');

insert into tb_estacoes (nome, localizacao, banheiro, banheiro_acessivel, piso_tatil, estacao_acessivel, rampa, transposicao_plataformas, escadas_rolantes) values
('cidade jardim', 'Rua Prof. Artur Ramos, 787 (Jardim Paulistano) / Rua Hungria, s/nº (Jardim Europa) – São Paulo 05477-000', 'funcionando', 'funcionando', 'funcionando', 'funcionando', 'funcionando', 'funcionando', 'funcionando');

insert into tb_estacoes (nome, localizacao, banheiro, banheiro_acessivel, bicicletario, piso_tatil, estacao_acessivel, rampa, transposicao_plataformas, escadas_rolantes, acesso_elevador) values
('vila olimpia', 'Avenida das Nações Unidas, 10.900 (Brooklin Paulista) / Rua Beira Rio, s/nº (Vila Olímpia) – São Paulo 04578-000', 'funcionando', 'funcionando', 'funcionando', 'funcionando', 'funcionando', 'funcionando', 'funcionando', 'funcionando', 'funcionando');

insert into tb_estacoes (nome, localizacao, banheiro, banheiro_acessivel, terminal_urbano, transferencia_interna, piso_tatil, estacao_acessivel, rampa, transposicao_plataformas, escadas_rolantes, acesso_elevador) values
('berrini', 'Berrini Rua Guilherme Barbosa de Melo, nº 117 / Rua Joel Carlos Borges, 179 – Cidade Monções – São Paulo 04578-000', 'funcionando', 'funcionando', 'funcionando', 'funcionando', 'funcionando', 'funcionando', 'funcionando', 'funcionando', 'funcionando', 'funcionando');

insert into tb_estacoes (nome, localizacao, banheiro, banheiro_acessivel, transferencia_gratuita, piso_tatil, estacao_acessivel, transposicao_plataformas, escadas_rolantes, acesso_elevador) values
('morumbi', 'Avenida das Nações Unidas, 14.171 - Vila Gertrudes - São Paulo 04578-000', 'funcionando', 'funcionando', 'funcionando', 'funcionando', 'funcionando', 'funcionando', 'funcionando', 'funcionando');

insert into tb_estacoes (nome, localizacao, banheiro, banheiro_acessivel, piso_tatil, estacao_acessivel, transposicao_plataformas, escadas_rolantes, acesso_elevador) values
('granja julieta', 'Rua Alexandre Dumas, 4.403 - Chácara Santo Antonio - São Paulo 04717-004 ', 'funcionando', 'funcionando', 'funcionando', 'funcionando', 'funcionando', 'funcionando', 'funcionando');

insert into tb_estacoes (nome, localizacao, banheiro, banheiro_acessivel, elevador, bicicletario, piso_tatil, rampa, escadas_rolantes, rota_acessivel, acesso_elevador) values
('joao dias', 'Avenida das Nações Unidas, 18667 - Santo Amaro - 04730-90', 'funcionando', 'funcionando', 'funcionando', 'funcionando', 'funcionando', 'funcionando', 'funcionando', 'funcionando', 'funcionando');

insert into tb_estacoes (nome, localizacao, banheiro, banheiro_acessivel, transferencia_gratuita, piso_tatil, estacao_acessivel, rampa, transposicao_plataformas, escadas_rolantes, acesso_elevador, farmacia) values
('santo amaro', 'Avenida das Nações Unidas, s/nº - Jardim Promissão - São Paulo 04795-100 ', 'funcionando', 'funcionando', 'funcionando', 'funcionando', 'funcionando', 'funcionando', 'funcionando', 'funcionando', 'funcionando', 'funcionando');

insert into tb_estacoes (nome, localizacao, banheiro, banheiro_acessivel, piso_tatil, estacao_acessivel, rampa, transposicao_plataformas, escadas_rolantes, acesso_elevador, lanchonete) values
('socorro', 'Av. das Nações Unidas, s/nº (Jurubatuba)/ Rua Florenville s/nº (Santo Amaro) – São Paulo 04696-010', 'funcionando', 'funcionando', 'funcionando', 'funcionando', 'funcionando', 'funcionando', 'funcionando', 'funcionando', 'funcionando');

insert into tb_estacoes (nome, localizacao, banheiro, banheiro_acessivel, terminal_urbano, bicicletario, estacao_acessivel, rampa, transposicao_plataformas, acesso_elevador) values
('jurubatuba', 'Av. Octales M. Ferreira, 391 - Jurubatuba - São Paulo 04696-010', 'funcionando', 'funcionando', 'funcionando', 'funcionando', 'funcionando', 'funcionando', 'funcionando', 'funcionando');

insert into tb_estacoes (nome, localizacao, banheiro, banheiro_acessivel, bicicletario, piso_tatil, estacao_acessivel, rampa, transposicao_plataformas, escadas_rolantes, acesso_elevador) values
('autodromo', 'Rua Plínio Schmidt, nº 307 - Jardim Marcel -São Paulo 4815130 ', 'funcionando', 'funcionando', 'funcionando', 'funcionando', 'funcionando', 'funcionando', 'funcionando', 'funcionando', 'funcionando');

insert into tb_estacoes (nome, localizacao, banheiro, banheiro_acessivel, bicicletario, piso_tatil, estacao_acessivel, transposicao_plataformas, escadas_rolantes, acesso_elevador, emporio) values
('primavera interlagos', 'Rua Jequirituba, 83 (Jardim Colonial)/ Rua Alexandre Gandini, 71( Parque Santana) - São Paulo 04822-000 ', 'funcionando', 'funcionando', 'funcionando', 'funcionando', 'funcionando', 'funcionando', 'funcionando', 'funcionando', 'funcionando');

insert into tb_estacoes (nome, localizacao, banheiro, banheiro_acessivel, terminal_urbano, bicicletario, piso_tatil, estacao_acessivel, transposicao_plataformas, escadas_rolantes, acesso_elevador, lanchonete, emporio, acessorios, farmacia, calcados) values
('grajau', 'Rua Giovanni Bononcini, 77 - Parque Brasil - São Paulo 04822-000 ', 'funcionando', 'funcionando', 'funcionando', 'funcionando', 'funcionando', 'funcionando', 'funcionando', 'funcionando', 'funcionando', 'funcionando', 'funcionando', 'funcionando', 'funcionando', 'funcionando');

insert into tb_estacoes (nome, localizacao, banheiro, banheiro_acessivel, elevador, achados_perdidos, bicicletario, piso_tatil, rampa, escadas_rolantes, rota_acessivel, acesso_elevador) values
('mendes vila natal', 'Estrada dos Mendes, s/n - Jardim Icarai – Grajaú - 04860-140', 'funcionando', 'funcionando', 'funcionando', 'funcionando', 'funcionando', 'funcionando', 'funcionando', 'funcionando', 'funcionando', 'funcionando');

insert into tb_estacoes (nome, localizacao) values
('varginha', 'Sem endereço ainda');


create table tb_reclamacoes (
	codigo int not null auto_increment,
	data_hora datetime not null default now(),
	tipo int not null, -- 1 ao 3
	descricao varchar(500),
	motivo varchar(100),
    numero_carro int,
	cod_usu int,
	cod_estacao int,
    movimentacao int,
	foreign key(cod_usu)references tb_usuarios(codigo),
	foreign key(cod_estacao)references tb_estacoes(codigo),
	primary key(codigo)
);

create table tb_status (
	codigo int not null auto_increment,
	descricao varchar(100) not null,
	data_hora datetime not null default now(),
	primary key(codigo)
);

create table tb_avaliacoes (
	codigo int not null auto_increment,
	avaliacao int not null,
	cod_usu int not null,
	foreign key(cod_usu)references tb_usuarios(codigo),
	primary key(codigo)
);

create table tb_comentarios (
    codigo int not null auto_increment,
    data_hora datetime not null default now(),
    comentario varchar(500) not null,
    avaliacao int not null default 0,
    cod_usuario int not null,
    primary key (codigo),
    foreign key (cod_usuario) references tb_usuarios(codigo)
);

create table tb_funcionarios (
    codigo int not null auto_increment,
    nome varchar(50) not null,
    usuario varchar(50) not null,
    salt varchar(60) not null,
	senha varchar(256) not null,
    data_hora datetime not null default now(),
    primary key(codigo)
);

create table tb_denuncias (
    codigo int not null auto_increment,
    cod_reclamacao int not null,
    cod_usuario int not null,
    foreign key (cod_reclamacao) references tb_reclamacoes(codigo),
    foreign key (cod_usuario) references tb_usuarios(codigo),
    primary key (codigo)
)