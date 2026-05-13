# Cartão virtual — site estático servido por nginx (EasyPanel / Hetzner)
FROM nginx:1.27-alpine

COPY index.html /usr/share/nginx/html/
COPY assets/ /usr/share/nginx/html/assets/

# Convenção EasyPanel: ponto de montagem para persistência futura (uploads, etc.)
RUN mkdir -p /app/data && chmod 755 /app/data

EXPOSE 80
