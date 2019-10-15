class UsersController < ApplicationController
  before_action :set_user, only: [:show, :edit, :update, :destoy]

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
    @favorites = @user.favorites
    @feeds = Feed.all
    if current_user != @user
      flash[:error] = "権限がありません"
      redirect_to users_path
    end
  end

  def edit

  end

  def destoy
    @user.destroy
    redirect_to users_path, notice:"ブログを削除しました！"
  end

  def update
    if @user.update(user_params)
      redirect_to @user, notice: 'List was successfully updated.'
    else
      render :edit
    end
  end

  private

  def set_user
  @user = User.find(params[:id])
  end

  def user_params
  params.require(:user).permit(:name, :email, :password,
                                 :password_confirmation, :image, :image_cache)
  end
end
