FROM nginx:mainline as nginx
COPY default.conf /etc/nginx/templates/default.conf.template
COPY nginx.conf /etc/nginx/nginx.conf
COPY --chown=nginx:nginx .htpasswd /etc/nginx/.htpasswd
CMD ["nginx", "-g", "daemon off;"]