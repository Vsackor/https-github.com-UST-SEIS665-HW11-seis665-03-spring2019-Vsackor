FROM nginx 
LABEL maintainer="Victor Sackor, sack9541@stthomas.edu"
EXPOSE 80
COPY  index.html /usr/share/nginx/html
