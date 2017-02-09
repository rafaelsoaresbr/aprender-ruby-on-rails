# 5.9 Exercícios - Metaprogramação

class Franquia

    def initialize
        @restaurantes = []
    end

    def adiciona(*restaurantes)
        for restaurante in restaurantes
            @restaurantes << restaurante
        end
    end

    def expandir(restaurante)
      def restaurante.cadastrar_vips
        puts "Restaurante #{self.nome} agora com área VIP!"
      end
    end

    def method_missing(name, *args)
      @restaurantes.each do |r|
        return "O restaurante #{r.nome} já foi cadastrado!"
          if r.nome.eql? *args
      end
      return "O restaurante #{args[0]} não foi cadastrado ainda."
    end

end

class Restaurante
    attr_accessor :nome
end

restaurante_um = Restaurante.new
restaurante_um.nome = "Fasano"
restaurante_dois = Restaurante.new
restaurante_dois.nome = "Fogo de Chao"
franquia = Franquia.new
franquia.adiciona restaurante_um, restaurante_dois

# faça a franquia abrir a classe e adicionar o método
franquia.expandir restaurante_um
restaurante_um.cadastrar_vips

# Faça as chamadas e analise os resultados
puts franquia.já_cadastrado?("Fasano")
puts franquia.já_cadastrado?("Boteco")

end
