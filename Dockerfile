FROM ruby:2.6 AS base
RUN apt-get update -qq && apt-get install -y postgresql-client
WORKDIR /workspace
COPY Gemfile /workspace/
COPY Gemfile.lock /workspace/
RUN bundle install

FROM base AS dev
RUN yard gems
EXPOSE 3000
ENTRYPOINT [""]
CMD ["bash"]