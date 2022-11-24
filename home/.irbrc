require 'irb/completion'
require 'irb/ext/save-history'
require 'json'
require 'prettyprint'
require 'rubygems'

begin
  require 'awesome_print'
rescue LoadError
  puts "could not load awesome_print. install with: gem install awesome_print"
end

ARGV.concat [ "--readline", "--prompt-mode", "simple" ]

IRB.conf[:SAVE_HISTORY] = 1000
IRB.conf[:HISTORY_FILE] = "#{ENV['HOME']}/.irb-save-history"

alias q exit


# log Active Record SQL to STDOUT
if ENV.include?('RAILS_ENV') && !Object.const_defined?('RAILS_DEFAULT_LOGGER')
  require 'logger'
  RAILS_DEFAULT_LOGGER = Logger.new(STDOUT)
end

def me
  User.find_by_email "mmcmahand@gmail.com"
end

def pbcopy(input)
 str = input.to_s
 IO.popen('pbcopy', 'w') { |f| f << str }
 str
end

def pbpaste
  `pbpaste`
end

