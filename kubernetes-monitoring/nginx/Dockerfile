FROM nginx:latest

RUN echo "load_module modules/ngx_http_stub_status_module.so;" > /etc/nginx/nginx.conf

COPY nginx.conf /etc/nginx/nginx.conf

EXPOSE 80 8080

CMD ["nginx", "-g", "daemon off;"]