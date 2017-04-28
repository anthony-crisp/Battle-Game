require 'sinatra/base'
require './lib/player'
require './lib/game'
#
class Battle < Sinatra::Base
  # enable :sessions

  get '/' do
    erb :index
  end

  post '/names' do
    # $player_one = Player.new(params[:player_one])
    # $player_two = Player.new(params[:player_two])
    $game = Game.new(Player.new(params[:player_one]),Player.new(params[:player_two]))
    redirect '/play'
  end

  get '/play' do
    @game = $game
    erb :play
  end

  get '/attack' do
    @game = $game
    @game.attack(@game.player_two)
    erb :attack
  end

  run! if app_file == $PROGRAM_NAME
end
