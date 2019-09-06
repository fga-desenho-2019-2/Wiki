# Arquitetura

## Histórico de Revisão:
|Data|Versão|Descrição|Autor|
|-|-|-|-|
|05/09/2019|0.1| Criação do documento, adição dos tópicos | [Alan Lima](https://github.com/alanrslima)|

## Introdução

Este documento tem como objetivo mostrar uma visão geral sobre a arquitetura e ferramentas utilizadas pelo grupo no projeto QRComer.

## Visão Geral
O presente documento faz o detalhamento e descrição de características da arquitetura escolhidas pela equipe. Estaremos descrevendo o padrão de arquitetura de Microserviços e APIs Rest, assim como detalhando o funcionamento da comunicação entre os microserviços.

## Arquitetura de Microserviços
Arquitetura orientada a micro serviços foi adotada para este projeto devido a suas vantagens em relação a estrutura monolítica, dentre elas estão:

- Disponibilização de novos processos ou serviços sem impacto nos processos e serviços existentes.
- Alterações em processos e serviços sem a necessidade de parada de todo o sistema.
- Otimização da utilização da infraestrutura de nuvem.
- Redução da complexidade de manutenção.

## Padrão de Arquitetura REST
O termo foi definido no ano 2000, na tese de doutorado de Roy Fielding e é a sigla para Representational State Transfer: é um design de arquitetura construído para servir aplicações em rede.

Conceitualmente falando, o modelo REST representa nada mais que uma possibilidade para a criação de web services, cujas principais diferenças em relação ao modelo tradicional (SOAP) estão na utilização semântica dos métodos HTTP (GET, POST, PUT e DELETE), na leveza dos pacotes de dados transmitidos na rede e na simplicidade, fazendo desnecessária a criação de camadas intermediárias (Ex.: Envelope SOAP) para encapsular os dados.

### Características de uma requisição REST:
- O método HTTP é utilizado para determinar a operação a ser realizada em um determinado recurso. Em geral, utiliza-se o GET para recuperar, POST para criar, PUT para alterar e DELETE para apagar;
- O recurso, por sua vez, é indicado na URL da requisição; Parâmetros podem ser passados na própria URL e/ou no corpo na requisição;
- Os tipos de dados utilizados na requisição e na resposta devem ser acordados entre o servidor e o(s) cliente(s). JSON e XML estão entre os tipos mais utilizados.

## Arquitetura dos Serviços

### Visão Geral

![Architecture](https://i.imgur.com/dIbIXo3.png)

### Microserviços e camadas
A arquitetura e sua versão atual está particionada em:

**1 - Front-End (Usuário)**

- Esta fronteira é responsável por permitir a interação do usuário com sistema, é por ela que são feitos os pedidos nos restaurantes cadastrados.

**2 - Front-End (Restaurante)**

- Esta fronteira é responsável por permitir o cadastro dos restaurantes por parte dos donos de estabelicementos que irão fazer usa do sistema, assim como os seus respectivos cardápios, valores, etc.

**3 - Gateway**

- Responsável por realizar a comunicação entre os micro serviços e o Front-End. Ele irá controlar todo o fluxo de dados e dimensionar para seus respectivos locais de persistência.

**4 - Costumer, Restaurant, Order e Payment Service**

- Micro serviços responsáveis pela função de DW (Data warehouse), depósito onde se é persistido e mantido os dados relevantes para o sistema. Através de uma API, disponibilizam os dados para a o gateway.

## Referências

[1] [Newman, Sam. Building Microservices](https://www.nginx.com/wp-content/uploads/2015/01/Building_Microservices_Nginx.pdf)

[2] [Ferreira, Rodrigo. REST: Princípios e boas práticas](https://blog.caelum.com.br/rest-principios-e-boas-praticas/)