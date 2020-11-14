class PostsController < ApplicationController

  def index
    @posts = Post.all
  end

  def show
    @posts = Post.where(user_id: current_user.id)
  end

  def new
    @post = Post.new
  end

  def create
    @post = Post.new(post_params)
    if @post.save
      flash[:success] = '投稿しました！'
      redirect_to posts_path
    else
      flash[:danger] = '投稿できませんでした'
      redirect_to new_post_path
    end
  end

  def edit
    @post = Post.find(params[:id])
  end

  def update
    @post = Post.find(params[:id])
    if @post.save
      flash[:success] = '投稿を編集しました！'
      redirect_to posts_path
    else
      flash[:danger] = '編集に失敗しました'
      redirect_to edit_post_path
    end
  end

  def destroy
    @post.destroy
    flash[:success] = '投稿を削除しました'
    redirect_to posts_path
  end

  private
  def post_params
    params.require(:post).permit(:title,:price,:description,:requirement,:image).merge(user_id: current_user.id)
  end
end
