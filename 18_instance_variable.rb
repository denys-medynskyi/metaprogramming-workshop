class Person

end

denys = Person.new
p denys.instance_variable_defined?(:@iq)
p denys.instance_variable_get(:@iq)

p denys.instance_variable_set(:@iq, 10)
p denys.instance_variable_defined?(:@iq)

p denys.remove_instance_variable(:@iq)
p denys.instance_variable_defined?(:@iq)
