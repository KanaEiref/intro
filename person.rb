class Person
  attr_accessor :name

  def initialize name
    @name = name
  end
end

person = Person.new("Goose")

person.name = "Matt"

puts person.name
