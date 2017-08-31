class ResourcesController < ApplicationController

  def index
    @resources = Resource.all 
  end 

  def show
    @resource = Resource.find(params[:id])
  end 

  def hashtags
    resource = Resource.find_by(name: params[:name])
    @resources = hashtags.resources
    # 12:05 video: is this supposed to be hashtags?
  end

  def new 
    @resource = Resource.new
  end 

  def create
    @resource = @resource.new(resource_params)
    @resource.teacher_id = session[:id]
    # is this teacher id/session id done right?

    if @resource.save
      redirect_to resources_path(@resource)
    else 
      render 'new'
    end 
  end 

  def edit
    @resource = Resource.find_by(id: params[:id])
  end 

  def update
    @resource = Resource.find_by(id: params[:id])
    @resource.assign_attributes(resource_params)

    if @resource.save 
      redirect_to resources_path(@resource)
    else 
      render 'edit'
    end
  end 

  def destroy 
    @resource = Resource.find_by(id: params[:id])
    @resource.destroy

    redirect_to resources_path
  end

  private 

  def resource_params
    params.require(:resource).permit(:title, :content)
  end
end 