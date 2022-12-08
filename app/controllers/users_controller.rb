class UsersController < ApplicationController
  skip_before_action :login_required, only: [:new, :create]

  def show
    @users = User.find(params[:id])
    if @user.save
      redirect_to user_path(@user.id)
    else
      render :new
    end
  end


  def new
    @user = User.new
  end

  def create
    @user = User.new(user_params)
    if @user.save
      # 保存の成功した場合の処理
    else
      render :new
    end
  end

  private

  def user_params
    params.require(:user).permit(:name, :email, :password,
                                 :password_confirmation)
  end
end
