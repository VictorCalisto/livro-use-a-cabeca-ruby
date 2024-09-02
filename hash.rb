hash = {a: 1, b: 2, c: 3}

# < : Comparação entre hashes (não aplicável diretamente)
hash1 = {a: 1, b: 2}
hash2 = {a: 1, b: 2, c: 3}
puts hash1 < hash2 # false (Hashes não têm comparação definida por <)

# <= : Comparação entre hashes (não aplicável diretamente)
puts hash1 <= hash2 # false

# == : Verifica se dois hashes são iguais
puts hash == {a: 1, b: 2, c: 3} # true

# > : Comparação entre hashes (não aplicável diretamente)
puts hash1 > hash2 # false

# >= : Comparação entre hashes (não aplicável diretamente)
puts hash1 >= hash2 # false

# [] : Acessa o valor associado a uma chave
puts hash[:a] # 1

# []= : Atribui um valor a uma chave
hash[:d] = 4
puts hash # {:a=>1, :b=>2, :c=>3, :d=>4}

# any? : Verifica se algum par chave-valor satisfaz uma condição
puts hash.any? { |k, v| v > 2 } # true

# assoc : Retorna o par chave-valor correspondente à chave
puts hash.assoc(:a) # [:a, 1]

# clear : Remove todos os pares chave-valor
hash.clear
puts hash # {}

# compact : Remove pares chave-valor com valores nil
hash = {a: 1, b: nil, c: 3}
puts hash.compact # {:a=>1, :c=>3}

# compact! : Remove pares chave-valor com valores nil (modifica o hash original)
hash.compact!
puts hash # {:a=>1, :c=>3}

# compare_by_identity : Faz com que as comparações de chave sejam feitas pela identidade do objeto
hash.compare_by_identity
hash["a"] = 100
puts hash # {"a"=>100, :a=>1, :c=>3}

# compare_by_identity? : Verifica se as comparações de chave são feitas pela identidade do objeto
puts hash.compare_by_identity? # true

# default : Retorna o valor padrão de um hash
hash.default = "Not found"
puts hash[:z] # "Not found"

# default= : Define o valor padrão de um hash
hash.default = "Not present"
puts hash[:z] # "Not present"

# default_proc : Retorna o bloco que define o valor padrão
hash.default_proc = proc { |h, k| h[k] = k * 2 }
puts hash[10] # 20

# default_proc= : Define o bloco que calcula o valor padrão
hash.default_proc = proc { |h, k| h[k] = k * 10 }
puts hash[2] # 20

# delete : Remove um par chave-valor pelo valor da chave
hash.delete(:a)
puts hash # {:c=>3, 10=>20, 2=>20}

# delete_if : Remove pares chave-valor que satisfazem a condição
hash.delete_if { |k, v| v > 10 }
puts hash # {:c=>3}

# dig : Acessa valor dentro de hashes aninhados
hash = {a: {b: {c: 1}}}
puts hash.dig(:a, :b, :c) # 1

# each : Itera sobre cada par chave-valor
hash.each { |k, v| puts "#{k}: #{v}" } # :a=>{:b=>{:c=>1}}

# each_key : Itera sobre as chaves
hash.each_key { |k| puts k } # :a

# each_pair : Itera sobre cada par chave-valor (sinônimo de each)
hash.each_pair { |k, v| puts "#{k}: #{v}" } # :a=>{:b=>{:c=>1}}

# each_value : Itera sobre os valores
hash.each_value { |v| puts v } # {:b=>{:c=>1}}

# empty? : Verifica se o hash está vazio
puts hash.empty? # false

# eql? : Verifica se dois hashes são iguais (considera tipos)
puts hash.eql?(a: {b: {c: 1}}) # false

# fetch : Retorna o valor associado à chave, ou gera erro se não existe
puts hash.fetch(:a) # {:b=>{:c=>1}}
puts hash.fetch(:z, "Not found") # "Not found"

# fetch_values : Retorna uma lista de valores para uma lista de chaves
puts hash.fetch_values(:a, :b) # [{:b=>{:c=>1}}, "Not found"]

# filter : Filtra pares chave-valor que satisfazem a condição
filtered_hash = hash.filter { |k, v| k == :a }
puts filtered_hash # {:a=>{:b=>{:c=>1}}}

# filter! : Filtra pares chave-valor que satisfazem a condição, modificando o hash original
hash.filter! { |k, v| k == :a }
puts hash # {:a=>{:b=>{:c=>1}}}

# flatten : "Achata" o hash, transformando-o em um array plano
flat_hash = {a: {b: 2}, c: 3}
puts flat_hash.flatten # [:a, {:b=>2}, :c, 3]

# hash : Retorna o código hash do hash
puts hash.hash # Código hash numérico

# has_key? : Verifica se o hash contém uma chave específica (sinônimo de key?)
puts hash.has_key?(:a) # true

# has_value? : Verifica se o hash contém um valor específico
puts hash.has_value?({b: {c: 1}}) # true

# include? : Verifica se o hash contém uma chave específica (sinônimo de key?)
puts hash.include?(:a) # true

# index : Retorna a primeira chave associada a um valor específico
puts hash.index({b: {c: 1}}) # :a

# initialize_copy : Copia o conteúdo de outro hash (método interno, geralmente não é utilizado diretamente)

# inspect : Retorna uma string de representação do hash
puts hash.inspect # "{:a=>{:b=>{:c=>1}}}"

# invert : Inverte o hash (troca chaves por valores e vice-versa)
inverted_hash = {a: 1, b: 2}
puts inverted_hash.invert # {1=>:a, 2=>:b}

# keep_if : Mantém pares chave-valor que satisfazem a condição
hash.keep_if { |k, v| k == :a }
puts hash # {:a=>{:b=>{:c=>1}}}

# key : Retorna a chave associada a um valor específico
puts hash.key({b: {c: 1}}) # :a

# key? : Verifica se o hash contém uma chave específica (sinônimo de has_key?)
puts hash.key?(:a) # true

# keys : Retorna um array com todas as chaves do hash
puts hash.keys # [:a]

# length : Retorna o número de pares chave-valor no hash (sinônimo de size)
puts hash.length # 1

# member? : Verifica se o hash contém uma chave específica (sinônimo de has_key?)
puts hash.member?(:a) # true

# merge : Combina dois hashes, retornando um novo hash
merged_hash = hash.merge({d: 4})
puts merged_hash # {:a=>{:b=>{:c=>1}}, :d=>4}

# merge! : Combina dois hashes, modificando o hash original
hash.merge!({d: 4})
puts hash # {:a=>{:b=>{:c=>1}}, :d=>4}

# pretty_print : Imprime o hash de forma legível (não aplicável diretamente em scripts simples)

# pretty_print_cycle : Imprime o hash com ciclo detectado (não aplicável diretamente em scripts simples)

# rassoc : Retorna o par chave-valor cuja chave corresponde a um valor específico
hash = {a: 1, b: 2}
puts hash.rassoc(2) # [:b, 2]

# rehash : Recalcula o código hash para o hash
hash.rehash

# reject : Retorna um novo hash, excluindo pares que satisfazem a condição
rejected_hash = hash.reject { |k, v| v > 1 }
puts rejected_hash # {:a=>1}

# reject! : Exclui pares do hash que satisfazem a condição
hash.reject! { |k, v| v > 1 }
puts hash # {:a=>1}

# replace : Substitui o conteúdo do hash pelo de outro hash
hash.replace({x: 10, y: 20})
puts hash # {:x=>10, :y=>20}

# select : Retorna um novo hash com pares que satisfazem a condição
selected_hash = hash.select { |k, v| v > 10 }
puts selected_hash # {:y=>20}

# select! : Filtra pares do hash que satisfazem a condição, modificando o hash original
hash.select! { |k, v| v > 10 }
puts hash # {:y=>20}

# shift : Remove o primeiro par chave-valor e o retorna
puts hash.shift # [:y, 20]

# size : Retorna o número de pares chave-valor no hash (sinônimo de length)
puts hash.size # 0

# slice : Retorna um novo hash contendo apenas as chaves especificadas
hash = {a: 1, b: 2, c: 3}
puts hash.slice(:a, :c) # {:a=>1, :c=>3}

# sort (<= v1_8_7_330) : Retorna um array de pares chave-valor ordenados
puts hash.sort # [[:a, 1], [:b, 2], [:c, 3]]

# store : Atribui um valor a uma chave (sinônimo de []=)
hash.store(:d, 4)
puts hash # {:a=>1, :b=>2, :c=>3, :d=>4}

# to_a : Converte o hash em um array de pares chave-valor
puts hash.to_a # [[:a, 1], [:b, 2], [:c, 3], [:d, 4]]

# to_h : Converte o hash de volta a um hash (útil em subclasses de Hash)
puts hash.to_h # {:a=>1, :b=>2, :c=>3, :d=>4}

# to_hash : Converte o hash em um objeto hash
puts hash.to_hash # {:a=>1, :b=>2, :c=>3, :d=>4}

# to_proc : Converte o hash em um objeto Proc (não aplicável diretamente)

# to_s : Converte o hash em uma string
puts hash.to_s # "{:a=>1, :b=>2, :c=>3, :d=>4}"

# to_yaml (<= v1_9_1_378) : Converte o hash em YAML
require 'yaml'
puts hash.to_yaml # "---\n:a: 1\n:b: 2\n:c: 3\n:d: 4\n"

# transform_keys : Retorna um novo hash com as chaves transformadas
transformed_keys_hash = hash.transform_keys { |k| k.to_s.upcase }
puts transformed_keys_hash # {"A"=>1, "B"=>2, "C"=>3, "D"=>4}

# transform_keys! : Transforma as chaves do hash no próprio hash
hash.transform_keys! { |k| k.to_s.upcase }
puts hash # {"A"=>1, "B"=>2, "C"=>3, "D"=>4}

# transform_values : Retorna um novo hash com os valores transformados
transformed_values_hash = hash.transform_values { |v| v * 2 }
puts transformed_values_hash # {"A"=>2, "B"=>4, "C"=>6, "D"=>8}

# transform_values! : Transforma os valores do hash no próprio hash
hash.transform_values! { |v| v * 2 }
puts hash # {"A"=>2, "B"=>4, "C"=>6, "D"=>8}

# update : Combina dois hashes, modificando o hash original (sinônimo de merge!)
hash.update({A: 10, E: 5})
puts hash # {"A"=>10, "B"=>4, "C"=>6, "D"=>8, "E"=>5}

# value? : Verifica se o hash contém um valor específico (sinônimo de has_value?)
puts hash.value?(10) # true

# values : Retorna um array com todos os valores do hash
puts hash.values # [10, 4, 6, 8, 5]

# values_at : Retorna uma array com os valores para as chaves especificadas
puts hash.values_at("A", "C") # [10, 6]

##################################################
joao = {altura: 180, peso: 70}
maria = {altura: 165, peso: 60}

# Comparando pela soma dos valores
def compare_hashes(hash1, hash2)
  sum1 = hash1.values.sum
  sum2 = hash2.values.sum

  if sum1 < sum2
    -1
  elsif sum1 > sum2
    1
  else
    0
  end
end

# Uso da função para comparar
comparison_result = compare_hashes(joao, maria)

if comparison_result == -1
  puts "Maria tem valores somados maiores que João"
elsif comparison_result == 1
  puts "João tem valores somados maiores que Maria"
else
  puts "João e Maria têm valores somados iguais"
end
#######################
joao = {altura: 180, peso: 70}
maria = {altura: 165, peso: 60}

# Comparando a altura
if joao[:altura] > maria[:altura]
  puts "João é mais alto que Maria."
elsif joao[:altura] < maria[:altura]
  puts "Maria é mais alta que João."
else
  puts "João e Maria têm a mesma altura."
end
#####################