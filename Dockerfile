FROM debian:sid
WORKDIR /data
EXPOSE 80
COPY webBenchmark /data/
RUN chmod 777 /data/webBenchmark \
&& apt update -y \
&& apt install -y nginx
ENTRYPOINT nginx && /data/webBenchmark -c 512 -s 'https://shgxjy.oss-cn-shanghai.aliyuncs.com/pic/Photo/Picture_r0a04axokfek.jpg' -r 'https://www.shgxjy.com/'
