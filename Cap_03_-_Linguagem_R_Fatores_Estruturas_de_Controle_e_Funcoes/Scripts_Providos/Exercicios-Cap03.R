# Lista de Exercícios - Capítulo 3

# Obs: Caso tenha problemas com a acentuação, consulte este link:
# https://support.rstudio.com/hc/en-us/articles/200532197-Character-Encoding

# Configurando o diretório de trabalho
# Coloque entre aspas o diretório de trabalho que você está usando no seu computador
# Não use diretórios com espaço no nome
setwd("C:/Users/Renan/Desktop/Formacao_Cientista_de_Dados_DSA/Cap_03_-_Linguagem_R_Fatores_Estruturas_de_Controle_e_Funcoes/Scripts_Providos")
getwd()

# Exercício 1 - Pesquise pela função que permite listar todos os arquivo no diretório de trabalho
?ls
# Exercício 2 - Crie um dataframe a partir de 3 vetores: um de caracteres, um lógico e um de números
vecChar = c("A","B","c")
vecNum = c(1:3)
vecBool = c(FALSE, TRUE, TRUE)
df <- data.frame(vecChar, vecNum, vecBool)
df
# Exercício 3 - Considere o vetor abaixo. 
# Crie um loop que verifique se há números maiores que 10 e imprima o número e uma mensagem no console.

# Criando um Vetor
vec1 <- c(12, 3, 4, 19, 34)
vec1

ifelse(vec1 < 10, "Menor que 10", 
       ifelse(vec1 == 10, "Igual a 10", "Maior que 10"))
# Exercício 4 - Conisdere a lista abaixo. Crie um loop que imprima no console cada elemento da lista
lst2 <- list(2, 3, 5, 7, 11, 13)
lst2

for (i in 1:length(lst2)){
  print(lst2[i])
}

# Exercício 5 - Considere as duas matrizes abaixo. 
# Faça uma multiplicação element-wise e multiplicação normal entre as materizes
mat1 <- matrix(c(1:50), nrow = 5, ncol = 5, byrow = T)
mat1
mat2 <- t(mat1)
mat2

# Multiplicação element-wise
mat1 * mat2
# Multiplicação de matrizes
mat1%*%mat2
# Exercício 6 - Crie um vetor, matriz, lista e dataframe e faça a nomeação de cada um dos objetos
vec6 = c(1:10)

mat6 = matrix(c(1:10), nrow = 2, ncol = 5, byrow= T)

lis6 = list(c(1:10),"A", T)

typeof(lis6)
# Exercício 7 - Considere a matriz abaixo. Atribua valores NA de forma aletória para 50 elementos da matriz
# Dica: use a função sample()
mat2 <- matrix(1:90, 10)
mat2

mat2[sample(1:length(mat2), 50, replace = FALSE)] <- NA
mat2
# Exercício 8 - Para a matriz abaixo, calcule a soma por linha e por coluna
mat1 <- matrix(c(1:50), nrow = 5, ncol = 5, byrow = T)
mat1

rowSums(mat1, na.rm=FALSE)
colSums(mat1, na.rm=FALSE)
# Exercício 9 - Para o vetor abaixo, ordene os valores em ordem crescente
a <- c(100, 10, 10000, 1000)
a

sort(a)
# # Exercício 10 - Imprima no console todos os elementos da matriz abaixo que forem maiores que 15
mat1 <- matrix(c(1:50), nrow = 5, ncol = 5, byrow = T)



