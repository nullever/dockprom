FROM nginx:mainline-alpine as nginx
COPY --chown=nginx:nginx default.conf /etc/nginx/templates/default.conf.template
COPY --chown=nginx:nginx nginx.conf /etc/nginx/nginx.conf
COPY --chown=nginx:nginx ssl-params.conf /etc/nginx/snippets/ssl-params.conf
COPY --chown=nginx:nginx .htpasswd /etc/nginx/.htpasswd
# RUN apk add --no-cache bash
CMD ["nginx", "-g", "daemon off;"]