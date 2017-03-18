require 'mechanize'


file = File.open('pagina.html')
html = Nokogiri::HTML(file)

puts html.css('a[data-category=news]')