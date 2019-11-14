## Histórico de Revisão

| Data       | Versão | Descrição             | Autor                                             |
| ---------- | ------ | --------------------- | ------------------------------------------------- |
| 13/11/2019 | 0.1    | Estrutura do Documento, Introdução| [Pedro Féo](https://github.com/phe0)              |

## 1 Introdução

### 1.1 Finalidade
A intenção desse documento é documentar e transmitir informações relevantes ao QRComer do ponto de vista arquitetural. Facilitando a visualização e entendimento da estrutura do projeto.

### 1.2 Escopo

Este Documento de Arquitetura de Software se aplica ao Sistema QRComer. Desenvolvido na disciplina de Arquitetura e Desenho de Software da Universidade de Brasília.

### 1.3 Definições, Acrônimos e Abreviações

* UnB - Universidade de Brasília
* FGA - Faculdade do Gama
* QRComer - Sistema web com a intenção de reduzir filas em praças de alimentação
* Backend - Parte do sistema responsável por prover e organizar recursos para a interfáce do sistema
* Frontend - Parte do sistema responsável por ser a interfáce entre o sistema e o usuário
* HTTP - __Hypertext Transfer Protocol__
* API: __Application Programming Interface__

### 1.4 Referências

* [Translate-me](https://translate-me.github.io/docs/documentos/projeto/doc_de_arquitetura/)
* [Unigrade](https://ads-unigrade-2019-1.github.io/Wiki/dinamica06/DAS/#522-pacotes-de-design-significativos-do-ponto-de-vista-da-arquitetura)
* [Kalkuli](https://fga-eps-mds.github.io/2018.2-Kalkuli/docs/docArquitetura)
* [https://www.cin.ufpe.br/~gta/rup-vc/extend.formal_resources/guidances/examples/resources/sadoc_v1.htm](https://www.cin.ufpe.br/~gta/rup-vc/extend.formal_resources/guidances/examples/resources/sadoc_v1.htm)
* [https://www.cin.ufpe.br/~gta/rup-vc/core.informal_resources/guidances/examples/resources/ex_sad.htm](https://www.cin.ufpe.br/~gta/rup-vc/core.informal_resources/guidances/examples/resources/ex_sad.htm)

## 2 Representação da Arquitetura

### 2.1 Componentes Importantes

#### Vue
Vue é um __framework progressivo__ para a construção de interfaces para o usuário. O __framework__ apresenta uma arquitetura baseada em componentes, permitindo a criação de telas completas e também pedaços de código isolados.

#### Sass
Sass é uma extensão de CSS que permite o uso de variáveis, regras de alinhamento, mixins e importações de outros arquivos. O Sass facilita a organização das folhas de estilo além de acelerar sua execução.

#### Django REST
O __framework__ Django REST é um conjunto de ferramentas otimizada para a construção de Web APIs em Python.

#### Flask 
Flask pe um micro-framework em Python que provê um modelo simples para desenvolvimento web.

#### Microserviços
A arquitetura de microserviços é uma solução arquitetural distribuída que desmembra o sistema da aplicação em pequenos blocos independentes, chamados de serviços. Cada um possuíndo seus próprios processos e banco de dados e se comunicam entre si através de requiisções HTTP.
Os serviços utilizados na aplicação serão:

* **Restaurante**, serviço responsável por conter as informações a respeito do shopping, restaurantes e cardápios. Desenvolvido utilizando Django REST
* **Pedidos**, serviço responsável por tratar toda a lógica que envolve um pedido, desde quando pe feito até ser concluído. Desenvolvido utilizando Django REST 
* **Usuário**, serviço responsável por conter as lógicas de autenticação e armazenar as informações dos usuários e seus cartões. Desenvolvido utilizando Django REST
* **Gateway**, serviço responsável por intermediar a comunicação entre os demais serviços. Desenvolvido utilizando Flask
* **Frontend**, serviço responsável por ser a interface entre o sistema e o usuário. Desenvolvido em Vue

#### Comunicação entre serviços
A comunicação entre os serviços será realizada através da API Gateway, responsável por utilizar o protocolo HTTP para intermediar a comunicação.

### 2.2 Diagrama de Arquitetura

![representacao-arquitetural](../images/doc-arquitetura/arquitetura.jpg)

**Obs.**: Foi realizada uma mudança na arquitetura original do projeto, sendo removidas o Frontend de interação com o restaurante, sendo substituído por um acesso especializado ao backend do sistema, para que o QRComer possa ser facilmente integrado à sistemas já existentes. Além disso foi removido o serviço de pagamento, tendo em vista que para o escopo da disciplina o serviço se mostrou muito complexo.

## 3 Objetivos e Restrições Arquiteturais

## 4 Visão de Caso de Uso
colocar diagramas e descrever casos de uso da aplicação

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