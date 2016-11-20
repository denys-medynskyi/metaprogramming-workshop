class Hero
  attr_reader :weight
  def initialize
    @weight = 60
  end

  def self.can_run?
    true
  end
end

p Hero.new.instance_exec { @weight }
p Hero.class_exec { can_run? }
