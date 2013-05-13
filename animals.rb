class Animal

end

class Marsupial < Animal
  def birth
    puts "Keep the baby in a pouch."
  end
end

module Fierce
  def growl
    puts "GRRRRRR!"
  end
end

class Wombat < Marsupial
  include Fierce
end

class Wallaby < Marsupial
  include Fierce
end
