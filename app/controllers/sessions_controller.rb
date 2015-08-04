class SessionsController < ApplicationController
  def new
  end

  def create
    user = User.find_by(email: params[:session][:email].downcase)
    if user && user.authenticate(params[:session][:password])
      if user.activated?
        log_in user
        params[:session][:remember_me] == '1' ? remember(user) : forget(user)
        redirect_back_or user
      else
        message  = "Account not activated. "
        message += "Check your email for the activation link."
        flash[:warning] = message
        redirect_to root_url
      end
    else
      flash.now[:danger] = 'Invalid email/password combination'
      render 'new'
    end
  end

  def destroy
    log_out if logged_in?
    redirect_to root_url
  end

 # Line user = User.from_omniauth(env["omniauth.auth"]) has two purposes.Create a user IF his/her unique
 # facebook uid is not in the database ELSE log this person in the app if the uid exists. More on this later.

  def create_facebook
    user = User.from_omniauth(env["omniauth.auth"])
    log_in user
    redirect_back_or user
  end
end
