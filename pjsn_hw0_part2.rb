# Author: Pedro José de Souza Neto
# email: pjsn@cin.ufpe.br
# date: 17-Mar-2016


def hello(name) ## Imprime Hello, name
    puts "Hello, #{name}"
end

def starts_with_consonant?(string) ## Vê se a primeira letra da string é consoante
    string.downcase!
    if string !~ /^([aeiou]|\s|[0-9])/
        puts true
    else
        puts false
    end
end
 
def binary_multiple_of_4?(string) ## Vê se é um binario valido se for retorna true caso seja multiplo de 4
    if string =~ /[2-9a-zA-Z]|\s/ || string.empty? || string.length > 8
        puts false
    else
        puts string.to_i(2).to_i % 4 == 0 ? true: false 
    end
end

hello("Pedro")
puts "***"
starts_with_consonant?("PEDRO")
starts_with_consonant?("pedro")
starts_with_consonant?("oi")
starts_with_consonant?("9cloud")
starts_with_consonant?(" 1")
puts "***"
binary_multiple_of_4?("pedro")
binary_multiple_of_4?("10000")
binary_multiple_of_4?("11111101")
binary_multiple_of_4?(" ")
binary_multiple_of_4?("000000000000")