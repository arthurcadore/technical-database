# Usar a imagem base do Alpine
FROM python:3.9-alpine

# Definir o diretório de trabalho no container
WORKDIR /app

# Copiar os arquivos do projeto para o diretório de trabalho
COPY . /app

# Instalar as dependências necessárias
RUN apk add --no-cache \
    gcc \
    musl-dev \
    libffi-dev \
    mysql-client \
    build-base \
    && pip install --no-cache-dir -r requirements.txt

# Comando para rodar a aplicação
CMD ["python", "app.py"]
