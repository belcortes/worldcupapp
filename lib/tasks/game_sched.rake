desc "Fetch Game Schedule"
task :fetch_schedule => :environment do
  

  Game.find_all_by_schedule(nil).each do |game|
    url = "http://en.wikipedia.org/wiki/2014_FIFA_World_Cup"
    doc = Nokogiri::HTML(open(url))
    doc.css(".vevent").each do |vevent|
      date = vevent.at_css(".summary").text
      game.update_attributes(:game, game)
    end
  end
end

# [20] pry(main)> doc.css(".vevent").each do |vevent|
# [20] pry(main)*   date = vevent.at_css(".summary").text
# [20] pry(main)*   puts "#{date}"
# [20] pry(main)* end
