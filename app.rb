require_relative 'config/environment'
require_relative 'models/model.rb'
class App < Sinatra::Base

  get '/' do
    erb :food_form
  end

  # Add your post route and action below
 post '/' do
   @my_results = get_spooked(params[:question1])
   erb :results
  end

end 