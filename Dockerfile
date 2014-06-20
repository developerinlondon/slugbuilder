FROM progrium/cedarish
MAINTAINER OpDemand <info@opdemand.com>

RUN useradd slugbuilder --home-dir /app

ADD ./builder/ /tmp/builder
RUN mkdir -p /tmp/buildpacks && cd /tmp/buildpacks && xargs -L 1 git clone --depth=1 < /tmp/builder/buildpacks.txt
ENTRYPOINT ["/tmp/builder/build.sh"]
