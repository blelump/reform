require "reform/active_record" if defined?(ActiveRecord)
require "reform/mongoid" if defined?(Mongoid)

Reform::Form.class_eval do # DISCUSS: i'd prefer having a separate Rails module to be mixed into the Form but this is way more convenient for 99% users.
  include Reform::Form::ActiveRecord if defined?(ActiveRecord)
  include Reform::Form::Mongoid if defined?(Mongoid)
end
