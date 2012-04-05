require 'rubygems'
require 'wirble'

# start wirble (with color)
Wirble.init
Wirble.colorize

# Rails Console specifics
# log SQL statements
if ENV.include?('RAILS_ENV')
  if !Object.const_defined?('RAILS_DEFAULT_LOGGER')
    require 'logger'
    Object.const_set('RAILS_DEFAULT_LOGGER', Logger.new(STDOUT))
  end

  # def sql(query)
  #   ActiveRecord::Base.connection.select_all(query)
  # end

  if ENV['RAILS_ENV'] == 'test'
    require 'test/test_helper'
  end

# for rails 3
elsif defined?(Rails) && !Rails.env.nil?
  if Rails.logger
    Rails.logger =Logger.new(STDOUT)
    ActiveRecord::Base.logger = Rails.logger
  end
  if Rails.env == 'test'
    require 'test/test_helper'
  end
else
  # nothing to do
end

IRB.conf[:AUTO_INDENT] = true

puts "Your Console is ready to go!"
