class User
  def first_name(value)
    instance_variable_set("@first_name", value)
  end

  def last_name(value)
    instance_variable_set("@last_name", value)
  end
end

class Factory
  def self.create(factory_name, &block)
    klass = Object.const_get(factory_name.capitalize)
    object = klass.new
    object.instance_exec(&block)
    object
  end
end

user = Factory.create :user do
  first_name 'denys'
  last_name 'med'
end

p user
