class StoresController < InheritedResources::Base

  def index
    @user = User.find(params[:user_id])
    @stores = @user.stores
  end
  
  def new
    #@store = Store.new
    @user = User.find(params[:user_id])
    @store = Store.new()
  end

  def create
    @user = User.find(params[:user_id])
    #raise @user.inspect
    @store = @user.stores.create(params[:store])
    if @store.save
      flash[:notice] = 'Store was successfully created.'
      redirect_to user_stores_path(:user_id => @user)
    else
      flash[:notice] = 'Error.  Something went wrong.'
      render :action => "new"
    end
  end
  
  def edit
    @user = User.find(params[:user_id])
    @store = @user.stores.find(params[:id])
  end
  
  def destroy
    @user = User.find(params[:user_id])
    #raise @user.inspect
    @store = @user.stores.find(params[:id])
    @store.destroy
    redirect_to user_stores_path(:user_id => @user)
  end
end