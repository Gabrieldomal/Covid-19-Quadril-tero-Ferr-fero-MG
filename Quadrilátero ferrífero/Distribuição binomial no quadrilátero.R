fdp = dbinom(4255, size = 1456854, prob = 0.0016)

fda = (1 - pbinom(4255, size = 1456854, prob = 0.0016))

x <- seq(2131,2531,by = 1)

# Create the binomial distribution.
y <- dbinom(x,1456854,0.0016)

y[length(y)]
hist(y)

#este grafico n�o indica frequencia, n�o � histograma
plot(x,y)

#calculo da m�dia: mean = n*p
mean = round(1456854*0.0016)

binom.test(x = 4255, n = 1456854, p = 0.0016)

#logo olhando na tabela z temos que:
#p_valor  = probabilidade de tirar 39 dada distribui��o hipot�tica criada

#desvio padr�o de uma distribui��o binomial
#sd = sqrt(n*p*(1-p)) se n for mt grande e a probabilidade de sucesso for muito pequena o sd se aproximara de sqrt(N)

sd = sqrt(1456854*0.0016*0.9984)

#formula do intervalo de confian�a - (media+-sd)/z
#calculo de quantos sd itabira de encontra da m�dia
#valor z ver tabela z
z = (4255-mean)/sd

probabilidade_evento = 1 - pnorm(z)

#para n considerar anomalia quantas pessoas tem q morrer de 3156
#qual � o z q corresponde a uma probabilidade de 0.05(nivel de confian�a)
valorz = qnorm(0.05)
