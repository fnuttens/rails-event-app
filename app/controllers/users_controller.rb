class UsersController < ApplicationController
  # GET /users
  def index
    @users = User.paginate(page: params[:page], per_page: 10)
  end
end
