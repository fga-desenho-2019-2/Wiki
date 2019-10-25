## Histórico de Revisão

|Data|Versão|Descrição|Autor|
|-|-|-|-|
|23/10/2019|0.1|Criação do documento|[Elias Bernardo](https://github.com/ebmm01)|
|24/10/2019|0.2|Singleton e Multiton|[Pedro Féo](https://github.com/phe0)|


## Introdução

Estes padrões lidam com o processo de criação de novos objetos de uma forma que ele pode ser desacoplado do seu sistema de implementação. Isso fornece mais flexibilidade em decidir quais objetos precisam ser criados para um determinado  caso ou cenário

Nesse documento iremos abordar os padrões que grupo utilizou, explicando como foi utilizado, o por quê e qual problema foi solucionado com a implementação.

## Factory method

![](https://upload.wikimedia.org/wikipedia/commons/4/43/W3sDesign_Factory_Method_Design_Pattern_UML.jpg)

"_Defina uma interface para criar um objeto, mas deixe as subclasses decidirem qual classe instanciar. O método Factory permite que uma classe adie a instanciação usada nas subclasses_." (Gang of Four)

Esse padrão de design lida com a criação de objetos sem especificar explicitamente a classe real que a instância terá - pode ser algo que é decidido no tempo de execução com base em muitos fatores. Alguns desses fatores podem incluir sistemas operacionais, diferentes tipos de dados ou parâmetros de entrada. Dá aos desenvolvedores a tranqüilidade de apenas chamar um método, em vez de chamar um construtor concreto.

### Como foi utilizado no projeto

Foi criado uma factory de usuários utilizando a biblioteca [Factory boy](https://factoryboy.readthedocs.io/en/latest/)

![](../../images/patterns/factory.svg)

### Objetivo & problema sanado

O __Factory method__ foi utilizado nos testes, para evitar duplicação de código e facilitar a criação de personas de testes. Por exemplo,

![](../../images/patterns/factory2.svg)

Passa a ser:

![](../../images/patterns/factory3.svg)

E caso eu precise de personas diferentes eu não preciso ficar criando vários datas, mas sim alterar determinado atributo da persona.

## Singleton

Esse padrão tem a função de prover um ponto de acesso global para toda a aplicação, que tenha uma instancia única.

### Como foi utilizado no projeto

O uso de singleton se mostra inerente ao nosso projeto, tendo em vista que será utilizado do localStorage, que é um recurso da própria Web, para guardar variáveis globalmente. Além disso, optamos pelo uso do Vuex, que é responsável por prover uma store, capaz de guardar variáveis.

### Objetivo & problema sanado

O localstorage é utilizado para a comunicação entre páginas, para que uma página consiga receber variáveis de outros locais da aplicação.
Já o Vuex é usado para a comunicação entre componentes de difícil comunicação dentro de uma mesma página.

## Multiton

Esse padrão é uma generalização do Singleton, enquanto o singleton só permite a utilização de uma instância, o multiton permite a construção controlada de multiplas instâncias. 

### Como foi utilizado no projeto

O multiton, assim como o singleton se mostra um padrão inerente à aplicação por conta das características composicionais do Vue. Permitindo que um v-for consiga controlar múltiplas instâncias de um mesmo componente, onde cada instanância possui uma chave única.

### Objetivo & problema sanado

O multiton permite a criação de diversos componentes iguais, que contenham informações diferentes. Como por exemplo na construção de itens na Sacola.

![](../../images/patterns/v-for.png)

## Referências

[1] Erich Gamma, Richard Helm, Ralph Johnson, John Vlissides (1994). Design Patterns: Elements of Reusable Object-Oriented Software