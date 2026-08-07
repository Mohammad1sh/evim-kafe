# Paylaşılabilir imaj — gündelik kullanımda buna gerek yok, compose yeter.
FROM nginx:1.27-alpine
COPY nginx.conf /etc/nginx/conf.d/default.conf
COPY index.html /usr/share/nginx/html/index.html
