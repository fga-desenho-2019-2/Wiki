## Histórico de revisões

|Data|Versão|Descrição|Autor|
|-|-|-|-|
|19/10/2019|0.1| Abertura do documento |Elias Bernardo|

## 1 - Introdução

O 5w2h é um checklist de determinadas atividades que precisam ser desenvolvidas com o máximo de clareza possível. Por ser uma ferramenta extremamente versátil, o grupo optou por utizá-la, destrinchando os principais aspectos do pattern __Proxy__ de forma simples e direta.

## 2 - 5W2H

### 2.1 What?

#### Etimologia

Proxy é á a contração da palavra __anglo-normanda__ ***procuracie***, que vem do __latin medieval__ ***procuratia***., e significa algo como:

 - Um agente ou substituto autorizado a agir por outra pessoa
 - A autoridade para agir por outro; carta de procuração

#### O Padrão

O Pattern Proxy é um __padrão Estrutural__ definido pelo GoF (Gang of Four). O seu objetivo principal é encapsular um objeto através de um outro objeto que possui a mesma interface, de forma que o segundo objeto, conhecido como “Proxy”, controla o acesso ao primeiro, que é o objeto real.

![Imagem](https://upload.wikimedia.org/wikipedia/commons/6/6e/W3sDesign_Proxy_Design_Pattern_UML.jpg)

### 2.2 When?

O Proxy é utilizado principalmente quando:

- O acesso a um objeto deve ser controlado (__Protection Proxies__).
- Funcionalidades adicionais devem ser fornecidas ao acessar um objeto (__Smart References__).
- Você precisa implementar objetos que precisam de muitos recursos, mas você não quer instanciar tais objetos a menos/até que eles sejam requisitados pelo cliente (__Virtual Proxies__).

Podemos citar ainda os __Remote Proxies__ e as __Smart References__, que são implementações do proxy que buscam resolver alguns outros problemas como __fornecer uma representação local__ para um objeto que esteja em um __espaço de endereço diferente__ e __fornecer um acesso sofisticado a determinados objetos__, respectivamente.

### 2.3 Why?

![](https://www.sihui.io/wp-content/uploads/2018/01/img_5a4dc32163a00.png)

Às vezes, precisamos da capacidade de controlar o acesso a um objeto. Por exemplo, se precisarmos usar apenas alguns métodos de alguns objetos custosos/pesados, inicializaremos esses objetos quando precisarmos deles completamente. Até esse ponto, podemos usar alguns objetos leves, expondo a mesma interface que os objetos pesados. Esses objetos leves são chamados de proxies e eles instanciam esses objetos pesados quando realmente são necessários; então, usaremos alguns objetos leves.

Essa capacidade de controlar o acesso a um objeto pode ser necessária por vários motivos: controlar quando um objeto caro precisa ser instanciado e inicializado, concedendo direitos de acesso diferentes a um objeto, além de fornecer um meio sofisticado de acessar e referenciar objetos executando em outros processos, em outras máquinas.


### 2.4 Who?

Linguagens com um pé em programação orientada a objetos, como Java por exemplo.

### 2.5 How?

[Exemplo de código](https://github.com/fga-desenho-2019-2/design_patterns/tree/master/proxy/exemplo%201)

## Referências

- [1] Erich Gamma, Richard Helm, Ralph Johnson, John Vlissides (1994). Design Patterns: Elements of Reusable Object-Oriented Software

- [2] https://en.wiktionary.org/wiki/proxy

- [3] https://www.oodesign.com/proxy-pattern.html
