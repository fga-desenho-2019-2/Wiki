## Histórico de Revisão

|Data|Versão|Descrição|Autor|
|-|-|-|-|
|23/10/2019|0.1|Criação do documento|[Elias Bernardo](https://github.com/ebmm01)|

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

## Referências

[1] https://docs.djangoproject.com/en/2.2/topics/signals/

[2] Erich Gamma, Richard Helm, Ralph Johnson, John Vlissides (1994). Design Patterns: Elements of Reusable Object-Oriented Software 