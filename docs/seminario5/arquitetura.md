## Histórico de Revisão

| Data       | Versão | Descrição                                                       | Autor                                              |
| ---------- | ------ | --------------------------------------------------------------- | -------------------------------------------------- |
| 13/11/2019 | 0.1    | Estrutura do Documento, Introdução e Representação Arquitetural | [Pedro Féo](https://github.com/phe0)               |
| 14/11/2019 | 0.2    | Casos de uso, visão de processo e visão de tamanho e desempenho | [Matheus Blanco](https://github.com/MatheusBlanco) |
| 15/11/2019 | 0.3s   | Refatorando diagramas e adicionando mais visões de processo     | [Matheus Blanco](https://github.com/MatheusBlanco) |

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

| Casos de Uso                                      | Descrição dos Casos de Uso                                                                          |
| ------------------------------------------------- | --------------------------------------------------------------------------------------------------- |
| UC01 - Cadastrar                                  | O usuário realiza o cadastro na aplicação                                                           |
| UC02 - Preencher Formulário                       | O usuário insere as informações necessárias                                                         |
| UC03 - Fazer Login                                | O usuário acessa a aplicação                                                                        |
| UC04 - Alterar senha                              | O usuário requisita uma alteração de senha                                                          |
| UC05 - Gerar QR-Code                              | O gerador de QR-Code cria um link de acesso para o shopping                                         |
| UC06 - Ler QR Code no shopping                    | O usuário acessa o shopping a partir do link contido no QR-Code                                     |
| UC07 - Acessar a aplicação web                    | O gerador de QR-Code acessa a aplicação a partir da identificação do shopping                       |
| UC08 - Identificar shopping pelo QR-Code          | O gerador de QR-Code gera um código diferente para cada shopping, tornando o link seu identificador |
| UC09 - Ver lista de restaurantes                  | O usuário vê, na página do shopping, todos os restaurantes existentes no mesmo                      |
| UC10 - Selecionar restaurante                     | O usuário escolhe e abre um restaurante a partir da lista                                           |
| UC11 - Selecionar produto                         | O usuário escolhe e seleciona o produto na página de restaurante                                    |
| UC12 - Adicionar produto à sacola                 | O usuário confirma a seleção do produto e o mesmo é adicionado à sacola de pedidos                  |
| UC13 - Editar produtos da sacola                  | O usuário regula a quantidade de produtos na sacola                                                 |
| UC14 - Visualizar itens da sacola                 | O usuário pode ver, na sacola, todos os itens escolhidos                                            |
| UC15 - Finalizar pedido                           | O usuário confirma os itens na sacola e finaliza o pedido                                           |
| UC16 - Inserir forma de pagamento e adicionar CPF | O usuário escolhe o cartão que deseja usar e adiciona o CPF para nota fiscal, na sacola             |
| UC17 - Cadastrar cartões                          | O usuário cadastra os seus cartões de crédito na conta da aplicação                                 |
| UC18 - Visualizar cartões cadastrados             | O usuário pode visualizar todos os cartões cadastrados em sua conta                                 |
| UC19 - Remover cartões cadastrados                | O usuário pode remover todos os cartões cadastrados em sua conta                                    |
| UC20 - Visualizar cartões cadastrados             | O usuário pode visualizar todos os cartões cadastrados em sua conta                                 |
| UC21 - Efetuar pagamento                          | O usuário confirma o pedido e o serviço de pagamento debita o valor de seu cartão escolhido         |
| UC22 - Cancelar produto                           | O usuário deleta um ou todos os itens da sacola                                                     |
| UC23 - Integrar com API de pagamento              | O serviço de pagamento simula uma API real de pagamento                                             |
| UC24 - Acessar o back-end para cadastro de dados  | O restaurante acessa o serviço de cadastro de informações do back-end                               |
| UC25 - Cadastrar restaurante                      | O restaurante adiciona as informações jurídicas necessárias para cadastrar o restaurante            |
| UC26 - Adicionar cardápio do estabelecimento      | O restaurante adiciona os itens ao seu cardápio, com valores, descrição e imagens                   |
| UC27 - Receber pedido                             | O restaurante recebe o pedido criado pelo usuário, para preparação do alimento                      |
| UC28 - Gerar senha                                | O usuário e o restaurante recebem uma senha gerada pela aplicação                                   |
| UC29 - Receber senha para retirada do pedido      | O usuário e o restaurante recebem uma senha gerada pela aplicação                                   |

## 5 Visão Lógica

diagramas de classe, diagramas de pacote, diagramas de de colaboração

tentar explicar a estrutura do projeto de uma forma lógica

## 6 Visão de Processo

### 6.1 Processo de cadastro de usuário:

![cadastro de usuário](/images/diagramas-uml/Sequencia_cadastrar_usuário_v1.png)

| **DS02**      | **Diagrama de sequência de cadastro de usuário**                                  |
| ------------- | --------------------------------------------------------------------------------- |
| **Versão**    | Atual: 1.0 (19/09) <br> Anterior: -                                               |
| **Descrição** | Diagrama UML da sequência do cadastro de usuários                                 |
| **Autor**     | [Pedro Feo](https://github.com/Phe0), [Saleh Kader](https://github.com/devsalula) |

- O usuário acessa a plataforma;
- O usuário abre a página de cadastro;
- O usuário insere as informações de cadastro;
- O microsserviço de usuários realiza um POST para guardar as informações no banco;
- O microsserviço de usuários valida as informações com o banco de dados;
- O microsserviço de usuários cria o usuário com as informações salvas no banco;
- O usuário é redirecionado à página principal.

### 6.2 Processo de login de usuário:

![login de usuário](/images/diagramas-uml/Sequencia_login_usuario_v1.png)

| **DS02**      | **Diagrama de sequência de login de usuário**  |
| ------------- | ---------------------------------------------- |
| **Versão**    | Atual: 1.0 (19/09) <br> Anterior: -            |
| **Descrição** | Diagrama UML da sequência de login de usuários |
| **Autor**     | [Saleh Kader](https://github.com/devsalula)    |

- O usuário acessa a plataforma;
- O usuário abre a página de login;
- O usuário insere o e-mail e senha e aperta o botão de login;
- O microsserviço de usuário realiza um POST para verificar a existência do usuário no banco de dados;
- Se:
  - O usuário existir, com e-mail e senha corretos, o login é realizado;
  - O usuário não existir, ou e-mail ou senha errados, o login não é realizado;
- O usuário é redirecionado à página principal.

### 6.3 Processo de realização de pedido

![microsserviço de pedido](../images/diagramas-uml/diagrama_sequencia_pedidos-2.png)

| **DS01**      | **Diagrama de sequência de realização de pedidos**                                              |
| ------------- | ----------------------------------------------------------------------------------------------- |
| **Versão**    | Atual: 2.0 (19/09) <br> Anterior: [1.0](../images/diagramas-uml/diagrama_sequencia_pedidos.png) |
| **Descrição** | Diagrama UML da sequência do microsserviço de pedidos                                           |
| **Autor**     | [Pedro Feo](https://github.com/Phe0), [Matheus Blanco](https://github.com/MatheusBlanco)        |

- O usuário acessa a plataforma;
- O usuário abre a página de login;
- O usuário realiza o login e é redirecionado à página principal;
- O usuário acessa a página de shopping;
- O usuário seleciona um restaurante e abre sua página;
- O usuário escolhe e seleciona um item dentro do restaurante;
- O usuário adiciona o item escolhido à sua sacola;
- O usuário confirma o pedido e o mesmo é criado no microsserviço de pedidos;
- A aplicação chama o serviço de pagamento simulado;
- O serviço de pagamento simula um pagamento real, a partir dos dados.

### 6.4 Processo de cadastro de cartão

![cadastro de cartão](/images/diagramas-uml/Sequencia_cadastrar_cartao_v1.png)

| **DS02**      | **Diagrama de sequência de cadastro de cartão** |
| ------------- | ----------------------------------------------- |
| **Versão**    | Atual: 1.0 (19/09) <br> Anterior: -             |
| **Descrição** | Diagrama UML da sequência do cadastro de cartão |
| **Autor**     | [Pedro Feo](https://github.com/Phe0)            |

- O usuário acessa a plataforma;
- O usuário abre a página de login;
- O usuário realiza o login e é redirecionado à página principal;
- O usuário acessa a página de cartão;
- O usuário clica no botão de adicionar cartão;
- O usuário insere as informações do cartão;
- O microsserviço de usuário realiza um POST para salvar os dados no banco de dados;
- O banco de dados cria um cartão a partir dos dados salvos.

### 6.5 Processo de cadastro de restaurante no back-end

![colaboracao-restaurant](../images/diagramas-uml/colaboracao_restaurant_actions.jpg)

| **DC02**      | **Diagrama de colaboração do microsserviço de Restaurante**                                 |
| ------------- | ------------------------------------------------------------------------------------------- |
| **Versão**    | Atual: 1.0 (19/09) <br> Anterior: -                                                         |
| **Descrição** | Diagrama UML de colaboração do microsserviço de restaurante                                 |
| **Autor**     | [Pedro Rodrigues](https://github.com/pedro-prp), [Sara Silva](https://github.com/silvasara) |

- O restaurante deve acessar o serviço back-end de CRUD de restaurante;
- O restaurante cria um texto em JSON com as informações do restaurante, incluindo informações jurídicas e nome fantasia;
- O restaurante então cria um texto em JSON para cadastrar uma categoria;
- O restaurante então cria um texto em JSON para cadastrar um item de seu menu;
- O restaurante repete as duas últimas ações para criar a quantidade necessária de categorias e de itens do menu.

### 6.6 Processo de checagem de pedidos antigos

![sequencia_checar_pedidos_antigos](../images/diagramas-uml/diagrama_sequencia_pedidos_antigos-2.png)

| **DS01**      | **Diagrama de sequência de checagem de pedidos antigos**                                                |
| ------------- | ------------------------------------------------------------------------------------------------------- |
| **Versão**    | Atual: 2.0 (17/09) <br> Anterior: [1.0](../images/diagramas-uml/diagrama_sequencia_pedidos_antigos.png) |
| **Descrição** | Diagrama UML da sequência do microsserviço de checagem de pedidos antigos                               |
| **Autor**     | [Pedro Feo](https://github.com/Phe0), [Matheus Blanco](https://github.com/MatheusBlanco)                |

- O usuário acessa a plataforma;
- O usuário abre a página de login;
- O usuário realiza o login e é redirecionado à página principal;
- O usuário acessa a página de histórico de pedidos;
- O front-end realiza uma requisição ao serviço de pedidos;
- O serviço de pedidos busca no banco de dados os pedidos anteriormente realizados;
- Os pedidos são enviados e renderizados no front-end;
- O front-end mostra para o usuário os pedidos anteriormente realizados.

### 6.7 Processo de checagem de pedidos ativos

![sequencia_checar_pedidos_ativos](../images/diagramas-uml/diagrama_sequencia_pedidos_ativos-3.png)

| **DS01**      | **Diagrama de sequência de checagem de pedidos ativos**                                                  |
| ------------- | -------------------------------------------------------------------------------------------------------- |
| **Versão**    | Atual: 3.0 (15/11) <br> Anterior: [2.0](../images/diagramas-uml/diagrama_sequencia_pedidos_ativos-2.png) |
| **Descrição** | Diagrama UML da sequência do microsserviço de checagem de pedidos ativos                                 |
| **Autor**     | [Pedro Feo](https://github.com/Phe0), [Matheus Blanco](https://github.com/MatheusBlanco)                 |

- O usuário acessa a plataforma;
- O usuário abre a página de login;
- O usuário realiza o login e é redirecionado à página principal;
- O usuário acessa a página de histórico de pedidos;
- O front-end realiza uma requisição ao serviço de pedidos;
- O serviço de pedidos busca no banco de dados os pedidos que estão ativos;
- Os pedidos são enviados e renderizados no front-end;
- O front-end mostra para o usuário os pedidos ativos.

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

## 11 Tamanho e Desempenho

O WebApp QRComer possui um tamanho médio de 200MB. O mesmo foi desenvolvido para funcionar em navegadores tanto em formato desktop quanto formato mobile, com foco maior em mobile. Pelo fato de ser um site acessível a partir de navegadores, não existe a necessidade de instalação de nenhum serviço, sejam eles o front-end ou as APIs dos microsserviços.

Sendo assim, o mesmo não ocupa espaço físico nos aparelhos dos usuários, restringindo-se apenas a memória temporária e CACHE. O sistema funciona a partir de requisições feitas entre as APIS e o front-end, todas realizadas pela internet. Sendo assim, espera-se que o tamanho físico do projeto não seja um diferencial significativo nos aparelhos de seus consumidores, nem que o desempenho seja comprometido por questões parecidas.

<!-- Mostrar volume de dados do sistema, tamanho do projeto, explicar e determinar normas de desempenho -->

## 12 Modelos/Padrões Arquiteturais

explicar modelos/padrões arquiteturais utilizados no projeto
monolitico ou distribuido? pq?
mvc no django?
cliente servidor
etc
