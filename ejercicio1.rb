
module Camina
  def caminar
    puts 'caminando...'
  end
end

module Nada
  def nadar
    puts 'nadando...'
  end
end



class Mamifero
  include Camina
  include Nada
end

class Hombre < Mamifero
  def hablar
    puts 'bla bla...'
  end
end

class Perro < Mamifero
  def ladrar
    puts 'ladrando...'
  end

  def nadar
    puts 'No nado...'
  end
end

class Ballena < Mamifero
  def caminar
    puts 'No camino...'
  end
end



class Ave
  include Camina
end

class Aguila < Ave
  def volar
    puts 'volando...'
  end
end

class Pinguino < Ave
  include Nada
end



class Reptiles
  def desplazarce
    puts 'desplazarce...'
  end
end

class Cocodrilo  < Reptiles
  include Nada
  include Camina
  def desplazarce
    puts 'No se desplaza'
  end
end

class Boa < Reptiles
  def presionar
    puts 'presiona...'
  end
end

class Cobra < Reptiles
  def morder
    puts 'mordiendo...'
  end
end



class Anfibio
  include Nada
end

class Sapo < Anfibios
  def saltar
    puts 'saltando...'
  end
end



class Pez
  include Nada
end

class Tiburon < Pez
end