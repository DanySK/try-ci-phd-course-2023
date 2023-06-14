FROM python:3.11.4-bullseye
#FROM clearlinux/numpy-mp
COPY hello_world.py /hello_world
COPY requirements.txt /requirements.txt
RUN pip install --upgrade pip
RUN pip install -r /requirements.txt
ENV PARAM=3
CMD [ "/hello_world" ]
