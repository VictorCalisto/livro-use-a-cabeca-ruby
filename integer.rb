# abs : Retorna o valor absoluto do número
puts "abs : Retorna o valor absoluto do número"
puts -5.abs        # 5
puts 3.abs         # 3

# bit_length : Retorna o número de bits necessários para representar o número em binário
puts "bit_length : Retorna o número de bits necessários para representar o número em binário"
puts 5.bit_length  # 3 (binário: 101)
puts 255.bit_length # 8 (binário: 11111111)

# chr : Converte o número para o caractere ASCII correspondente
puts "chr : Converte o número para o caractere ASCII correspondente"
puts 65.chr        # "A" (código ASCII 65)
puts 97.chr        # "a" (código ASCII 97)

# denominator : Retorna o denominador da representação racional do número (só disponível para Rational)
# Nota: Não aplicável para Integer diretamente
puts "denominator : Retorna o denominador da representação racional do número (só disponível para Rational)"
puts Rational(3, 4).denominator # 4
# Nota: Para Integer, não há método direto `denominator`

# gcd : Retorna o maior divisor comum entre o número e o valor dado
puts "gcd : Retorna o maior divisor comum entre o número e o valor dado"
puts 12.gcd(15)   # 3
puts 100.gcd(25)  # 25

# gcdlcm : Retorna o maior divisor comum e o menor múltiplo comum entre dois números
puts "gcdlcm : Retorna o maior divisor comum e o menor múltiplo comum entre dois números"
gcd, lcm = 12.gcdlcm(15)
puts "GCD: #{gcd}, LCM: #{lcm}" # GCD: 3, LCM: 60

# integer? : Verifica se o objeto é um inteiro
puts "integer? : Verifica se o objeto é um inteiro"
puts 5.integer?   # true
puts 5.0.integer? # false

# lcm : Retorna o menor múltiplo comum entre o número e o valor dado
puts "lcm : Retorna o menor múltiplo comum entre o número e o valor dado"
puts 4.lcm(5)     # 20
puts 6.lcm(10)    # 30

# nobits? : Verifica se o número não tem bits definidos
puts "nobits? : Verifica se o número não tem bits definidos"
puts 0.nobits?    # true
puts 1.nobits?    # false

# ord : Retorna o código numérico do caractere (só disponível para String)
# Nota: Não aplicável para Integer diretamente
puts "ord : Retorna o código numérico do caractere (só disponível para String)"
puts "A".ord       # 65
# Nota: Para Integer, não há método direto `ord`

# prime? : Verifica se o número é um número primo
puts "prime? : Verifica se o número é um número primo"
puts 7.prime?     # true
puts 8.prime?     # false

# prime_division : Retorna a decomposição em fatores primos do número
puts "prime_division : Retorna a decomposição em fatores primos do número"
puts 28.prime_division # [[2, 2], [7, 1]] (28 = 2^2 * 7^1)

# rationalize : Converte o número para sua representação racional (só disponível para Float)
# Nota: Não aplicável para Integer diretamente
puts "rationalize : Converte o número para sua representação racional (só disponível para Float)"
puts 0.75.rationalize # (3/4)
# Nota: Para Integer, não há método direto `rationalize`

# size : Retorna o número de bytes usados para armazenar o número (não amplamente usado para Integer)
puts "size : Retorna o número de bytes usados para armazenar o número (não amplamente usado para Integer)"
puts 10.size       # 8 (em bytes, depende da plataforma)

# succ : Retorna o sucessor do número
puts "succ : Retorna o sucessor do número"
puts 5.succ        # 6
puts 10.succ       # 11

# to_bn : Converte o número para uma representação de número grande (não disponível para Integer diretamente)
# Nota: Não aplicável diretamente
puts "to_bn : Converte o número para uma representação de número grande (não disponível para Integer diretamente)"
# Nota: Para Integer, não há método direto `to_bn`

# to_d : Converte o número para BigDecimal (não disponível para Integer diretamente)
# Nota: Não aplicável diretamente
puts "to_d : Converte o número para BigDecimal (não disponível para Integer diretamente)"
# Nota: Para Integer, não há método direto `to_d`

# to_i : Converte o número para um inteiro
puts "to_i : Converte o número para um inteiro"
puts 5.to_i        # 5
puts 3.14.to_i     # 3

# to_r : Converte o número para uma representação racional
puts "to_r : Converte o número para uma representação racional"
puts 5.to_r        # (5/1)
puts Rational(2, 3).to_r # (2/3)

# upto : Itera de um número até outro número (inclusive)
puts "upto : Itera de um número até outro número (inclusive)"
(1).upto(3) { |i| print "#{i} " } # 1 2 3
