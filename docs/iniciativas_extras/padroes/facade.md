## Histórico de revisões

|Data|Versão|Descrição|Autor|
|-|-|-|-|
|25/08/2019|0.1| Abertura do documento |Elias Bernardo|

## 1 - Introdução

O 5w2h é um checklist de determinadas atividades que precisam ser desenvolvidas com o máximo de clareza possível. Por ser uma ferramenta extremamente versátil, o grupo optou por utizá-la, destrinchando os principais aspectos do pattern __Facade__ de forma simples e direta.

## 2 - 5W2H

### 2.1 What?

O padrão de fachada é um padrão de design de software comumente usado em programação orientada a objetos. De maneira análoga a uma fachada na arquitetura, uma fachada é um objeto que serve como uma interface frontal, mascarando um código subjacente ou estrutural mais complexo. 

![Imagem](https://upload.wikimedia.org/wikipedia/commons/9/96/W3sDesign_Facade_Design_Pattern_UML.jpg)

O Padrão Facade fornece uma interface unificada para um conjunto de interfaces em um subsistema. O Facade define uma interface de nível mais alto que facilita a utilização do subsistema

### 2.2 When?

O Facade é utilizado principalmente quando:

- É necessária uma interface simples para acessar um sistema complexo,
- Um sistema é muito complexo ou difícil de entender,
- É necessário um ponto de entrada para cada nível de software em camadas, ou
- As abstrações e implementações de um subsistema estão fortemente acopladas.

### 2.3 Why?

O __Facade__ aborda o encapsulamento de um subsistema complexo em um único objeto de interface. Isso reduz a curva de aprendizado necessária para alavancar com sucesso o subsistema. Também promove o desacoplamento do subsistema de seus muitos potenciais clientes. Por outro lado, se a Fachada for o único ponto de acesso para o subsistema, limitará os recursos e a flexibilidade que "usuários avançados" podem precisar.

![](https://sourcemaking.com/files/v2/content/patterns/Facade_example1.png)

O objeto Fachada deve ser um advogado ou facilitador bastante simples. Não deve se tornar um oráculo onisciente ou um objeto "deus".

#### Facade vs Adapter & Decorator

Uma fachada é usada quando uma interface mais fácil ou mais simples para um objeto subjacente é desejada. Como alternativa, um __Adapter__ pode ser usado quando o _wrapper_ (ou a classe mais acima) deve respeitar uma interface específica e deve suportar o comportamento polimórfico. Um __decorator__ torna possível adicionar ou alterar o comportamento de uma interface em tempo de execução.

|Pattern|	Intent|
|-|-|
|Adapter| Uma __interface__ para outra para que corresponda ao que o __client__ está esperando |
|Decorator|	Adiciona dinamicamente responsabilidade à interface, agrupando o código original |
|Facade| Fornece uma interface simplificada |

### 2.4 Who?

Linguagens com um pé em programação orientada a objetos, como Java por exemplo.

### 2.5 How?

[Exemplo de código]()

## Referências

- [1] Erich Gamma, Richard Helm, Ralph Johnson, John Vlissides (1994). Design Patterns: Elements of Reusable Object-Oriented Software

- [2] https://sourcemaking.com/design_patterns/facade