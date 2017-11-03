FROM nginx:alpine
EXPOSE 8080
COPY . /usr/share/nginx/html
CMD ["nginx", "-g", "daemon off;"]
