# << : Concatena a string à esquerda da seta com a string à direita
str = "Hello" << " World" # "Hello World"
# <=> : Compara duas strings, retornando -1, 0, ou 1
"abc" <=> "xyz" # -1
# =~ : Retorna a posição do primeiro match de regex ou nil se não houver
"Hello" =~ /e/ # 1
# == : Verifica se duas strings são iguais
"abc" == "abc" # true
# === : Verifica se uma string corresponde a um padrão
/ell/ === "Hello" # true
# -@ : Inverte a string, aplicando o operador unário negativo
str = -"Hello" # "olleH"
# [] : Acessa um caractere ou substring na string
"Hello"[1] # "e"
# []= : Substitui uma parte da string
str = "Hello"
str[1] = "a" # "Hallo"
# * : Repete a string n vezes
"Ha" * 3 # "HaHaHa"
# % : Formata uma string (substitui placeholders)
"%s %d" % ["Hello", 123] # "Hello 123"
# + : Concatena duas strings
"Hello" + " World" # "Hello World"
# +@ : Retorna a string original (não faz nada em Ruby)
+str = "Hello" # "Hello"
# ascii_only? : Verifica se todos os caracteres da string são ASCII
"Hello".ascii_only? # true
# b : Retorna a string como uma sequência de bytes
"abc".b # "\x61\x62\x63"
# bytes : Retorna uma array dos bytes da string
"abc".bytes # [97, 98, 99]
# bytesize : Retorna o tamanho da string em bytes
"abc".bytesize # 3
# byteslice : Retorna uma fatia da string em bytes
"abc".byteslice(1, 2) # "bc"
# capitalize : Converte o primeiro caractere para maiúscula
"hello".capitalize # "Hello"
# capitalize! : Modifica a string em lugar para capitalizar o primeiro caractere
"hello".capitalize! # "Hello"
# casecmp : Compara duas strings ignorando a diferença de maiúsculas e minúsculas
"abc".casecmp("ABC") # 0
# casecmp? : Retorna true se duas strings são iguais, ignorando maiúsculas/minúsculas
"abc".casecmp?("ABC") # true
# center : Centraliza a string com espaços ou outro caractere
"Hello".center(10, "-") # "--Hello---"
# chars : Retorna uma array de caracteres da string
"abc".chars # ["a", "b", "c"]
# chomp : Remove o caractere de nova linha do final da string
"hello\n".chomp # "hello"
# chomp! : Modifica a string removendo o caractere de nova linha
"hello\n".chomp! # "hello"
# chop : Remove o último caractere da string
"hello\n".chop # "hello"
# chop! : Modifica a string removendo o último caractere
"hello\n".chop! # "hello"
# chr : Retorna o primeiro caractere da string
"hello".chr # "h"
# clear : Esvazia a string
"hello".clear # ""
# codepoints : Retorna uma array dos pontos de código Unicode
"abc".codepoints # [97, 98, 99]
# concat : Concatena um caractere ou string à string existente
"Hello".concat(" World") # "Hello World"
# count : Conta o número de ocorrências de um caractere ou padrão
"hello".count("l") # 2
# crypt : Gera um hash criptográfico da string (não recomendado para novos projetos)
"password".crypt("salt") # "saUVfF5yAKx1M"
# delete : Remove todas as ocorrências de um caractere
"hello".delete("l") # "heo"
# delete! : Modifica a string removendo todas as ocorrências de um caractere
"hello".delete!("l") # "heo"
# delete_prefix : Remove o prefixo especificado da string
"hello".delete_prefix("he") # "llo"
# delete_prefix! : Modifica a string removendo o prefixo especificado
"hello".delete_prefix!("he") # "llo"
# delete_suffix : Remove o sufixo especificado da string
"hello".delete_suffix("lo") # "hel"
# delete_suffix! : Modifica a string removendo o sufixo especificado
"hello".delete_suffix!("lo") # "hel"
# downcase : Converte todas as letras para minúsculas
"HELLO".downcase # "hello"
# downcase! : Modifica a string para que todas as letras fiquem minúsculas
"HELLO".downcase! # "hello"
# dump : Retorna uma string escapada (útil para depuração)
"abc\n".dump # "\"abc\\n\""
# each_byte : Itera sobre os bytes da string
"abc".each_byte { |b| puts b } # 97 98 99
# each_char : Itera sobre os caracteres da string
"abc".each_char { |c| puts c } # "a" "b" "c"
# each_codepoint : Itera sobre os pontos de código Unicode
"abc".each_codepoint { |cp| puts cp } # 97 98 99
# each_grapheme_cluster : Itera sobre os clusters de grafemas
"e\u0301".each_grapheme_cluster { |gc| puts gc } # "é"
# each_line : Itera sobre cada linha da string
"Hello\nWorld".each_line { |line| puts line } # "Hello" "World"
# empty? : Verifica se a string está vazia
"".empty? # true
# encode : Codifica a string em outra codificação
"abc".encode("UTF-16") # "\xFF\xFEa\x00b\x00c\x00"
# encode! : Modifica a string codificando-a em outra codificação
"abc".encode!("UTF-16") # "\xFF\xFEa\x00b\x00c\x00"
# encoding : Retorna a codificação da string
"abc".encoding # #<Encoding:UTF-8>
# end_with? : Verifica se a string termina com o sufixo especificado
"hello".end_with?("lo") # true
# eql? : Verifica se duas strings são iguais e do mesmo tipo
"abc".eql?("abc") # true
# force_encoding : Modifica a string para usar outra codificação sem mudar os bytes
"abc".force_encoding("ASCII-8BIT") # "abc"
# freeze : Congela a string, tornando-a imutável
str = "hello".freeze
str.frozen? # true
# getbyte : Retorna o byte na posição especificada
"abc".getbyte(1) # 98
# grapheme_clusters : Retorna um enumerador para clusters de grafemas
"e\u0301".grapheme_clusters.to_a # ["é"]
# gsub : Substitui todas as ocorrências de um padrão por outro
"hello".gsub("l", "x") # "hexxo"
# gsub! : Modifica a string substituindo todas as ocorrências de um padrão
"hello".gsub!("l", "x") # "hexxo"
# hash : Retorna o código hash da string
"abc".hash # depende da implementação
# hex : Converte uma string hexadecimal para um número
"ff".hex # 255
# include? : Verifica se a string contém a substring especificada
"hello".include?("ell") # true
# index : Retorna o índice da primeira ocorrência de uma substring
"hello".index("l") # 2
# initialize_copy : Copia a string (método interno)

# insert : Insere uma substring na posição especificada
"hello".insert(1, "ey") # "heeyllo"
# inspect : Retorna uma representação legível da string (útil para depuração)
"abc\n".inspect # "\"abc\\n\""
# intern : Converte a string em um símbolo
"hello".intern # :hello
# iseuc : Verifica se a string está codificada como EUC
"あ".force_encoding("EUC-JP").iseuc # true
# isjis : Verifica se a string está codificada como JIS
"あ".force_encoding("ISO-2022-JP").isjis # true
# issjis : Verifica se a string está codificada como Shift_JIS
"あ".force_encoding("Shift_JIS").issjis # true
# isutf8 : Verifica se a string está codificada como UTF-8
"あ".force_encoding("UTF-8").isutf8 # true
# kconv : Converte entre diferentes codificações japonesas
# Requer a biblioteca 'kconv'
require 'kconv'
"Konnichiwa".toutf8.kconv(Kconv::SJIS, Kconv::UTF8) # "Konnichiwa" em Shift_JIS
# length : Retorna o número de caracteres na string
"hello".length # 5
# lines : Retorna um array com as linhas da string
"Hello\nWorld".lines # ["Hello\n", "World"]
# ljust : Preenche a string à direita com espaços ou caracteres especificados
"hello".ljust(10, '-') # "hello-----"
# lstrip : Remove espaços em branco do início da string
"  hello".lstrip # "hello"
# lstrip! : Modifica a string removendo espaços em branco do início
"  hello".lstrip! # "hello"
# match : Encontra correspondência de regex e retorna o MatchData
"hello".match(/l/) # #<MatchData "l">
# match? : Verifica se há correspondência de regex sem retornar MatchData
"hello".match?(/l/) # true
# next : Retorna a próxima string na sequência (ex: incrementa números)
"abc".next # "abd"
# next! : Modifica a string para a próxima na sequência
"abc".next! # "abd"
# oct : Converte a string em um número octal
"10".oct # 8
# ord : Retorna o código ASCII do primeiro caractere da string
"a".ord # 97
# parse_csv : Analisa a string como CSV e retorna um array
require 'csv'
CSV.parse_line("a,b,c") # ["a", "b", "c"]
# partition : Divide a string em três partes: antes, correspondência, depois
"hello".partition("l") # ["he", "l", "lo"]
# Requer a biblioteca 'rake'
require 'rake'
"lib/test.rb".pathmap("%X") # "lib/test"
# pathmap_explode : Divide o caminho em componentes individuais (<= v2_2_9)
"lib/test.rb".pathmap_explode # ["lib", "test.rb"]
# pathmap_partial : Substitui componentes parciais do caminho (<= v2_2_9)
"lib/test.rb".pathmap("%{lib,test}") # "lib/test.rb"
# pathmap_replace : Substitui componentes específicos do caminho (<= v2_2_9)
"lib/test.rb".pathmap("%{lib,test}/new") # "new/test.rb"
# prepend : Insere uma string no início da string atual
"World".prepend("Hello ") # "Hello World"
# Requer a biblioteca 'pp'
require 'pp'
pp "hello" # "hello"
# replace : Substitui o conteúdo da string por outro
"hello".replace("world") # "world"
# reverse : Retorna a string invertida
"hello".reverse # "olleh"
# reverse! : Modifica a string para a sua versão invertida
"hello".reverse! # "olleh"
# rindex : Retorna o índice da última ocorrência de uma substring
"hello".rindex("l") # 3
# rjust : Preenche a string à esquerda com espaços ou caracteres especificados
"hello".rjust(10, '-') # "-----hello"
# rpartition : Divide a string em três partes a partir da última ocorrência
"hello".rpartition("l") # ["hel", "l", "o"]
# rstrip : Remove espaços em branco do final da string
"hello  ".rstrip # "hello"
# rstrip! : Modifica a string removendo espaços em branco do final
"hello  ".rstrip! # "hello"
# scan : Encontra todas as correspondências de regex e retorna um array
"hello".scan(/l/) # ["l", "l"]
# scanf : Analisa a string de acordo com um formato e retorna um array
"123 456".scanf("%d%d") # [123, 456]
# scrub : Substitui caracteres inválidos na string
"\xC0".scrub("?") # "?"
# scrub! : Modifica a string substituindo caracteres inválidos
"\xC0".scrub!("?") # "?"
# setbyte : Define o byte na posição especificada
"abc".setbyte(1, 120) # "axc"
# shellescape : Escapa a string para uso em shells Unix
require 'shellwords'
Shellwords.escape("Hello; World") # "Hello\\; World"
# shellsplit : Divide a string em uma lista de argumentos de shell
require 'shellwords'
Shellwords.split("Hello\\; World") # ["Hello;", "World"]
# size : Retorna o número de caracteres na string (sinônimo de length)
"hello".size # 5
# slice : Retorna uma fatia da string
"hello".slice(1, 3) # "ell"
# slice! : Modifica a string retornando e removendo uma fatia
"hello".slice!(1, 3) # "ell", str agora é "ho"
# split : Divide a string em um array de substrings
"hello world".split # ["hello", "world"]
# squeeze : Remove caracteres duplicados consecutivos
"hellooo".squeeze # "helo"
# squeeze! : Modifica a string removendo caracteres duplicados consecutivos
"hellooo".squeeze! # "helo"
# start_with? : Verifica se a string começa com a substring especificada
"hello".start_with?("he") # true
# strip : Remove espaços em branco do início e do fim da string
"  hello  ".strip # "hello"
# strip! : Modifica a string removendo espaços em branco do início e do fim
"  hello  ".strip! # "hello"
# sub : Substitui a primeira correspondência de regex na string
"hello".sub("l", "x") # "hexlo"
# sub! : Modifica a string substituindo a primeira correspondência de regex
"hello".sub!("l", "x") # "hexlo"
# succ : Retorna a próxima string na sequência (sinônimo de next)
"abc".succ # "abd"
# succ! : Modifica a string para a próxima na sequência (sinônimo de next!)
"abc".succ! # "abd"
# sum : Calcula a soma dos códigos ASCII dos caracteres na string
"abc".sum # 294
# swapcase : Inverte maiúsculas e minúsculas na string
"Hello".swapcase # "hELLO"
# swapcase! : Modifica a string invertendo maiúsculas e minúsculas
"Hello".swapcase! # "hELLO"
# to_c : Converte a string em um número complexo
"2+3i".to_c # (2+3i)
# to_d : Converte a string em um número decimal
require 'bigdecimal'
"0.123".to_d # 0.123e0
# toeuc : Converte a string para EUC-JP
"あ".force_encoding("UTF-8").toeuc # "\xA4\xA2"
# to_f : Converte a string em um número float
"123.45".to_f # 123.45
# to_i : Converte a string em um número inteiro
"123".to_i # 123
# tojis : Converte a string para JIS
"あ".force_encoding("UTF-8").tojis # "\e$B$\""
# tolocale : Converte a string para a codificação de localidade
"Hello".tolocale # "Hello" (depende da localidade)
# to_r : Converte a string em um número racional
"2/3".to_r # (2/3)
# to_s : Converte a string em uma representação de string (auto-identidade)
"hello".to_s # "hello"
# tosjis : Converte a string para Shift_JIS
"あ".force_encoding("UTF-8").tosjis # "\x82\xA0"
# to_str : Retorna a string (usada para coerção)
"hello".to_str # "hello"
# to_sym : Converte a string em um símbolo
"hello".to_sym # :hello
# toutf16 : Converte a string para UTF-16
"あ".force_encoding("UTF-8").toutf16 # "\xFF\xFE\x42\x30"
# toutf32 : Converte a string para UTF-32
"あ".force_encoding("UTF-8").toutf32 # "\xFF\xFE\x00\x00\x42\x30"
# toutf8 : Converte a string para UTF-8
"あ".force_encoding("UTF-8").toutf8 # "\xE3\x81\x82"
# to_yaml : Converte a string em YAML (<= v1_9_1_378)
require 'yaml'
"hello".to_yaml # "--- hello\n"
# tr : Substitui caracteres na string de acordo com um mapeamento
"hello".tr('el', 'ip') # "hippo"
# tr! : Modifica a string substituindo caracteres de acordo com um mapeamento
"hello".tr!('el', 'ip') # "hippo"
# tr_s : Substitui caracteres e remove duplicados consecutivos
"hello".tr_s('el', 'i') # "hio"
# tr_s! : Modifica a string substituindo caracteres e removendo duplicados consecutivos
"hello".tr_s!('el', 'i') # "hio"
# undump : Converte uma string escapada em uma string normal
"hello\\nworld".undump # "hello\nworld"
# unicode_normalize : Normaliza a string para Unicode NFC, NFD, NFKC ou NFKD
"é".unicode_normalize(:nfc) # "é"
# unicode_normalize! : Modifica a string normalizando para Unicode NFC, NFD, NFKC ou NFKD
"é".unicode_normalize!(:nfc) # "é"
# unicode_normalized? : Verifica se a string já está normalizada para o Unicode especificado
"é".unicode_normalized?(:nfc) # true
# unpack : Descompacta a string em um array de acordo com um formato
"abc".unpack('H*') # ["616263"]
# unpack1 : Descompacta a string em um único valor de acordo com um formato
"abc".unpack1('H*') # "616263"
# upcase : Converte a string para maiúsculas
"hello".upcase # "HELLO"
# upcase! : Modifica a string convertendo-a para maiúsculas
"hello".upcase! # "HELLO"
# upto : Gera strings sucessivas até a string especificada
"a".upto("c").to_a # ["a", "b", "c"]
# valid_encoding? : Verifica se a string tem uma codificação válida
"hello".valid_encoding? # true