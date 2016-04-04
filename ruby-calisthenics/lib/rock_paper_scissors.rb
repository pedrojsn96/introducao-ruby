# Author: Pedro José de Souza Neto
# email: pjsn@cin.ufpe.br
# date: 4-Apr-2016
class RockPaperScissors

  # Exceptions this class can raise:
  class NoSuchStrategyError < StandardError ; end

  def self.winner(player1, player2)
    # YOUR CODE HERE
    player1[-1].upcase!
    player2[-1].upcase!
    if player1[-1] !~ /R|P|S/ || player2[-1] !~ /R|P|S/
      raise NoSuchStrategyError.new("Strategy must be one of R,P,S")
    else
      if player1[-1] == player2[-1]
        player1
      elsif player1[-1] == "R"
        player2[-1] == "S"?player1:player2
      elsif player1[-1] == "P"
        player2[-1] == "R"?player1:player2
      elsif player1[-1] == "S"
        player2[-1] == "P"?player1:player2
      end
    end
  end

  def self.tournament_winner(tournament)
    # YOUR CODE HERE
    
    if tournament[0][0].class == String
      winner(tournament[0],tournament[1])
    else
      tournament_winner([tournament_winner(tournament[0]),tournament_winner(tournament[1])])
    end
  end
end


