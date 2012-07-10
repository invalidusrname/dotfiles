require 'irb/completion'
require 'irb/ext/save-history'
ARGV.concat [ "--readline", "--prompt-mode", "simple" ]
IRB.conf[:SAVE_HISTORY] = 1000
IRB.conf[:HISTORY_FILE] = "#{ENV['HOME']}/.irb-save-history" 

alias q exit

require 'rubygems'
#require 'wirble'

# start wirble (with color)
#Wirble.init
#Wirble.colorize

## RAILS STUFF

# print SQL to STDOUT
if ENV.include?('RAILS_ENV') && !Object.const_defined?('RAILS_DEFAULT_LOGGER')
  require 'logger'
  RAILS_DEFAULT_LOGGER = Logger.new(STDOUT)
end

def me
  User.find_by_email "mmcmahand@gmail.com"
end
