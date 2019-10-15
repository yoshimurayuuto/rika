class UsersController < ApplicationController
  def new
    @user = User.new
  end
  def index
    @users = User.all
  end

  def create
    @user = User.new(user_params)
    if @user.save
      # 保存の成功した場合の処理
      redirect_to new_session_path
    else
      render 'new'
    end
  end

  def show
    @user = User.find(params[:id])
  end


  private

  def user_params
    params.require(:user).permit(:name, :email, :password,
                                 :password_confirmation, :image, :image_cache)
  end
end
