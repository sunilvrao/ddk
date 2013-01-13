class LocationsController < ApplicationController
  def new
    @user = User.find(params[:user_id])
    @store = Store.find(params[:store_id])
    @location = Location.new()
  end
   
  def create
    @user = User.find(params[:user_id])
    @store = Store.find(params[:store_id])
    @location = @store.locations.create(params[:location])
    if @location.save
      flash[:notice] = 'Store Location was successfully created.'
      redirect_to user_store_location_path(:user_id => @user, :store_id => @store)
    else
      flash[:notice] = 'Error.  Something went wrong.'
      render :action => "new"
    end
  end

  def destroy
    @user = User.find(params[:user_id])
    @store = Store.find(params[:store_id])
    @location = @store.locations.find(params[:id])
    
    @location.destroy

    redirect_to user_stores_path(:user_id => @user)
  end
end
