# Analise-Preditiva-R
Pós Graduação em Ciências de Dados e Big Data - Analise Preditiva com R



## Atividade 1 (atividade-1.R)
Descrição do Dataset
The Prestige consists of 102 observations with 6 variables.The description of the variables are in the data set are as follows:
education: The average number of years of education for occupational incumbents.
income: The average income of occupational incumbents, in dollars.
women: The percentage of women in the occupation.
prestige:The average prestige rating for the occupation.
census: The code of the occupation used in the survey.
type: Professional and managerial(prof), white collar(wc), blue collar(bc), or missing(NA)(Fox and Weisberg 2011)

Processo para leitura dos dados
install.package(“car”)
library(car)
Prestige

Criar um modelo preditivo utilizando a regressão linear composta que consiga prever o prestígio de uma determinada profissão com base nas demais variáveis preditoras.


## Atividade 2 (atividade-2.R)
Este conjunto de dados contém informações sobre bebês recém-nascidos e seus pais (birthweight.xlsx). Ele contém principalmente variáveis contínuas (embora alguns tenham apenas alguns valores, por exemplo, número de cigarros fumados por dia). A lista de variáveis se encontra na tabela abaixo:
id					Identificação
headcirumference	Circunferência da cabeça
length				Tamanho do bebê (polegadas)
Birthweight			Peso do bebê (libras)
Gestation			Gestação (semanas)
smoker				Mãe fumante: 1-Sim 0-Não
motherage			Idade Mãe (anos)
mnocig				Número de cigarros fumados por dia pela mãe
mheight				Altura mãe (polegadas)
mppwt				Peso antes da gestação da mãe (libras)
fage				Idade pai (anos)
fedyrs				Anos de estudo do pai
fnocig				Número de cigarros diários do pai
fheight				Peso pai (libras)
lowbwt				Baixo peso ao nascer: 1-Low / 0-Normal

Obtenha um modelo preditivo usando como variável resposta o fato de o bebê ter ou não baixo peso com relação as demais variáveis preditoras. Faça as análises necessárias para se chegar no melhor modelo de predição.


## Atividade 3 (atividade-3.R)

## Atividade 3

### Atividade 3.1 (atividade-3-1.R)
O arquivo Home.xlsx refere a uma pesquisa que foi feita para estudar o comportamento das pessoas em relação ao hábito de fazer compras. As variáveis são assim definidas:
•	Q1: Eu prefiro passar uma noite calma e tranquila em casa do que sair para ir a uma festa;
•	Q2: Eu sempre observo cuidadosamente os preços, mesmo em produtos pequenos;
•	Q3: A internet é mais interessante que cinemas
•	Q4: Eu não compro produtos que são anunciados na televisão pois não acredito em propagandas;
•	Q5: Eu gosto mesmo é de ficar em casa;
•	Q6: Eu sempre compro produtos que estão vendidos com desconto;
•	Q7: As empresas desperdiçam muito dinheiro em propaganda.
Um total de 25 pessoas foram entrevistadas. Cada pessoa teve que expressar sua concordância com a frase em questão. A escala medida foi de 1 a 7, onde 1 representa a discordância total e 7 representa a concordância total.
Faça uma análise fatorial exploratória e defina como ficaria os fatores que traduzem o comportamento das pessoas pesquisadas em relação ao hábito de fazer compras. Deixe as saídas junto com as análises necessárias.


### Atividade 3.2 (atividade-3-2.R)
Considere o conjunto de dados do arquivo Crime.xlsx. As variáveis tratadas são taxas de criminalidade (em cada 100.000 habitantes) em vários estados dos Estados Unidos no ano de 1980. Foram avaliadas nove categorias de crime: violência, crime contra propriedade, assassinato, estupro, roubo, assalto, roubo de residência, furto e roubo de veículo.
Faça uma análise de agrupamento para as observações e diga quais são as características dos grupos obtidos na análise.

### Atividade 3.3 (atividade-3-3.R)
Um estudo referido no livro de D.F. Morrison, Multivariate Statistical Methods (p.288), envolve nove variáveis morfométricas sobre crânios de lobos Canis lupus L.. São efetuadas medições sobre 25 indivíduos, repartidos por 4 grupos: 6 machos das Montanhas Rochosas, 3 fêmeas das Montanhas Rochosas, 10 machos do Ártico, 6 fêmeas do Ártico. Os dados obtidos (todas as variáveis em mm) encontram-se na data frame Lobos.xlsx.
Faça uma análise de discriminante sobre os dados e em seguida, diga a qual das 4 classes associaria um novo conjunto de observações, respeitantes a um lobo de sexo e habitat desconhecidos, com os seguintes valores para as 9 variáveis: 125; 104; 145; 81,1; 33,2; 68,2; 49,0; 43,3; 18,2?


## Atividade 4
Uma série histórica da produção física industrial está contida no arquivo BEBIDAS.xls. São observações mensais de janeiro de 1985 a julho de 2000.
a)	Faça a leitura dos dados no R e crie um arquivo do tipo “ts”.
b)	Faça as análises iniciais da séries e destaque quais pontos de atenção devem ser feitos para a criação do modelo.
c)	Por fim, demonstre os passos necessários para a construção do modelo e crie uma análise preditiva de dois anos da série.
