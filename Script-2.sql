create table if not exists alunos (
	id SERIAL primary key,
	name varchar(100) not null,
	data_nascimento date not null,
	email varchar(100) not null,
	telefone varchar(100) not null,
	endereco varchar(100) not null	
);

insert into alunos (name, data_nascimento, email, telefone, endereco)
values ('Ana','2000/02/02', 'ana@ana.com', '519999999', 'rua 2, poa, rs');

create table if not exists cursos (
	id SERIAL primary key,
	nome varchar(100) not null,
	descricao varchar(100) not null,
	carga_horaria integer not null,
	preco decimal(8,2) not null	
);

insert into cursos (nome,descricao, carga_horaria, preco)
values ('phyton', 'liguagem de programacao em phyton', '400', '5000');

create table if not exists professores (
	id SERIAL primary key,
	nome varchar(100) not null,
	especialidade varchar(100) not null,
	telefone varchar(100) not null,
	email varchar(100) not null	
);

insert into professores (nome, especialidade, telefone, email)
values ('João', 'Introdução', '51999999', 'joao@joao.com');

create table if not exists vendas (
	id SERIAL primary key,
	data_venda timestamp NOT NULL DEFAULT now(),
	valor_total decimal(8,2) not null,
	aluno_id integer,
	curso_id integer,
	
	foreign key (aluno_id) references alunos(id)
);

alter table vendas add foreign key (curso_id) references cursos(id);

insert into vendas (valor_total, aluno_id, curso_id) values ('5000', '1', '1');