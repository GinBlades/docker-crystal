FROM debian:stretch-slim
RUN apt-get update && apt-get install -y curl libssl-dev libxml2-dev libyaml-dev libgmp-dev libreadline-dev libz-dev ca-certificates apt-transport-https gnupg2
RUN curl -sL "https://keybase.io/crystal/pgp_keys.asc" | apt-key add -
RUN echo "deb https://dist.crystal-lang.org/apt crystal main" | tee /etc/apt/sources.list.d/crystal.list
RUN apt-get update && apt-get install crystal -y
