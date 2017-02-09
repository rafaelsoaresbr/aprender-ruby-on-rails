# 5.3 Exercícios - Ruby Object Model

class Restaurante
  def initialize(nome)
    puts "criando um novo restaurante: #{nome}"
    @@total ||= 0
    @@total = @@total + 1
    @nome = nome
  end
end

class << self
  def relatorio
    puts "Foram criados #{@@total} restaurantes"
  end
end

# Faça mais uma chamada
Restaurante.relatorio
