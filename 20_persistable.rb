module Persistable

  def self.included(cls)
    cls.extend ClassMethods
  end

  module ClassMethods
    def find
      p 'finding'
      new
    end
  end

  def save
    p 'saving'
  end
end

class Person
  include Persistable
end

person = Person.find
person.save
