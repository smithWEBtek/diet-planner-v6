class UsersController < ApplicationController
  before_action :authorize_admin, only: [:destroy]
  before_action :set_user, only: [:show, :edit, :destroy]
  before_action :authenticate_user!, only: [:show, :edit, :update, :destroy]
  before_action :load_models

  def new
    @user = User.new
  end

  def index
  end

  def show
    @user = current_user unless current_user.admin?
    load_diet_stats
    # if !current_user
    #   redirect_to root_path
    # end
  end

  def create
    @user = User.create(user_params)
    if @user.save
      flash[:notice] = "Welcome, #{@user.username.upcase}! you have successfully signed up, please SIGN IN."
      redirect_to root_path
    else
      render :new
    end
  end

  def edit
  end

  def update
    @user = User.find_by_id(params[:id])
    if !params[:user][:password].present?
      flash[:notice] = "Password required for User Edit."
    @user.update(user_params)
    if @user.save
      flash[:notice] = "User Profile updated."
      redirect_to user_path(@user)
    else
      redirect_to user_path(@user)
    end
    end
  end

  def destroy
    if @user.delete
      flash[:notice] = "User deleted"
      redirect_to root_path
    else
      flash[:notice] = @user.errors.full_messages
      redirect_to user_path(@user)
    end
  end

  private
    def set_user
      @user = User.find_by_id(params[:id])
    end

    def user_params
      params.require(:user).permit(:username, :role, :email, :password, :weight, :diet_id, :logs_attributes => [:user_id, :date, :note], :meals_attributes => [:user_id, :mealdate, :mealname_id, :food_id, :new_food, :qty, :note])
    end
end
