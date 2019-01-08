class NflNews::CLI
  
  def call
    list_players
    choose
    goodbye
  end
  
  def list_players
    puts "Recent NFL Player News:"
    puts <<-eos
 1. Player 1 Name - Position - Team
 2. Player 1 Name - Position - Team
    eos
  end
    
  def choose
    input = nil
    while input != "exit"
      puts "Enter the number of the player whose news you'd like to view, type 'list' to re-list players, or 'exit':"
      input = gets.strip.downcase
      case input
      when "1"
        puts "Player 1 news..."
      when "2"
        puts "Player 2 news..."
      when "list"
        call
      end
    end
  end
  
  def goodbye
    puts "Check back later for more news."
  end
    
end