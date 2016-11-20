class SuperHero
end

class Batman < SuperHero
end

p Batman.included_modules

p Object.included_modules

class Class
  def hierarchy
    (ancestors - included_modules).join(' < ')
  end
end

p Batman.hierarchy
