# 4.4 Exercícios - Métodos

# declaração do método
def qualifica(nota, msg="Obrigado")
    puts "A nota do restaurante foi #{nota}. #{msg}"
end

# chamadas com parâmetros opcionais
qualifica(10)
qualifica(1, "Comida ruim.")
