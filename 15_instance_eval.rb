a = Object.new

a.instance_eval do #defines singleton objects
  def new_method
    'inside new_method'
  end
end

p a.new_method
p a.singleton_methods
