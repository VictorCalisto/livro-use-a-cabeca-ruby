# Encapsulamento

class Person
  def initialize(name, age)
    @name = name
    @age = age
  end

  def name
    @name
  end

  def name=(new_name)
    @name = new_name
  end
end

# Herança

class Animal
  def speak
    "Animal sound"
  end
end

class Dog < Animal
  def speak
    "Woof"
  end
end

dog = Dog.new
puts dog.speak  # "Woof"

# Polimorfismo

class Animal
  def speak
    "Animal sound"
  end
end

class Cat < Animal
  def speak
    "Meow"
  end
end

class Dog < Animal
  def speak
    "Woof"
  end
end

animals = [Cat.new, Dog.new]
animals.each do |animal|
  puts animal.speak
end
# Output:
# Meow
# Woof

# Abstração

module Shape
  def area
    raise NotImplementedError, 'This method should be overridden in a subclass'
  end
end

class Circle
  include Shape
  
  def initialize(radius)
    @radius = radius
  end

  def area
    Math::PI * @radius ** 2
  end
end

circle = Circle.new(5)
puts circle.area  # 78.53981633974483

# Composição sobre Herança

class Engine
  def start
    "Engine started"
  end
end

class Car
  def initialize(engine)
    @engine = engine
  end

  def start
    @engine.start
  end
end

engine = Engine.new
car = Car.new(engine)
puts car.start  # "Engine started"
