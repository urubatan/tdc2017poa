class SessionsController < ApplicationController
  skip_before_action :require_user, except: [:destroy]

  def new
    @session = Session.new
  end

  def create
    @session = Session.create session_params
    render json: :success
  end

  def destroy
    @session = Session.find session[:session_id]
    @session.destroy
    render json: :success
  end

  private
  def session_params
    params.require(:session).permit(:username,:password)
  end
end
