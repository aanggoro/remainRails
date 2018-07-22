class UsersController < ApplicationController
  def new
    @admin = Admin.new
  end

  def create
    @admin = Admin.new(allowed_params)
    if @admin.save
      redirect_to root_url, notice: 'Thank You for signing up!'
    else
      redirect_to :new
    end
  end

  private

  def allowed_params
    params.require(:admin).permit(:email, :password, :password_confirmation)
  end
end
