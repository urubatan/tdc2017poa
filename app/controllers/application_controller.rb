class ApplicationController < ActionController::Base
  #protect_from_forgery with: :exception
  before_action :require_user



  def require_user
    begin
      @session = Session.find session[:s_id]
      @user = @session.user
    rescue
      redirect_to new_sessions_path
    end
  end
end
