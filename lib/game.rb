class Game
  def initialize(player_1, player_2)
    @players = [player_1, player_2]
  end

  def attack(player)
    player.receive_damage
  end

  def player(number)
    @players[number - 1]
  end
end
