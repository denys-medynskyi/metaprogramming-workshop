class Person
  # def self.species
  #   "Species 1"
  # end
end

# p Person.species

class Class
  def species
    "Species 2"
  end
end

p Person.species

class Person
  class << self
    def species
      "Species 3"
    end
  end
end

p Person.species
