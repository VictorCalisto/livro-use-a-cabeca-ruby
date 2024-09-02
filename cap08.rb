# ATENCAO
# todas as variaveis, arrays e hashs sao ponteiros.
# ou seja eles nao guardao o objeto em si, mas apenas a referencia.
# Criando um array e atribuindo-o à variável `a`
a = [1, 2, 3]

# Atribuindo `a` à variável `b`. Agora `b` e `a` referenciam o mesmo array no heap.
b = a

# Modificando o array através da variável `b`
b << 4

# Imprimindo os valores de `a` e `b`
puts "Array a: #{a}"  # Saída: Array a: [1, 2, 3, 4]
puts "Array b: #{b}"  # Saída: Array b: [1, 2, 3, 4]

# o object_id mostra esse endereco na memoria
# praticamente todas as classes tem
a = "Olá"
b = a

puts a.object_id # Exemplo: 70123505559820
puts b.object_id # Exemplo: 70123505559820 (mesmo que a)

c = "Olá"
puts c.object_id # Exemplo: 70123505539840 (diferente de a e b)
