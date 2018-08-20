FROM gambtho/sbt-docker-alpine
COPY . /linkerd-zipkin
RUN  cd /linkerd-zipkin && ./sbt assembly

FROM buoyantio/linkerd:1.4.3
RUN  mkdir -p $L5D_HOME/plugins
COPY plugins/*.jar $L5D_HOME/plugins
