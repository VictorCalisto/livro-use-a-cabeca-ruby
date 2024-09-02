# Erro de divisão por zero
begin
  # Código que pode lançar uma exceção
  resultado = 10 / 0
rescue ZeroDivisionError => e
  puts "Erro de divisão por zero: #{e.message}"
end

# Erro de entrada/saída
begin
  # Código que pode lançar uma exceção
  File.open("nonexistent_file.txt", "r")
rescue IOError => e
  puts "Erro de entrada/saída: #{e.message}"
end

# Erro em tempo de execução
begin
  # Código que pode lançar uma exceção
  raise "Erro em tempo de execução"
rescue RuntimeError => e
  puts "Erro em tempo de execução: #{e.message}"
end

# Erro de argumento inválido
begin
  # Código que pode lançar uma exceção
  Integer("abc")
rescue ArgumentError => e
  puts "Erro de argumento inválido: #{e.message}"
end

# Erro de operação não permitida
begin
  # Código que pode lançar uma exceção
  File.rename("nonexistent_file.txt", "new_name.txt")
rescue Errno::ENOENT => e
  puts "Erro de operação não permitida: #{e.message}"
end

# Erro de tipo
begin
  # Código que pode lançar uma exceção
  "string" + 1
rescue TypeError => e
  puts "Erro de tipo: #{e.message}"
end

# Erro de nome inválido
begin
  # Código que pode lançar uma exceção
  eval("invalid_code")
rescue SyntaxError => e
  puts "Erro de nome inválido: #{e.message}"
end

# Erro de índice fora do intervalo
begin
  # Código que pode lançar uma exceção
  [1, 2, 3][10]
rescue IndexError => e
  puts "Erro de índice fora do intervalo: #{e.message}"
end

# Erro de arquivo inexistente
begin
  # Código que pode lançar uma exceção
  File.open("nonexistent_file.txt", "r")
rescue Errno::ENOENT => e
  puts "Erro de arquivo inexistente: #{e.message}"
end

# Erro de interrupção do teclado
begin
  # Código que pode lançar uma exceção
  raise Interrupt
rescue Interrupt => e
  puts "Erro de interrupção do teclado: #{e.message}"
end

# Erro de memória insuficiente
begin
  # Código que pode lançar uma exceção
  raise NoMemoryError
rescue NoMemoryError => e
  puts "Erro de memória insuficiente: #{e.message}"
end

# Erro de operação inválida
begin
  # Código que pode lançar uma exceção
  raise "Operation not allowed"
rescue NotImplementedError => e
  puts "Erro de operação inválida: #{e.message}"
end

# Erro de nome inválido em constante
begin
  # Código que pode lançar uma exceção
  module Example; end
  Example::CONSTANT = "value"
rescue NameError => e
  puts "Erro de nome inválido: #{e.message}"
end

# Erro de referência inválida
begin
  # Código que pode lançar uma exceção
  nil.some_method
rescue NoMethodError => e
  puts "Erro de referência inválida: #{e.message}"
end

# Erro de arquivo não suportado
begin
  # Código que pode lançar uma exceção
  File.open("example.txt", "w") { |file| file.write(123) }
rescue IOError => e
  puts "Erro de arquivo não suportado: #{e.message}"
end

# Erro de interrupção não permitida
begin
  # Código que pode lançar uma exceção
  raise "Interrupt not allowed"
rescue Interrupt => e
  puts "Erro de interrupção não permitida: #{e.message}"
end

# Erro de código inválido
begin
  # Código que pode lançar uma exceção
  eval("1 +")
rescue SyntaxError => e
  puts "Erro de código inválido: #{e.message}"
end

# Erro de limite excedido
begin
  # Código que pode lançar uma exceção
  [1, 2, 3].fetch(10)
rescue IndexError => e
  puts "Erro de limite excedido: #{e.message}"
end

# Erro de segurança
begin
  # Código que pode lançar uma exceção
  eval("File.delete('important_file.txt')")
rescue SecurityError => e
  puts "Erro de segurança: #{e.message}"
end

# Erro de loop infinito
begin
  # Código que pode lançar uma exceção
  raise "Infinite loop detected"
rescue SystemStackError => e
  puts "Erro de loop infinito: #{e.message}"
end

# Erro de conversão inválida
begin
  # Código que pode lançar uma exceção
  Integer("abc")
rescue ArgumentError => e
  puts "Erro de conversão inválida: #{e.message}"
end

# Erro de operação em um arquivo fechado
begin
  # Código que pode lançar uma exceção
  file = File.open("example.txt", "r")
  file.close
  file.read
rescue IOError => e
  puts "Erro de operação em um arquivo fechado: #{e.message}"
end

# Erro de tipo de argumento
begin
  # Código que pode lançar uma exceção
  "string".to_sym
rescue NoMethodError => e
  puts "Erro de tipo de argumento: #{e.message}"
end

# Erro de memória não alocada
begin
  # Código que pode lançar uma exceção
  raise NoMemoryError
rescue NoMemoryError => e
  puts "Erro de memória não alocada: #{e.message}"
end

# Erro de uso incorreto de variável
begin
  # Código que pode lançar uma exceção
  raise NameError, "Undefined variable"
rescue NameError => e
  puts "Erro de uso incorreto de variável: #{e.message}"
end

# Erro de divisão por zero com detalhes
begin
  # Código que pode lançar uma exceção
  resultado = 10 / 0
rescue ZeroDivisionError => e
  puts "Erro de divisão por zero com detalhes: #{e.message}"
end

# Erro de operação inválida em arquivo
begin
  # Código que pode lançar uma exceção
  File.open("example.txt", "w") { |file| file.write("test") }
  File.rename("example.txt", "example.txt")
rescue Errno::ENOTEMPTY => e
  puts "Erro de operação inválida em arquivo: #{e.message}"
end

# Erro de operação inválida em variável
begin
  # Código que pode lançar uma exceção
  raise "Invalid operation on variable"
rescue RuntimeError => e
  puts "Erro de operação inválida em variável: #{e.message}"
end

# Erro de argumento inválido
begin
  # Código que pode lançar uma exceção
  raise ArgumentError, "Invalid argument"
rescue ArgumentError => e
  puts "Erro de argumento inválido: #{e.message}"
end

# Erro de método ausente
begin
  # Código que pode lançar uma exceção
  1.non_existing_method
rescue NoMethodError => e
  puts "Erro de método ausente: #{e.message}"
end

# Erro de limite de stack
begin
  # Código que pode lançar uma exceção
  def recursive_method
    recursive_method
  end
  recursive_method
rescue SystemStackError => e
  puts "Erro de limite de stack: #{e.message}"
end

# Erro de argumento não permitido
begin
  # Código que pode lançar uma exceção
  raise ArgumentError, "Argument not permitted"
rescue ArgumentError => e
  puts "Erro de argumento não permitido: #{e.message}"
end

# Erro de alocação de memória
begin
  # Código que pode lançar uma exceção
  raise NoMemoryError
rescue NoMemoryError => e
  puts "Erro de alocação de memória: #{e.message}"
end
