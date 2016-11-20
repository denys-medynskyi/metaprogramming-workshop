class Hero
  attr_reader :weight
  def initialize
    @weight = 70
  end
  define_method :fly do
    p 'I am flying'
  end
end

hero = Hero.new

p hero.weight

Hero.send(:define_method, :increase_weight) { @weight += 10 }

p hero.increase_weight

Hero.send(:undef_method, :increase_weight)

p hero.increase_weight
