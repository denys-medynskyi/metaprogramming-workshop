Object.class_eval do
  def new_method # defines instance methods
    'new_method'
  end
end

a = Object.new

b = Object.new

p a.new_method
p b.new_method

