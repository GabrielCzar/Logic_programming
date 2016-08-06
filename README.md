# Logic Programming - Progamação Lógica
_Exercicios usando a linguagem de progamação lógica - Prolog_

1. Utilizando Prolog implemente um grafo simples (por definição, não orientado), no qual
se possa fazer perguntas sobre adjacências, graus e caminhos. Por exemplo:  
	• ?- adjacente( 0 , 1 ). → O vértice 0 é adjacente ao vértice 1?  
	• ?- caminho( [0 , 1 , 2] ). → Os vértices 0,1,2 formam um caminho?  
	• ?- grau( 1 , W ). → Qual o grau do vértice 1?  

2. Implemente um programa em Prolog com os seguintes predicados genéricos sobre
listas (sem utilizar os correspondentes predicados do módulo lists do SWI-Prolog):  
	• adiciona( X , L 1 , L 2 ) – onde L 2 é a lista que contém o elemento X e a lista L 1 .  
	• apaga( X , L 1 , L 2 ) – onde L 2 é a lista L 1 sem o elemento X.  
	• concatena( L 1 , L 2 , L 3 ) – onde L 3 é resultado da junção das listas L 2 e L 1 .  
	• membro( X , L ) – que é verdadeiro se X pertencer à lista L.  
	• comprimento( X , L ) – onde X é o número de elementos da lista L.  

3. Implemente um programa em Prolog que permita fazer perguntas sobre o fatorial duplo
(definido na Questão 9). Por exemplo:  
	• ?- fatorialDuplo( 8 , 384 ). → Fatorial duplo de 8 é 384?  
	• ?- fatorialDuplo( 10 , W ). → Quanto é o fatorial duplo de 10?  

4. Implemente a regra inverte( L 1 , L 2 ) que recebe em L 2 o resultado da inversão de L 1 .
Por exemplo, se L 1 = [ 1 , 3 , 5 , 7 , 11 ], então L 2 = [ 11 , 7 , 5 , 3 , 1 ].  

5. Implemente um programa em Prolog sobre a seguinte família:
Pouco se sabe da história passada da família Pinheiro. Existem alguns registos antigos
que indicam que o casal José e Maria criou dois filhos, o João e a Ana. Que a Ana teve
duas filhas, a Helena e a Joana, também parece ser verdade, segundo os mesmos
registos. Além disso, o Mário é filho do João, pois muito se orgulha ele disso. Estranho
também, foi constatar que o Carlos nasceu da relação entre a Helena, muito formosa, e o
Mário.  
	a) Utilizando o predicado progenitor( X , Y ) ( X é progenitor de Y ), represente em
Prolog todos os progenitores da família Pinheiro.  
	b) Represente em Prolog as relações: sexo (masculino ou feminino), irmã, irmão,
descendente, mãe, pai, avô, avó, tio, tia, primo e prima.
