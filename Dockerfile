# Dockerfile for ptolemy-web

FROM phusion/passenger-ruby22
MAINTAINER Yee-Ting Li "ytl@slac.stanford.edu"

# Set correct environment variables.
ENV HOME /root

# Use baseimage-docker's init system.
CMD ["/sbin/my_init"]

# Expose Nginx HTTP service
EXPOSE 80

# Start Nginx / Passenger
RUN rm -f /etc/service/nginx/down

# Remove the default site
RUN rm /etc/nginx/sites-enabled/default

# Add the nginx site and config
ADD nginx.conf /etc/nginx/sites-enabled/webapp.conf
ADD rails-env.conf /etc/nginx/main.d/rails-env.conf

# ruby version
RUN ruby-switch --set ruby2.2

# Install bundle of gems
WORKDIR /tmp
ADD Gemfile /tmp/
ADD Gemfile.lock /tmp/

# stupid docker 1.7.1 doesn't allow passing in parameters, so we hardcode them here
# if using newer, then we should use -e or --env-file as part of the build
ENV HTTP_PROXY 'http://sccs-ytl.slac.stanford.edu:3128'
ENV HTTPS_PROXY 'https://sccs-ytl.slac.stanford.edu:3128'

# bundle install
# RUN /usr/local/bin/bundle update 
RUN /usr/local/bin/bundle install
# --deployment --without test development doc

# Add the Rails app
ADD . /home/app/webapp
RUN chown -R app:app /home/app/webapp

# assets
# WORKDIR /home/app/webapp
# RUN RAILS_ENV=production rake assets:precompile
# RUN bundle exec rake assets:precompile -q

# un-env proxy
ENV HTTP_PROXY ""
ENV HTTPS_PROXY ""

# Clean up APT and bundler when done.
RUN apt-get clean && rm -rf /var/lib/apt/lists/* /tmp/* /var/tmp/*

# environment
ENV RAILS_ENV production

