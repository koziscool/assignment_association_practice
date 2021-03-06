class PostsController < ApplicationController

  def new
    @category_options = Category.all.map do |p|
      [ p.name, p.id ]
    end
    @post = Post.new
  end

  def create
    @post = Post.new( post_params )
    if @post.save
      redirect_to post_path(@post)
    else
      render :new
    end
  end

  def edit
    @category_options = Category.all.map do |p|
      [ p.name, p.id ]
    end
    @post = Post.find( params[:id])
  end

  def update
    @post = Post.find( params[:id])
    if @post.update( post_params )
      redirect_to post_path(@post)
    else
      render :edit
    end
  end

  def show
    @post = Post.find( params[:id])
  end

  private
  def post_params
    params.require( :post ).permit( :title,
                                    :body,
                                    :category_id,
                                    {:comments_attributes => [:_destroy, :id, :body, :user_id, :post_id]},
                                    :tag_ids => []  )
  end
end
