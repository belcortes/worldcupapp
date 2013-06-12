City.delete_all
# Game.delete_all
# Itinerary.delete_all
Stadium.delete_all


c1 = City.create(name:"Rio de Janeiro", pop_size: 6323037, fun_fact: "It was the first capital of Brazil", airport: "Galeao International Airport, Santos Dumont Airport")
c2 = City.create(name:"Sao Paulo", pop_size: 11316149, fun_fact: "Largest city in Brazil", airport: "Guarulhos International Airport, Congonhas Airport")
c3 = City.create(name:"Brasilia", pop_size: 2609997, fun_fact: "It was built specifically to be the new capital of Brazil", airport: "Juscelino Kubitschek International Airport")
c4 = City.create(name:"Belo Horizonte", pop_size: 2475440, fun_fact: "Google maintains a headquarters there", airport: "Tancredo Neves/Confins International Airport, Pampulha - Carlos Drummond de Andrade Airport, Carlos  Airport")
c5 = City.create(name:"Cuiaba", pop_size: 942861, fun_fact: "The name is of South American Indian origin, reportedly meaning 'arrow-fishing'", airport: "Marechal Rondon International Airport")
c6 = City.create(name:"Curitiba", pop_size: 1764540, fun_fact: "Considered the green capital of Brazil. The green urban areas in Curitiba are among the largest in the world", airport: "Afonso Pena International Airport, Bacacheri Airport")
c7 = City.create(name:"Salvador", pop_size: 2676606, fun_fact: "Salvador is also known as Brazil's capital of happiness due to its countless popular outdoor parties", airport: "Deputado Luis Eduardo Magalhaes International Airport")
c8 = City.create(name:"Manaus", pop_size: 1861838, fun_fact: "It is the most populous city of Amazonas", airport: "Eduardo Gomes International Airport", stadium_name:"Arena Amazonia")
c9 = City.create(name:"Natal", pop_size: 806203, fun_fact: "Is considered the safest capital city in the country", airport: "Augusto Severo International Airport")
c10 = City.create(name:"Porto Alegre", pop_size: 1509939, fun_fact: " The vast majority of the population is of European descent", airport: "Salgado Filho International Airport")
c11 = City.create(name:"Recife", pop_size: 1555039, fun_fact: "Aside from a small but pretty historical core, it's not really worth a visit", airport: "Guararapes International Airport")
c12 = City.create(name:"Fortaleza", pop_size: 2515116, fun_fact: "The first Portuguese settlers arrived in the area in 1603", airport: "Fortaleza International Airport")

s1 = Stadium.create(name:"Estadio do Maracana", location: "Rio de Janeiro", capacity: 76935)
s2 = Stadium.create(name:"Arena del Sao Paulo", location: "Sao Paulo", capacity: 68000)
s3 = Stadium.create(name:"Estadio Nacional Mane Garrincha", location: "Brasilia", capacity: 70042)
s4 = Stadium.create(name:"Estadio Mineirao", location: "Belo Horizonte", capacity: 62547)
s5 = Stadium.create(name:"Arena Pantanal", location: "Cuiaba", capacity: 42968)
s6 = Stadium.create(name:"Arena da Baixada", location: "Curitiba", capacity: 43900)
s7 = Stadium.create(name:"Itaipava Arena Fonte Nova", location: "Salvador", capacity: 56000)
s8 = Stadium.create(name:"Arena Amazonia", location: "Manaus", capacity: 42374)
s9 = Stadium.create(name:"Arena das Dunas", location: "Natal", capacity: 42086)
s10 = Stadium.create(name:"Estadio Beira-Rio", location: "Porto Alegre", capacity: 51300)
s11 = Stadium.create(name:"Itaipava Arena Pernambuco", location: "Recife", capacity: 46154)
s12 = Stadium.create(name:"Estadio Castelao", location: "Fortaleza", capacity: 64846)

c1.stadia << s1
c2.stadia << s2
c3.stadia << s3
c4.stadia << s4
c5.stadia << s5
c6.stadia << s6
c7.stadia << s7
c8.stadia << s8
c9.stadia << s9
c10.stadia << s10
c11.1stadia << s11
c12.s2tadia << s12




# require 'nokogiri'
# require 'open-uri'

# dates = []
# links = []
# names = []

# url = "http://en.wikipedia.org/wiki/2014_FIFA_World_Cup"
# doc = Nokogiri::HTML(open(url))
# doc.css(".vevent").each do |vevent|
# dates << vevent.at_css(".summary").text
# names << vevent.at_css("a").text
# end

# games = []

# create a loop that makes a Game.new for each element inside the games array
# inside that loop, you need to make the games[n].name = local_name
# then repeat for...
# games[n].date = local_date
# games[n].name = local_name

# game = Game.new



# game.date = date_variable_inside_loop_below

# def names_filtered
# 	names.select do |name|	#local name var
# 	  name != "Brazil"

# 	  game.name = name
# 	end
# end

# def dates_filtered
# 	dates.map do |date|
# 		date.gsub("\n", " ")
# 	end
# end

# game.save!











