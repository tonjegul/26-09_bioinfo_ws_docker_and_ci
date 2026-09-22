FROM python:3.14-slim-trixie
LABEL org.opencontainers.image.authors="tonjegul@gmail.com"
COPY pyproject.toml /usr/src/greeter/
COPY src/ /usr/src/greeter/src/
# RUN cd /usr/src/greeter && pip install --no-cache-dir .
WORKDIR /usr/src/greeter
RUN pip install --no-cache-dir .
CMD ["greeter"]