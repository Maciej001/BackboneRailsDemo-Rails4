class UsersController < ApplicationController
  before_action :setup, only: [:index]

  def index
  end

  def show
    @user = User.find params[:id]
  end

  private

    def setup
      @users = User.all
    end

end
