class UsersController < ApplicationController
  before_action :authorise, only: [:index, :edit]

  def index
    @users = User.all
  end

  def show
    @user = User.find params[:id]
  end

  def new
    @user = User.new
  end

  def create
    @user = User.new user_params
    if @user.save
      flash[:success] = 'User was successfully created'
      session[:user_id] = @user.id
      redirect_to users_path
    else
      flash[:error] = 'Please try again'
      render :new
    end
  end

  def edit
    @user = @current_user
  end

  def update
    user = @current_user
    user.update user_params

    redirect_to user_path(user)
  end

  def destroy
    user = @current_user
    user.destroy

    redirect_to users_path
  end

  private

  def user_params
    params.require(:user).permit(:email, :password, :password_confirmation, :title, :first_name, :last_name, :dob, :contact_number, :address_line_1, :address_line_2, :suburb, :state, :postcode, :diet, :medical_condition)
  end

  def authorise
    flash[:error] = 'Please login to view' unless @current_user.present?
    redirect_to login_path unless @current_user.present?
      end
end
