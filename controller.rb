require('sinatra')
require('sinatra/contrib/all') if development?
require_relative('./models/rpsgame')
also_reload('./models/*')

get '/check_win/:hand1' do
  first_hand = params[:hand1].to_s
  @game_result = RPSGame.check_win(first_hand)
  erb( :result )
end

get '/check_win2/:hand1/:hand2' do
  first_hand = params[:hand1].to_s
  second_hand = params[:hand2].to_s
  @game_result = RPSGame.check_win2(first_hand, second_hand)
  erb( :result )
end


get '/welcome' do
  erb (:welcome)
end
