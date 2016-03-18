class ProjectsController < ApplicationController
  def show
    
    params['type'] ? @type = "#{params['type']}" : @type = 'residential'
    
    @project_list = Project.where(type: @type).order(order_num: :asc)
    @project = Project.find(params[:id])
    
    @thumbnail_count = Dir.glob("app/assets/images/#{@type}/#{@project.id}/*.jpg").length
    
    params['image_number'] ? @current_image = "#{params['image_number']}.jpg" : @current_image = "1.jpg" 
    
  end
  
  def passive_house
    
  end
  
  def about
    
  end
end
