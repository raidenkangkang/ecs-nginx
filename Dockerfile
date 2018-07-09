FROM nginx:latest

RUN rm /etc/nginx/conf.d/default.conf

# remove all files within that www folder along with the www folder, -f force remove, -r recursive 递归删除目录及其内容
RUN rm -rf /etc/nginx/www

RUN mkdir /etc/nginx/www

COPY web-src /etc/nginx/www

COPY default.conf /etc/nginx/conf.d