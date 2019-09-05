# Padronizações e processos

## Histórico de Revisão:
|Data|Versão|Descrição|Autor|
|-|-|-|-|
|04/09/2019|0.1|Criação do documento, adição das padronizações | [Elias Bernardo](https://github.com/ebmm01)|

## Introdução

Este documento tem como objetivo descrever as padronizações e processos a serem utilizados pelo grupo.

## Padronizações & Processos

### Git flow & Branches

A política de _branchs_ foi idealizada para trabalhar em conjunto com a ferramenta do _git flow_. Essa Política de Branches deverá guiar os membros do grupo na organização de suas contribuições ao repositório. O objetivo é manter a integralidade e confiabilidade do código do projeto, evitando conflitos e incentivando a comunicação entre o time [[1]](#referencias).

![git flow](https://jeffkreeftmeijer.com/git-flow/git-flow.png)

* __master__ - Branch principal do repositório onde será permitida somente a integração de software consolidado e testado. Essa branch será exclusiva para a entrega de Realeases, ou seja, um conjunto maior de funcionalidades que integram o software, aqui estará a versão _**stable**_ do software.

* __develop__ - Branch para integração de novas funcionalidades, onde será permitido a entrega das features desenvolvidas e que estão em um estágio avançado de completude. Será o branch base para o início do desenvolvimento das features e da correção de bugs. Aqui também serão _mergeadas_ as releases.

* __feature/<nome-da-feature>__ - Branch utilizada para o desenvolvimento de novas features do _backlog_. Caso a feature tenha sida proposta por uma _issue_ do repositório e aceita no _backlog_ o nome deverá conter o número da _issue_. 
Ex: feature/1-<nome-da-nova-feature> (Considerando que a feature tenha sido solicitada na _issue_ #1)

* __bugfix/<nome-do-bug>__ - Branch utilizada para corrigir bugs de baixa/média urgência e que não estão presentes na branch __master__. Caso o bug tenha sido reportado por uma _issue_ do repositório o nome deverá conter o número da _issue_. 
 Ex: bugfix/1-<descrição-do-bug> (Considerando que o bug tenha sido reportado na _issue_ #1)

### Pull requests

### Commits

### Issues (& métricas de pontuação)

### Sprints

#### Definition of Done

#### Sprint Review & Sprint Retrospective

### Daily Meetings

Apesar de o Scrum delimitar reunições diárias e o XP ter como padrão reuniões em pé, não seguiremos à risca nenhum desses princípios. A princípio serão feitas Dailys às terças, quintas e sábados, vis Bot no Telegram. Os membros do grupo irão então compilar todos esses dados e adicionar à wiki, para fazer um paralelo com a produtividade da equipe naquela sprint (medida através da pontuação de cada Issue) ou para verificar a causa de possíveis falhas. 

Caso 3 reuniões não se mostrem suficientes, iremos aumentar a quantidade de dias necessários, focando principalmente os dias úteis. Há riscos envolvidos nessa estrátégia, conforme abordados em ["Possíveis problemas"](../metodologia/#scrum) no Scrum, mas como a equipe já possui esse fato em mente, já existem estratégias para mitigar esses possíveis problemas (como citado no começo do parágrafo, por exemplo).


## Referências 

[1] - [A successful Git branching model By Vincent Driessen](https://nvie.com/posts/a-successful-git-branching-model/)