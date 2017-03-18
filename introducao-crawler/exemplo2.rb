require 'mechanize'

agent = Mechanize.new

page = agent.get("https://en.wikipedia.org/wiki/List_of_Nobel_laureates").parser


#puts page.class

rows = page.css('div.mw-content-ltr table.wikitable tr') 

#puts rows

rows[1..-2].each do |row|
  hrefs = row.css("td a").map{ |a| 
    a['href'] if a['href'].match("/wiki/")
  }.compact.uniq

  hrefs.each do |href|
   puts href
  end
end