FROM nginx:alpine
RUN echo "<h1>Hello from Cloud Run</h1>" > /usr/share/nginx/html/index.html

RUN rm /etc/nginx/conf.d/default.conf
COPY nginx.conf /etc/nginx/conf.d/default.conf

EXPOSE 8080
CMD ["nginx", "-g", "daemon off;"]
