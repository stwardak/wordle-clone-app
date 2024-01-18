class UsersController < ApplicationController
  def index
    @users = User.all
    render :index
  end

  def show
    @user = User.find_by(id: params[:id])
    render :show
  end

  def create
    @user = User.create(
      username: params[:username],
      email: params[:email],
      password_digest: params[:password_digest]
    )
    render :show
  end

  def updated
    @user = User.find_by(id: params[:id])
    @user.update(
    username: params[:username] || @user.username,
    email: params[:email] || @user.email,
    password_digest: params[:password_digest] || @user.password_digest
    )
    render :show
  end

  def destroy
    @user = User.find_by(id: params[:id])
    @user.destroy
    render json: {message: "User succesfully deleted"}
  end
end
