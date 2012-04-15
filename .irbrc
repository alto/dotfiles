require 'rubygems'
require 'irb/completion'
require 'pp'
require 'wirble'

# start wirble (with color)
Wirble.init
Wirble.colorize

railsrc_path = File.expand_path('~/.railsrc')
if ( ENV['RAILS_ENV'] || defined? Rails ) && File.exist?( railsrc_path )
  begin
    load railsrc_path
    puts "And .railsrc too!"
  rescue Exception
    warn "Could not load: #{ railsrc_path }" # because of $!.message
  end
end

IRB.conf[:AUTO_INDENT] = true
IRB.conf[:USE_READLINE] = true

puts "Your Console is ready to go!"
