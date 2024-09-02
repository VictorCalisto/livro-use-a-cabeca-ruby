# https://rubystyle.guide/#introduction

# identacao
# bad - four spaces
def some_method
    do_something
end

# good
def some_method
  do_something
end

# Tamanho da Maximo da linha = 80 caracteres

# Sem espaço em branco a direita.

# Termine o arquivo com uma nova linha.

# Nao use ;
# bad
puts 'foobar'; # superfluous semicolon

# good
puts 'foobar'

# Apenas uma expressão por linha
# bad
puts 'foo'; puts 'bar' # two expressions on the same line

# good
puts 'foo'
puts 'bar'

# Evite o ponto onde não for necessário para chamadas de método do operador.
# bad
num.+ 42

# good
num + 42

# Use espaços depois dos operadores.
# bad
sum=1+2
a,b=1,2
class FooError<StandardError;end

# good
sum = 1 + 2
a, b = 1, 2
class FooError < StandardError; end
# Exeçoes
# bad
e = M * c ** 2

# good
e = M * c**2

# bad
o_scale = 1 / 48r

# good
o_scale = 1/48r

# bad
foo &. bar
foo &.bar
foo&. bar

# good
foo&.bar

# Evite o encadeamento de &.. Substitua por . e uma verificação explícita.
# Por exemplo se for garantido que os usuários tenham um endereço e os endereços tenham um CEP:
# bad
user&.address&.zip

# good
user && user.address.zip
# bad
user && user.address && user.address.zip

# good
class User
  def zip
    address&.zip
  end
end
user&.zip

# Sem espaços depois de (, [ ou antes ], ).
# Use espaços ao redor de { e antes de }.
# bad
some( arg ).other
[ 1, 2, 3 ].each{|e| puts e}

# good
some(arg).other
[1, 2, 3].each { |e| puts e }

# Com expressões interpoladas, não deve haver espaçamento preenchido entre colchetes.
# bad
"From: #{ user.first_name }, #{ user.last_name }"

# good
"From: #{user.first_name}, #{user.last_name}"

# Sem espaço depois de !
# bad
! something

# good
!something

# Nenhum espaço dentro dos literais de intervalo.
# bad
1 .. 3
'a' ... 'z'

# good
1..3
'a'...'z'

# Identar o Swite Case (case when)
# bad
case
when song.name == 'Misty'
  puts 'Not again!'
when song.duration > 120
  puts 'Too long!'
when Time.now.hour > 21
  puts "It's too late"
else
  song.play
end

# good
case
  when song.name == 'Misty'
    puts 'Not again!'
  when song.duration > 120
    puts 'Too long!'
  when Time.now.hour > 21
    puts "It's too late"
  else
    song.play
end

# bad - pretty convoluted
kind = case year
when 1850..1889 then 'Blues'
when 1890..1909 then 'Ragtime'
when 1910..1929 then 'New Orleans Jazz'
when 1930..1939 then 'Swing'
when 1940..1950 then 'Bebop'
else 'Jazz'
end

result = if some_cond
  calc_something
else
  calc_something_else
end

# good - it's apparent what's going on
kind = case year
       when 1850..1889 then 'Blues'
       when 1890..1909 then 'Ragtime'
       when 1910..1929 then 'New Orleans Jazz'
       when 1930..1939 then 'Swing'
       when 1940..1950 then 'Bebop'
       else 'Jazz'
       end

result = if some_cond
           calc_something
         else
           calc_something_else
         end

# Linha depois do attr
# bad
class Foo
  attr_reader :foo
  def foo
    # do something...
  end
end

# good
class Foo
  attr_reader :foo

  def foo
    # do something...
  end
end

# Uma linha antes e depois do private
# bad
class Foo
  def bar; end
  private
  def baz; end
end

# good
class Foo
  def bar; end

  private

  def baz; end
end

# Não use linhas vazias em torno de métodos, classes, módulos e corpos de blocos.
# bad
class Foo

  def foo

    begin

      do_something do

        something

      end

    rescue

      something

    end

    true

  end

end

# good
class Foo
  def foo
    begin
      do_something do
        something
      end
    rescue
      something
    end
  end
end

# Evite vírgula após o último parâmetro em uma chamada de método, especialmente quando os parâmetros não estão em linhas separadas.
# bad - easier to move/add/remove parameters, but still not preferred
some_method(
  size,
  count,
  color,
)

# bad
some_method(size, count, color, )

# good
some_method(size, count, color)

# Evite a continuação de linha com \ quando não for necessário.
# Na prática, evite usar continuações de linha para qualquer coisa que não seja concatenação de strings.
# bad (\ is not needed here)
result = 1 - \
         2

# bad (\ is required, but still ugly as hell)
result = 1 \
         - 2

# good
result = 1 -
         2

long_string = 'First part of the long string' \
              ' and second part of the long string'

# Ao continuar uma chamada de método encadeada em outra linha, mantenha o arquivo . na segunda linha.
# bad - need to consult first line to understand second line
one.two.three.
  four

# good - it's immediately clear what's going on the second line
one.two.three
  .four
