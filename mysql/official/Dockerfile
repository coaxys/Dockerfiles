FROM mysql:5.7.21
LABEL maintainer.name="Nicolas Giard"
LABEL maintainer.email="nicolas.giard@coaxys.com"

RUN apt update && apt install locales

ENV TZ=Europe/Paris
RUN ln -snf /usr/share/zoneinfo/$TZ /etc/localtime && echo $TZ > /etc/timezone

RUN locale-gen fr_FR.UTF-8

ENV LANG fr_FR.UTF-8
ENV LANGUAGE fr_FR:fr
ENV LC_ALL fr_FR.UTF-8
