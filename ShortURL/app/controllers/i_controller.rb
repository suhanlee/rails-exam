class IController < ApplicationController
  def index
    resource_id = params[:id]
    resource_item = Resource.find(resource_id)
    resource_item.original_url
    redirect_to resource_item.original_url
  end
end
