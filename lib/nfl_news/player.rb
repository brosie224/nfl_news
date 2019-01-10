class NflNews::Player
  
  attr_accessor :name, :team, :url, :news, :impact
  
  def self.scrape_rw
    page = Nokogiri::HTML(open("http://www.rotoworld.com/playernews/nfl/football-player-news/"))
    
    players = []

      page.css("div.pb").each do |player|
      new_player = self.new
      new_player.name = player.css("div.player a").first.text.strip
      new_player.team = player.css("div.player a").last.text.strip
      new_player.url = player.css("div.player a").attr("href").value
      new_player.news = player.css("div.report p").text.strip
      new_player.impact = player.css("div.impact").text.strip
      
      players << new_player
      end

    players
    
  end
  
end
