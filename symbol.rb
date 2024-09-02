# <=> : Operador de comparação geral (-1, 0, 1)
:apple <=> :banana # -1

# =~ : Verifica correspondência de regex (neste caso, não é diretamente aplicável a Symbols)
:apple =~ /app/ # nil (não aplicável a Symbols)

# == : Igualdade
:apple == :apple # true

# === : Comparação de case
:apple === :apple # true

# [] : Indexação (neste caso, não é aplicável a Symbols)
:apple[0] # NoMethodError (não aplicável a Symbols)

# as_json : Serializa para JSON
:apple.as_json # "apple" (string)

# capitalize : Retorna o símbolo com a primeira letra maiúscula
:apple.capitalize # :Apple

# casecmp : Comparação case-insensitive
:apple.casecmp(:APPLE) # 0 (significa igualdade)

# casecmp? : Comparação case-insensitive, retornando um booleano
:apple.casecmp?(:APPLE) # true

# downcase : Converte o símbolo para minúsculas
:Apple.downcase # :apple

# empty? : Verifica se o símbolo é vazio (não aplicável a Symbols)
:apple.empty? # NoMethodError (não aplicável a Symbols)

# encoding : Retorna a codificação do símbolo
:apple.encoding # #<Encoding:UTF-8>

# id2name : Retorna o nome do símbolo como string (sinônimo de `to_s`)
:apple.id2name # "apple"

# inspect : Retorna uma string representando o símbolo
:apple.inspect # ":apple"

# intern : Retorna o próprio símbolo (sinônimo de `to_sym`)
"apple".intern # :apple

# length : Retorna o comprimento do símbolo como string
:apple.length # 5

# match : Verifica correspondência de regex (não aplicável a Symbols diretamente)
:apple.match(/app/) # NoMethodError (não aplicável a Symbols)

# match? : Verifica correspondência de regex com resultado booleano (não aplicável a Symbols diretamente)
:apple.match?(/app/) # NoMethodError (não aplicável a Symbols)

# next : Retorna o próximo símbolo sequencial
:apple.next # :appleA

# size : Retorna o comprimento do símbolo (sinônimo de `length`)
:apple.size # 5

# slice : Corta uma parte do símbolo (não aplicável diretamente)
:apple.slice(0, 3) # NoMethodError (não aplicável a Symbols)

# succ : Retorna o próximo símbolo sequencial (sinônimo de `next`)
:apple.succ # :appleA

# swapcase : Inverte o caso das letras no símbolo
:Apple.swapcase # :aPPLE

# to_i (<= v1_8_7_330) : Converte para inteiro (não aplicável diretamente a Symbols)
:apple.to_i # NoMethodError (não aplicável a Symbols)

# to_int (<= v1_8_7_330) : Converte para inteiro (sinônimo de `to_i`, não aplicável)
:apple.to_int # NoMethodError (não aplicável a Symbols)

# to_json : Converte para JSON
:apple.to_json # "\"apple\""

# to_proc : Converte o símbolo em um objeto Proc
:add.to_proc.call(1, 2) # TypeError (simples conversão de método, ex: [1, 2, 3].map(&:to_s))

# to_s : Converte o símbolo para string
:apple.to_s # "apple"

# to_sym : Retorna o próprio símbolo
"apple".to_sym # :apple

# to_yaml (<= v1_9_1_378) : Converte para YAML
require 'yaml'
:apple.to_yaml # ":apple\n"

# upcase : Converte o símbolo para maiúsculas
:apple.upcase # :APPLE
