class Game
  def initialize(player_1, player_2)
    @players = [player_1, player_2]
    @current_turn = 1
  end

  def attack(player)
    player.receive_damage
    if @current_turn >= @players.count
      @current_turn = 1
    else
      @current_turn += 1
    end
  end

  def player(number)
    @players[number - 1]
  end

  def turn
    "#{player(@current_turn).name}'s turn"
  end

end
