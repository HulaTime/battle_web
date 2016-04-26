require 'sinatra/base'
require 'shotgun'
require './lib/player'

class Battle < Sinatra::Base
  enable :sessions

  get '/' do
    erb(:index)
  end

  post '/names' do
    $player1 = Player.new(params[:player1name])
    $player2 = Player.new(params[:player2name])
    redirect('/play')
  end

  get '/play' do
    @player1 = $player1.name
    @player2 = $player2.name
    @player1_hp = $player1.hp
    @player2_hp = $player2.hp
    erb(:play)
  end

  get '/attack' do
    @player1 = $player1.name
    @player2 = $player2.name
    @player2_attacked = $player2.receive_attack
    erb(:attack)
  end

  # start the server if ruby file executed directly
  run! if app_file == $0
end
