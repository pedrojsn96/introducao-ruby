require 'mechanize'

agent = Mechanize.new 

# Testando formulario para consulta de processos no TJPE

# Só fazer o .parser quando for pegar conteudo

#page = agent.get("http://www.tjpe.jus.br/consulta/processual/1grau").parser

page = agent.get("http://www.tjpe.jus.br/consulta/processual/1grau")

puts page.uri

page = page.link_with(:text => 'Acesso ao sistema').click

puts page.uri

#pp page.forms.first

info = page.parser
info = info.css('form#filtro div.filtro')

puts info


# Alterar value de cada campo em um variavel diferente
# Vê como quebrar o captacha
# Clicar no Button
# Pegar o resultado da pesquisa
# Listar os 10 primeiros resultados


