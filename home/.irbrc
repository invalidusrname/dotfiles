require 'irb/completion'
require 'json'
require 'rubygems'

gems = %w[amazing_print niceql prettyprint]

gems.each do |gem_name|
  require gem_name
rescue LoadError
  puts "could not load #{gem_name}. install with: gem install #{gem_name}"
end

ARGV.concat ['--readline', '--prompt-mode', 'simple']

IRB.conf[:SAVE_HISTORY] = 1000
IRB.conf[:HISTORY_FILE] = File.join(Dir.home, '.irb_history')

alias q exit

# log Active Record SQL to STDOUT
if ENV.include?('RAILS_ENV') && !Object.const_defined?('RAILS_DEFAULT_LOGGER')
  require 'logger'

  RAILS_DEFAULT_LOGGER = Logger.new($stdout)
end

def me
  User.find_by_email 'mmcmahand@gmail.com'
end

def pbcopy(input)
  str = input.to_s
  IO.popen('pbcopy', 'w') { |f| f << str }
  str
end

def pbpaste
  `pbpaste`
end

def nice(obj)
  query = obj.respond_to?(:to_sql) ? obj.to_sql : obj
  puts(Niceql::Prettifier.prettify_sql(query))
end
