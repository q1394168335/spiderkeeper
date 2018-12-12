FROM python:3.6-alpine

COPY docker-entrypoint.sh /docker-entrypoint.sh

RUN chmod +x /docker-entrypoint.sh

RUN pip install spiderkeeper -i https://pypi.tuna.tsinghua.edu.cn/simple/

CMD /docker-entrypoint.sh
