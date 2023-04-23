CREATE DATABASE codedex;

use codedex;

CREATE TABLE
    usuarios(
        usuario_id INT PRIMARY KEY AUTO_INCREMENT,
        email VARCHAR(50),
        senha VARCHAR(50),
        nick VARCHAR(15),
        chave_secreta VARCHAR(15),
        data_change DATETIME
    );

CREATE TABLE
    metas_estudo(
        estudo_id INT PRIMARY KEY AUTO_INCREMENT,
        fk_usuarios_id INT NOT NULL,
        meta_semana VARCHAR(50),
        meta_mes VARCHAR(50),
        data_change DATETIME,
        FOREIGN KEY (fk_usuarios_id) REFERENCES usuarios(usuario_id)
    );

CREATE TABLE
    projeto(
        projeto_id INT PRIMARY KEY AUTO_INCREMENT,
        fk_usuarios_id INT NOT NULL,
        fk_waka_all_id INT NOT NULL,
        data_change DATETIME,
        tmp_code VARCHAR(50),
        status VARCHAR(10),
        FOREIGN KEY (fk_usuarios_id) REFERENCES usuarios(usuario_id)
    );

CREATE Table
    waka_semana(
        waka_semana_id INT PRIMARY KEY AUTO_INCREMENT,
        fk_usuarios_id INT NOT NULL,
        tmp_projeto_semana VARCHAR(50),
        tmp_code_semana VARCHAR(50),
        tmp_ide_semana VARCHAR(50),
        temp_lang_semana VARCHAR(50),
        projeto_semana VARCHAR(50),
        ide_semana VARCHAR(50),
        os_semana VARCHAR(50),
        lang_semana VARCHAR(50),
        data_change DATETIME,
        FOREIGN KEY (fk_usuarios_id) REFERENCES usuarios(usuario_id)
    );

CREATE TABLE
    waka_all (
        waka_all_id INT PRIMARY KEY AUTO_INCREMENT,
        fk_usuario_id INT NOT NULL,
        tmp_projeto_all VARCHAR(50),
        tmp_lang_all VARCHAR(50),
        tmp_ide_all VARCHAR(50),
        lang_all_all VARCHAR(50),
        ide_all VARCHAR(50),
        os_all VARCHAR(50),
        projeto_all VARCHAR(50),
        tmp_code_all VARCHAR(50),
        data_change DATETIME,
        FOREIGN KEY (fk_usuario_id) REFERENCES usuarios(usuario_id)
    );