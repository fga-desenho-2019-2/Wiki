# Metodologia do projeto

## Histórico de Revisão:
|Data|Versão|Descrição|Autor|
|-|-|-|-|
|03/09/2019|0.2|Adição dos templates de metodologias e padronizações  | [Elias Bernardo](https://github.com/ebmm01)|
|01/09/2019|0.1|Criação do documento, adição do diagrama de definição do tema a ser trabalhado durante o semestre | [Shayane Alcântara](https://github.com/shayanealcantara)|

## Introdução

Este documento tem como objetivo descrever a metodologia a ser utilizada pelo grupo e como se deu o processo de decisão, além de diagramas que demonstram de forma visual alguns processos da metodologia.

## Metodologias 

### Kanban

[Kanban](../../iniciativas_extras/kanban/5w2h) é um termo de origem Japonesa, que significa “cartão” ou “sinalização”. É um conceito relacionado com a utilização de cartões (post-it e outros) para indicar o andamento dos fluxos de produção em empresas de fabricação em série. Ele está estreitamente ligado ao conceito de _just in time_ (“momento certo” em tradução livre). Ele surge na década de 1960 nas mãos da empresa Toyota, sendo ainda hoje o sistema utilizado frequentemente por diversas empresas. Sua utilização se dá por meio do uso de cartões num quadro dividido em colunas que variam dependendo do tipo de kanban (de produção ou movimentação, por exemplo). Cada cartão é movimentado de acordo com as necessidades e objetivos da empresa, além do significado de cada coluna.

| Kanban |  |
|--|--|
|__Pontos positivos__| > Permite uma fácil gerência das issues/US's e tasks, pois traballha com ferramentas visuais. <br> <br> > Ao limitar a quantidade de trabalho em andamento, o risco de débitos técnicos será reduzido <br> <br> > É possível coletar métricas e obter indicadores de problemas futuros. |
|__Adaptação ao projeto__| Usaremos a ferramenta [Zenhub](https://www.zenhub.com/) como um [E-Kanban](../../iniciativas_extras/kanban/melhorias/#2-melhorias). As colunas serão colunas típicas do processo de desenvolvimento, como _to do_, _doing_, etc |
|__Possíveis problemas__| __1) O fato de o Kanban ser bastante livre pode fazer com que a equipe tenha problemas em gerenciar as US's e sprints, podendo até mesmo acarretar débitos técnicos.__ <br> > __Solução:__ Definir uma gerência que irá guiar a equipe no processo, elucidando as US's, suas dificuldades e as necessidades do projeto <br> <br> __2) Se a quantidade de trabalho e a pontuação das issues não for muito bem definida, pode ocorrer tanto sobrecarga de trabalho quanto uma sprint com pouca produtividade.__ <br> > __Solução:__ [Limitar a quantidade de _Work in progress_ (WIP ou trabalho em andamento)]() e definir uma métrica de pontuação para as US's em que todos no grupo possam ter uma noção parecida.|

### eXtreme Programming (XP)

O Extreme Programming é um modelo de desenvolvimento de software, criado em 1996, por Kent Bech. O XP é um conjunto bem definido de regras, que vem ganhando um grande número de adeptos e por oferecer condições para que os desenvolvedores respondam com eficiência a mudanças no projeto, mesmo nos estágios finais do ciclo de vida do processo, devido a quatro lemas adotados por seus seguidores, que correspondem a quatro dimensões a partir das quais os projetos podem ser melhorados. São eles: __Comunicação__, __Simplicidade__, __FeedBack__ e __Coragem__ [[1]](#referencias). 

| XP |  |
|--|--|
|__Pontos positivos__| > Ao ter como "métafora" uma de suas práticas, permite que tanto o cliente quanto o(s) desenvolvedor(es) do projeto possam conversar num mesmo nível de linguagem, facilitando tanto reunioes quanto o desenvolvimento do produto em si. <br> <br> >As práticas que se voltam para o time, como _pair programming_, posse coletiva do software, time coeso e ritmo sustentável fazem que a equipe se sinta mais icentivada e em sintonia com o projeto, reduzindo atritos e riscos de desembramento do time.|
|__Adaptação ao projeto__| 1) A equipe optou por não fazer reuniões em pé (dailys irão ocorrer conforme documentado em [Daily meeting]()). <br> <br> 2)__Pair programming:__ apesar de seguirmos essa prática, nem sempre será possível parear fisicamente. A adaptação fica por conta da possibilidade de pareamentos remotos ou, em raros casos, tasks individuais. <br> <br> 3) Não iremos usar __TDD__. Faremos testes unitários, inclusive com [regras de aceitação de um Pull Request]() com porcentagem mínima de corbertura definida pelo grupo, porém não desenvolveremos seguindo __TDD__. <br> <br> 4) A [comunicação com o cliente]() será um pouco mais indireta, visto num primeiro momento não teremos um "cliente fixo". |
|__Possíveis problemas__| 1)  Pelo fato de não haver um cliente em específico (pessoa), não haverá uma comunicação frequente e direta.Isso por si só vai contra alguns princípios do XP, e pode prejudicar o desenvolvimento do projeto como um todo. <br> > __Solução:__ Buscar um cliente cujas necessidades sejam atendidas pelo QRComer, mantendo a ideia do aplicação abrangente ao mesmo tempo. Isso possibilitará um feedback real do cliente, uma comunicação eficiente e a redução de retrabalhos por features que talvez possam vir a ser inúteis.|

### Scrum

O Scrum é um framework dentro do qual pessoas podem tratar e resolver problemas complexos e adaptativos, enquanto produtiva e criativamente entregam produtos com o mais alto valor possível. Scrum não é um processo ou uma técnica para construir produtos, em vez disso, é um framework dentro do pode-se empregar vários processos ou técnicas. O Scrum deixa claro a eficácia relativa das práticas de gerenciamento e desenvolvimento de produtos, de modo que você possa melhorá-las.Possui seu foco no gerenciamento e projeto da organização onde é difícil planejar à frente. [[2]](#referencias)

| Scrum |  |
|--|--|
|__Pontos positivos__| > Permite que a equipe se adapte a enventuais alterações no backlog <br> > As entregas pequenas permitem que o produto seja desenvolvido de forma gradual, e que a cada ponto de entrega os feedbacks possam evoluir o projeto, trando possíveis alterações que irão agregar ainda mais valor ao produto final <br> > As reuniões e definições do backlog (sprint backlog) tornam o desenvolvimento e o progresso da equipe transparente, mitigando eventuais falhas e desentendimentos entre os membros. <br> > Incentiva os membros a buscarem melhoria contínua|
|__Adaptação ao projeto__| 1) Os __papeis principais__ (scrum master & PO, por exemplo) serão enxugados, e as pessoas nesses papeis irão ser alteradas no inicio de cada sprint. <br> <br> 2) As __sprints__ terão duração de uma semana, indo de segunda a segunda, tendo seu "fim real" no domingo. <br><br> 3) As __Daily meetings__ não serão sequidas à risca. As reuniões serão feitas às terças, quintas e sábados, via Bot no Telegram. os resultados das dailys serão compilados e adicionados à wiki, para fins de acompanhamento e versionamento.|
|__Possíveis problemas__| 1) __O fato de não definirmos explicitamente os papeis principais pode gerar diversos problemas, dentre os quais: variação na produtividade da equipe, dificuldade na gerencia da equipe e problemas de comunicação com o cliente.__ <br> > __Solução:__ Manter a variação na equipe de gerência dentro de um grupo específico, que acabaria se tornando "especializado". 2) _Ao não fazermos daily meetings diariamente, abrimos margem para um buraco no acompanhamento do projeto, visto que durante alguns dias ninguém saberá o que os membros da equipe estará fazendo._ <br> > __Solução:__ Por ser no telegram, as dailys poderiam ser, no mínimo, todos os dias úteis. |

### Lean

| Lean |  |
|--|--|
|Sobre|--|
|__Pontos positivos__|--|
|__Adaptação ao projeto__|--|
|__Possíveis problemas__|--|

### Nossa aplicação

...

## Referencias

[1] MÉTODO ÁGIL XP (EXTREME PROGRAMMING) -  Luciano Malaquias de Souza**

[2]  Schwaber, Ken. Agile Project Management with Scrum. 