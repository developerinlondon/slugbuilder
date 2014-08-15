FROM developerinlondon/cedarish
MAINTAINER Nayeem Syed <nayeem@cronycle.com>

RUN useradd slugbuilder --home-dir /app

ADD ./builder/ /tmp/builder
RUN /tmp/builder/install-buildpacks
ENTRYPOINT ["/tmp/builder/build.sh"]
