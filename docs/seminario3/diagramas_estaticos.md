## Histórico de Revisão

|Data|Versão|Descrição|Autor|
|-|-|-|-|
|12/09/2019|0.1|Criação do documento, e adição da estrutura e diagramas de pacote|[Shayane Alcântara](https://github.com/shayanealcantara)|
|15/09/2019|0.2|Adição da 1ª versão do caso de uso sobre a aplicação|[Shayane Alcântara](https://github.com/shayanealcantara)|
|15/09/2019|0.3|Adição da 1ª versão do diagrama de classe do microserviço de usuário |[Sara Silva](https://github.com/silvasara)|
|15/09/2019|0.4|Adição do Diagrama de Pacotes do Front e do Back End e Adição do Diagrama de Classe de Pedidos|[Saleh Kader](https://github.com/devsalula)|
|19/09/2019|0.5|Revisão do diagrama de caso de uso sobre a aplicação | [Shayane Alcântara](https://github.com/shayanealcantara)|
|19/09/2019|0.5|Adição do diagrama de componentes do frontend | [Guilherme Marques](https://github.com/guilhesme23)|
|19/09/2019|0.5|Adição do diagrama de componentes do frontend | [Guilherme Marques](https://github.com/guilhesme23)|
|19/09/2019|0.6| Correção no cado de uso UC01 | [Elias Bernardo](https://github.com/ebmm01) e [Leonardo Barreiros](https://github.com/leossb36)|
|19/09/2019|0.7| Correção nos Diagramas de Pacote | [Saleh Kader](https://github.com/devsalula)|


## 1. Introdução



## 2. Diagrama de Casos de Uso

### 2.1 Caso de Uso sobre a aplicação com requisitos de priorização Must have

O diagrama a seguir foi realizado baseando-se na [elicitação de requisitos](../iniciativas_extras/elicitacao_de_requisitos/elicitacao_de_requisitos.md) realizada pela equipe. Este diagrama busca ilustrar os requisitos e suas relações, em específico os que foram priorizados com o nível **MUST HAVE**.

![caso-de-uso-aplicacao](../images/diagramas-uml/caso_de_uso_aplicacao_2.png)

|**UC01** | **Caso de Uso dos Requisitos**  |
|--|--|
| **Versão**| Atual: 1.1 (19/09) <br> Anterior: [1.0](#uc01-caso-de-uso-sobre-a-aplicacao-com-requisitos-de-priorizacao-must-have) |
| **Descrição** | Caso de uso dos requisitos. |
|**Autor**| [Shayane Alcântara](https://github.com/shayanealcantara), [Elias Bernardo](), [Leonardo]() |

### 2.2 Caso de Uso sobre o Restaurente

O diagrama a seguir foi construído visando demonstrar a visão do Restaurante e as ações do mesmo na aplicação.

![caso-de-uso-restaurante](../images/diagramas-uml/restaurant_use_case.jpeg)

#### Atores
    
* Restaurante  
* Cliente  

#### Fluxo básico
* Restaurante se cadastra
* Restaurante é divulgado pro cliente

#### Fluxos Alternativos
##### FA1 - Restaurante cadastra itens novos
1) Restaurante se cadastra  
2) Restaurante acessa a API  
3) Restaurante altera a API  
4) Restaurante cadastra seus itens no cardápio

#### Pré-condições
* Restaurante realizar cadastro na aplicação
* Restaurante possuir itens a cadastrar

#### Pós-condições
* Usuário tem acesso ao restaurante
* Restaurante cadastrado na aplicação

|**UC02** | **Caso de Uso do Restaurante**  |
|--|--|
| **Versão**| Atual: 1.0 (15/09) <br> Anterior: - |
| **Descrição** | Caso de uso do Restaurante. |
|**Autores**| [Pedro Rodrigues](https://github.com/pedro-prp), [Matheus Blanco](https://github.com/MatheusBlanco) |


## 3. Diagrama de pacotes

### 3.1 _Back-end_

O diagrama a seguir foi construído tomando como base o modelo de pacotes adotados, normalmente para projetos em Django Rest Framework.

![diagrama-pacotes-back](../images/diagramas-uml/package_diagram_backend_v3.png)

|**DP01** | **Diagrama de pacotes do Back End**  |
|--|--|
| **Versão**| Atual: 2.0 (19/09) <br> Anterior: [1.1](#dp01-diagrama-de-pacotes-back-end) |
| **Descrição** | Diagrama de Pacotes para os Microserviços do Back End |
|**Autor**| [Shayane Alcântara](https://github.com/shayanealcantara) e [Saleh Kader](https://github.com/devsalula)|


### 3.2 _Front-end_

O diagrama a seguir foi construído tomando como base o modelo de pacotes adotados, normalmente para projetos em VueJs.

![diagrama-pacotes-front](../images/diagramas-uml/package_diagram_front_v3.png)

|**DP02** | **Diagrama de pacotes do Front End**  |
|--|--|
| **Versão**| Atual: 2.0 (19/09) <br> Anterior: [1.1](#dp02-diagrama-de-pacotes-front-end) |
| **Descrição** | Diagrama de Pacotes para o Front End |
|**Autor**| [Shayane Alcântara](https://github.com/shayanealcantara) e [Saleh Kader](https://github.com/devsalula)|

## 4 Diagrama de classes e microserviços

### 4.1  Diagrama de classes do microsserviço de usuário

O diagrama a seguir usa a notação UML para descrever as classes do microserviço de usuário.

![classes-usuario](../images/diagramas-uml/class_diagram_user_v2.jpg)

|**DC01** | **Diagrama de classes de usuário**  |
|--|--|
| **Versão**| Atual: 2.0 (18/09) <br> Anterior: [1.0](#dc01-diagrama-de-classes-de-usuario) |
| **Descrição** | Diagrama UML das classes do microserviço de usuário |
|**Autor**| [Sara Silva](https://github.com/silvasara)|

### 4.2  Diagrama de classes do microsserviço de Restaurante

O diagrama a seguir usa a notação UML para descrever as classes do microserviço de restaurante.

![classes-restaurante](../images/diagramas-uml/class_diagram_restaurant_v2.jpg)

|**DC02** | **Diagrama de classes de restaurante**  |
|--|--|
| **Versão**| Atual: 2.0 (19/09) <br> Anterior: [1.0](#dc02-diagrama-de-classes-de-restaurante) |
| **Descrição** | Diagrama UML das classes do microserviço de restaurante |
|**Autor**| [Elias Bernardo](https://github.com/ebmm01) e [Leonardo Barreiros](https://github.com/leossb36)|

### 4.3 Diagrama de classes do microsserviço de Pedidos

O diagrama a seguir usa a notação UML para descrever as classes do microserviço de restaurante.

![classes-pedidos](../images/diagramas-uml/class_diagram_order_v2.jpg)

|**DC03** | **Diagrama de classes de pedidos**  |
|--|--|
| **Versão**| Atual: 2.0 (13/09) <br> Anterior: [1.0](#dc03-diagrama-de-classes-de-pedidos) |
| **Descrição** | Diagrama UML das classes do microserviço de pedidos |
|**Autor**| [Matheus Blanco](https://github.com/MatheusBlanco)|


## 5 Diagrama de componentes

O diagrama a seguir descreve os componentes e comunicação entre diferentes componentes no Frontend.

![diagrama de componentes](../images/diagramas-uml/diagrama_componentes.jpg)

|**DC03** | **Diagrama de Componentes**  |
|--|--|
| **Versão**| Atual: 1.0 (13/09) <br> Anterior: - |
| **Descrição** | Diagrama UML de componentes do front |
|**Autor**| [Guilherme Marques](https://github.com/guilhesme23) e [Pedro Féo](https://github.com/Phe0) |

## Versões anteriores

### UC01 - Caso de Uso sobre a aplicação com requisitos de priorização Must have)

O diagrama a seguir foi realizado baseando-se na [elicitação de requisitos](../iniciativas_extras/elicitacao_de_requisitos/elicitacao_de_requisitos.md) realizada pela equipe. Este diagrama busca ilustrar os requisitos e suas relações, em específico os que foram priorizados com o nível **MUST HAVE**.

![caso-de-uso-aplicacao](../images/diagramas-uml/application_use_case_v1.jpg)

|**UC01** | **Caso de Uso dos Requisitos**  |
|--|--|
| **Versão**| Atual: 1.0 (15/09) <br> Anterior: - |
| **Descrição** | Caso de uso dos requisitos. |
|**Autor**| [Shayane Alcântara](https://github.com/shayanealcantara) |

### DP01 Diagrama de Pacotes Back End

![diagrama-pacotes-back](../images/diagramas-uml/package_diagram_backend-v1_1.jpg)

|**DP01** | **Diagrama de pacotes do Back End**  |
|--|--|
| **Versão**| Atual: 1.1 (13/09) <br> Anterior: [1.0](#dp01-diagrama-de-pacotes-back-end) |
| **Descrição** | Diagrama de Pacotes para os Microserviços do Back End |
|**Autor**| [Shayane Alcântara](https://github.com/shayanealcantara) e [Saleh Kader](https://github.com/devsalula)|

![diagrama-pacotes-back](../images/diagramas-uml/package_diagram_backend-v1.jpg)

|**DP01** | **Diagrama de pacotes do Back End**  |
|--|--|
| **Versão**| Atual: 1.0 (12/09) <br> Anterior: - |
| **Descrição** | Diagrama de Pacotes para os Microserviços do Back End |
|**Autor**| [Shayane Alcântara](https://github.com/shayanealcantara)|

### DP02 Diagrama de Pacotes Front End

![diagrama-pacotes-front](../images/diagramas-uml/package_diagram_front-v1_1.jpg)

|**DP02** | **Diagrama de pacotes do Front End**  |
|--|--|
| **Versão**| Atual: 1.1 (13/09) <br> Anterior: [1.0](#dp02-diagrama-de-pacotes-front-end) |
| **Descrição** | Diagrama de Pacotes para o Front End |
|**Autor**| [Shayane Alcântara](https://github.com/shayanealcantara)|

![diagrama-pacotes-front](../images/diagramas-uml/package_diagram_front-v1.jpg)

|**DP02** | **Diagrama de pacotes do Front End**  |
|--|--|
| **Versão**| Atual: 1.0 (12/09) <br> Anterior: - |
| **Descrição** | Diagrama de Pacotes para o Front End |
|**Autor**| [Shayane Alcântara](https://github.com/shayanealcantara)|


### DC01 Diagrama de classes de usuário

![classes-usuario](../images/diagramas-uml/class_diagram_user_v1.jpg)

|**DC01** | **Diagrama de classes de usuário**  |
|--|--|
| **Versão**| Atual: 1.0 (16/09) <br> Anterior: - |
| **Descrição** | Diagrama UML das classes do microserviço de usuário |
|**Autor**| [Sara Silva](https://github.com/silvasara) e [Pedro Rodrigues](https://github.com/pedro-prp)|

### DC02 Diagrama de classes de restaurante

O diagrama a seguir usa a notação UML para descrever as classes do microserviço de restaurante.

![classes-restaurante](../images/diagramas-uml/class_diagram_restaurant_v1.jpg)

|**DC02** | **Diagrama de classes de restaurante**  |
|--|--|
| **Versão**| Atual: 1.0 (16/09) <br> Anterior: - |
| **Descrição** | Diagrama UML das classes do microserviço de restaurante |
|**Autor**| [Elias Bernardo](https://github.com/ebmm01) e [Leonardo Barreiros](https://github.com/leossb36)|

### DC03 Diagrama de classe de pedidos

![classes-pedidos](../images/diagramas-uml/class_diagram_order_v1.jpg)

|**DC03** | **Diagrama de classes de pedidos**  |
|--|--|
| **Versão**| Atual: 1.0 (13/09) <br> Anterior: - |
| **Descrição** | Diagrama UML das classes do microserviço de pedidos |
|**Autor**| [Matheus Blanco](https://github.com/MatheusBlanco)|

### UC01 Diagrama de caso de uso dos requisitos

![caso-de-uso-aplicacao](../images/diagramas-uml/application_use_case_v1.jpg)

|**UC01** | **Caso de Uso dos Requisitos**  |
|--|--|
| **Versão**| Atual: 1.0 (15/09) <br> Anterior: - |
| **Descrição** | Caso de uso dos requisitos. |
|**Autor**| [Shayane Alcântara](https://github.com/shayanealcantara) |
