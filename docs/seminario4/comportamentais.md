## Histórico de Revisão

|Data|Versão|Descrição|Autor|
|-|-|-|-|
|23/10/2019|0.1|Criação do documento|[Elias Bernardo](https://github.com/ebmm01)|
|24/10/2019|0.2|Adição do Strategy| [Guilherme Marques](https://github.com/guilhesme23) [Saleh Kader](https://github.com/devsalula)|
|24/10/2019|0.2|Adição do padrão de Factory Method|[Shayane Alcantara](https://github.com/shayanealcantara) e [Sara Silva](https://github.com/sarasilva)|

## Introdução

Estes padrões lidam com o processo de comunicação, gerenciamento de relações, e responsabilidades entre objetos

Nesse documento iremos abordar os padrões que grupo utilizou, explicando como foi utilizado, o por quê e qual problema foi solucionado com a implementação.

## Observer

Observador é um padrão de design __comportamental__ que permite definir um mecanismo de __inscrição__ para notificar vários objetos sobre quaisquer eventos que ocorram no objeto que estão __observando__.

### Como foi utilizado no projeto

__The Django way!__ O Django implementa [signals](https://docs.djangoproject.com/en/2.2/topics/signals/), o que ajuda a permitir que aplicativos dissociados sejam notificados quando ações ocorrem em outro local do framework ou em outro serviço no nosso caso. Em poucas palavras, os sinais permitem que certos remetentes notifiquem um conjunto de receptores de que alguma ação ocorreu. Eles são especialmente úteis quando muitas partes do código podem estar interessados nos mesmos eventos. 

![](http://1.bp.blogspot.com/_qOKUA2GftVM/SjAH5nr8cJI/AAAAAAAAALE/kAGYscUQerc/w1200-h630-p-k-no-nu/django_signal_sender_receiver_association.png)

### Objetivo & problema sanado

Ao utilizarmos os signals, podemos fazer um sistema de subscrição de e-mails para que os usuários interessados em receber novidades possam ser notificados via e-mail. Somente irão receber as mensagens os usuários que vonluntariamente se cadastrarem no  sistema de subscrição.

## Strategy

O Strategy é um padrão de projeto __comportamental__ onde permite introduzir um família de classes para variações de algoritmo, ou seja, permitir realiza a mesma função de maneira diferentes.

### Como foi utilizado no projeto

O Padrão tem como plano a utilização de diferentes classes para diferentes comportamentos dentro do código. O intuito é que se utilize de uma classe Pai, para servir de base para construção das classes filhas. Nesse caso, foi pensado a implementação dentro do serviço de pagamentos do QRComer. A inteção era que as classes filhas descrevessem diferentes formas de pagamento utilizando a interface da classe pai. As classes filhas, seriam uma de pagamento por Boleto e outra de pagamento por Cartão de Crédito.

### Objetivo & problema sanado
A implementação não deu certo, por conta do objetivo do produto. O QRComer, leva em conta que o usuário pague por imediato a sua refeição, o que inviabilizaria a implementação de um tipo de pagamento como o de Boleto, onde o usuário só conseguiria receber a sua refeição após a confirmação desse pagamento, que normalmente demora bastante.


## Template Method

Template Method é um padrão de design __comportamental__ que define o "esqueleto" de um algoritmo na superclasse, mas permite que as subclasses substituam etapas específicas do algoritmo sem alterar sua estrutura [[3]](https://refactoring.guru/design-patterns/template-method).

### Como foi utilizado no projeto

O padrão foi selecionado para auxiliar no aproveitamento de linhas de código, por tratar-se de dados semelhantes nas classes definidas, podendo ser reaproveitado quando e o que for necessário. Ou seja, ele permite a delimitação de passos na ordem a serem executados e de que forma eles serão executados a depender da condição.

![](https://raw.githubusercontent.com/fga-desenho-2019-2/Wiki/develop/docs/images/diagramas-uml/class_diagram_restaurant_v2.jpg)

### Objetivo & problema sanado
O principal problema observado no código implementado foi a duplicação de diversas linhas de código. Com a adaptação do padrão, foi possível reduzir esse fator e assim, permitir uma melhor legibilidade do código em questão. A seguir segue a adaptação da implementação de uma parte das regras de serviço.

![restaurant_1](../images/patterns/restaurante_1.png)

![restaurant_2](../images/patterns/restaurant_2.png)

![restaurant_3](../images/patterns/restaurant_3.png)

## Referências

[1] https://docs.djangoproject.com/en/2.2/topics/signals/

[2] Erich Gamma, Richard Helm, Ralph Johnson, John Vlissides (1994). Design Patterns: Elements of Reusable Object-Oriented Software 

[3] https://refactoring.guru/design-patterns/template-method