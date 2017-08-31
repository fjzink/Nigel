class ResourcesController < ApplicationController

  def index
    @resources = Resource.all
    if params[:search]
      @resources = Resource.search(params[:search]).order("created_at DESC")
    else
      @resources = Resource.all.order("created_at DESC")
    end
  end

  def show
    @resource = Resource.find(params[:id])
  end

  def hashtags
    resource = Resource.find_by(name: params[:name])
    @resources = resource.hashtags
  end

  def new
    @resource = Resource.new(resource_params)
  end

  def create
    @resource = @resource.new(resource_params)
    # implement checking if the user is a teacher

    if @resource.save
      redirect_to resources_path
    else
      render 'new'
    end
  end

  def edit
    # implement checking if the user is a teacher
    @resource = Resource.find_by(id: params[:id])
  end

  def update
    # implement checking if the user is a teacher
    @resource = Resource.find_by(id: params[:id])
    @resource.assign_attributes(resource_params)

    if @resource.save
      redirect_to resources_path
    else
      render 'edit'
    end
  end

  def destroy
    # implement checking if the user is a teacher
    @resource = Resource.find_by(id: params[:id])
    @resource.destroy

    redirect_to resources_path
  end

  private

  def resource_params
    params.require(:resource).permit(:title, :content)
  end
end
