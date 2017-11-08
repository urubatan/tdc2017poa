class SessionsController < ApplicationController
  skip_before_action :require_user, except: [:destroy]

  def new
    @session = Session.new
  end

  def show
    @session = Session.find session[:s_id]
    renser json: @session.user
  end

  def create
    @session = Session.create session_params
    session[:s_id] = @session.id
    render json: :success
  end

  def destroy
    @session = Session.find session[:s_id]
    @session.destroy
    render json: :success
  end

  private
  def session_params
    params.require(:session).permit(:username,:password)
  end
end
