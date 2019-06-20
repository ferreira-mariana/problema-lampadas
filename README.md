# Problema das Lâmpadas

Em um corredor infinito, existem infinitas lâmpadas uma seguida da outra. Aquelas lâmpadas onde tem uma cordinha em vez do interruptor. Primeiro, passa uma pessoa puxando a cordinha de todas as lâmpadas, acendendo-as. Depois, passa uma segunda pessoa puxando a cordinha somente das lâmpadas pares, apagando-as. Então a terceira pessoa passa puxando a cordinha das lâmpadas que são múltiplas de 3, mas agora não sabemos se está apagando ou acendendo. E depois a quarta pessoa puxa a cordinha das lâmpadas múltiplas de 4, a quinta das múltiplas de 5 e assim por diante...

Ao final, será que a lâmpada 13 vai estar acesa ou apagada? E a 74? E a 2735? Como saber quais lâmpadas estão acesas e quais estão apagadas?

Até a lâmpada 10 quantas estão apagadas? E quantas acesas? E até 100? 1000? E até _n_?

Esse programa _(lampadas.hs)_ retorna o número de lâmpadas acesas e apagadas até _n_.

### Executando o programa

Primeiro [instale o Haskell](https://www.haskell.org/downloads/).

Depois, baixe o repositório e abra o terminal na pasta **problema-lampadas**, então execute o comando ghci para abrir o compilador de Haskell.
```
~/problema-lampadas$ ghci
```
Você deve receber como retorno:
```
GHCi, version 8.0.2: http://www.haskell.org/ghc/  :? for help
Prelude>
```
Então, compile o programa:
```
Prelude> :l lampadas.hs
```
Você deve receber como retorno:
```
Prelude> :l lampadas.hs
[1 of 1] Compiling Main             ( lampadas.hs, interpreted )
Ok, modules loaded: Main.
*Main>
```
Agora podemos testar! Temos duas funcões:
- teste n: retorna se a lâmpada _n_ fica acesa ou apagada depois de passar _n_ pessoas
- lampadas n: que retorna a quantidade de lâmpadas acesas e apagadas depois de passar _n_ pessoas
Sendo _n_ a entrada de ambas as funções.

Testando para 13 lâmpadas:
```
*Main> teste 13
False
```
Isso significa que a lâmpada 13 fica apagada.
 
E para saber a quantidade de lâmpadas acesas e apagadas com 10 pessoas passando:
```
*Main> lampadas 10 
(3,7)
```
Onde ```(3,7)``` é o par (acesas, apagadas), ou seja, 3 lâmpadas acesas e 7 apagadas. 

