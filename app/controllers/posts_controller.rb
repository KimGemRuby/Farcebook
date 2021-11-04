class PostsController < ApplicationController

    #filtres pr les actions show/edit/update/destroy
    before_action :set_post, only: [:show, :edit, :update, :destroy]
    before_action :authenticate_user, only: [:create, :update]

    # GET /posts
    def index
        @posts = Post.all
    end

    ## GET /posts/1 
    def show
    end

    ## GET /posts/1/edit
    def edit
    end

    # PATCH/PUT /posts/1
    def update
        @post.update(post_params)
        redirect_to posts_path
    end

    # GET /posts/new
    def new 
        @post = Post.new
        unless current_user
            flash[:danger] = "Please log in."
            redirect_to new_session_path
          else
    end
end

    # POST /posts
    def create
        @post = Post.create(post_params)
        #@post.user = User.find_by(id:session[:user_id])
        if @post.save
            flash[:success] = "Potin bien créé !"
        redirect_to posts_path
        else
        render "new"
        end
    end

    # DELETE /posts/1
    def destroy
        @post.destroy
        redirect_to posts_path
    end

#fin de ma classe
end


#######
private
#######

def set_post
    @post = Post.find(params[:id])
end

def post_params
    params.require(:post).permit(:title, :content)
end

def authenticate_user
    unless current_user
      flash[:danger] = "Please log in."
      redirect_to new_session_path
    end
end