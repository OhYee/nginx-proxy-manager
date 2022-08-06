FROM jc21/nginx-proxy-manager:latest

RUN sed -i 's/\(X-Forwarded-For.*\)\$remote_addr/\1\$proxy_add_x_forwarded_for/gm' /etc/nginx/conf.d/production.conf
RUN sed -i 's/\(X-Forwarded-For.*\)\$remote_addr/\1\$proxy_add_x_forwarded_for/gm' /etc/nginx/conf.d/include/proxy.conf 
RUN sed -i 's/\(X-Forwarded-For.*\)\$remote_addr/\1\$proxy_add_x_forwarded_for/gm' /app/templates/_location.conf
