# Criando dois arrays para comparar
array1 = [1, 2, 3, 4, 5]
array2 = [3, 4, 5, 6, 7]

# Operadores e Métodos:

# << : Adiciona um elemento ao final do array
array1 << 6 # [1, 2, 3, 4, 5, 6]

# <=> : Comparação entre arrays (retorna -1, 0 ou 1)
puts array1 <=> array2 # 1 (array1 é maior)

# == : Compara se dois arrays são iguais
puts array1 == array2 # false

# | : União de arrays (remove duplicatas)
puts (array1 | array2).inspect # [1, 2, 3, 4, 5, 6, 7]

# - : Diferença entre arrays
puts (array1 - array2).inspect # [1, 2]

# [] : Acesso a um elemento pelo índice
puts array1[0] # 1

# * : Repete o array
puts array1 * 2 # [1, 2, 3, 4, 5, 6, 1, 2, 3, 4, 5, 6]

# & : Interseção de arrays
puts (array1 & array2).inspect # [3, 4, 5]

# + : Concatena arrays
puts (array1 + array2).inspect # [1, 2, 3, 4, 5, 6, 3, 4, 5, 6, 7]

# abbrev : Não aplicável diretamente para arrays

# all? : Verifica se todos os elementos satisfazem a condição
puts array1.all? { |x| x > 0 } # true

# any? : Verifica se algum elemento satisfaz a condição
puts array1.any? { |x| x > 5 } # true

# append : Adiciona um ou mais elementos ao final do array (Ruby 2.5+)
array1.append(7, 8)
puts array1.inspect # [1, 2, 3, 4, 5, 6, 7, 8]

# at : Acessa um elemento pelo índice
puts array1.at(2) # 3

# bsearch : Pesquisa por um elemento que satisfaz a condição
puts array1.bsearch { |x| x > 4 } # 5

# clear : Limpa todos os elementos do array
array1.clear
puts array1.inspect # []

# collect : Aplica um bloco a cada elemento e retorna um novo array
array2 = [1, 2, 3, 4]
puts array2.collect { |x| x * 2 }.inspect # [2, 4, 6, 8]

# compact : Remove elementos nulos
array3 = [1, nil, 2, nil, 3]
puts array3.compact.inspect # [1, 2, 3]

# concat : Concatena arrays (modifica o array original)
array4 = [1, 2]
array4.concat([3, 4])
puts array4.inspect # [1, 2, 3, 4]

# count : Conta o número de elementos que satisfazem uma condição
puts array2.count { |x| x > 2 } # 2

# delete : Remove o primeiro elemento encontrado
array5 = [1, 2, 3, 2]
array5.delete(2)
puts array5.inspect # [1, 3, 2]

# each : Itera sobre cada elemento do array
array2.each { |x| print x, " " } # 1 2 3 4 

# empty? : Verifica se o array está vazio
puts array2.empty? # false

# eql? : Verifica se dois arrays são iguais (mesmo conteúdo e ordem)
puts array2.eql?([1, 2, 3, 4]) # true

# fetch : Obtém o elemento no índice especificado, ou lança uma exceção se não existir
puts array2.fetch(2) # 3

# flatten : Achata arrays aninhados em um único nível
nested_array = [1, [2, [3, 4]], 5]
puts nested_array.flatten.inspect # [1, 2, 3, 4, 5]

# include? : Verifica se o array inclui um elemento
puts array2.include?(3) # true

# insert : Insere elementos em um índice especificado
array6 = [1, 2, 3]
array6.insert(1, 1.5)
puts array6.inspect # [1, 1.5, 2, 3]

# map : Aplica um bloco a cada elemento e retorna um novo array
puts array2.map { |x| x * 2 }.inspect # [2, 4, 6, 8]

# reverse : Inverte a ordem dos elementos
puts array2.reverse.inspect # [4, 3, 2, 1]

# slice : Retorna um subconjunto do array
puts array2.slice(1, 2).inspect # [2, 3]

# sort : Ordena os elementos
puts array2.sort.inspect # [1, 2, 3, 4]

# sum : Soma todos os elementos
puts array2.sum # 10

# uniq : Remove duplicatas
puts [1, 2, 2, 3, 3, 3].uniq.inspect # [1, 2, 3]

# zip : Junta vários arrays em um array de arrays
array7 = [1, 2, 3]
array8 = ['a', 'b', 'c']
puts array7.zip(array8).inspect # [[1, "a"], [2, "b"], [3, "c"]]
