FROM	ubuntu:precise
RUN	apt-get update
RUN	apt-get -y install python-software-properties
RUN	apt-add-repository ppa:brightbox/ruby-ng
RUN	apt-get update
RUN	apt-get -y install ruby2.1
RUN     gem install bundler
ADD     /src /src
RUN     cd /src; bundle install
EXPOSE  4567
CMD     ["ruby", "src/app.rb"]

