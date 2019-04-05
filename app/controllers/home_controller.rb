class HomeController < ApplicationController
  before_action :common, :only => [:index, :team]
  
  def common
    @superhero_name = Faker::Superhero.name
    @superhero_power = Faker::Superhero.power
    @corp_title = Faker::Job.title
    @corp_power = Faker::Company.bs
    @corp_power = @corp_power.titleize
    
    @rund_num = rand(1..1000)
    @set_number = rand(1..4)
    @bg = rand(1..2)
    
    # Randomly picking avatar set
    if @set_number == 1
      @set = "set1"
    elsif @set_number == 2
      @set = "set2"
    elsif @set_number == 3
      @set = "set3"
    else
      @set = "set4"
    end
    
    #Randomly pick background
    if @bg ==1
      @background = "bg1"
    else
      @background = "bg2"
    end
    
    @avatar = Faker::Avatar.image(@rund_num, "300x300", "png", @set, @background)
  end
  
  def index
  end
  
  def team
    @team_number = params[:team_number].to_i
  end
  
end
