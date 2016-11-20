class SuperHero
  def can_fly?
    true
  end
end

hero = SuperHero.new(10)

def hero.can_fly?
  true
end

p hero.methods
p hero.private_methods
p hero.singleton_methods

p hero.methods.grep /can/


