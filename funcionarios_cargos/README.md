![](https://i.imgur.com/xG74tOh.png)

# M01 - A09 - Exercício 3 - Funcionários e Cargos

## Objetivo

Calcular o salário dos funcionários da empresa, considerando as horas extras, comissão por venda e bonificação.

## Instruções

1. Escreva um algoritmo em Dart que receba matrícula, nome, sobrenome, salário e número de horas trabalhadas.
Crie a classe Funcionario com os seguintes campos (atributos):
	- matrícula
	- nome
	- sobrenome
	- salário
	- horas trabalhadas
1. Ainda na classe Funcionario, crie um método para calcular as horas extras dos funcionários, considerando o padrão de 220 horas.
2. Crie as classes Caixa, Vendedor e Gerente, que herdam da classe Funcionario.
3. Usando Polimorfismo, sobrescreva o método que calcula as horas extras, adicionando + 20% de comissão para o vendedor e + 35% de bonificação para o gerente.
4. No método main, crie um objeto para cada classe filha, preenchendo os dados.
5. Mostre o resultado dos cálculos na tela.

## Casos de Testes

```
Entrada:
	Caixa:
		matrícula: 1579
		nome: Ana
		sobrenome: Oliveira
		salário: 1212
		horas trabalhadas no mês: 230
	
	Vendedor:
		matrícula: 1601
		nome: João
		sobrenome: Silva
		salário: 1212
		horas trabalhadas no mês: 230
	
	Gerente:
		matrícula: 1603
		nome: Maria
		sobrenome: Souza
		salário: 1212
		horas trabalhadas no mês: 230

Saída:
	Matrícula: 1579
	Nome: Ana Oliveira
	Horas trabalhadas no mês: 230
	Salário: R$ 1294.64
	
	Matrícula: 1601
	Nome: João Silva
	Horas trabalhadas no mês: 230
	Salário: R$ 1553.56
	
	Matrícula: 1603
	Nome: Maria Souza
	Horas trabalhadas no mês: 230
	Salário: R$ 1747.76
```

### [Vídeo explicativo](https://drive.google.com/file/d/1Gr5ihF6KDhg1R-aduq0AmKpwzf6wGsIM/view?usp=sharing)
