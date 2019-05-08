CREATE TABLE T_Estoque (
	T_Estoque_ID NUMBER ( 10 ) NOT NULL,
	CONSTRAINT PK_T_Estoque2 PRIMARY KEY (T_Estoque_ID)
	)
/
CREATE TABLE T_Cliente (
	T_Cliente_ID NUMBER ( 10 ) NOT NULL,
	CONSTRAINT PK_T_Cliente0 PRIMARY KEY (T_Cliente_ID)
	)
/
CREATE TABLE T_OrdemdeServiço (
	T_OrdemdeServiço_ID NUMBER ( 10 ) NOT NULL,
	T_Funcionario_ID NUMBER ( 10 ) NOT NULL,
	CONSTRAINT PK_T_OrdemdeServiço3 PRIMARY KEY (T_OrdemdeServiço_ID)
	)
/
CREATE INDEX TC_T_OrdemdeServiço3 ON T_OrdemdeServiço (T_Funcionario_ID )
/
CREATE TABLE T_Funcionario (
	T_Funcionario_ID NUMBER ( 10 ) NOT NULL,
	CONSTRAINT PK_T_Funcionario1 PRIMARY KEY (T_Funcionario_ID)
	)
/
CREATE TABLE T_Peça (
	T_Estoque_ID NUMBER ( 10 ) NOT NULL,
	T_Venda_ID NUMBER ( 10 ) NOT NULL,
	CONSTRAINT PK_T_Peça5 PRIMARY KEY (T_Estoque_ID, T_Venda_ID)
	)
/
CREATE INDEX TC_T_Peça6 ON T_Peça (T_Estoque_ID )
/
CREATE INDEX TC_T_Peça7 ON T_Peça (T_Venda_ID )
/
CREATE TABLE T_Venda (
	T_Venda_ID NUMBER ( 10 ) NOT NULL,
	T_Cliente_ID NUMBER ( 10 ) NOT NULL,
	T_Funcionario_ID NUMBER ( 10 ) NOT NULL,
	CONSTRAINT PK_T_Venda4 PRIMARY KEY (T_Venda_ID)
	)
/
CREATE INDEX TC_T_Venda4 ON T_Venda (T_Cliente_ID )
/
CREATE INDEX TC_T_Venda5 ON T_Venda (T_Funcionario_ID )
/
ALTER TABLE T_Peça ADD ( CONSTRAINT FK_T_Peça3 FOREIGN KEY (T_Estoque_ID) REFERENCES T_Estoque (T_Estoque_ID))
/
ALTER TABLE T_Peça ADD ( CONSTRAINT FK_T_Peça4 FOREIGN KEY (T_Venda_ID) REFERENCES T_Venda (T_Venda_ID))
/
ALTER TABLE T_OrdemdeServiço ADD ( CONSTRAINT FK_T_OrdemdeServiço2 FOREIGN KEY (T_Funcionario_ID) REFERENCES T_Funcionario (T_Funcionario_ID))
/
ALTER TABLE T_Venda ADD ( CONSTRAINT FK_T_Venda0 FOREIGN KEY (T_Cliente_ID) REFERENCES T_Cliente (T_Cliente_ID))
/
ALTER TABLE T_Venda ADD ( CONSTRAINT FK_T_Venda1 FOREIGN KEY (T_Funcionario_ID) REFERENCES T_Funcionario (T_Funcionario_ID))
/

