module MyAccessor
  def my_attr_accessor(*attributes)
    attributes.each do |attribute_name|
      define_method attribute_name do
        instance_variable_get("@#{attribute_name}")
      end

      define_method "#{attribute_name}=" do |value|
        instance_variable_set("@#{attribute_name}", value)
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
