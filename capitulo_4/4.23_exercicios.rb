# 4.23 Exercício: Manipulando exceptions

print "Digite um número:"
numero = gets.to_i

begin
  resultado = 100 / numero
rescue
  puts "Número digitado inválido!"
  exit
end

puts "100/#{numero} é #{resultado} "

def verifica_idade(idade)
  unless idade > 18
    raise ArgumentError,
    "Você precisa ser maior de idade para jogar jogos violentos."
  end
end

verifica_idade(17)

class IdadeInsuficienteException < Exception
end

def verifica_idade2(idade)
  raise IdadeInsuficienteException,
  "Você precisa ser maior de idade..." unless idade > 18
end

begin
  verifica_idade2(13)
rescue IdadeInsuficienteException => e
  puts "Foi lançada a exception: #{e}"
end
