## Histórico de Revisão

|Data|Versão|Descrição|Autor|
|-|-|-|-|
|24/10/2019|0.1|Tópicos Facade, Composite e Flyweight|[Pedro Féo](https://github.com/phe0)|


## Facade

![](https://en.wikipedia.org/wiki/Facade_pattern#/media/File:W3sDesign_Facade_Design_Pattern_UML.jpg)

Esse padrão é utilizado como uma forma de prover uma interação simplificada para um subsistema complexo da aplicação. O uso de __facade__ é adequado no caso da necessidade de se comunicar com dezesnas de features diferentes.

### Como foi utilizado no projeto

Foi criado um __Service Facade__, que possuia um conjunto de serviços a serem utilizados

![](../../images/patterns/serviceFacade.png)

### Objetivo & problema sanado

O __Facade__ foi utilizado para facilitar o processo de comunicação com os serviços do back-end, assim o desenvolvedor não precisa se preocupar com a localização e funcionamento do serviço em si, apenas em chama-lo da seguinte forma:

Passa a ser:

![](../../images/patterns/serviceCall.png)

## Composite

Esse padrão permite a composição de objetos em uma estrutura de árvore, depois utilizando essas estruturas como objetos individuais.

### Como foi utilizado no projeto

O padrão composite faz parte da arquitetura padrão do Vue, onde componentes possuem uma estrutura de árvore, em que um componente é capaz de conter diversos outros.

### Objetivo & problema sanado

O uso de composite na arquitetura padrão do vue se deve a facilidade de reutilização de componentes, componentes individuais passam a poder ser utilizados em diverças partes do código, evitando reutilização de código.

## Flyweight

Esse padrão visa a performance do seu software, ele estabelece que informações podem ser compartilhadas entre objetos, em vez de fazer com que cada objeto precise inicializar esse dado.

### Como foi utilizado no projeto

O Flyweight, assim como o Composite faz parte da arquitetura padrão do Vue. O Vue utiliza o que chama de props para que possa passar informações pela sua estrutura de árvore, então um dado pode percorrer toda a árvore, assim uma mudança da informação no começo da árvore consegue afetar o seu restante. 

### Objetivo & problema sanado

O uso desse padrão tem como objetivo diminuir a quantidade de informação salva na aplicação, fazendo com que um dado seja compartilhado em diversos componentes.

![](../../images/patterns/props.png)

## Referências

[1] Erich Gamma, Richard Helm, Ralph Johnson, John Vlissides (1994). Design Patterns: Elements of Reusable Object-Oriented Software

