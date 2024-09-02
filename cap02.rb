# Evitar usar
def nome_do_metodo(argumento_obrigatorio,argumento_opcional=2)
  argumento1 + argumento2
end
# Recomendado usar
def metodo(texto:,inteiro:,racional:0.0)
  # codigo
end
# vantagem
# chama de qualquer forma
# mais legivel
# mais facil de manter
metodo(texto:"ana",inteiro:20,racional:55.2)
metodo(racional:55.2,inteiro:18,texto:"pedro")
metodo(inteiro:0,texto:"RN")
#######################

# Objeto Anemico
# Definindo uma estrutura simples com Struct
Person = Struct.new(:name, :age)

# Criando uma instância da estrutura
aluna1 = Person.new("Alice", 5)
aluna2 = Person.new("Nathan", 4)
#######################
class Atributos
  attr_reader :atributo1,:atributo2,:atributo3,:atributo10 = 10
  attr_writer :atributo4,:atributo5,:atributo6
  attr_accessor :atributo7,:atributo8,:atributo9
  def initialize(atributo1,atributo2,atributo3,atributo4,atributo5,atributo6,atributo7,atributo8,atributo9)
    @atributo1 = atributo1
    @atributo2 = atributo2
    @atributo3 = atributo3
    @atributo4 = atributo4
    @atributo5 = atributo5
    @atributo6 = atributo6
    @atributo7 = atributo7
    @atributo8 = atributo8
    @atributo9 = atributo9
  end
end
atributo = Atributos.new(1,2,3,4,5,6,7,8,9)
puts atributo.atributo1 # 1
puts atributo.atributo10 # 10
puts atributo.atributo4 # erro, somente escrita e nao leitura
puts atributo.atributo7 # 7
atributo.atributo2 = -2 # erro, somente leitura e nao escrita
atributo.atributo5 = -5 # -5
atributo.atributo8 = -8 # -8
#######################
# Assim como os metodos o initialize tambem deve ser hash
# No initialize costuma se fazer tratamentos assim como em qualqure metodo de atribuicao, como update=

class Pessoa
  attr_accessor :nome, :idade, :altura

  def initialize(nome:, idade:, altura:)
    # Validação do nome
    unless nome.is_a?(String) && nome.match?(/\A[a-zA-Z\s]+\z/)
      raise ArgumentError, "Nome deve ser uma string contendo apenas letras do alfabeto."
    end

    # Capitalização do nome
    @nome = nome.split.map(&:capitalize).join(' ')

    # Validação da idade
    unless idade.is_a?(Integer) && idade >= 0
      raise ArgumentError, "Idade deve ser um número inteiro maior ou igual a zero."
    end
    @idade = idade

    # Validação da altura
    if altura.is_a?(Integer)
      altura = altura.to_f
    end

    unless altura.is_a?(Float) && altura > 0.0
      raise ArgumentError, "Altura deve ser um número maior que 0.0."
    end

    # Conversão da altura para metros se estiver em centímetros
    altura = em_metros(altura)

    @altura = altura
  end
  private
  # Método para converter altura em centímetros para metros
  def em_metros(altura)
    if altura > 3.0
      altura / 100.0
    else
      altura
    end
  end
end

# Testando a classe com dados válidos
pessoa1 = Pessoa.new(nome: "ana luiza", idade: 25, altura: 1.70)
pessoa2 = Pessoa.new(idade: 30, altura: 180, nome: "pedro almeida") # Altura como inteiro

# Exibindo os detalhes das pessoas validadas
puts "Pessoa 1: Nome - #{pessoa1.nome}, Idade - #{pessoa1.idade}, Altura - #{pessoa1.altura}m"
puts "Pessoa 2: Nome - #{pessoa2.nome}, Idade - #{pessoa2.idade}, Altura - #{pessoa2.altura}m"

# Testando com dados inválidos
begin
  Pessoa.new(nome: "123", idade: 25, altura: 1.70)
rescue ArgumentError => e
  puts "Erro: #{e.message}"
end

begin
  Pessoa.new(nome: "Ana", idade: -5, altura: 1.70)
rescue ArgumentError => e
  puts "Erro: #{e.message}"
end

begin
  Pessoa.new(nome: "Ana", idade: 25, altura: 0)
rescue ArgumentError => e
  puts "Erro: #{e.message}"
end


# SAIDA DO CONSOLE :
# Pessoa 1: Nome - Ana Luiza, Idade - 25, Altura - 1.7m
# Pessoa 2: Nome - Pedro Almeida, Idade - 30, Altura - 1.8m
# Erro: Nome deve ser uma string contendo apenas letras do alfabeto.
# Erro: Idade deve ser um número inteiro maior ou igual a zero.
# Erro: Altura deve ser um número maior que 0.0.