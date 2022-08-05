# install.packages("tidyverse")
library(tidyverse)
# install.packages("dplyr")
library(dplyr)
# install.packages("caret")
library(caret)
# install.packages("ggplot2")
library(ggplot2)

#visualizando a base de dados
View(mtcars)

#criando um vetor simples com os atributos de mtcars
var_mtcars <- c("milhas_por_galao", "cilindrada", "deslocamento", "potencia_bruta", "rel_eixo_traseiro", "peso","tempo_quarto_milha","vs","transmissao","num_marcha","num_carburadores")

#verificacao de medidas de tendencia central
summary(mtcars)

#analise de complexidade
str(mtcars)

