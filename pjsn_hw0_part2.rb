# Author: Pedro José de Souza Neto
# email: pjsn@cin.ufpe.br
# date: 17-Mar-2016


def hello(name) ## Imprime Hello, name
    puts "Hello, #{name}"
end

def starts_with_consonant?(string) ## Vê se a primeira letra da string é consoante
    string.downcase!
    if string !~ /^[aeiou]/ && string =~ /^[a-z]/ 
        puts true
    else
        puts false
    end
end
 
def binary_multiple_of_4?(string) ## Vê se é um binario valido se for retorna true caso seja multiplo de 4
    if (string !~ /[[:alnum:]]/ || string =~ /[2-9a-zA-Z]|\s/)|| (string.empty?)
        puts false
    else
        puts string.to_i(2).to_i % 4 == 0 ? true: false 
    end
end

puts "Teste 1"
hello("Pedro")
puts "Teste 2"
starts_with_consonant?("PEDRO")
starts_with_consonant?("pedro")
starts_with_consonant?("oi")
starts_with_consonant?("9cloud")
starts_with_consonant?(" 1")
starts_with_consonant?(".dasda")
starts_with_consonant?("teste1")
puts "Teste 3"
binary_multiple_of_4?("pedro")
binary_multiple_of_4?("101394")
binary_multiple_of_4?("10000") #valido
binary_multiple_of_4?("11111101") #valido
binary_multiple_of_4?("@")
binary_multiple_of_4?("000000000000")