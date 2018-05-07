require 'sinatra/base'
require 'pry'
class App < Sinatra::Base

    set :views, Proc.new { File.join(root, "../views/") }

    get '/' do
      erb :super_hero
    end
    
    post '/teams' do
      @team = Team.new(params[:team])
 
      h = params[:team][:members]
      binding.pry
      h.each do |details|
        Hero.new(details)
      end

      @heroes = Hero.all
      
      erb :team
    end
end
