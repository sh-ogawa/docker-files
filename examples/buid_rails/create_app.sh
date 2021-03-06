#!/bin/bash -x

mkdir /root/rails
cd /root/rails
rails new dengonban
cd dengonban
echo "gem 'therubyracer', platforms: :ruby" >> Gemfile
sed -i "s/#\(config.serve_static_assets\) =.*/\1 = true/"\
config/environments/produntion.rb
RAILS_ENV=production bundle exec rake assets:precompile
rails generate scaffold Message name:string content:text date:datetime
rake db:migrate RAILS_ENV="production"
