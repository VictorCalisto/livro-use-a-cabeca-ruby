# Diferentes formas de declarar um array
array1 = [1, 2, 3, 4, 5]
array2 = Array.new  # Cria um array vazio
array2 << 1  # Adiciona o número 1 ao array
array2.push(2, 3)   # [1, 2, 3]
array2.unshift(0)    # [0,1, 2, 3] # Adiciona um ou mais elementos ao início do array.
array2.insert(4,5) # [0,1, 2, 3, 5] # Insere um ou mais elementos em uma posição específica do array.
array3 = Array.new(5)  # [nil, nil, nil, nil, nil]
array4 = Array.new(3, "ruby")  # ["ruby", "ruby", "ruby"]
array5 = Array.new(4) { |i| i * 2 }  # [0, 2, 4, 6]
array6 = %w[apple banana cherry]  # ["apple", "banana", "cherry"]
array7 = %i[one two three]  # [:one, :two, :three]
string = "a b c d"
array8 = string.split  # ["a", "b", "c", "d"]
array9 = (1..5).to_a  # [1, 2, 3, 4, 5]
array10 = ('a'...'e').to_a  # ["a", "b", "c", "d"]

###########################
# blocos e yield

# Define um método que aceita um bloco e usa yield para chamar o bloco.
def metodo_com_nome_especifico_para_o_yield_saber_qual_e
  # O yield chama o bloco passado para o método.
  yield("Mensagem do bloco")
end

# Chama o método passando um bloco que imprime a mensagem recebida.
metodo_com_nome_especifico_para_o_yield_saber_qual_e do |mensagem|
  puts "Bloco chamado com: #{mensagem}" # Imprime a mensagem passada para o bloco.
end

def my_method
  yield("texto", 123)
end

# Chamando o método com um bloco de uma linha
my_method { |text, number| puts "Texto: #{text}, Número: #{number}" }

def my_method
  yield("texto", 123)
end

# Chamando o método com um bloco de várias linhas
my_method do |text, number|
  puts "Texto: #{text}, Número: #{number}"
end

def my_method(&my_block)
  # Código antes do bloco
  my_block.call|("texto",123) # Chama o bloco
  # Código depois do bloco
end

# Chamando o método com um bloco
my_method do |text, number|
  puts "Texto: #{text}, Número: #{number}"
end

# Define um hash que contém varios blocos como valores.
blocos = {
  bloco1: Proc.new do |mensagem|
    puts "Mensagem do bloco 1: #{mensagem}" # Imprime a mensagem do bloco 1.
  end,
  bloco2: Proc.new do |mensagem|
    puts "Mensagem do bloco 2: #{mensagem}" # Imprime a mensagem do bloco 2.
  end
}

# Define um método que recebe um hash de blocos e os chama.
def metodo_com_blocos(blocos)
  # Chama o bloco1 e bloco2 do hash, passando a mesma mensagem para ambos.
  blocos[:bloco1].call("Mensagem para bloco 1")
  blocos[:bloco2].call("Mensagem para bloco 2")
end

# Chama o método passando o hash de blocos.
metodo_com_blocos(blocos)
