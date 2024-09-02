# Super

class Animal
  def speak
    "Animal sound"
  end
end

class Dog < Animal
  def speak
    # Chama o método `speak` da classe pai (Animal)
    original_sound = super
    # Adiciona funcionalidade extra
    "#{original_sound}, Woof!"
  end
end

dog = Dog.new
puts dog.speak  # Output: "Animal sound, Woof!"

#######################

puts Dog.superclass # Animal
puts Animal.superclass # Object
# Logo o mesmo se aplica as classes superiores, como a classe Object