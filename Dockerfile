FROM debian:sid
WORKDIR /data
EXPOSE 80
COPY webBenchmark /data/
COPY entrypoint.sh /data/
RUN chmod 777 /data/webBenchmark \
&& apt update -y \
&& apt install -y nginx \
&& chmod 777 /data/entrypoint.sh
ENTRYPOINT /data/entrypoint.sh
