class MainController < ApplicationController
  def index
  @skills = Skill.all
  end
end

