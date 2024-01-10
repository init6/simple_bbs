FROM ruby:3.2.2

RUN apt-get update -qq \
  && apt-get install -y \
  git \
  vim

RUN mkdir /simple_bbs
WORKDIR /simple_bbs

# Add a script to be executed every time the container starts.
COPY entrypoint.sh /usr/bin/
RUN chmod +x /usr/bin/entrypoint.sh
ENTRYPOINT ["entrypoint.sh"]
EXPOSE 3000
