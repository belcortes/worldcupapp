City.delete_all



c1 = City.create(name:"Rio de Janeiro", pop_size: 6323037, fun_fact: "It was the first capital of Brazil", airports: "Galeao International Airport, Santos Dumont Airport", stadium_name:"Estadio do Maracana", stadium_cap: 76935)
c2 = City.create(name:"Sao Paulo", pop_size: 11316149, fun_fact: "Largest city in Brazil", airports: "Guarulhos International Airport, Congonhas Airport", stadium_name:"Arena del Sao Paulo", stadium_cap: 68000)
c3 = City.create(name:"Brasilia", pop_size: 2609997, fun_fact: "It was built specifically to be the new capital of Brazil", airports: "Juscelino Kubitschek International Airport", stadium_name:"Estadio Nacional Mane Garrincha", stadium_cap: 70042)
c4 = City.create(name:"Belo Horizonte", pop_size: 2475440, fun_fact: "Google maintains a headquarters there", airports: "Tancredo Neves/Confins International Airport, Pampulha - Carlos Drummond de Andrade Airport, Carlos  Airport", stadium_name:"Estadio Mineirao", stadium_cap: 62547)
c5 = City.create(name:"Cuiaba", pop_size: 942861, fun_fact: "The name is of South American Indian origin, reportedly meaning 'arrow-fishing'", airports: "Marechal Rondon International Airport", stadium_name:"Arena Pantanal", stadium_cap: 42968)
c6 = City.create(name:"Curitiba", pop_size: 1764540, fun_fact: "Considered the green capital of Brazil. The green urban areas in Curitiba are among the largest in the world", airports: "Afonso Pena International Airport, Bacacheri Airport", stadium_name:"Arena da Baixada", stadium_cap: 43900)
c7 = City.create(name:"Salvador", pop_size: 2676606, fun_fact: "Salvador is also known as Brazil's capital of happiness due to its countless popular outdoor parties", airports: "Deputado Luis Eduardo Magalhaes International Airport", stadium_name:"Itaipava Arena Fonte Nova", stadium_cap: 56000)
c8 = City.create(name:"Manaus", pop_size: 1861838, fun_fact: "It is the most populous city of Amazonas", airports: "Eduardo Gomes International Airport", stadium_name:"Arena Amazonia", stadium_cap: 42374)
c9 = City.create(name:"Natal", pop_size: 806203, fun_fact: "Is considered the safest capital city in the country", airports: "Augusto Severo International Airport",stadium_name:"Arena das Dunas", stadium_cap: 42086)
c10 = City.create(name:"Porto Alegre", pop_size: 1509939, fun_fact: " The vast majority of the population is of European descent", airports: "Salgado Filho International Airport", stadium_name:"Estadio Beira-Rio", stadium_cap: 51300)
c11 = City.create(name:"Recife", pop_size: 1555039, fun_fact: "Aside from a small but pretty historical core, it's not really worth a visit", airports: "Guararapes International Airport", stadium_name:"Itaipava Arena Pernambuco", stadium_cap: 46154)
c12 = City.create(name:"Fortaleza", pop_size: 2515116, fun_fact: "The first Portuguese settlers arrived in the area in 1603", airports: "Fortaleza International Airport", stadium_name:"Estadio Castelao", stadium_cap: 64846)




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











>>>>>>> 49b072bbcb7a064fa5aa87a5db92c51e60e35c69
