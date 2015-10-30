require 'sinatra/base'
require './lib/player'
require './lib/game'

class Battle < Sinatra::Base

  get '/' do
    erb :index
  end

  enable :sessions

  post '/names' do
    @player1 = params[:player_1_name]
    @player2 = params[:player_2_name]
    $game = Game.new(@player1, @player2)
  	redirect '/play'
  end

  get '/play' do
  	@player_1_name = $game.player1
  	@player_2_name = $game.player2
  	erb :play
  end

  post '/attacked' do
    $game.attack($game.player2)
    redirect('/attack_player')
  end

  get '/attack_player' do
  	@player_1_name = $game.player1
  	@player_2_name = $game.player2
  	erb :first_attack
end

  post '/test' do
    @player_1_name = $game.player1
  	@player_2_name = $game.player2
    redirect('/next_turn')
  end

  get '/next_turn' do
    @player_1_name = $game.player1
    @player_2_name = $game.player2
    erb :next_turn
  end


  # start the server if ruby file executed directly
  run! if app_file == $0
end
