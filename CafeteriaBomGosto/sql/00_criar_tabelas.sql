-- Criação das tabelas principais
CREATE TABLE Cardapio (
    cod_cardapio SERIAL PRIMARY KEY,
    nome VARCHAR(100) UNIQUE NOT NULL,
    descricao TEXT,
    preco NUMERIC(10,2) NOT NULL
);

CREATE TABLE Comanda (
    cod_comanda SERIAL PRIMARY KEY,
    data DATE NOT NULL,
    mesa INTEGER NOT NULL,
    cliente VARCHAR(100) NOT NULL
);

CREATE TABLE Item_Comanda (
    cod_comanda INTEGER REFERENCES Comanda(cod_comanda),
    cod_cardapio INTEGER REFERENCES Cardapio(cod_cardapio),
    quantidade INTEGER NOT NULL CHECK (quantidade > 0),
    PRIMARY KEY (cod_comanda, cod_cardapio)
);