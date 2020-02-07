class Game
  def initialize(player_1, player_2)
    @players = [player_1, player_2]
    @turn = 1
  end

  def attack(player)
    player.receive_damage
  end

  def player(number)
    @players[number - 1]
  end

  def turn
    "#{player(1).name}'s turn!'"
  end

end
