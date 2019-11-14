## Histórico de Revisão

| Data       | Versão | Descrição                          | Autor                                              |
| ---------- | ------ | ---------------------------------- | -------------------------------------------------- |
| 13/11/2019 | 0.1    | Estrutura do Documento, Introdução | [Pedro Féo](https://github.com/phe0)               |
| 14/11/2019 | 0.2    | Casos de uso                       | [Matheus Blanco](https://github.com/MatheusBlanco) |

## 1 Introdução

### 1.1 Finalidade

A intenção desse documento é documentar e transmitir informações relevantes ao QRComer do ponto de vista arquitetural. Facilitando a visualização e entendimento da estrutura do projeto.

### 1.2 Escopo

Este Documento de Arquitetura de Software se aplica ao Sistema QRComer. Desenvolvido na disciplina de Arquitetura e Desenho de Software da Universidade de Brasília.

### 1.3 Definições, Acrônimos e Abreviações

- UnB - Universidade de Brasília
- FGA - Faculdade do Gama
- QRComer - Sistema web com a intenção de reduzir filas em praças de alimentação
- Backend - Parte do sistema responsável por prover e organizar recursos para a interfáce do sistema
- Frontend - Parte do sistema responsável por ser a interfáce entre o sistema e o usuário
- HTTP - **Hypertext Transfer Protocol**
- API: **Application Programming Interface**

### 1.4 Referências

- [Translate-me](https://translate-me.github.io/docs/documentos/projeto/doc_de_arquitetura/)
- [Unigrade](https://ads-unigrade-2019-1.github.io/Wiki/dinamica06/DAS/#522-pacotes-de-design-significativos-do-ponto-de-vista-da-arquitetura)
- [Kalkuli](https://fga-eps-mds.github.io/2018.2-Kalkuli/docs/docArquitetura)
- [https://www.cin.ufpe.br/~gta/rup-vc/extend.formal_resources/guidances/examples/resources/sadoc_v1.htm](https://www.cin.ufpe.br/~gta/rup-vc/extend.formal_resources/guidances/examples/resources/sadoc_v1.htm)
- [https://www.cin.ufpe.br/~gta/rup-vc/core.informal_resources/guidances/examples/resources/ex_sad.htm](https://www.cin.ufpe.br/~gta/rup-vc/core.informal_resources/guidances/examples/resources/ex_sad.htm)

## 2 Representação da Arquitetura

### 2.1 Componentes Importantes

#### Vue

Vue é um **framework progressivo** para a construção de interfaces para o usuário. O **framework** apresenta uma arquitetura baseada em componentes, permitindo a criação de telas completas e também pedaços de código isolados.

#### Sass

Sass é uma extensão de CSS que permite o uso de variáveis, regras de alinhamento, mixins e importações de outros arquivos. O Sass facilita a organização das folhas de estilo além de acelerar sua execução.

#### Django REST

O **framework** Django REST é um conjunto de ferramentas otimizada para a construção de Web APIs em Python.

#### Flask

Flask pe um micro-framework em Python que provê um modelo simples para desenvolvimento web.

#### Microserviços

A arquitetura de microserviços é uma solução arquitetural distribuída que desmembra o sistema da aplicação em pequenos blocos independentes, chamados de serviços. Cada um possuíndo seus próprios processos e banco de dados e se comunicam entre si através de requiisções HTTP.
Os serviços utilizados na aplicação serão:

- **Restaurante**, serviço responsável por conter as informações a respeito do shopping, restaurantes e cardápios. Desenvolvido utilizando Django REST
- **Pedidos**, serviço responsável por tratar toda a lógica que envolve um pedido, desde quando pe feito até ser concluído. Desenvolvido utilizando Django REST
- **Usuário**, serviço responsável por conter as lógicas de autenticação e armazenar as informações dos usuários e seus cartões. Desenvolvido utilizando Django REST
- **Gateway**, serviço responsável por intermediar a comunicação entre os demais serviços. Desenvolvido utilizando Flask
- **Frontend**, serviço responsável por ser a interface entre o sistema e o usuário. Desenvolvido em Vue

#### Comunicação entre serviços

A comunicação entre os serviços será realizada através da API Gateway, responsável por utilizar o protocolo HTTP para intermediar a comunicação.

### 2.2 Diagrama de Arquitetura

![representacao-arquitetural](../images/doc-arquitetura/arquitetura.jpg)

**Obs.**: Foi realizada uma mudança na arquitetura original do projeto, sendo removidas o Frontend de interação com o restaurante, sendo substituído por um acesso especializado ao backend do sistema, para que o QRComer possa ser facilmente integrado à sistemas já existentes. Além disso foi removido o serviço de pagamento, tendo em vista que para o escopo da disciplina o serviço se mostrou muito complexo.

## 3 Objetivos e Restrições Arquiteturais

## 4 Visão de Caso de Uso

### 4.1 Caso de Uso da aplicação com requisitos de priorização Must have

Provindo da documentação referente ao [seminário 3](/../Wiki/docs/seminario3/diagramas_estaticos.md), este diagrama de caso de uso procura demonstrar o funcionamento geral da aplicação **QRComer**.

![caso-de-uso-aplicacao](../images/diagramas-uml/caso_de_uso_aplicacao_3.png)

| **UC01**      | **Caso de Uso dos Requisitos**                                                                                                                 |
| ------------- | ---------------------------------------------------------------------------------------------------------------------------------------------- |
| **Versão**    | Atual: 1.2 (14/11) <br> Anterior: [1.1](#/seminario3/diagramas_estaticos/)                                                                     |
| **Descrição** | Caso de uso dos requisitos.                                                                                                                    |
| **Autor**     | [Shayane Alcântara](https://github.com/shayanealcantara), [Elias Bernardo](), [Leonardo](), [Matheus Blanco](https://github.com/MatheusBlanco) |

#### 4.1.1 Atores

| Atores               | Descrição                                                                                                                   |
| -------------------- | --------------------------------------------------------------------------------------------------------------------------- |
| Usuário              | Utilizador da plataforma, consumidor de produtos alimentícios presentes em _shoppings_ e praças de alimentação              |
| Gerador de QR-Code   | Funcionalidade geradora do QR-Code que permite o acesso à aplicação                                                         |
| Serviço de pagamento | Funcionalidade que simula um serviço real de pagamento                                                                      |
| Restaurante          | Utilizador do cadastro de informações, comerciante que pretende utilizar a aplicação para vender seus produtos alimentícios |

#### 4.1.2 Descrição dos Casos de Uso

| Casos de Uso                                           | Descrição dos Casos de Uso                                                                          |
| ------------------------------------------------------ | --------------------------------------------------------------------------------------------------- |
| UC01 - Cadastrar                                       | O usuário realiza o cadastro na aplicação                                                           |
| UC02 - Preencher Formulário                            | O usuário insere as informações necessárias                                                         |
| UC03 - Fazer Login                                     | O usuário acessa a aplicação                                                                        |
| UC04 - Alterar senha                                   | O usuário requisita uma alteração de senha                                                          |
| UC05 - Gerar QR-Code                                   | O gerador de QR-Code cria um link de acesso para o shopping                                         |
| UC06 - Ler QR Code no shopping                         | O usuário acessa o shopping a partir do link contido no QR-Code                                     |
| UC07 - Acessar a aplicação web                         | O gerador de QR-Code acessa a aplicação a partir da identificação do shopping                       |
| UC08 - Identificar shopping pelo QR-Code               | O gerador de QR-Code gera um código diferente para cada shopping, tornando o link seu identificador |
| UC09 - Ver lista de restaurantes                       | O usuário vê, na página do shopping, todos os restaurantes existentes no mesmo                      |
| UC10 - Selecionar restaurante                          | O usuário escolhe e abre um restaurante a partir da lista                                           |
| UC11 - Selecionar produto                              | O usuário escolhe e seleciona o produto na página de restaurante                                    |
| UC12 - Adicionar produto à sacola                      | O usuário confirma a seleção do produto e o mesmo é adicionado à sacola de pedidos                  |
| UC13 - Editar produtos da sacola                       | O usuário regula a quantidade de produtos na sacola                                                 |
| UC14 - Visualizar itens da sacola                      | O usuário pode ver, na sacola, todos os itens escolhidos                                            |
| UC15 - Finalizar pedido                                | O usuário confirma os itens na sacola e finaliza o pedido                                           |
| UC16 - Inserir forma de pagamento e adicionar CPF      | O usuário escolhe o cartão que deseja usar e adiciona o CPF para nota fiscal, na sacola             |
| UC17 - Cadastrar cartões                               | O usuário cadastra os seus cartões de crédito na conta da aplicação                                 |
| UC18 - Visualizar cartões cadastrados                  | O usuário pode visualizar todos os cartões cadastrados em sua conta                                 |
| UC19 - Remover cartões cadastrados                     | O usuário pode remover todos os cartões cadastrados em sua conta                                    |
| UC20 - Visualizar cartões cadastrados                  | O usuário pode visualizar todos os cartões cadastrados em sua conta                                 |
| UC21 - Efetuar pagamento                               | O usuário confirma o pedido e o serviço de pagamento debita o valor de seu cartão escolhido         |
| UC22 - Cancelar produto                                | O usuário deleta um ou todos os itens da sacola                                                     |
| UC23 - Integrar com API de pagamento                   | O serviço de pagamento simula uma API real de pagamento                                             |
| UC24 - Acessar o back-end para cadastro de dados       | O restaurante acessa o serviço de cadastro de informações do back-end                               |
| UC25 - Cadastrar restaurante                           | O restaurante adiciona as informações jurídicas necessárias para cadastrar o restaurante            |
| UC26 - Adicionar cardápio do estabelecimento           | O restaurante adiciona os itens ao seu cardápio, com valores, descrição e imagens                   |
| UC27 - Receber pedido                                  | O restaurante recebe o pedido criado pelo usuário, para preparação do alimento                      |
| UC28 - Gerar senha                                     | O usuário e o restaurante recebem uma senha gerada pela aplicação                                   |
| UC29 - Receber senha para retirada do pedido           | O usuário e o restaurante recebem uma senha gerada pela aplicação                                   |
| UC30 - Receber feedback da compra                      | O usuário deixa um feedback do produto para o restaurante                                           |
| UC31 - Receber feedback positivo                       | O restaurante recebe um feedback positivo                                                           |
| UC32 - Receber feedback negativo                       | O restaurante recebe um feedback negativo                                                           |
| UC33 - Visualizar mensagem de erro e retornar à sacola | (?)                                                                                                 |

## 5 Visão Lógica

diagramas de classe, diagramas de pacote, diagramas de de colaboração

tentar explicar a estrutura do projeto de uma forma lógica

## 6 Visão de Processo

tentar explicar o funcionamento do sistema em forma de processos, como será a interação, que etapas serão feitas pra se realizar atividades

diagramas de sequencias e outros q possam dar uma ideia de processo

## 7 Visão da Implantação

explicar parte de devops, ci, cd, pipeline

## 8 Visão da Implementação

explicar a implantação física dos processos e componentes, mostrar processamento de nós, configuração física, servidores

diagrama de implantação

não possuímos nada desse aspecto, ver se é relevante construir esse tipo de diagrama

## 9 Visão de Dados

Mostrar e explicar modelo de dados

## 10 Qualidade

Mostrar formas de medir qualidade do código e do produto, cobertura de testes por exemplo

## Tamanho e Desempenho

Mostrar volume de dados do sistema, tamanho do projeto, explicar e determinar normas de desempenho

## 11 Modelos/Padrões Arquiteturais

explicar modelos/padrões arquiteturais utilizados no projeto
monolitico ou distribuido? pq?
mvc no django?
cliente servidor
etc
