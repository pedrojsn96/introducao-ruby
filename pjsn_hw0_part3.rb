# Author: Pedro José de Souza Neto
# email: pjsn@cin.ufpe.br
# date: 18-Mar-2016

class BookInStock
    attr_accessor :isbn
    attr_accessor :price
    
    def initialize(isbn,preco)
        raise ArgumentError.new("Erro. Os argumentos foram passados incorretamente!") if isbn.empty? || isbn =~ /\D|\s/ || preco <= 0.0
        @isbn = isbn
        @preco = "%.2f" % preco.to_f
    end
    
    def price_as_string
        puts "$" << @preco.to_s
    end
end

a = BookInStock.new("123",0.5)
a.price_as_string

