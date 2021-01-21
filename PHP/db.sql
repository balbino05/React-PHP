CREATE TABLE `filmes` (
  `id_filmes` int(11) NOT NULL AUTO_INCREMENT,
  `titulo` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `descricao` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `fk_categoria` int(11) NOT NULL utf8mb4_unicode_ci NOT NULL,
  `fk_ator_filmes` int(11) NOT NULL utf8mb4_unicode_ci NOT NULL,
  `fk_diretor` int(11) NOT NULL utf8mb4_unicode_ci NOT NULL

   PRIMARY KEY (`id_filmes`)
   FOREIGN KEY (fk_categoria) REFERENCES categoria(id_categoria)
   FOREIGN KEY (fk_ator_filmes) REFERENCES ator_filmes(id_filmes)
   FOREIGN KEY (fk_diretor) REFERENCES diretor(id_diretor)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

CREATE TABLE `categoria` (
   `id_categoria` int(11) NOT NULL AUTO_INCREMENT,
   `Nome` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL
   PRIMARY KEY (`id_categoria`)
)ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

CREATE TABLE `ator_filmes` (
   `id_ator` int(11) NOT NULL AUTO_INCREMENT,
   `id_filmes` int(11) NOT NULL AUTO_INCREMENT
   PRIMARY KEY (`id_ator`)
      PRIMARY KEY (`id_filmes`)
)ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

CREATE TABLE `ator` (
   `id_ator` int(11) NOT NULL AUTO_INCREMENT,
   `Nome` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL
    `Sexo` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL
   PRIMARY KEY (`id_ator`)
)ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

CREATE TABLE `diretor` (
   `id_diretor` int(11) NOT NULL AUTO_INCREMENT,
   `Nome` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL
    `Sexo` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL
   PRIMARY KEY (`id_diretor`)
)ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;