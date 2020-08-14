library(data.table)
library(ggplot2)

setwd("C:/Users/James Bond/Desktop/Gitlab/dsl/emds/Dados Evasao")

tabela_cursos_motivo_ano = 
  fread('tabela_cursos_motivo_ano.csv')

tabela_cursos_motivo_ano =
  dplyr::filter(tabela_cursos_motivo_ano,
                tabela_cursos_motivo_ano$curso == 'ENGENHARIA METALURGICA')

#Grafico da Evas„o de todos os cursos e de todos os motivos da EM ao longo do tempo.
ggplot(data = tabela_cursos_motivo_ano, aes(x = ano, y = `Taxa evasao`))+
  geom_point()+
  facet_wrap(~motivo)+
  geom_smooth(method = 'lm')


#Grafico da Evas„o de todos os cursos da EM ao longo do tempo.
ggplot(data = evadidos_por_ano_e_curso, aes(x = ANO, y = `Taxa de Evas√£o`))+
  geom_point()+
  facet_wrap(~CURSO)+
  geom_smooth(method = 'lm')

oficial$`Taxa de Evas√£o`
#Aqui coloco a Taxa de Evas„o como variavel dependente e busco outras variaveis independentes para descrever a Tx de Evas„o.
summary(lm(data = oficial, formula = as.numeric(`Taxa de Evas√£o`)~
             (`Taxa evasao`)
             ))
