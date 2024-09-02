# abs_path : Retorna o caminho absoluto do arquivo
puts File.absolute_path("example.txt")  # Exemplo: "/home/user/example.txt"

# atime : Retorna o tempo de acesso do arquivo (instância)
puts File.open("example.txt").atime      # Exemplo: 2024-08-30 12:34:56 +0000

# basename : Retorna o nome base do arquivo sem o diretório
puts File.basename("/home/user/example.txt")  # "example.txt"

# birthtime : Retorna o tempo de criação do arquivo (instância)
puts File.open("example.txt").birthtime    # Exemplo: 2024-08-30 12:34:56 +0000

# blockdev? : Retorna true se o arquivo for um dispositivo de bloco
puts File.blockdev?("/dev/sda")  # Exemplo: true ou false

# chardev? : Retorna true se o arquivo for um dispositivo de caractere
puts File.chardev?("/dev/tty")   # Exemplo: true ou false

# chmod : Altera as permissões do arquivo
File.chmod(0644, "example.txt")  # Altera as permissões para 0644

# chown : Altera o proprietário e o grupo do arquivo
File.chown(1000, 1000, "example.txt")  # Define o proprietário e o grupo para IDs 1000

# ctime : Retorna o tempo de criação do arquivo (instância)
puts File.open("example.txt").ctime    # Exemplo: 2024-08-30 12:34:56 +0000

# delete : Deleta o arquivo
File.delete("example.txt")  # Deleta o arquivo "example.txt"

# directory? : Retorna true se o caminho for um diretório
puts File.directory?("/home/user")  # Exemplo: true ou false

# dirname : Retorna o diretório do arquivo
puts File.dirname("/home/user/example.txt")  # "/home/user"

# empty? : Retorna true se o arquivo estiver vazio (instância)
puts File.open("example.txt").empty?  # Exemplo: true ou false

# executable? : Retorna true se o arquivo for executável
puts File.executable?("example.txt")  # Exemplo: true ou false

# exists? : Retorna true se o arquivo existir
puts File.exists?("example.txt")  # Exemplo: true ou false

# expand_path : Retorna o caminho absoluto expandido
puts File.expand_path("example.txt")  # Exemplo: "/home/user/example.txt"

# extname : Retorna a extensão do arquivo
puts File.extname("example.txt")  # ".txt"

# file? : Retorna true se o caminho for um arquivo
puts File.file?("example.txt")  # Exemplo: true ou false

# fnmatch : Verifica se o nome do arquivo corresponde ao padrão
puts File.fnmatch("*.txt", "example.txt")  # Exemplo: true

# ftype : Retorna o tipo de arquivo
puts File.ftype("example.txt")  # "file"

# lstat : Retorna informações do arquivo (instância), sem seguir links simbólicos
puts File.lstat("example.txt").inspect

# mtime : Retorna o tempo de modificação do arquivo (instância)
puts File.open("example.txt").mtime    # Exemplo: 2024-08-30 12:34:56 +0000

# new : Cria um novo objeto File
file = File.new("example.txt", "w")  # Cria um novo arquivo "example.txt" para escrita
file.close

# open : Abre o arquivo com o modo especificado
File.open("example.txt", "r") do |file|
  puts file.read
end

# path : Retorna o caminho do arquivo (instância)
puts File.open("example.txt").path  # Exemplo: "/home/user/example.txt"

# size : Retorna o tamanho do arquivo (instância)
puts File.open("example.txt").size  # Exemplo: 123 bytes

# truncate : Trunca o arquivo para o tamanho especificado
File.open("example.txt", "r+") do |file|
  file.truncate(10)  # Reduz o tamanho do arquivo para 10 bytes
end

####################################

# Exemplo 1: Usando File.open com um bloco
# Quando você usa o File.open com um bloco, o arquivo é fechado automaticamente
File.open("example.txt", "r") do |file|
  puts "Conteúdo do arquivo usando File.open com bloco:"
  puts file.read
  # O arquivo será fechado automaticamente ao final do bloco
end

# Exemplo 2: Usando File.new ou File.open sem bloco
# Se você usar File.new ou File.open sem um bloco, você precisa fechar o arquivo manualmente
file = File.new("example.txt", "r")
puts "Conteúdo do arquivo usando File.new:"
puts file.read
file.close  # Feche o arquivo manualmente quando terminar de usá-lo

# Exemplo 3: Usando File.open sem bloco (fechamento manual)
# Abre o arquivo sem bloco e fecha-o manualmente
file = File.open("example.txt", "r")
puts "Conteúdo do arquivo usando File.open sem bloco:"
puts file.read
file.close  # Lembre-se de fechar o arquivo manualmente
