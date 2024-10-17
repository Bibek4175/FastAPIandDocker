FROM python:3.9

WORKDIR /HelloWorld

COPY ./requirements.txt /HelloWorld/requirements.txt

RUN pip install --no-cache-dir --upgrade -r /HelloWorld/requirements.txt

COPY ./app /HelloWorld/app

CMD ["fastapi","run","app/main.py","--port","8001","--reload"]
