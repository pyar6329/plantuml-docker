FROM openjdk:11.0.4-jre-slim

ARG PLANTUML_VERSION=1.2019.11
ENV DEBIAN_FRONTEND noninteractive

RUN set -ex && \
  apt-get update -y && \
  apt-get install -y graphviz curl && \
  mkdir /app && \
  curl -sJL https://sourceforge.net/projects/plantuml/files/plantuml.${PLANTUML_VERSION}.jar/download -o /app/plantuml.jar && \
  apt-get purge -y curl && \
  apt-get clean && \
  rm -rf /var/lib/apt/lists/*

ENTRYPOINT ["java", "-jar", "/app/plantuml.jar"]
CMD ["-h"]
