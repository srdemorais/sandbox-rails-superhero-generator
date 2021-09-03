class HomeController < ApplicationController

  before_action :common_content, :only => [:index, :team]

  def common_content
    @hero_name = Faker::Superhero.name
    @hero_power = Faker::Superhero.power
    @corp_title = Faker::Company.profession.titleize 
    @corp_power = Faker::Company.bs.titleize

    @rand_num = rand(1..1000)
    @set = "set" + rand(1..2).to_s
    @background = "bg2"

    @avatar = Faker::Avatar.image(slug: @rand_num, size: "300x300", format: "png", set: @set, bgset: @background)
  end

  def index
  end

  def team
    @team_number = params[:team_number].to_i
  end
end
