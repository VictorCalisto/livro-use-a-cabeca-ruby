#  BLOCOS RETORNANDO VALORES PARA O METODO

# Define um hash que contém blocos que retornam valores.
blocos = {
  bloco1: Proc.new do |texto:, inteiro:, racional: 0.0|
    resultado = "#{texto.upcase} - #{inteiro * 2} - #{racional + 10.0}"
    puts "Resultado do bloco 1: #{resultado}" # Imprime o resultado do bloco 1.
    resultado # Retorna o resultado
  end,
  bloco2: Proc.new do |texto:, inteiro:, racional: 0.0|
    resultado = "#{texto.downcase} - #{inteiro + 10} - #{racional * 2.0}"
    puts "Resultado do bloco 2: #{resultado}" # Imprime o resultado do bloco 2.
    resultado # Retorna o resultado
  end
}

# Define um método que recebe um hash de blocos e os chama com parâmetros.
def metodo_com_blocos(blocos, params)
  bloco1_resultado = blocos[:bloco1].call(params)
  bloco2_resultado = blocos[:bloco2].call(params)

  # Imprime os resultados retornados pelos blocos
  puts "Resultado retornado do bloco 1: #{bloco1_resultado}"
  puts "Resultado retornado do bloco 2: #{bloco2_resultado}"
end

# Define um hash com os parâmetros para passar aos blocos.
parametros = {
  texto: "Mensagem",
  inteiro: 5,
  racional: 3.5
}

# Chama o método passando o hash de blocos e os parâmetros.
metodo_com_blocos(blocos, parametros)

#  SAIDA DO CONSOLE :
# Resultado do bloco 1: MENSAGEM - 10 - 13.5
# Resultado retornado do bloco 1: MENSAGEM - 10 - 13.5
# Resultado do bloco 2: mensagem - 15 - 7.0
# Resultado retornado do bloco 2: mensagem - 15 - 7.0

##################################
# EXEMPLO DE USO DE BLOCO NA VIDA REAL
##################################

def find_all
  result = []  # Cria um array vazio para armazenar os resultados
  
  self.each do |element|  # Itera sobre cada elemento do array
    if yield(element)  # Chama o bloco passado para verificar a condição
      result << element  # Adiciona o elemento ao array de resultados se a condição for verdadeira
    end
  end
  
  result  # Retorna o array de resultados
end

# Exemplo de uso com find_all

# Array de números
numbers = [1, 2, 3, 4, 5, 6, 7, 8, 9]

# Usando find_all para encontrar números pares
even_numbers = numbers.find_all do |num|
  num.even?  # Verifica se o número é par
end

puts "Números pares: #{even_numbers}"  # Saída: Números pares: [2, 4, 6, 8]

##################################

def reject
  result = []  # Cria um array vazio para armazenar os resultados
  
  self.each do |element|  # Itera sobre cada elemento do array
    unless yield(element)  # Chama o bloco e verifica a condição
      result << element  # Adiciona o elemento ao array de resultados se a condição for falsa
    end
  end
  
  result  # Retorna o array de resultados
end

# Exemplo de uso com reject

# Array de números
numbers = [1, 2, 3, 4, 5, 6, 7, 8, 9]

# Usando reject para encontrar números que não são pares
non_even_numbers = numbers.reject do |num|
  num.even?  # Rejeita numeros pares
end

puts "Números não pares: #{non_even_numbers}"  # Saída: Números não pares: [1, 3, 5, 7, 9]

##################################

def map
  result = []  # Cria um array vazio para armazenar os resultados
  
  self.each do |element|  # Itera sobre cada elemento do array
    result << yield(element)  # Aplica o bloco ao elemento e armazena o resultado
  end
  
  result  # Retorna o array de resultados
end

# Exemplo de uso com map

# Array de números
numbers = [1, 2, 3, 4, 5]

# Usando map para multiplicar cada número por 2
doubled_numbers = numbers.map do |num|
  num * 2  # Multiplica cada número por 2
end

puts "Números dobrados: #{doubled_numbers}"  # Saída: Números dobrados: [2, 4, 6, 8, 10]
