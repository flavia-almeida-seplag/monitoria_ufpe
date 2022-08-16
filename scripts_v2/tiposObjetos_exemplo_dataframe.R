# Exercicio: criar um data.frame

#primeiro, vamos instalar um novo pacote: eeptools
install.packages('eeptools')

#depois, vamos chamar o pacote
library(eeptools)

# vetor com obras
obra <- c("BRT Leste-Oeste", "BRT Norte-Sul", "Ramal Cidade da Copa","Obras Complementares BRT", "Navegabilidade","BRT BR-101")
str(obra)

# vetor com data de inicio da obra
data_inicio <- as.Date(c("2011-12-01", "2011-12-01", "2011-10-03", "2013-04-08", "2012-12-09", "2012-12-27"))
str(data_inicio)

# vetor com data prevista de conclusao da obra
data_conclusao_prevista <- as.Date(c("2013-06-01", "2013-06-01", "2013-03-03", "2015-04-08", "2014-12-19", "2014-12-27"))
str(data_conclusao_prevista)

# vetor com o prazo de execucao estimado
prazo_estimado <- round( age_calc( data_inicio, data_conclusao_prevista, units = 'months')) # prazo usando a função age_calc do pacote eeptools e a função round (arredondar)
str(prazo_estimado)

lista_obras <- data.frame(
  empreendimento = obra,# Obra 
  inicio = data_inicio, # Data de inicio da obra
  termino = data_conclusao_prevista, # Data de conclusao prevista 
  prazo = prazo_estimado) #Prazo estimado de conclusao da obra
lista_obras
class(lista_obras)
