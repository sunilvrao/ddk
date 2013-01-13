class UserStepsController < ApplicationController
  include Wicked::Wizard
  steps :personal, :store, :store_address, :billing_address
  
  
private

  def redirect_to_finish_wizard
    redirect_to root_url, notice: "Thank you for signing up."
  end
end
