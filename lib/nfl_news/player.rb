class NflNews::Player
  
  attr_accessor :name, :pos, :team, :url
  
  def self.recent
    players = []
    
    #go to Rotoworld, scrape players
    #extract player properties
    #instantiate each player
    #create array of all players
    #list each player on CLI
    
    players
  end
  
  def self.scrape_rw
    page = Nokogiri::HTML(open("http://www.rotoworld.com/playernews/nfl/football-player-news/"))
    binding.pry
  end
  
  self.new.scrape_rw

end
