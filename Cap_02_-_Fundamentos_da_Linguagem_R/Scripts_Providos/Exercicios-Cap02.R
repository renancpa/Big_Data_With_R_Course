# Lista de Exercícios - Capítulo 2

# Obs: Caso tenha problemas com a acentuação, consulte este link:
# https://support.rstudio.com/hc/en-us/articles/200532197-Character-Encoding

# Configurando o diretório de trabalho
# Coloque entre aspas o diretório de trabalho que você está usando no seu computador
# Não use diretórios com espaço no nome
setwd("C:/FCD/BigDataRAzure/Cap02")
getwd()

# Exercício 1 - Crie um vetor com 30 números inteiros
vetor1 = seq(1:30)
vetor1
# Exercício 2 - Crie uma matriz com 4 linhas e 4 colunas preenchida com números inteiros
seq1 <- seq(1:16)
matriz2 = matrix(seq1, nrow = 4, ncol = 4, byrow = T)
matriz2
# Exercício 3 - Crie uma lista unindo o vetor e matriz criados anteriormente
lista3 <- list(vetor1, matriz2)
lista3
nomes = c("vetor1", "matriz2")
names(lista3) <-  c("vetor1", "matriz2")
lista3
# Exercício 4 - Usando a função read.table() leia o arquivo do link abaixo para uma dataframe
# http://data.princeton.edu/wws509/datasets/effort.dat
ex4 <- data.frame(read.table("http://data.princeton.edu/wws509/datasets/effort.dat"))
# Exercício 5 - Transforme o dataframe anterior, em um dataframe nomeado com os seguintes labels:
# c("config", "esfc", "chang")
names(ex4) = c("config", "esfc", "chang")
ex4
# Exercício 6 - Imprima na tela o dataframe iris, verifique quantas dimensões existem no dataframe iris e imprima um resumo do dataset
View(iris)
iris
dim(iris)
summary(iris)
str(iris)
# Exercício 7 - Crie um plot simples usando as duas primeiras colunas do dataframe iris
plot(iris[,1:2])
# Exercício 8 - Usando a função subset, crie um novo dataframe com o conjunto de dados do dataframe iris em que Sepal.Length > 7
# Dica: consulte o help para aprender como usar a função subset()
?subset
subset8 <- subset(iris, Sepal.Length > 7)
# Exercícios 9 (Desafio) - Crie um dataframe que seja cópia do dataframe iris e usando a função slice(), divida o dataframe em um subset de 15 linhas
# Dica 1: Você vai ter que instalar e carregar o pacote dplyr
# Dica 2: Consulte o help para aprender como usar a função slice()
install.packages("dplyr")

library(dplyr)
?slice
iriscopia <- iris
slice(.data = iriscopia,.preserve = F,  45:60 )

# Exercícios 10 - Use a função filter no seu novo dataframe criado no item anterior e retorne apenas valores em que Sepal.Length > 6
# Dica: Use o RSiteSearch para aprender como usar a função filter
RSiteSearch("filter")
filter(iriscopia, Sepal.Length > 6)

