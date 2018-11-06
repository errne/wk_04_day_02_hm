require('sinatra')
require('sinatra/contrib/all') if development?
require_relative('./models/rpsgame')
also_reload('./models/*')

get '/check_win/:hand1/:hand2' do
  first_num = params[:hand1].to_s
  second_num = params[:hand2].to_s
  new_game = RPSGame.new()
  @game_result = RPSGame.check_win(first_num, second_num)
  erb( :result )
end
