class SuperHero
end

class Batman < SuperHero
end

hero = Batman.new

p hero.class

p hero.class.superclass

p hero.class.superclass.superclass

p hero.class.superclass.superclass.superclass

p hero.class.superclass.superclass.superclass.superclass
