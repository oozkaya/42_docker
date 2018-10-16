FROM ruby
RUN apt-get update -y
RUN gem install rails && apt-get install nodejs -y
ADD /app /opt/app
WORKDIR /opt/app
RUN bundle install
RUN rake db:migrate && rake db:seed
CMD ["rails", "server"]

#docker build -t ft-rails:on-build .
#docker build -t rubyapp -f test_Dockerfile .
#docker run -p 3000:3000 --name ruby-test rubyapp