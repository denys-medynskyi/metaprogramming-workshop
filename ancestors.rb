module Prepend
  def hello
    puts 'I am Prepend'
  end
end

module AfterPrepend
  def hello
    puts 'I am AfterPrepend'
  end
end

module LastIncluded
  def hello
    puts 'I am LastIncluded'
  end
end

class B
  def hello # 5. Inherited method is called.
    'I am B'
  end
end

class A < B
  # prepend Prepend # 1. Prepend is called.
  # include AfterPrepend # 4. Included method is called.
  # include LastIncluded # 3. Last included is called.

  # def hello # 2. defined method is called.
  #   'I am A'
  # end
end

a = A.new

p A.ancestors
