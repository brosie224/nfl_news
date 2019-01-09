class NflNews::CLI
  
  def call
    list_players
    choose
    goodbye
  end
  
  def list_players
    puts "Recent NFL Player News:"
    @players = NflNews::Player.scrape_rw
    @players.each.with_index(1) do |player, i|
      player.each do |key, value|
        puts "#{i}. #{value} - #{player[:team]}" if key == :name
      end
    end
  end
    
  def choose
    input = nil
    while input != "exit"
      puts "Enter the number of the player whose news you'd like to view, 'list' to re-list players, or 'exit':"
      input = gets.strip.downcase
      
      if input.to_i > 0
        puts @players[input.to_i-1][:news]
        puts "Player page: http://www.rotoworld.com#{@players[input.to_i-1][:url]}"
        puts "Would you like to view impact [y/n]?"
        yn = gets.strip.downcase
            puts @players[input.to_i-1][:impact] if yn == "y"
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
