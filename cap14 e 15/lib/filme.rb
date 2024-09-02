require 'yaml'

class Filme
  FILE_PATH = '../db/filmes.yml'

  attr_accessor :titulo, :ano, :sinopse

  def initialize(titulo:, ano:, sinopse:)
    @titulo = titulo
    @ano = ano
    @sinopse = sinopse
  end

  def self.all
    load_filmes
  end

  def self.create(titulo:, ano:, sinopse:)
    filmes = load_filmes
    filme = new(titulo: titulo, ano: ano, sinopse: sinopse)
    filmes[filme.titulo] = { ano: filme.ano, sinopse: filme.sinopse }
    save_filmes(filmes)
  end

  def self.delete(titulo)
    filmes = load_filmes
    filmes.delete(titulo)
    save_filmes(filmes)
  end

  def self.update(titulo:, novo_titulo:, novo_ano:, nova_sinopse:)
    filmes = load_filmes
    return unless filmes[titulo]

    filmes[novo_titulo] = { ano: novo_ano, sinopse: nova_sinopse }
    filmes.delete(titulo)
    save_filmes(filmes)
  end

  def self.find(titulo)
    load_filmes[titulo]
  end

  private

  def self.load_filmes
    if File.exist?(FILE_PATH)
      YAML.load_file(FILE_PATH) || {}
    else
      {}
    end
  end

  def self.save_filmes(filmes)
    File.open(FILE_PATH, 'w') { |file| file.write(YAML.dump(filmes)) }
  end
end
