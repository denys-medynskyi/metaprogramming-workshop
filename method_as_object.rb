# class Man
#   def hi
#     puts 'hi'
#   end
# end
#
# class Woman
# end
#
# hi_method = Man.instance_method(:hi)
#
# w = Woman.new
# hi_method.bind(w).call

module Greetable
  def hi
    puts 'hi'
  end
end

class Man
end

class Woman
end

hi_method = Greetable.instance_method(:hi)

w = Woman.new
hi_method.bind(w).call # => hi

m = Man.new
hi_method.bind(m).call #


