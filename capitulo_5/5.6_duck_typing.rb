# 5.6 Exercícios - Duck Typing

class Franquia
  def info
    puts "Restaurante faz parte da franquia"
  end
end

class Restaurante < Franquia
  def info
    super
    puts "Restaurante Fasano"
  end
end

# metodo importante
# recebe franquia e invoca o método info
def informa(franquia)
  franquia.info
end

restaurante = Restaurante.new
restaurante.info
