# exact? : Verifica se a fração é exata
# Nota: Para números racionais, isso sempre retorna true porque Rationals são exatos.
puts "exact? : Verifica se a fração é exata"
rational_num = Rational(3, 4)
puts rational_num.exact? # true

# quot : Retorna a parte inteira da divisão de dois racionais
puts "quot : Retorna a parte inteira da divisão de dois racionais"
rational_num1 = Rational(7, 3)
rational_num2 = Rational(2, 3)
puts rational_num1.quot(rational_num2) # 3 (porque 7/3 dividido por 2/3 é 3)

# quotrem : Retorna o quociente e o resto da divisão de dois racionais
puts "quotrem : Retorna o quociente e o resto da divisão de dois racionais"
quotrem_result = rational_num1.quotrem(rational_num2)
puts quotrem_result.inspect # [3, 1/3] (quociente é 3, resto é 1/3)

# rational? : Verifica se o objeto é um número racional
puts "rational? : Verifica se o objeto é um número racional"
puts rational_num.rational? # true
puts (1.5).rational?      # false

# to_r : Converte o objeto para um número racional
puts "to_r : Converte o objeto para um número racional"
integer_num = 5
float_num = 2.5
puts integer_num.to_r # (5/1)
puts float_num.to_r   # (5/2)
