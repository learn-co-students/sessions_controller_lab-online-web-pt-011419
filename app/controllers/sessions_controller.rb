require 'pry'
class SessionsController < ApplicationController
  def new

  end

  def create
    # binding.pry
    if !params[:name] || params[:name].empty?
      redirect_to sessions_new_path
    else
      session[:name] = params[:name]
      redirect_to '/'
    end
  end

  def destroy
    session.delete :name
  end
end
