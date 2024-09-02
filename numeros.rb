# == : Compara se dois valores são iguais
puts "== : Compara se dois valores são iguais"
puts 5 == 5            # true
puts 5 == 3            # false
puts 5.0 == 5         # true (para números float e inteiros, a comparação é igual)

# === : Testa se um valor corresponde a um padrão
puts "=== : Testa se um valor corresponde a um padrão"
puts 5 === 5           # true (para Integers, é igual a ==)
puts 5 === 5.0         # true (para Numeric, é igual a ==)

# < : Compara se o valor da esquerda é menor que o valor da direita
puts "< : Compara se o valor da esquerda é menor que o valor da direita"
puts 3 < 5             # true
puts 5 < 5             # false
puts 5.0 < 6.0        # true

# <= : Compara se o valor da esquerda é menor ou igual ao valor da direita
puts "<= : Compara se o valor da esquerda é menor ou igual ao valor da direita"
puts 5 <= 5            # true
puts 4 <= 5            # true
puts 5 <= 4            # false

# <=> : Compara dois valores e retorna -1, 0 ou 1
puts "<=> : Compara dois valores e retorna -1, 0 ou 1"
puts 5 <=> 5          # 0 (iguais)
puts 3 <=> 5          # -1 (menor)
puts 7 <=> 5          # 1 (maior)

# > : Compara se o valor da esquerda é maior que o valor da direita
puts "> : Compara se o valor da esquerda é maior que o valor da direita"
puts 5 > 3            # true
puts 3 > 5            # false

# >= : Compara se o valor da esquerda é maior ou igual ao valor da direita
puts ">= : Compara se o valor da esquerda é maior ou igual ao valor da direita"
puts 5 >= 5           # true
puts 6 >= 5           # true
puts 4 >= 5           # false

# - : Subtrai o valor da direita do valor da esquerda
puts "- : Subtrai o valor da direita do valor da esquerda"
puts 10 - 4           # 6
puts 5.5 - 2.5       # 3.0

# -@ : Retorna o valor negativo do número
puts "-@ : Retorna o valor negativo do número"
puts -5              # -5
puts -(-5)           # 5

# / : Divide o valor da esquerda pelo valor da direita
puts "/ : Divide o valor da esquerda pelo valor da direita"
puts 10 / 2          # 5
puts 10.0 / 3.0     # 3.3333333333333335

# * : Multiplica o valor da esquerda pelo valor da direita
puts "* : Multiplica o valor da esquerda pelo valor da direita"
puts 4 * 5          # 20
puts 4.5 * 2.0      # 9.0

# ** : Eleva o valor da esquerda à potência do valor da direita
puts "** : Eleva o valor da esquerda à potência do valor da direita"
puts 2 ** 3         # 8
puts 2.0 ** 3.0    # 8.0

# % : Retorna o resto da divisão
puts "% : Retorna o resto da divisão"
puts 10 % 3        # 1
puts 5.5 % 2.0    # 1.5

# + : Adiciona o valor da direita ao valor da esquerda
puts "+ : Adiciona o valor da direita ao valor da esquerda"
puts 3 + 2         # 5
puts 2.5 + 3.5    # 6.0

# abs : Retorna o valor absoluto
puts "abs : Retorna o valor absoluto"
puts -5.abs        # 5
puts (-5.5).abs   # 5.5

# to_s : Converte o número em uma string
puts "to_s : Converte o número em uma string"
puts 123.to_s     # "123"
puts 12.34.to_s   # "12.34"

# to_f : Converte o número em um float
puts "to_f : Converte o número em um float"
puts 5.to_f       # 5.0
puts 3.to_f       # 3.0

# to_i : Converte o número para um inteiro
puts "to_i : Converte o número para um inteiro"
puts 5.9.to_i     # 5
puts 12.34.to_i   # 12

# to_d : Converte o número para um BigDecimal (não disponível para Float ou Integer diretamente)
require 'bigdecimal'
puts "to_d : Converte o número para um BigDecimal"
puts BigDecimal("3.14").to_d   # 3.14

# to_r : Converte o número para um Rational (não disponível para Float ou BigDecimal diretamente)
puts "to_r : Converte o número para um Rational"
puts 5.to_r       # (5/1)
puts Rational(2, 3).to_r # (2/3)

# ceil : Arredonda o número para cima
puts "ceil : Arredonda o número para cima"
puts 3.14.ceil    # 4
puts BigDecimal("3.14").ceil # 4

# floor : Arredonda o número para baixo
puts "floor : Arredonda o número para baixo"
puts 3.14.floor   # 3
puts BigDecimal("3.14").floor # 3

# round : Arredonda o número para o inteiro mais próximo
puts "round : Arredonda o número para o inteiro mais próximo"
puts 3.6.round    # 4
puts 3.4.round    # 3

# magnitude : Retorna a magnitude do número (só disponível para Complex)
puts "magnitude : Retorna a magnitude do número"
puts Complex(3, 4).magnitude  # 5.0
