# angle : Retorna o ângulo (em radianos) do número complexo no plano complexo
# Nota: Não aplicável diretamente para Float, é para Complex.
puts "angle : Retorna o ângulo (em radianos) do número complexo no plano complexo"
# Nota: Não aplicável diretamente para Float

# arg : Retorna o argumento (ângulo) do número complexo
# Nota: Não aplicável diretamente para Float, é para Complex.
puts "arg : Retorna o argumento (ângulo) do número complexo"
# Nota: Não aplicável diretamente para Float

# finite? : Verifica se o número é finito (não infinito e não NaN)
puts "finite? : Verifica se o número é finito (não infinito e não NaN)"
puts 1.0.finite?  # true
puts Float::INFINITY.finite? # false
puts Float::NAN.finite?     # false

# infinite? : Verifica se o número é infinito
puts "infinite? : Verifica se o número é infinito"
puts 1.0.infinite?  # false
puts Float::INFINITY.infinite? # 1 (positivo infinito)
puts (-Float::INFINITY).infinite? # -1 (negativo infinito)

# nan? : Verifica se o número é NaN (Not a Number)
puts "nan? : Verifica se o número é NaN (Not a Number)"
puts 1.0.nan?      # false
puts Float::NAN.nan?  # true

# negative? : Verifica se o número é negativo
puts "negative? : Verifica se o número é negativo"
puts -1.0.negative?  # true
puts 1.0.negative?   # false

# next_float : Retorna o próximo número de ponto flutuante após o número atual
puts "next_float : Retorna o próximo número de ponto flutuante após o número atual"
puts 1.0.next_float # 1.0000000000000002 (ou próximo valor representável)

# phase : Retorna a fase (ou argumento) de um número complexo
# Nota: Não aplicável diretamente para Float, é para Complex.
puts "phase : Retorna a fase (ou argumento) de um número complexo"
# Nota: Não aplicável diretamente para Float

# positive? : Verifica se o número é positivo
puts "positive? : Verifica se o número é positivo"
puts 1.0.positive?  # true
puts -1.0.positive? # false

# prev_float : Retorna o número de ponto flutuante anterior ao número atual
puts "prev_float : Retorna o número de ponto flutuante anterior ao número atual"
puts 1.0.prev_float # 0.9999999999999999 (ou valor anterior representável)

# quo : Realiza a divisão e retorna o quociente como um número racional
puts "quo : Realiza a divisão e retorna o quociente como um número racional"
puts 5.0.quo(2)   # (5/2) = 2.5
puts 1.0.quo(3)   # (1/3) = 0.3333333333333333

# zero? : Verifica se o número é zero
puts "zero? : Verifica se o número é zero"
puts 0.0.zero?    # true
puts 1.0.zero?    # false
