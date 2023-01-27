FROM ruby:3.2.0

WORKDIR /srv

RUN apt-get update
RUN apt-get install -y postgresql postgresql-contrib
    
ADD Gemfile Gemfile.lock .
RUN bundle install

ADD docker/entrypoint.sh /bin/entrypoint.sh
RUN chmod +x /bin/entrypoint.sh
CMD ["/bin/entrypoint.sh"]
