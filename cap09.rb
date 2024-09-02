# Definição de módulo para autenticação
module Autenticacao
  def autenticar(params)
    senha = params[:senha]
    # Aqui você pode implementar uma lógica real de autenticação
    senha == @senha
  end
end

# Definição de módulo para autorização
module Autorizacao
  def pode_acessar?(params)
    recurso = params[:recurso]
    # Lógica simplificada para autorização
    case @tipo
    when :admin
      true
    when :cliente
      recurso == :visualizar
    else
      false
    end
  end
end

# Classe base de Usuário
class Usuario
  # Inclui os módulos de Autenticacao e Autorizacao
  include Autenticacao
  include Autorizacao

  def initialize(params)
    @nome = params[:nome]
    @senha = params[:senha]
    @tipo = params[:tipo]
  end
end

# Classe para um administrador
class Admin < Usuario
  def initialize(params)
    params[:tipo] = :admin
    super(params)
  end
end

# Classe para um cliente
class Cliente < Usuario
  def initialize(params)
    params[:tipo] = :cliente
    super(params)
  end
end

# Criação de instâncias
admin = Admin.new(nome: "Carlos", senha: "admin123")
cliente = Cliente.new(nome: "Ana", senha: "cliente123")

# Exemplo de autenticação e autorização usando hashes
puts admin.autenticar(senha: "admin123")        # Imprime: true
puts admin.pode_acessar?(recurso: :editar)       # Imprime: true

puts cliente.autenticar(senha: "cliente123")     # Imprime: true
puts cliente.pode_acessar?(recurso: :editar)      # Imprime: false
puts cliente.pode_acessar?(recurso: :visualizar)  # Imprime: true

##################
# ATENCAO
################
# Nao se deve colocar um initialize em um module
# Module é um conjunto de metodos
# Mixin é quando voce mistura um modulo  em uma classe

###############################################

# Inicialmente, a variável `x` é `nil`
x ||= 10
# A variável `x` agora é 10, porque `x` era `nil`

# Se a variável `x` já tivesse um valor, o operador `||=` não alteraria esse valor
x ||= 20
# `x` ainda é 10, porque `x` não era `nil` ou `false` antes do operador `||=`

###############################################

# Super tambem se aplica ao modulo

module Greetings
  def greet
    puts "Hello from the module!"
  end
end
class Person
  include Greetings

  def greet
    super  # Chama o método `greet` do módulo
    puts "Hello from the class!"
  end
end
person = Person.new
person.greet
# Hello from the module!
# Hello from the class!
