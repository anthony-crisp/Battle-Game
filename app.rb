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
    $player_one = Player.new(params[:player_one])
    $player_two = Player.new(params[:player_two])
    $game = Game.new
    redirect '/play'
  end

  get '/play' do
    @player_one = $player_one
    @player_two = $player_two
    erb :play
  end

  get '/attack' do
    @player_one = $player_one
    @player_two = $player_two
    $game.attack(@player_two)
    erb :attack
  end

  run! if app_file == $PROGRAM_NAME
end
