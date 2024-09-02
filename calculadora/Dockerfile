# Use a imagem base especificada
FROM lsiobase/kasmvnc:ubuntujammy-version-23bc0eb7

# Atualize o sistema e instale dependências para compilar Ruby
RUN apt-get update && apt-get install -y \
    build-essential \
    libssl-dev \
    libreadline-dev \
    zlib1g-dev \
    tk \
    tk-dev \
    tcl-dev \
    libx11-dev \
    ruby-full \
    wget

# Instale o Tk para Ruby
RUN gem install tk -- --with-tcltkversion=8.6 \
--with-tcl-lib=/usr/lib/x86_64-linux-gnu \
--with-tk-lib=/usr/lib/x86_64-linux-gnu \
--with-tcl-include=/usr/include/tcl8.6 \
--with-tk-include=/usr/include/tcl8.6 \
--enable-pthread

# Instale o RSpec e inicialize a configuração
RUN gem install rspec \
    && mkdir -p /app \
    && rspec --init /app

# Crie o diretório de trabalho e defina permissões
WORKDIR /app
RUN chmod -R 777 /app

# Comando padrão
# CMD ["bash"]
