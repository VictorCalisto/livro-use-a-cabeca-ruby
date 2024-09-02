# Criando uma variável do tipo TrueClass
true_value = true

# Operadores e Métodos:

# ^ : Operador XOR (não aplicável diretamente a TrueClass)
true_value ^ false # false (exemplo de XOR, mas não diretamente para TrueClass)

# === : Compara se um valor pertence a um conjunto (não aplicável diretamente)
puts true_value === true # true

# | : Operador OR bit a bit (não aplicável diretamente a TrueClass)
true_value | false # true (exemplo de OR bit a bit, mas não diretamente para TrueClass)

# & : Operador AND bit a bit (não aplicável diretamente a TrueClass)
true_value & false # false (exemplo de AND bit a bit, mas não diretamente para TrueClass)

# inspect : Retorna uma representação da string do objeto
puts true_value.inspect # true

# to_s : Converte o valor para uma string
puts true_value.to_s # "true"
