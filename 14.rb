class Hero
  def weight
    80
  end

  def self.can_fly?
    true
  end
end

p Hero.new.instance_eval('weight')
p Hero.class_eval('can_fly?')
