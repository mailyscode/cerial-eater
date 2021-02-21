class ResourcesController < ApplicationController
  def index
    @resources = Resource.all

    @resources = @resources.where(resource_type: params[:resource_type]) if params[:resource_type].present?
  end

  def show
    @resource = Resource.find(params[:id])
  end

  private

  def resource_params
    params.require(:resource).permit(:name, :author, :language, :url, :resource_type)
  end
end
