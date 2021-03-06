FROM ubuntu:rolling
LABEL maintainer cryptkiddie-spam@chaospott.de
EXPOSE 80
RUN apt update -y
RUN apt install webhook git -y
RUN rm -rf /var/lib/apt/lists/*
VOLUME ["/webhook/", "/scripts/"]
RUN touch /webhook/hooks.json
CMD ["/usr/bin/webhook",  "-hooks", "/webhook/hooks.json"]
