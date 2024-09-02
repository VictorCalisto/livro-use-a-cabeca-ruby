require 'bigdecimal'

# add : Soma dois objetos BigDecimal
puts "add : Soma dois objetos BigDecimal"
num1 = BigDecimal("1.234")
num2 = BigDecimal("2.345")
puts num1.add(num2) # 3.579

# exponent : Retorna o expoente do BigDecimal
puts "exponent : Retorna o expoente do BigDecimal"
num = BigDecimal("1.234e-3")
puts num.exponent # -3

# fix : Converte o BigDecimal para um número inteiro (truncamento)
puts "fix : Converte o BigDecimal para um número inteiro"
num = BigDecimal("123.456")
puts num.fix # 123

# frac : Retorna a parte fracionária do BigDecimal
puts "frac : Retorna a parte fracionária do BigDecimal"
num = BigDecimal("123.456")
puts num.frac # 0.456

# mult : Multiplica dois objetos BigDecimal
puts "mult : Multiplica dois objetos BigDecimal"
num1 = BigDecimal("1.234")
num2 = BigDecimal("2.345")
puts num1.mult(num2) # 2.894730

# nan? : Verifica se o BigDecimal é NaN (Not a Number)
puts "nan? : Verifica se o BigDecimal é NaN"
num = BigDecimal("NaN")
puts num.nan? # true

# nonzero? : Verifica se o BigDecimal não é zero
puts "nonzero? : Verifica se o BigDecimal não é zero"
num = BigDecimal("0.0")
puts num.nonzero? # nil
num = BigDecimal("1.0")
puts num.nonzero? # 0.1E1

# power : Eleva o BigDecimal a uma potência especificada
puts "power : Eleva o BigDecimal a uma potência especificada"
num = BigDecimal("2.0")
puts num.power(3) # 8.0

# precs : Retorna o número de dígitos significativos do BigDecimal
puts "precs : Retorna o número de dígitos significativos do BigDecimal"
num = BigDecimal("123.456")
puts num.precs # 6

# sign : Retorna o sinal do BigDecimal (-1, 0, 1)
puts "sign : Retorna o sinal do BigDecimal"
num = BigDecimal("-123.456")
puts num.sign # -1
num = BigDecimal("0.0")
puts num.sign # 0
num = BigDecimal("123.456")
puts num.sign # 1

# split : Divide o BigDecimal em partes inteira e fracionária
puts "split : Divide o BigDecimal em partes inteira e fracionária"
num = BigDecimal("123.456")
puts num.split # [123, 0.456]

# sqrt : Retorna a raiz quadrada do BigDecimal
puts "sqrt : Retorna a raiz quadrada do BigDecimal"
num = BigDecimal("16.0")
puts num.sqrt # 4.0

# sub : Subtrai um BigDecimal de outro
puts "sub : Subtrai um BigDecimal de outro"
num1 = BigDecimal("5.678")
num2 = BigDecimal("2.345")
puts num1.sub(num2) # 3.333

# to_digits : Converte o BigDecimal em um array de dígitos
puts "to_digits : Converte o BigDecimal em um array de dígitos"
num = BigDecimal("123.456")
puts num.to_digits # [1, 2, 3, 4, 5, 6]

# to_i : Converte o BigDecimal para um inteiro
puts "to_i : Converte o BigDecimal para um inteiro"
num = BigDecimal("123.456")
puts num.to_i # 123

# to_json : Converte o BigDecimal para uma string JSON
puts "to_json : Converte o BigDecimal para uma string JSON"
num = BigDecimal("123.456")
puts num.to_json # "123.456"
