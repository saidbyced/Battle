require 'sinatra/base'
require './lib/game'
require './lib/player'

class Battle < Sinatra::Base
  enable :sessions

  get '/' do
    erb :index
  end

  post '/names' do
    # store player names to the session
    player_1 = Player.new(params[:player_1_name])
    player_2 = Player.new(params[:player_2_name])
    $game = Game.new(player_1, player_2)
    redirect '/play'
  end

  get '/play' do
    # use session stored names for players names
    @game = $game
    erb :play
  end

  get '/attack' do
    @game = $game
    @game.attack(@game.player(2))
    erb :attack
  end

  # start the server if ruby file executed directly
  run! if app_file == $0
end
