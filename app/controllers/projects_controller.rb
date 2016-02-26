class ProjectsController < ApplicationController
  def show
    @project_list = Project.where(type: 'residential')
    @project = Project.find(params[:id])
    
    @thumbnail_count = Dir.glob("app/assets/images/residential/#{@project.id}/*.jpg").length
    
    params['image_number'] ? @current_image = "#{params['image_number']}.jpg" : @current_image = "1.jpg" 
    
  end
end
