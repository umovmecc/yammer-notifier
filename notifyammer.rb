#!/usr/bin/env ruby

# -------------------------------------
# run this file using: 
# ruby -r rubygems notifyammer.rb
# -------------------------------------

require 'yammer4r'

# to generate oauth.yml check template generator
# https://github.com/jpatterson/yammer4r/blob/master/bin/yammer_create_oauth_yml.rb
config_path = File.dirname(__FILE__) + '/oauth.yml'
yammer = Yammer::Client.new(:config => config_path)

# group_id is the number associated with a group, not its related slug. 
yammer.message(:post, {:group_id => '12345', :body =>'sample message to be sent to yammer'});

# to have more information about API
# https://www.yammer.com/api_doc.html