require 'pry-rails'
module MyAccessor
  def my_attr_accessor(*attribute_names)
    attribute_names.each do |attribute_name|
      instance_variable_name = "@#{attribute_name}"
      define_method(attribute_name) do
        instance_variable_get(instance_variable_name)
      end

      define_method("#{attribute_name}=") do |val|
        instance_variable_set(instance_variable_name, val)
      end
    end
  end
end

class User
  extend MyAccessor

  attr_accessor :email
  my_attr_accessor :first_name, :last_name
end

user = User.new
user.first_name = 'Denys'
p user.first_name
user.last_name = 'Medynskyi'
p user.last_name
