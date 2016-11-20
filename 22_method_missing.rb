require 'pry-rails'
class Hero
  def method_missing(method_name, *args, &block)
    variable_name = method_name.to_s.split('_')[1]
    if method_name.to_s.start_with?('increase_')
      instance_variable_get("@#{variable_name}").tap do |variable_value|
        instance_variable_set("@#{variable_name}", variable_value.to_i + 10)
      end
    else method_name.to_s.start_with?('get_')
      instance_variable_get("@#{variable_name}")
    end
  end

  def respond_to_missing?(method_name, private_methods = false)
    method_name.to_s.start_with?('get_') || method_name.to_s.start_with?('increase_') || super
  end
end

stretch_man = Hero.new

p stretch_man.increase_height

p stretch_man.get_height

p stretch_man.increase_height

p stretch_man.get_height

p stretch_man.respond_to?(:get_height)

p stretch_man.respond_to?(:set_height)
