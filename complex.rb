# complex? : Verifica se o objeto é um número complexo
puts "complex? : Verifica se o objeto é um número complexo"
complex_num = Complex(2, 3)
puts complex_num.complex? # true
puts (5).complex?         # false

# conj : Retorna o conjugado do número complexo
puts "conj : Retorna o conjugado do número complexo"
complex_num = Complex(2, 3)
puts complex_num.conj # (2-3i)

# conjugate : Retorna o conjugado do número complexo
# Nota: É o mesmo que conj
puts "conjugate : Retorna o conjugado do número complexo"
puts complex_num.conjugate # (2-3i)

# imaginary : Retorna a parte imaginária do número complexo
puts "imaginary : Retorna a parte imaginária do número complexo"
complex_num = Complex(2, 3)
puts complex_num.imaginary # 3

# polar : Retorna a forma polar do número complexo (magnitude e fase)
puts "polar : Retorna a forma polar do número complexo"
polar_form = complex_num.polar
puts "Magnitude: #{polar_form[0]}, Fase: #{polar_form[1]}" # Magnitude e fase

# rect : Retorna a forma retangular (cartesiana) do número complexo
puts "rect : Retorna a forma retangular do número complexo"
magnitude = 5
phase = Math::PI / 4
rect_form = Complex.polar(magnitude, phase)
puts rect_form.rect # (3.5355339059327378+3.5355339059327378i)

# rectangular : Retorna a forma retangular do número complexo
# Nota: É o mesmo que rect
puts "rectangular : Retorna a forma retangular do número complexo"
puts rect_form.rectangular # (3.5355339059327378+3.5355339059327378i)

# to_c : Converte o objeto para um número complexo
puts "to_c : Converte o objeto para um número complexo"
integer_num = 5
float_num = 2.5
puts integer_num.to_c # (5+0i)
puts float_num.to_c   # (2.5+0i)
