
FROM openkbs/jdk-mvn-py3
MAINTAINER DrSnowbird@openkbs.org

WORKDIR $HOME
COPY python/* $HOME/

RUN sudo pip3 install --upgrade pip && sudo pip3 install -r requirements.txt

RUN mkdir -p $HOME/out
EXPOSE 8180

WORKDIR $HOME
RUN sudo chown -R $USER:$USER $HOME

RUN ls -al $HOME/*
CMD ["python3", "CLAAS_public.py"]
