class NflNews::CLI
  
  def call
    list_players
    choose
    goodbye
  end
  
  def list_players
    puts "Recent NFL Player News:"
    @players = NflNews::Player.recent
    @players.each.with_index(1) do |player, i|
      puts " #{i}. #{player.name} - #{player.pos} - #{player.team}"
    end
  end
    
  def choose
    input = nil
    while input != "exit"
      puts "Enter the number of the player whose news you'd like to view, 'list' to re-list players, or 'exit':"
      input = gets.strip.downcase
      
      if input.to_i > 0
        puts @players[input.to_i-1].url
      elsif input == "list"
        list_players
      elsif input == "exit"
        ""
      else
        puts "Unknown command."
      end
    end
  end
  
  def goodbye
    puts "Check back later for more news."
  end
    
end