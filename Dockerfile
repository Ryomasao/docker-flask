FROM alpine:3.7
#flaskを起動するのに必要なパッケージ
RUN apk update \
    && apk add python3 \
    && pip3 install flask

#flaskアプリケーションを置く場所
RUN mkdir /var/www/html/app -p

#dockerを起動しているマシンのapp.pyをコンテナ内にコピーする
COPY ./app.py /var/www/html/app

#docker runをしたときにFlaskアプリケーション起動する
CMD ["python3", "/var/www/html/app/app.py"]

