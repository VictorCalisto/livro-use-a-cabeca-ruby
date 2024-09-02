FROM ruby

# Atualizar os pacotes
RUN apt-get update -y

# Instala dependencias
RUN apt-get install -qy --no-install-recommends \
    curl \
    build-essential \
    libpq-dev \
    libaio1

# Define o diretório de trabalho
WORKDIR /app

# A versao do Rails esta fixada no Gemfile
COPY . /app

# Instala o Bundler
RUN gem install bundler
Run bundle install -j $(nproc) --prefer-local

# Limpar o cache do apt-get e outros arquivos temporários
RUN apt-get clean && rm -rf /var/lib/apt/lists/* /tmp/* /var/tmp/*

# Sobe o Servidor
CMD ["ruby", "app.rb"]
