class RegistrationsController < ApplicationController
  def new
    # Creates a new one in memory
    # user --> only available inside the method
    # @user --> instance variable, visible in the views
    @user = User.new
  end
end