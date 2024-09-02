require 'sinatra'
require_relative './lib/filme'

set :bind, '0.0.0.0'

# telas

get('/adivinhacao') do 
  erb :adivinhacao
end
get('/') do 
  erb :adivinhacao
end
get('/index') do 
  erb :adivinhacao
end
get('/home') do 
  erb :adivinhacao
end
get('/sobre') do 
  erb :victor
end
get('/eu') do 
  erb :victor
end

# API # Json

post('/filmes/create') do
  data = JSON.parse(request.body.read)
  Filme.create(titulo: data['titulo'], ano: data['ano'], sinopse: data['sinopse'])
  status 201
  'Filme criado com sucesso'
end

delete('/filmes/delete/:titulo') do
  Filme.delete(params[:titulo])
  status 200
  'Filme deletado com sucesso'
end

put('/filmes/update/:titulo') do
  data = JSON.parse(request.body.read)
  Filme.update(
    titulo: params[:titulo],
    novo_titulo: data['novo_titulo'],
    novo_ano: data['novo_ano'],
    nova_sinopse: data['nova_sinopse']
  )
  status 200
  'Filme atualizado com sucesso'
end

get('/filmes/view/:titulo') do
  filme = Filme.find(params[:titulo])
  if filme
    content_type :json
    filme.to_json
  else
    status 404
    'Filme não encontrado'
  end
end