require 'mechanize'

list = []

agent = Mechanize.new

page = agent.get("http://www.imdb.com/chart/top?ref_=nv_mv_250_6").parser

rows = page.css('div.lister table.chart.full-width tbody.lister-list tr')

#puts rows.first.css('td.titleColumn').text


rows[0..rows.length].each do |row|
	title = row.css('td.titleColumn a').text
	rating = row.css('td.ratingColumn strong').text
	list.push({title:title,rating:rating})
end


list.each do |item|	
	puts "Titulo: #{item[:title]} Nota: #{item[:rating]}" 
  end



