# Usa a imagem oficial do Nginx baseada em Alpine Linux (muito leve)
FROM nginx:alpine

# Remove os arquivos padrão do Nginx para evitar conflitos
RUN rm -rf /usr/share/nginx/html/*

# Copia os arquivos do seu projeto para a pasta que o Nginx usa para servir o site
# O "." indica que vai copiar tudo da sua pasta atual para dentro do container
COPY . /usr/share/nginx/html

# Expõe a porta 80 (padrão para tráfego HTTP)
EXPOSE 80

# Inicia o Nginx em primeiro plano para o container não fechar
CMD ["nginx", "-g", "daemon off;"]