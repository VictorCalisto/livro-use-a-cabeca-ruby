"teste".upcase # "TESTE"
"TESTE".downcase   # => "teste"
"teste".capitalize # => "Teste"
"reverso".reverse # "osrever"
#######################
42.even? # true #par
42.odd? # false #impar
#######################
42.class # Integer # mostra a classe, tudo e objeto
#######################
p "Hello\nWorld"  # => "Hello\nWorld"
p 123             # => 123
p [1, 2, 3]       # => [1, 2, 3]
puts "Hello\nWorld"  # => Hello (quebra de linha) World
puts 123             # => 123
puts [1, 2, 3]       # => 1 (quebra de linha) 2 (quebra de linha) 3 (quebra de linha)
print "Hello"    
print "World"   
print 123        
# HelloWorld123
#######################
"\n" # pula linha
"\t" # tabulacao (tab)
" \" " # aspas duplas
"\'" # aspas simples
"\\" # Barra invertida /
#######################
name = gets # leitura do teclado
name = gets().chomp # trata o valor lido e tira o \n
"hello".gsub(/[aeiou]/, '*') #=> "h*ll*" # trata a string com uma regex. trocando o aeiou por *
puts "Um mais um eh : #{1+1}" # interpola string. tem que ser com aspas duplas pra interpolar.
#######################
# Converte um número inteiro para string
123.to_s     # => "123"
# Converte um valor nil para string
nil.to_s     # => ""
# Converte um número flutuante para string
45.67.to_s   # => "45.67"
# Converte uma string para símbolo
"hello".to_sym   # => :hello
# Converte um número inteiro para ponto flutuante
10.to_f     # => 10.0
# Converte uma string para número inteiro
"42".to_i   # => 42
# Converte uma string não numérica para número inteiro (retorna 0)
"abc".to_i  # => 0
# Converte uma string para número flutuante
"3.14".to_f   # => 3.14
# Converte uma string para um número racional
"2/3".to_r   # => (2/3)
# Converte uma string para um número complexo
"2+3i".to_c   # => (2+3i)
# Converte uma range para um array
(1..3).to_a   # => [1, 2, 3]
# Converte um array de pares chave-valor para um hash
[[:key, :value]].to_h   # => {:key => :value}
# Converte um objeto que pode ser convertido para hash
{key: "value"}.to_hash   # => {:key => "value"}
# Converte um símbolo para um objeto Proc que executa o método simbolizado
:upcase.to_proc.call("hello")  # => "HELLO"
# Converte uma string em booleano (em Ruby, todos os objetos exceto nil e false são verdadeiros)
!!"string"   # => true
# Converte um array para enumerador
[1, 2, 3].to_enum   # => #<Enumerator: [1, 2, 3]:each>
# Converte uma string para JSON (requer a biblioteca JSON)
require 'json'
{key: "value"}.to_json   # => "{\"key\":\"value\"}"
# Converte uma string que representa um valor booleano (em Ruby, apenas nil e false são false)
!!nil   # => false
!!true  # => true

#############################

def desfio_de_fluxo()
  if condition
    # código a ser executado se condition for verdadeiro
  end
  
  if condition1
    # código
  elsif condition2
    # código
  else 
    # código
  end
  
  unless condition
    # código a ser executado se condition for falso
  end

  case expression
  when condition1
    # código
  when condition2
    # código
  else
    # código
  end

  case # sem expression
  when condition1
    # código
  when condition2
    # código
  else
    # código
  end
  
  result = condition ? value_if_true : value_if_false

  do_something if condition
  do_something unless condition

  # Combinacao de if e unless para simular um if else
  do_something if condition
  do_something_else unless condition

end

#############################

def loops()
  i = 0
  while i < 5
    puts i
    i += 1
  end
  i = 0
  until i >= 5
    puts i
    i += 1
  end
  i = 0
  for i in 0..4
    puts i
  end
  i = 0
  [1, 2, 3, 4, 5].each do |i|
    puts i
  end
  i = 0
  loop do
    puts i
    i += 1
    break if i >= 5
  end
  i = 0
  5.times do |i|
    puts i
  end
  i = 0
  begin
    puts i
    i += 1
  end while i < 5
  i = 0
  begin
    puts i
    i += 1
  end until i >= 5
end
