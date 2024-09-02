# livro-use-a-cabeca-ruby
livro-use-a-cabeca-ruby

# Método de instância
São métodos que você pode chamar diretamente sobre o objeto. Eles envolvem o que o objeto faz. Têm acesso às variáveis de instância do objeto e podem usá-las para mudar seu comportamento com base nos valores dessas variáveis.

# Variável de instância
Em Ruby, uma variável de instância é uma variável associada a um objeto específico de uma classe, acessível por todos os métodos da instância da classe, enquanto uma variável local é uma variável acessível apenas dentro do bloco de código onde foi definida, como um método ou um loop.
** Atributos são variaveis de instância da classe**

# Encapsulamento
Definição: O encapsulamento é o princípio de esconder os detalhes internos do funcionamento de um objeto e expor apenas o que é necessário. Isso é feito através do uso de modificadores de acesso, como private, protected, e public, e através de métodos de acesso (getters e setters).
# Herança
Definição: Herança permite que uma classe herde características e comportamentos de outra classe. Isso ajuda na reutilização de código e na criação de uma hierarquia de classes.
# Polimorfismo
Definição: Polimorfismo é a capacidade de um objeto assumir muitas formas. Em OO, isso geralmente se refere ao fato de que diferentes classes podem implementar o mesmo método de maneiras diferentes.
# Abstração
Definição: Abstração é o princípio de simplificar a complexidade através da definição de uma interface comum e ignorar os detalhes específicos da implementação. Em Ruby, isso é muitas vezes alcançado através de classes abstratas e módulos.
# Composição sobre Herança
Definição: Em vez de usar herança para reutilizar código, a composição permite que você crie objetos mais complexos a partir de objetos menores e mais simples. Isso promove uma maior flexibilidade e reduz o acoplamento.

# Variáveis de classe
As variáveis de classe em Ruby são precedidas por @@ e são compartilhadas entre a classe e todas as suas instâncias. Isso significa que o valor de uma variável de classe é o mesmo para todas as instâncias da classe e pode ser acessado e modificado por qualquer instância ou pela própria classe.

### Características da Variável de Classe
1. Escopo Compartilhado: A variável de classe é compartilhada por todas as instâncias de uma classe e pela própria classe. Se uma instância ou a classe modificar essa variável, a mudança afetará todas as outras instâncias.

2. Persistência de Valor: Como todas as instâncias e a classe compartilham a mesma variável, ela pode ser usada para armazenar informações que precisam ser persistidas e acessíveis em um nível global dentro da classe.

# Variáveis, arrays e hashes são essencialmente ponteiros
Isso significa que eles não armazenam os dados diretamente, mas sim referências (endereços de memória) para onde os objetos reais estão localizados no heap. Quando você atribui uma variável a outra, ambas passam a apontar para o mesmo objeto, permitindo que mudanças feitas através de uma variável sejam refletidas na outra.

# Herança Múltipla em Linguagens de Programação

## Vantagens

1. **Reuso de Código**
   - Permite que uma classe combine funcionalidades de várias classes base, evitando a duplicação de código.

2. **Flexibilidade**
   - Oferece maior flexibilidade na composição de comportamentos e propriedades, permitindo que classes sejam construídas a partir de várias fontes.

3. **Modelagem de Problemas Complexos**
   - Facilita a modelagem de problemas que envolvem várias especializações ou características, tornando a representação mais intuitiva.

4. **Menor Acoplamento**
   - Pode reduzir o acoplamento entre classes ao permitir que uma classe use funcionalidades de várias classes sem precisar estender diretamente cada uma delas.

## Desvantagens

1. **Ambiguidade**
   - Pode criar ambiguidades quando duas ou mais classes base fornecem implementações diferentes para o mesmo método, levando a problemas de resolução de método.

2. **Complexidade**
   - Aumenta a complexidade do sistema, tornando o design e a manutenção mais difíceis, especialmente em grandes hierarquias de herança.

3. **Problemas de Manutenção**
   - Mudanças em uma classe base podem afetar inesperadamente todas as classes que herdam dela, levando a problemas de manutenção.

4. **Dificuldade de Entendimento**
   - Pode tornar o código mais difícil de entender, pois é necessário rastrear a origem dos métodos e propriedades que uma classe herda.

5. **Problemas com Diamante de Herança**
   - No padrão de herança em diamante, onde uma classe herda de duas classes que por sua vez herdam de uma classe comum, pode ocorrer uma duplicação de herança e comportamentos inesperados.

