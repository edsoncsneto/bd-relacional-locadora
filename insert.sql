INSERT INTO veiculo(placa, cor, marca, categoria, chassi, modelo) VALUES
  ('ABC1234', 'Vermelho', 'Toyota', 'Sedan', '1HGCM82633A123456', 'Corolla'),
  ('DEF8838', 'Prata', 'Reanult', 'Hatckback', '1XLMWO2633A123456', 'Renault'),
  ('ZKV0923', 'Branco', 'Chevrolet', 'Sedan', '6S3XCGBNJKA123456', 'Cobalt'),
  ('BLS9105', 'Vermelho', 'Chevrolet', 'Sedan', '1HGCSACPLO5203456', 'Cruze'),
  ('POL6565', 'Verde', 'Chevrolet', 'Sedan', '1HXLOPS425CV23456', 'Onix'),
  ('ERT0923', 'Vermelho', 'Toyota', 'SUV', '1HGCM82BNVMC741SD', 'Corolla Cross'),
  ('PWP8493', 'Marrom', 'BMW', 'SUV', '298DJMLSKX852SLPO', 'X1'),
  ('KIZ7492', 'Azul', 'BMW', 'SUV', '9DJCML98S0PZGFHDJ', 'X2'),
  ('CVB4560', 'Preto', 'BMW', 'SUV', '5632ASDFCB5610FRG', 'X5'),
  ('XCV6437', 'Branco', 'BMW', 'SUV', 'LPOKXNMFU26390847', 'X6');

INSERT INTO seguro (apolice, valor, data_inicio, data_final, tipo_cobertura, historico_sinistro, franquia, placa) VALUES
  ('APL001', 1200.00, '2023-01-01', '2024-12-31', 'Cobertura básica', 'Nenhum sinistro', 'Bradesco Seguros', 'ABC1234'),
  ('APL002', 950.00, '2023-02-15', '2024-11-30', 'Cobertura básica', 'Sinistro leve em 2022', 'Bradesco Seguros', 'DEF8838'),
  ('APL003', 800.00, '2023-03-10', '2024-10-15', 'Cobertura básica', 'Dois sinistros anteriores', 'Bradesco Seguros', 'ZKV0923'),
  ('APL004', 1500.00, '2023-04-20', '2024-09-05', 'Cobertura básica', 'Nenhum sinistro', 'Nubank Seguros', 'BLS9105'),
  ('APL005', 1100.00, '2023-05-05', '2024-08-20', 'Cobertura compreensiva', 'Sinistro médio em 2019', 'Nubank Seguros', 'POL6565'),
  ('APL006', 1300.00, '2023-06-15', '2024-07-25', 'Cobertura compreensiva', 'Nenhum sinistro', 'Nubank Seguros', 'ERT0923'),
  ('APL007', 1000.00, '2023-07-01', '2024-07-31', 'Cobertura compreensiva', 'Nenhum sinistro', 'Autovel Seguros', 'PWP8493'),
  ('APL008', 900.00, '2023-08-10', '2024-08-30', 'Cobertura básica', 'Sinistro leve em 2022', 'Autovel Seguros', 'KIZ7492'),
  ('APL009', 1400.00, '2023-09-15', '2024-09-25', 'Cobertura compreensiva', 'Dois sinistros anteriore', 'Autovel Seguros', 'CVB4560'),
  ('APL010', 1200.00, '2023-10-01', '2024-10-10', 'Cobertura compreensiva', 'Sinistro médio em 2021', 'Autovel Seguros', 'XCV6437');
  
INSERT INTO manutencao (tipo_manutencao, data_manutencao, ordem_de_servico, placa) VALUES
  ('Troca de Óleo', '2023-01-10', 'OS001', 'ABC1234'),
  ('Reparo no Motor', '2023-02-22', 'OS002', 'DEF8838'),
  ('Substituição de Pneus', '2023-03-15', 'OS003', 'ZKV0923'),
  ('Manutenção Preventiva', '2023-04-05', 'OS004', 'BLS9105'),
  ('Reparo na Transmissão', '2023-05-20', 'OS005', 'POL6565'),
  ('Alinhamento e Balanceamento', '2023-06-30', 'OS006', 'ERT0923'),
  ('Troca de Filtros', '2023-07-12', 'OS007', 'PWP8493'),
  ('Reparo no Sistema Elétrico', '2023-08-25', 'OS008', 'KIZ7492'),
  ('Revisão Geral', '2023-09-10', 'OS009', 'CVB4560'),
  ('Substituição de Amortecedores', '2023-10-03', 'OS010', 'XCV6437');
  
INSERT INTO funcionario (nome, cpf, supervisor) VALUES
  ('Amanda Silva', '11111111111', NULL),
  ('Bruno Oliveira', '22222222222', 1),
  ('Cristina Santos', '33333333333', 1),
  ('Diego Pereira', '44444444444', 1),
  ('Eduardo Rocha', '55555555555', NULL),
  ('Fernanda Souza', '66666666666', 5),
  ('Gabriel Costa', '77777777777', 5),
  ('Heloísa Lima', '88888888888', 5),
  ('Igor Santos', '99999999999', NULL),
  ('Juliana Oliveira', '12345678909', 9);
  
INSERT INTO cliente (bairro, numero, logradouro, cidade, uf, cep) VALUES
  ('Centro', 123, 'Rua Principal', 'Cidade A', 'SP', '01020304'),
  ('Bairro A', 456, 'Avenida Secundária', 'Cidade B', 'RJ', '11223344'),
  ('Bairro B', 789, 'Travessa da Esquina', 'Cidade C', 'MG', '22334455'),
  ('Vila C', 101, 'Alameda dos Pinheiros', 'Cidade A', 'SP', '33445566'),
  ('Vila D', 202, 'Rua dos Girassóis', 'Cidade B', 'RJ', '44556677'),
  ('Centro', 303, 'Avenida Principal', 'Cidade C', 'MG', '55667788'),
  ('Bairro C', 404, 'Rua das Violetas', 'Cidade A', 'SP', '66778899'),
  ('Bairro A', 505, 'Alameda dos Ipês', 'Cidade B', 'RJ', '77889900'),
  ('Vila E', 606, 'Travessa da Praça', 'Cidade C', 'MG', '88990011'),
  ('Vila F', 707, 'Avenida dos Jacarandás', 'Cidade A', 'SP', '99001122'),
  ('Centro', 808, 'Rua da Escola', 'Cidade B', 'RJ', '00112233'),
  ('Bairro D', 909, 'Avenida do Parque', 'Cidade C', 'MG', '11223344'),
  ('Bairro B', 1010, 'Travessa do Largo', 'Cidade A', 'SP', '22334455'),
  ('Vila G', 1111, 'Rua da Praia', 'Cidade B', 'RJ', '33445566'),
  ('Vila H', 1212, 'Alameda das Palmeiras', 'Cidade C', 'MG', '44556677'),
  ('Centro', 1313, 'Avenida do Comércio', 'Cidade A', 'SP', '55667788'),
  ('Bairro C', 1414, 'Rua do Teatro', 'Cidade B', 'RJ', '66778899'),
  ('Bairro A', 1515, 'Alameda dos Pinheirais', 'Cidade C', 'MG', '77889900'),
  ('Vila I', 1616, 'Travessa do Mercado', 'Cidade A', 'SP', '88990011'),
  ('Vila J', 1717, 'Avenida das Rosas', 'Cidade B', 'RJ', '99001122');
  
INSERT INTO cliente_pf (cod_cliente, cpf, nome, cnh) VALUES
  (1, '11111111111', 'Fulano da Silva', '1234567890'),
  (2, '22222222222', 'Ciclano Oliveira', '9876543210'),
  (3, '33333333333', 'Beltrano Pereira', '5678901234'),
  (4, '44444444444', 'Siclana Santos', '0123456789'),
  (5, '55555555555', 'João da Silva', '5678904321'),
  (6, '66666666666', 'Maria Oliveira', '9876545678'),
  (7, '77777777777', 'Pedro Pereira', '2345678901'),
  (8, '88888888888', 'Ana Santos', '8901234567'),
  (9, '99999999999', 'Roberto Oliveira', '3456789012'),
  (10, '12345678909', 'Juliana Silva', '9012345678');
  
INSERT INTO cliente_pj (cod_cliente, cnpj, nome_fantasia, razao_social) VALUES
  (11, '11111111111111', 'Empresa ABC', 'ABC Comércio Ltda.'),
  (12, '22222222222222', 'Empresa XYZ', 'XYZ Indústria S.A.'),
  (13, '33333333333333', 'Empresa 123', '123 Serviços EIRELI'),
  (14, '44444444444444', 'Empresa QWERTY', 'QWERTY Tecnologia Ltda.'),
  (15, '55555555555555', 'Empresa ABCD', 'ABCD Consultoria S.A.'),
  (16, '66666666666666', 'Empresa XYZW', 'XYZW Construções Ltda.'),
  (17, '77777777777777', 'Empresa 987', '987 Distribuidora EIRELI'),
  (18, '88888888888888', 'Empresa LMN', 'LMN Transportes S.A.'),
  (19, '99999999999999', 'Empresa PQRST', 'PQRST Alimentos Ltda.'),
  (20, '12345678909876', 'Empresa UVW', 'UVW Serviços EIRELI');
  
INSERT INTO telefone_cliente (cod_cliente, telefone) VALUES
  (1, '+5587988377476'),
  (1, '+5587988377477'),
  (2, '+5587333333333'),
  (3, '+5587999999999'),
  (4, '+5587125230369'),
  (5, '+5587921369856'),
  (12, '+5587125496320'),
  (18, '+5587999563021'),
  (19, '+55879*96320123'),
  (19, '+5587998741023'),
  (20, '+5587999538973');
  
INSERT INTO locacao (data_inicio, data_fim, cod_cliente, mat_funcionario) VALUES
  ('2023-01-01 08:00:00', '2023-01-05 18:00:00', 1, 1),
  ('2023-02-10 10:30:00', '2023-02-15 15:45:00', 2, 2),
  ('2023-03-20 12:15:00', '2023-03-25 16:30:00', 3, 3),
  ('2023-04-05 09:45:00', NULL, 4, 4),
  ('2023-05-15 14:00:00', NULL, 5, 5),
  ('2023-06-25 16:30:00', NULL, 11, 6),
  ('2023-07-10 11:00:00', NULL, 12, 7),
  ('2023-08-20 13:45:00', NULL, 13, 8),
  ('2023-09-05 10:15:00', NULL, 14, 9),
  ('2023-10-15 14:30:00', NULL, 15, 10);
  
INSERT INTO locacao_veiculo (cod_locacao, placa) VALUES
  (1, 'ABC1234'),
  (1, 'CVB4560'),
  (1, 'PWP8493'),
  (2, 'DEF8838'),
  (2, 'KIZ7492'),
  (3, 'ZKV0923'),
  (4, 'BLS9105'),
  (5, 'POL6565'),
  (6, 'ERT0923'),
  (7, 'PWP8493'),
  (8, 'KIZ7492'),
  (9, 'CVB4560'),
  (10, 'XCV6437');  
  
UPDATE veiculo
SET cor='Verde musgo'
WHERE cor='verde';

UPDATE seguro
SET valor=valor*1.1
WHERE franquia='Bradesco Seguros';

DELETE FROM manutencao
WHERE ordem_de_servico='OS001';

DELETE FROM seguro
WHERE apolice='APL001';