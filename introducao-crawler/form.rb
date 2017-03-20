require 'mechanize'

agent = Mechanize.new 

# Vê como quebrar o captacha -> tentar fazer isso agora de tarde
# Clicar no Button
# Pegar o resultado da pesquisa
# Listar os 10 primeiros resultados


agent.get("http://srv01.tjpe.jus.br/consultaprocessualunificada/xhtml/consulta.xhtml") do |page|
    search_result = page.form_with(:name =>"filtro") do |search|
        search.filtro:j_id77 = "DADOSADVOGADO"
        search.filtro:nomeAdvogado = "João Humberto Martorelli"
        search.filtro:id117 = ""
    end.submit
    
    search_result.links.each do |link|
        puts link.text
    end
end
 







=begin
# Testando formulario para consulta de processos no TJPE



# Só fazer o .parser quando for pegar conteudo

#page = agent.get("http://www.tjpe.jus.br/consulta/processual/1grau").parser

page = agent.get("http://www.tjpe.jus.br/consulta/processual/1grau")

puts page.uri

page = page.link_with(:text => 'Acesso ao sistema').click

puts page.uri


pp page.forms.first.fields[-3].value = "DADOSADVOGADO"
pp page.forms.first.fields[6].value = "João Humberto Martorelli"
## quebrar o captcha
pp page.forms.first.fields[-5].value = ""

pp page.forms.first.fields

=end

=begin
info_search = [] # conjunto de dados para pesquisar

info = page.parser
info = info.css('form#filtro div.filtro select.select-tipoConsulta').value

puts info

form = page.forms.first

form[:name => "filtro:j_id77"].value = "DADOSADVOGADO"


puts "++++++++++++++"

info = page.parser
info = info.css('form#filtro div.filtro select.select-tipoConsulta').text
puts info

=end




