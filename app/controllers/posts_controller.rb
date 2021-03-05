class PostsController < ApplicationController
  before_action :set_post, only: %i[ show edit update destroy ]

  # GET /posts or /posts.json
  def index
    @posts = Post.all
  end

  # GET /posts/1 or /posts/1.json
  def show
  end

  # GET /posts/new
  def new
    @post = Post.new
    @labels = Label.where(publicness: true)
  end

  # GET /posts/1/edit
  def edit
    @labels = Label.where(publicness: true).or(Label.where(creator_id: @post.id))
  end

  # POST /posts or /posts.json
  def create
    @post = Post.new(post_params)
    if @post.save
      new_label(@post)
    else
      render :new
    end
  end

  # PATCH/PUT /posts/1 or /posts/1.json
  def update
    if @post.update(post_params)
      new_label(@post)
    else
      render :edit
    end
  end

  # DELETE /posts/1 or /posts/1.json
  def destroy
    @post.destroy
    respond_to do |format|
      format.html { redirect_to posts_url, notice: "Post was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_post
      @post = Post.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def post_params
      params.require(:post).permit(:content, label_ids: [])
    end

    def new_label(post)
      @label = post.private_labels.build(content: params[:post][:new_label]) if params[:post][:new_label].present?
      if !@label
        redirect_to post_path(post)
      elsif @label.save
        post.label_ids = post.label_ids << @label.id
        redirect_to post_path(post)
      else
        redirect_to edit_post_path(post)
        flash[:notice] = @label.errors.full_messages
      end
    end
end
