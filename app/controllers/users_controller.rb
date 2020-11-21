class UsersController < ApplicationController

  def new
    @user = User.new
    render layout: 'not_login'
  end

  def create
    user = User.new(user_params)
    if user.save
      flash[:success] = 'ユーザー登録しました'
      redirect_to sign_in_path
    else
        flash[:danger] = 'ユーザー登録に失敗しました'
      redirect_to new_user_path
    end
  end

  def sign_in
    @user = User.new
    render layout: 'not_login'
  end

  def sign_in_process
    user = User.find_by(email: params[:user][:email])
    if user && user.authenticate(params[:user][:password])
    session[:user_id] = user.id
      flash[:success] = 'ログインしました'
      redirect_to posts_path
    else
      flash[:danger] = 'ログインできませんでした'
      redirect_to sign_in_path
    end
  end

  def sign_out

  end

  def show
    @user = User.find(current_user.id)
  end

  def edit
    @user = User.find(current_user.id)
  end

  def update
    @user = user.find(current_user.id)
    if @user.update
      flash[:success] = '編集しました'
      redirect_to posts_path
    else
      flash[:danger] = '編集に失敗しました'
      redirect_to user_path
    end
  end

  def bookmark
    @user = user.find(current_user.id)
  end

  def message
    @user = user.find(current_user.id)
  end

  def application
  end

  private
  def user_params
    params.require(:user).permit(:email,:password,:image)
  end
end
