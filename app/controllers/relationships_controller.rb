class RelationshipsController < ApplicationController
  def new
    @relationship = Relationship.new
    render template: "relationships/new"
  end

  # IN PROGRESS
  def create
    @relationship = Relationship.new(
      @user.find_by(id: params[:id])
    )
  end

  def index
    @relationship = Relationship.all
    render template: "relationship/index"
  end

  def show
    @relationship = Relationship.find_by(id: params[:id])
    render template: "relationships/show"
  end

  def edit
    @relationship = Relationship.find_by(id: params[:id])
    render template: "relationships/edit"
  end

  # def update
  #   @user = User.find_by(id: params[:id])
  #   @user.name = params[:user][:name]
  #   @user.email = params[:user][:email]
  #   @user.image = params[:user][:image]
  #   if @user.save
  #     render json: { message: "User created successfully" }, status: :created
  #   else
  #     render json: { errors: @user.errors.full_messages }, status: :bad_request
  #   end
  #   redirect_to "/users"
  # end

  def destroy
    @user = User.find_by(id: params[:id])
    @user.destroy
    redirect_to "/users", status: :see_other
  end
end
