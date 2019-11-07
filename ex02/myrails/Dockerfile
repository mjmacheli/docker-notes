FROM ruby

RUN apt-get update -y && \
    apt-get upgrade -y && \
	apt-get install apt-utils -y && \
	apt-get install nodejs -y && \
	apt-get install yarn -y && \
	gem install rails bundler

ONBUILD WORKDIR /opt

ONBUILD RUN rails new app
ONBUILD RUN wget -P /opt/app/config https://raw.githubusercontent.com/rails/webpacker/master/lib/install/config/webpacker.yml
ONBUILD WORKDIR /opt/app
ONBUILD RUN rails generate migration CreateProducts name:string
ONBUILD RUN bundle install
ONBUILD RUN rake db:migrate