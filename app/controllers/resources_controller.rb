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
    if current_teacher
      @resource = Resource.new(resource_params)
    end
  end

  def create
    if current_teacher
      @resource = @resource.new(resource_params)
      # implement checking if the user is a teacher

      if @resource.save
        flash[:success] = "Resource created!"
        redirect_to resources_path
      else
        flash[:errors] = @resource.errors.full_messages
        render 'new'
      end
    end
  end

  def edit
    if current_teacher
      @resource = Resource.find_by(id: params[:id])
    end
  end

  def update
    if current_teacher
      @resource = Resource.find_by(id: params[:id])
      @resource.assign_attributes(resource_params)

      if @resource.save
        flash[:success] = "Resource updated!"
        redirect_to resources_path
      else
        flash[:errors] = @resource.errors.full_messages
        render 'edit'
      end
    end
  end

  def destroy
    if current_teacher
      @resource = Resource.find_by(id: params[:id])
      @resource.destroy
      flash[:success] = "Resource deleted!"
      redirect_to resources_path
    end
  end

  def create_favorite
    if current_student
      @student = Student.find(session[:id])  # keep track of the session[:id] /student or teacher
      @resource = Resource.find(params[:id])
      @favorite = Favorite.new(resource_id: @resource.id, favoritable_id: @student.id, favoritable_type: "student")
      redirect_to resources_path
    elsif current_teacher
      @teacher = Teacher.find(session[:id])
      @resource = Resource.find(params[:id]) # make sure to get the right resource
      @favorite = Favorite.new(resource_id: @resource.id, favoritable_id: @teacher.id, favoritable_type: "teacher")
      redirect_to resources_path
    end
  end

  private

  def resource_params
    params.require(:resource).permit(:title, :content)
  end
end
