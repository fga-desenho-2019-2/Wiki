# Padronizações e processos

## Histórico de Revisão:
|Data|Versão|Descrição|Autor|
|-|-|-|-|
|05/09/2019|0.2| Finalizando a adição dos tópicos | [Elias Bernardo](https://github.com/ebmm01)|
|04/09/2019|0.1| Criação do documento, adição das padronizações | [Elias Bernardo](https://github.com/ebmm01)|

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

Pull requests serão feitos somente nos repositórios de desenvolvimento, quando uma __Feature__ ou determinado código (seja ela uma refatoração ou um __bugfix__) estiver finalizado. Para que seja aprovado, ele deve passar em todo o __Pipeline__ (cujo diagrama pode ser visto [aqui]()) e ter no mínimo 70% de cobertura de testes unitários. Após todos esses requisitos serem atendidos, até 3 membros que não os que trabalharam no PR irão fazer o review do PR,julgando se ele precisa ou não de alterações. Por fim, os responsáveis pelo PR ficam com a responsabilidade de fazer o Merge e resolver possíveis conflitos entre as branches.


### Commits

Todos os commits deverão ser feitos em __inglês__ (decidido em comum acordo pelo grupo), com verbos no __gerúndio__. Ele deverá ter um breve títutlo e uma descrição das alterações realizadas. Vale salientar que deverão ser feitos __commits atômicos__, de forma a facilitar o versionamento e o entendimento das alterações no código por todos os membros da equipe.


### Issues (& métricas de pontuação)

As issues são o ponto de partida para o início das tasks. Antes de qualquer task ser iniciada, deve sempre haver uma issue relacionada à ela antes. As issues devem seguir o modelo abaixo, que já está no [Github](https://github.com/fga-desenho-2019-2/Wiki/blob/master/.github/ISSUE_TEMPLATE/issue-template.md) [[2]](#referencias).

```
## Nome da Issue
[Descrição simples da tarefa a ser realizada.]

## Descrição da Issue
[Descrever issue brevemente, colocando informações necessárias para a realização da mesma.]

### Tasks:
- [ ] Task 1
- [ ] Task 2
- [ ] Task 3

## Assignees
A issue deve ser atribuída a pelo menos um colaborador do projeto.

## Labels
A issue deve ser marcada com uma ou mais tags adequadas, para fins de rastreamento do projeto.

```
No caso de issues de desenvolvimento, faz-se necessário atribuir uma pontuação ou alguma forma de metrificação para que todos possam ter uma noção do trabalho que a issue dará. Inicialmente a equipe pensou em utilizar métodos como o __Planning Poker__, fazendo a distribuição de pontos na sequência de Fibonacci. Contudo não houve um consenso quanto ao valor máximo ou a escala, o que levou a equipe a, pelo menos inicialmente, metrificar as issues por meio de textos:

 - Muito fácil
 - Fácil
 - Médio
 - Difícil
 - Muito difícil

Ainda assim não houve consenso em definir uma escala, pois o que é fácil para alguns pode ser difícil para outro membro (por nunca ter usado determinada tecnologia, por exemplo). Dessa forma o grupo irá monitorar o progresso de cada dupla de pareamento levando em conta quanto tempo ela levou para fazer determinada issue de determinada dificuldade, sempre aprimorando a metrificação.

#### Limite de _Work in progress (WIP)_

A fim de evitar a sobrecarga de trabalho (que poderia consequentemente levar a equipe a entrar em débitos técnicos) a equipe decidiu ainda limitar a quantidade de trabalhos em andamento (ou WIP). Nesse ponto a equipe chegou num consenso:

    maxWIP = Nmembros +- 0.2*Nmembros 

Onde __maxWip__ é o máximo de trabalho em andamento e __Nmembros__ é o número de membros disponíveis na Sprint. Vale salientar que a margem de erro é justamente para cobrir eventuais faltas de membros na sprints (por qualquer que seja o motivo).

### Sprints 

As sprints terão duração de uma semana, indo de segunda à domingo. O fim será aos domingos, onde será feito o preenchimento do quadro de conhecimento e contabilização de algumas métricas. Após isso será feita uma reunião na segunda feira durante o almoço, para que a equipe possa discutir sobre o rumo da nova sprint. Como nem todos os membros podem comparecer nesse horário, será feito ainda uma reunião via hangouts no período da noite, em horário flexível [[3]](#referencias).
Em suma :

- __Duração:__ 1 semana;
- __Início da sprint:__ Segundas feiras;
- __Final da sprint:__ Domingo.

Quanto ao quadro de conhecimento, ele deverá ser __obrigatoriamente__ preenchido aos domingos, pela pessoa contrária da dupla de pareamento. Dessa forma ele irá refletir de forma mais realista e imparcial a evolução do conhecimento dos membros do grupo.

#### Definition of Done

Uma sprint somente será dita como concluída após o review e retrospectiva, além do preenchimento do quadro de conhecimento. Isso permitira que todo o grupo, mesmo que obrigatoriamente, tenha conhecimento do andamento do projeto e dos possíveis problemas. 
A conclusão de todas as issues é um cenário ideal, mas não obrigatória para que a sprint seja concluida, visto que há a (evitada) possibilidade de débito técnico.

#### Sprint Review & Sprint Retrospective

O review e a restrospectiva da sprint serão feitos nos domingos, ao término da sprint. Nele iremos abordar todos os pontos positivos, negativos e melhorias, sempre documentando todos eles. Também é onde faremos a verificação da produtividade da equipe e onde iremos evoluir a metrificação de pontuação das issues, visto que a cada sprint a equipe estará mais madura para pontuar e medir dificuldades.

### Daily Meetings

Apesar de o Scrum delimitar reunições diárias e o XP ter como padrão reuniões em pé, não seguiremos à risca nenhum desses princípios. A princípio serão feitas Dailys às terças, quintas e sábados, vis Bot no Telegram. Os membros do grupo irão então compilar todos esses dados e adicionar à wiki, para fazer um paralelo com a produtividade da equipe naquela sprint (medida através da pontuação de cada Issue) ou para verificar a causa de possíveis falhas. 

Caso 3 reuniões não se mostrem suficientes, iremos aumentar a quantidade de dias necessários, focando principalmente os dias úteis. Há riscos envolvidos nessa estrátégia, conforme abordados em ["Possíveis problemas"](../metodologia/#scrum) no Scrum, mas como a equipe já possui esse fato em mente, já existem estratégias para mitigar esses possíveis problemas (como citado no começo do parágrafo, por exemplo).


## Referências 

[1] - [A successful Git branching model By Vincent Driessen](https://nvie.com/posts/a-successful-git-branching-model/)

[2] - [About issue and pull request templates](https://help.github.com/en/articles/about-issue-and-pull-request-templates)

[3] - Schwaber, Ken. Agile Project Management with Scrum. (Para toda parte de Sprint)