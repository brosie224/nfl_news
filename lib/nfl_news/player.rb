class NflNews::Player
  
  attr_accessor :name, :team, :url, :news, :impact
  
    #go to Rotoworld, scrape players
    #extract player properties
    #instantiate each player
    #create array of all players
    #list each player on CLI

  def self.scrape_rw
    page = Nokogiri::HTML(open("http://www.rotoworld.com/playernews/nfl/football-player-news/"))
    
    players = []
      
      #iterate over each player

      page.css("div.pb").each do |player|
      name = player.css("div.player a").first.text.strip
      team = player.css("div.player a").last.text.strip
      url = player.css("div.player a").attr("href").value
      news = player.css("div.report p").text.strip
      impact = player.css("div.impact").text.strip
      
      players << {name: name, team: team, url: url, news: news, impact: impact}
      end

    players
    
  end
  
end
