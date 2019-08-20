# Design Sprint

# Histórico de Revisão:

|Data|Versão|Descrição|Autor|
|-|-|-|-|
|20/08/2019|0.1|Criação do documento, adição dos tópicos | Pedro Rodrigues |
|20/08/2019|0.2|Adição no tópico 4 e colocação das três principais propostas| Pedro Rodrigues |

## 1. Introdução

## 2. Design Sprint
### 2.1 Understand
### 2.2 Define
### 2.3 Sketch
### 2.4 Decide
### 2.5 Prototype
### 2.6 Validate

## 3. Artefatos Construídos

## 4. Propostas de Tema

Neste tópico está contido todos os temas levantados pelo grupo, tendo eles como objetivo aplicar os padrões de Arquitetura e Desenho de software em um projeto real.

Os temas são bastante diversos e a maioria dos mesmos foi desenvolvido de forma individual, detonando um grupo bem heterogêneo, já que cada indivíduo expressa uma visão pessoal diferente sobre um assunto.

### 4.1 Professores autônomos
#### **Situação Problema**
Professores autônomos possuem dificuldade para gerenciar alunos ou fazem o controle de forma manual.
#### **Solução**
Um software que facilite a gerência de alunos e permita a adição de tarefas, dentre outras features. (Para professores do 6º ao 3º ano do ensino médio).
#### **Principais funcionalidades**
* Cadastro de alunos por professor (o professor se cadastra e  posteriormente cadastra seus alunos na plataforma, fornecendo para eles os dados de login gerados);
* Grade horária;
* Inserção de atividades e compartilhamento colaborativo (um professor poderá acessar a atividade de outro desde que compartilhe as suas);
* Desempenho dos alunos;
* Cálculo financeiro;
#### **Tecnologias e padrões**
API: NodeJS (Express)
Front: Vue

Criação: Singleton e Factory Method<br>
Estruturais: Decorator, ...
<br>
Comportamentais: <br> 

* Command (Tarefas);
* Memento (Log de atividades / refazer tarefa);
* Observer (notificar alunos de tarefas);

### 4.2 Restaurante com QR code

#### **Situação Problema**
Restaurantes de Shoppings apresentam longas filas de esperas para fazerem seus pedidos, além da baixa comodidade do cliente de ter que sair da própria mesa para fazer ou pegar o próprio pedido.
	
#### **Solução**
 Uma aplicação web que ficaria responsável por gerenciar os pedidos de um determinado shopping, onde as mesas da área de alimentação terão um QR Code, responsável por abrir a aplicação web e fornecer uma lista de restaurantes do shopping para o usuário.
#### **Solução pela perspectiva de Usuário:**
A intenção é que o usuário possa fazer o pedido na própria mesa, sem se preocupar em gerar filas para os restaurantes e mantendo a sua comodidade. Após o pedido o restaurante pode entregar o produto em sua mesa ou a aplicação web pode gerar uma senha para o próprio cliente ir buscá-lo no restaurante.
#### **Solução pela perspectiva do Restaurante:**
O restaurante poderá gerenciar os seus pedidos com uma facilidade maior. No seu sistema poderá conter um mapa com as mesas do shopping onde mandará uma notificação do local onde foi feito o pedido. Outra alternativa ao mapa é apenas uma notificação do número da mesa, facilitando o trabalho para o lojista. E também tem a opção do restaurante gerar uma senha e mandar para o cliente buscar o próprio pedido.

#### **Possíveis Concorrentes:**
Onyo - App de Pedidos em Praças de Alimentação: https://www.site.onyo.com/
Aplicativo apresenta alguns bugs. E tem um banco de restaurantes bem limitados, não sendo possível testá-lo.

#### **Principais Funcionalidades:**

##### Web do Restaurante:

* Cadastro e Login
* Integração com banco de dados de informações dos clientes
* Notificação de pedido do cliente
* Integração com o sistema de pagamento
* Mapa de mesas do restaurante
* Chat de comunicação com o cliente

##### Web do cliente: 

* Cadastro e Login
* Tela com os restaurantes
* Tela com o cardápio dos restaurantes
* Chat de comunicação com o restaurante
* Integração com sistemas de pagamentos
* Perfil de usuário

### 4.3 Uber de guincho

#### **Situação problema**
Operadores independentes de guincho que apenas conseguem se comunicar com seu cliente por telefone, além de cobrarem por seus serviços a partir de um padrão ou estimativa ao invés do valor da viagem.

#### **Solução**
Um aplicativo que facilitasse a contratação desse tipo de serviço, onde o operador de guincho poderia registrar seu caminhão-guincho no aplicativo. Neste, o mesmo receberia notificações de serviço junto de informações como local, tipo de veículo a ser resgatado e problema registrado. O app faria então um cálculo sobre o preço do serviço prestado.

#### **Possível concorrente**
CadêGuincho: https://cadeguincho.com

* App não possui um mapa para mostragem da localização dos usuários;
* App tem outras opções, como posto de gasolina, reparo de baterias;
* Multi-funcional, mas não tão intuitivo como seria um aplicativo que desse foco na requisição de serviços. 

#### **Principais funcionalidades**

##### App do motorista com
* Login, cadastro;
* Integração com banco de dados;
* Mapa para mostrar os locais de acidentes/problemas
* Notificações de um acidente/problema com as informações necessárias para se calcular o preço do serviço
* Serviço de chat, onde o motorista pode ver as informações de contato do cliente
* Integração com bancos e cartão de crédito

##### App do cliente com:
* Login, cadastro;
* Integração com banco de dados;
* Mapa para mostrar os motoristas que se encontram nas redondezas;
* Requerimento de serviço, onde o cliente deve inserir informações como tipo de carro, telefone, problema registrado e local;
* Possibilidade de chat e visualização de informações do motorista contratado;
* Integração com bancos e cartão de crédito.






## 5. Definição de Tema

## 6. Artefatos

## 7. Conclusão

## 8. Referências