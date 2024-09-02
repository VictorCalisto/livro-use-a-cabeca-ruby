# RAISE BEGIN RESCUE ELSE ENSURE END


def divisao(dividendo, divisor)
  # Verifica se o divisor é zero e levanta uma exceção se for o caso
  raise ZeroDivisionError, "Divisor não pode ser zero" if divisor == 0
  
  # Realiza a divisão e retorna o resultado
  dividendo / divisor
end

def registrar_resultado(mensagem)
  # Registra o resultado ou erro em um arquivo de log
  File.open("log.txt", "a") do |file|
    file.puts(mensagem)
  end
end

# Bloco de tratamento de erros
begin
  # Solicita entrada do usuário
  puts "Digite o dividendo:"
  dividendo = gets.to_i
  puts "Digite o divisor:"
  divisor = gets.to_i
  
  # Realiza a divisão
  resultado = divisao(dividendo, divisor)
  
rescue ZeroDivisionError => e
  # Captura o erro de divisão por zero
  mensagem_erro = "Erro: Não é possível dividir por zero. #{e.message}"
  puts mensagem_erro
  
  # Registra o erro no arquivo de log
  registrar_resultado(mensagem_erro)
  
else
  # Executa se não ocorrer nenhum erro
  mensagem_sucesso = "Resultado da divisão: #{resultado}"
  puts mensagem_sucesso
  
  # Registra o resultado no arquivo de log
  registrar_resultado(mensagem_sucesso)
  
ensure
  # Código que sempre será executado, independentemente de erro ou sucesso
  puts "Execução concluída."
  
  # Adicionalmente, você pode garantir que qualquer recurso seja fechado ou liberado aqui
end