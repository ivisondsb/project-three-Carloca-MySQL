# Insert Categorias
INSERT INTO CATEGORIAS (CATEGORIA) VALUES
  ('utilitário compacto'),
  ('SUV grandes'),
  ('SUV médio'),
  ('SUV compacto'),
  ('Sedã médio'),
  ('Sedã compacto'),
  ('Hatch compacto'),
  ('Subcompacto');
  
  # Insert Clientes
  INSERT INTO CLIENTES (NOME, CPF) VALUES
  ('Peter Parker','58679584625'),
  ('Mary Jane','78864851238'),
  ('Bruce Benner','98675489214'),
  ('Clark Kent','95136874261'),
  ('Tony Stark','89624137699'),
  ('Steve Rogers','00000000001');

 # Insert Carros
INSERT INTO CARROS (MODELO, ID_CATEGORIA, VERSAO, COR, MONTADORA) VALUES
  ('Jeep Compass',3, '1.3 turboflex','Preto','JEEP'),
  ('Onix Plus',6, 'Turbo AT','Prata','CHEVROLET'),
  ('Corolla',5, '2.0','Branco','TOYOTA');

#Insert Franquias
INSERT INTO FRANQUIAS (FRANQUIA, CIDADE, BAIRRO) VALUES
  ('CARLOCA ONE','Recife', 'Casa Forte'),
  ('CARLOCA TWO', 'Paulista','Janga');
  
#Insert Locações
INSERT INTO CARLOCA (ID_CLIENTE, ID_CARRO, ID_FRANQUIA, KM_INICIAL, KM_FINAL) VALUES
  (1,3,1,20000,20150),
  (6,2,2,35645,35725);