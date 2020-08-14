library(data.table)
library(ggplot2)

setwd("C:/Users/James Bond/Desktop/Gitlab/dsl/emds/Dados Evasao")


tabela_cursos_motivo_ano = 
  fread('tabela_cursos_motivo_ano.csv')


tabela_cursos_motivo_ano =
  dplyr::filter(tabela_cursos_motivo_ano,
                tabela_cursos_motivo_ano$curso == 'ENGENHARIA DE PRODUCAO')

ggplot(data = tabela_cursos_motivo_ano, aes(x = ano, y = `Taxa evasao`))+
  geom_point()+
  facet_wrap(~motivo)+
  geom_smooth(method = 'lm')

#Aqui coloco a Taxa de Evas„o como variavel dependente e busco outras variaveis independentes para descrever a Tx de Evas„o.
summary(lm(data = df_EM, formula = as.numeric(`Taxa de Evas√£o`)~
             as.numeric(`ANO`)+
             as.numeric(`Quantidade de Bolsas`)))
