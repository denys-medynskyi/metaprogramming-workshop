class SuperHero
  def can_fly?
    true
  end
end

class Batman < SuperHero

end

batman = Batman.new

p batman.can_fly?

class Batman
  def can_fly?
    false
  end
end

p batman.can_fly?

def batman.can_fly?
  'WTF?'
end

p batman.can_fly?

class Batman
  def method_missing(method_name)
    puts "#{method_name} was called"
  end
end

p batman.unknown
