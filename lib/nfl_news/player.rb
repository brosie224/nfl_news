class NflNews::Player
  
  attr_accessor :name, :pos, :team, :url, :news
  
    #go to Rotoworld, scrape players
    #extract player properties
    #instantiate each player
    #create array of all players
    #list each player on CLI

  def self.scrape_rw
    page = Nokogiri::HTML(open("http://www.rotoworld.com/playernews/nfl/football-player-news/"))
    binding.pry
    
      players = []
      
      #iterate over each player

      page.css("div.pb").each do |player|
      name = player.css("div.player a").text
      pos = 
      team = 
      url = 
      news = 
      
      players << {name: name, pos: pos, team: team, url: url, news: news}
      end

    players
    
  end
  
end
