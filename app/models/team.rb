require 'pry'
class Team
  
  attr_accessor :name, :motto

  
  def initialize(params)
    @name = params[:name]
    @motto = params[:motto]
    
    # binding.pry
    # params[:members].each do |details|
    #     Hero.new(details)
    # end
  end

    
end