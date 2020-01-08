class SessionsController < ApplicationController
  def new
    if current_user
      redirect_to home_path
    end
  end

  def create
    if user = Admin.find_by_email(params[:email])
      session[:user_id] = user.id
      session[:user] = "admin"
      redirect_to controller: 'home', action: 'index'
    elsif user = Student.find_by_email(params[:email])
      session[:user_id] = user.id
      session[:user] = "student"
      redirect_to controller: 'home', action: 'index'
    elsif user = Instructor.find_by_email(params[:email])
      session[:user_id] = user.id
      session[:user] = "instructor"
      redirect_to controller: 'home', action: 'index'
    else
      flash[:notice] = "Failed to Log In!"
      redirect_to '/login'
    end
  end

  def destroy
    session[:user_id] = nil
    session[:user] = nil
    redirect_to '/home'
  end
  
  def backdoor
    if current_user
      redirect_to home_path
    end
  end
end
