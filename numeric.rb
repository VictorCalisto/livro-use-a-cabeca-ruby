# clone : Cria uma cópia do objeto numérico
puts "clone : Cria uma cópia do objeto numérico"
num = 10
puts num.clone     # 10

# conj : Retorna o conjugado de um número complexo
# Nota: Não aplicável diretamente para Numeric, é para Complex.
puts "conj : Retorna o conjugado de um número complexo"
complex_num = Complex(2, 3)
puts complex_num.conj # (2 - 3i)

# conjugate : Retorna o conjugado de um número complexo
# Nota: Sinônimo de conj, também aplicável para Complex.
puts "conjugate : Retorna o conjugado de um número complexo"
puts complex_num.conjugate # (2 - 3i)

# imag : Retorna a parte imaginária de um número complexo
# Nota: Não aplicável diretamente para Numeric, é para Complex.
puts "imag : Retorna a parte imaginária de um número complexo"
puts complex_num.imag # 3

# real : Retorna a parte real de um número complexo
# Nota: Não aplicável diretamente para Numeric, é para Complex.
puts "real : Retorna a parte real de um número complexo"
puts complex_num.real # 2

# rect : Retorna a parte real (como Complex), o mesmo que real
# Nota: Não aplicável diretamente para Numeric, é para Complex.
puts "rect : Retorna a parte real (como Complex)"
puts complex_num.rect # 2

# rectangular : Retorna o número como um número complexo (não aplicável diretamente para Numeric)
# Nota: Não aplicável diretamente para Numeric, é para Complex.
puts "rectangular : Retorna o número como um número complexo"
puts complex_num.rectangular # (2 + 3i)

# step : Itera sobre uma faixa de números com um determinado passo
puts "step : Itera sobre uma faixa de números com um determinado passo"
(1..5).step(2) { |i| puts i } # 1, 3, 5

# to_c : Converte um número para um número complexo
puts "to_c : Converte um número para um número complexo"
num = 5
puts num.to_c   # (5 + 0i)

# to_int : Converte um número para um inteiro
puts "to_int : Converte um número para um inteiro"
puts 5.5.to_int # 5

# truncate : Remove a parte decimal de um número de ponto flutuante, retornando um inteiro
puts "truncate : Remove a parte decimal de um número de ponto flutuante, retornando um inteiro"
puts 3.9.truncate  # 3
puts (-3.9).truncate # -3

# zero? : Verifica se o número é zero
puts "zero? : Verifica se o número é zero"
puts 0.zero?  # true
puts 1.zero?  # false
