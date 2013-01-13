class DashboardsController < InheritedResources::Base
  def index
    @user = current_user
    @stores = @user.stores
  end
end
