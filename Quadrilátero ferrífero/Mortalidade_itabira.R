fdp = dbinom(2, size = 1095, prob = 0.021)

fda = (1 - pbinom(2, size = 1095, prob = 0.021))

x <- seq(0,50,by = 1)

# Create the binomial distribution.
y <- dbinom(x,1095,0.021)

y[length(y)]
hist(y)

#este grafico n�o indica frequencia, n�o � histograma
plot(x,y)

#calculo da m�dia: mean = n*p
mean = round(1095*0.021)

binom.test(x = 2, n = 1095, p = 0.021)

#logo olhando na tabela z temos que:
#p_valor  = probabilidade de tirar 39 dada distribui��o hipot�tica criada

#desvio padr�o de uma distribui��o binomial
#sd = sqrt(n*p*(1-p)) se n for mt grande e a probabilidade de sucesso for muito pequena o sd se aproximara de sqrt(N)

sd = sqrt(1095*0.021*0.979)

#formula do intervalo de confian�a - (media+-sd)/z
#calculo de quantos sd itabira de encontra da m�dia
#valor z ver tabela z
z = (2-mean)/sd

probabilidade_evento = 1 - pnorm(z)

#qual o provavel real numero de contaminados na cidade de itabira.
#contaminados_esperados_em_itabira = quantidades de eventos com sucesso(obito)/probabilidade de sucesso do evento(letalidade fora de itabira)
contaminados_esperados_em_itabira = 2/0.021


#para n considerar anomalia quantas pessoas tem q morrer de 3156
#qual � o z q corresponde a uma probabilidade de 0.05(nivel de confian�a)
valorz = qnorm(0.05)
