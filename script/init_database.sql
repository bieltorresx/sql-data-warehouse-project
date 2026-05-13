/* 
============================================================

Criar uma base de dados e seus esquemas em medalhão

============================================================

Objetivo do Script:
   Esse script cria uma nova base de dados chamada 'MyDataWarehouse' depois de checar se ela já existe.
   Se a base de dados existe ela substitui a antiga. Além disso será criado três novos esquemas na base de dados
   O 'bronze', 'silver' e 'gold'

ATENÇÃO:
   Executar esse script significa apagar qualquer base de dados 'MyDataWarehouse' que ja exista e todos os dados nela contida
   */

USE master;
GO

-- Checar e substituir 'MyDataWarehouse' já existentes
IF EXISTS (SELECT 1 FROM sys.databases WHERE name = 'MyDataWarehouse')
BEGIN
   ALTER DATABASE MyDataWarehouse SET SINGLE_USER WITH ROLLBACK IMMEDIATE;
   DROP DATABASE MyDataWarehouse ;
   END;
   GO

-- Criando a base de dados "MyDataWarehouse"
CREATE DATABASE MyDataWarehouse;
USE MyDataWarehouse;

-- Criando os esquemas do medalhao
CREATE SCHEMA bronze;
GO
CREATE SCHEMA silver;
GO
CREATE SCHEMA gold;
GO
