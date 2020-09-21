FROM ruby:2.7.1
RUN apt-get update -qq && apt-get install -y nodejs postgresql-client
RUN mkdir /johnson_b
WORKDIR /johnson_b
COPY Gemfile /johnson_b/Gemfile
COPY Gemfile.lock /johnson_b/Gemfile.lock
RUN bundle install
COPY . /johnson_b

# Add a script to be executed every time the container starts.
COPY entrypoint.sh /usr/bin/
RUN chmod +x /usr/bin/entrypoint.sh
ENTRYPOINT ["entrypoint.sh"]
EXPOSE 3000

# Start the main process.
CMD ["rails", "server", "-b", "0.0.0.0"]