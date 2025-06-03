CREATE TABLE tb_regiao(
	id SERIAL PRIMARY KEY,
	nome VARCHAR(30) NOT NULL,
	localidade_s FLOAT NOT NULL,
	localidade_w FLOAT NOT NULL,
	descricao VARCHAR(50)
);

CREATE TABLE tb_vinicola(
	id SERIAL PRIMARY KEY,
	nome VARCHAR(30) NOT NULL,
	descricao TEXT,
	fone VARCHAR(14),
	email VARCHAR(20) UNIQUE NOT NULL,
	regiao_id INT,
	FOREIGN KEY(regiao_id) REFERENCES tb_regiao(id) 
);

CREATE TABLE tb_tipo_vinho(
	id SERIAL PRIMARY KEY,
	nome VARCHAR(30) NOT NULL
);

CREATE TABLE tb_vinho(
	id SERIAL PRIMARY KEY,
	nome VARCHAR(30) NOT NULL,
	tipo_id INT,
	preco FLOAT NOT NULL,
	vinicola_id INT,
	FOREIGN KEY(tipo_id) REFERENCES tb_tipo_vinho(id),
	FOREIGN KEY(vinicola_id) REFERENCES tb_vinicola(id)	
); 

INSERT INTO tb_regiao(nome, localidade_s, localidade_w, descricao) VALUES ('Vale Central', 33.8088, 70.7644,'Chile');
INSERT INTO tb_regiao(nome, localidade_s, localidade_w, descricao) VALUES ('Serra Gaúcha', 29.3746, 50.8764, 'Sul do Brasil');

INSERT INTO tb_vinicola(nome, descricao, fone, email, regiao_id)
	VALUES('Santa Rita','localizada no valle del maipo e tem mais de 100 anos de história',NULL,'santa@gmail.com',1);
INSERT INTO tb_vinicola(nome, descricao, fone, email, regiao_id) 
	VALUES('Santa Carolina',NULL,'3394-4422','carolina@gmail.com',1);
INSERT INTO tb_vinicola(nome, descricao, fone, email, regiao_id) 
	VALUES('Garibaldi','Vinícola situada na serra gaúcha','9822-3344','garibaldi@gmail.com',2);

INSERT INTO tb_tipo_vinho(nome) VALUES('Tinto');
INSERT INTO tb_tipo_vinho(nome) VALUES('Branco');
INSERT INTO tb_tipo_vinho(nome) VALUES('Rose');
INSERT INTO tb_tipo_vinho(nome) VALUES('Bordeuax');

INSERT INTO tb_vinho(nome, tipo_id, preco, vinicola_id) VALUES('Amanda',1,100.00,1);
INSERT INTO tb_vinho(nome, tipo_id, preco, vinicola_id) VALUES('Belinha',2,200.00,1);
INSERT INTO tb_vinho(nome, tipo_id, preco, vinicola_id) VALUES('Camila',4,65.00,2);
INSERT INTO tb_vinho(nome, tipo_id, preco, vinicola_id) VALUES('Daniela',3,89.00,2);
INSERT INTO tb_vinho(nome, tipo_id, preco, vinicola_id) VALUES('Eduarda',1,55.00,3);
INSERT INTO tb_vinho(nome, tipo_id, preco, vinicola_id) VALUES('Fernanda',2,70.00,3);




