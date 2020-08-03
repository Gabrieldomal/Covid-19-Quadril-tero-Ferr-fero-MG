dados <- read.csv("C:/Users/James Bond/Desktop/Gitlab/dsl/programs/python/Leitos_OP/tabela_micro_itabira.csv")

grafico <- lm(formula = confirmados_totais ~ poly(index_data, degree = 4, raw=T), data =  dados)
summary(grafico)

#Fazendo previsoes

plot(dados$index_data, dados$index_data)

inicio =110
fim = 120

novo_dado = 
  data.frame(index_data = seq(inicio, fim, 1))

#predict(grafico, newdata = novo_dado,interval = "prediction")

previsao = 
  data.frame(predict(grafico, newdata = novo_dado, interval = 'prediction'))

previsao$index = novo_dado$index_data

y_fitted = data.frame(predict(grafico, interval = 'prediction'))
y_fitted$index = dados$index_data

library(ggplot2)
ggplot(data = y_fitted, aes(x = index, y = fit))+ #Dados passados (observados)
  geom_path(size = 0.1, colour = 'black')+ #Fazendo linha dados passados
  geom_ribbon(data = previsao, aes(ymin = lwr, ymax = upr), fill = 'gray70')+ #Erro dados futuros
  geom_path(data = previsao, mapping = aes(x = index, fit), color = 'red')+ #Linha para dados futuros
  ylim(-100, 1450)+ #Determinar limite de Y
  xlim(0, 120) #determinar limite de X

plot(dados$obitos_totais, dados$index_data)

#Save graph high resolution
ggsave(oi, filename = 'C:/Users/James Bond/Desktop/Gitlab/dsl/programs/python/Leitos_OP/oi.png', 
       dpi = 1200, width = 6, height = 4.5, units = 'in')