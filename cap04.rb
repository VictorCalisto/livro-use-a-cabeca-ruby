def divide(a, b)
  # Quando você utiliza raise, o fluxo normal do programa é interrompido
  raise ArgumentError, "O divisor não pode ser zero!" if b == 0
  a / b
end

begin
  puts divide(10, 0)
# e o controle é transferido para o bloco rescue mais próximo que possa lidar com a exceção.
#  O bloco rescue captura a exceção e permite que você a manipule (neste caso, exibindo a mensagem de erro).
rescue ArgumentError => e
  puts "Erro: #{e.message}"
end
# Outro exemplo de raise e rescue
class Employee
  MINIMUM_WAGE = 1000

  def salary=(salary)
    # Lança uma exceção se o salário for menor que o salário mínimo
    raise "Salary cannot be less than $#{MINIMUM_WAGE}" if salary < MINIMUM_WAGE
    @salary = salary
  end

  def salary
    @salary
  end
end

employee = Employee.new

begin
  employee.salary = 800  # Isso causará um erro
rescue => e
  puts "Error: #{e.message}"  # Captura a exceção e exibe a mensagem de erro
end

# Definindo um salário válido
employee.salary = 1200  # Isso funcionará corretamente
puts "Employee salary: $#{employee.salary}"


##############################

# A palavra reservada self

# Em Ruby, self é uma referência ao objeto atual no qual o código está sendo executado. S
# 1. Acessando Variáveis de Instância
# Aqui, self.name= é equivalente a @name = new_name.
class Person
  attr_accessor :name

  def initialize(name)
    @name = name
  end

  def update_name(new_name)
    self.name = new_name  # Aqui, `self.name=` é chamado para atribuir o novo nome
  end
end

person = Person.new("Alice")
person.update_name("Bob")
puts person.name  # => "Bob"
# 2. Definindo Métodos de Classe
class Person
  def self.describe
    "I am a person."
  end
end

puts Person.describe  # => "I am a person."

# 3. Chamando Métodos de Instância de Dentro da Classe
class Person
  attr_accessor :name

  def initialize(name)
    @name = name
  end

  def greet
    "Hello, my name is #{self.name}"  # Aqui, `self.name` acessa o método de instância `name`
  end
end

person = Person.new("Alice")
puts person.greet  # => "Hello, my name is Alice"

# 4. Referenciando o Objeto Atual no Contexto de Classe
class Person
  puts self  # Exibe: Person

  def self.class_name
    self.to_s  # Aqui, `self` refere-se à classe `Person`
  end
end

puts Person.class_name  # => "Person"

# 5. Sobrescrevendo Métodos e Usando self para Chamar o Método Original
class Person
  attr_accessor :name

  def name
    "Name: #{@name}"  # Sobrescreve o método `name`
  end

  def display_name
    self.name  # Chama o método `name` sobrescrito
  end
end

person = Person.new
person.name = "Alice"
puts person.display_name  # => "Name: Alice"
# 6. self em Métodos self= (Atribuição)
class Person
  def name=(name)
    @name = name
  end

  def update_name(new_name)
    self.name = new_name  # Aqui, `self.name=` é necessário para chamar o método `name=` e não criar uma nova variável local `name`
  end
end

person = Person.new
person.update_name("Alice")
puts person.instance_variable_get(:@name)  # => "Alice"


# se você não especificar um receptor usando o operador ponto, o receptor assume o padrão para o objeto atual, self
# Exemplo 1: Chamando Métodos
class Person
  def greet
    "Hello!"
  end

  def say_hello
    greet  # Chama o método `greet` sem `self`
  end
end

person = Person.new
puts person.say_hello  # => "Hello!"
# Exemplo 2: Acessando Variáveis de Instância
class Person
  def initialize(name)
    @name = name
  end

  def display_name
    @name  # Acessa a variável de instância `@name` sem `self`
  end
end

person = Person.new("Alice")
puts person.display_name  # => "Alice"

#########################################

# variaveis de classe

# A variável de classe é compartilhada por todas as instâncias de uma classe e pela própria classe.

class Produto
  @@total_de_produtos = 0

  def self.total_de_produtos
    @@total_de_produtos
  end

  def initialize(nome, preco)
    @nome = nome
    @preco = preco
    @@total_de_produtos += 1
  end
end
p1 = Produto.new("Notebook", 2500)
p2 = Produto.new("Celular", 1500)

puts Produto.total_de_produtos  # Saída: 2

##############################################

