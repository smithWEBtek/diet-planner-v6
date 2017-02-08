class AdminController < ApplicationController
  before_filter :authorize_admin

  def new_user
    @user = User.new
    render 'admin/new_user'
  end

  def index
    @users = User.all
    @logs = Log.all
    @groups = Group.all
    @diets = Diet.all
    @foods = Food.all
    @meals = Meal.all

    render 'admin/index'
  end

  def new
    @user = User.new
  end

  def edit

  end

  def update
  end

  def create
  end

  def destroy
  end

  private
    def authorize_admin
      return unless !current_user.admin?
      redirect_to root_path, alert: 'Admins only, you have been redirected to HOME page.'
    end
end
