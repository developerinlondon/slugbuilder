FROM progrium/cedarish
MAINTAINER OpDemand <info@opdemand.com>

RUN apt-get update && \
    apt-get install -yq libreadline-gplv2-dev libreadline5

RUN useradd slugbuilder --home-dir /app

ADD ./builder/ /tmp/builder
RUN /tmp/builder/install-buildpacks
ENTRYPOINT ["/tmp/builder/build.sh"]
