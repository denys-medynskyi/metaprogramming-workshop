class Hero
  def self.public
    p "im public"
  end

  class << self
    private
    def private
      p "im private"
    end
  end
end

Hero.public
Hero.private
