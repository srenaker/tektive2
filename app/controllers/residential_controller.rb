class ResidentialController < ApplicationController
  def index
    
    @project_list = Project.where(type: 'residential')

  end
end
