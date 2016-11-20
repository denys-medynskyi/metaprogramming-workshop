class Hero
  def self.private
    p "im private"
  end

  private_class_method :private
end

p Hero.private
