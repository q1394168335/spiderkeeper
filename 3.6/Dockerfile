FROM python:3.6-alpine

COPY docker-entrypoint.sh /usr/local/bin/
RUN ln -s usr/local/bin/docker-entrypoint.sh /entrypoint.sh # backwards compat

RUN pip install spiderkeeper -i https://pypi.tuna.tsinghua.edu.cn/simple/

CMD docker-entrypoint.sh
