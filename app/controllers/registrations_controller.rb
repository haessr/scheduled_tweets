class RegistrationsController < ApplicationController
  def new
    # Creates a new one in memory
    # user --> only available inside the method
    # @user --> instance variable, visible in the views
    @user = User.new
  end

  def create
    # render plain: "Thanks!"
    # render plain: params[:user]
    @user = User.new(user_params)
    if @user.save
      session[:user_id] = @user.id
      redirect_to root_path, notice: "Successfully created account"
    else
      render :new
    end
    
  end


  private

  def user_params
    params.require(:user).permit(:email, :password, :password_confirmation)
  end
end