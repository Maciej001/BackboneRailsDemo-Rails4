class ApplicationController < ActionController::Base
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
  protect_from_forgery with: :exception

  def index
    @users = User.all
    @first_user = User.first #just a place holder
    gon.jbuilder :template => "app/views/users/index.json.jbuilder", as: "users"
    gon.jbuilder :template => "app/views/users/show.json.jbuilder", as: "current_user"
  end
end
