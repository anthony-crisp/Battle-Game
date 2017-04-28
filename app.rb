require 'sinatra/base'
require './lib/player'
#
class Battle < Sinatra::Base
  # enable :sessions

  get '/' do
    erb :index
  end

  post '/names' do
    $player_one = Player.new(params[:player_one])
    $player_two = Player.new(params[:player_two])
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
    @player_two.take_damage
    erb :attack
  end

  run! if app_file == $PROGRAM_NAME
end
