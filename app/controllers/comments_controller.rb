class CommentsController < ApplicationController
  before_action :set_comment, only: [:show, :update, :destroy]
  skip_before_action :authenticate_user!, only: [:index, :show]

  # GET /comments
  def index
    @comments = Comment.all

    render json: @comments
  end

  # GET /comments/1
  def show
    render json: @comment
  end

  # POST /comments
  def create

    @comment = Comment.new(comment_params)
    @comment.user = current_user

    if @comment.save

      create_notifications @comment

      render json: @comment, status: :created, location: @comment
    else
      render json: @comment.errors, status: :unprocessable_entity
    end
  end

  # PATCH/PUT /comments/1
  def update
    if @comment.update(comment_params)
      render json: @comment
    else
      render json: @comment.errors, status: :unprocessable_entity
    end
  end

  # DELETE /comments/1
  def destroy
    return render json: { errors: ["Unauthorized"] } if @comment.user != current_user
    @comment.destroy
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_comment
      @comment = Comment.find(params[:id])
    end

    # Only allow a trusted parameter "white list" through.
    def comment_params
      params.permit(:body, :user_id, :post_id, :created_at)
    end

    def mention_ids
      params[:mention_ids]
    end

    def create_notifications(comment)
      @notifications = mention_ids.map do |mention_id|
        Notification.create! receiver_id: mention_id, comment_id: comment.id, post_id: comment.post_id
      end
    end
end
