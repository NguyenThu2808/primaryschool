class SessionController < ApplicationController
	layout 'backend'
  def new
  end

  def create
  	user = User.find_by(email: params[:session][:email].downcase)
  	if user && user.authenticate(params[:session][:password])
  		#flash.now[:'alert-success'] = 'Đăng nhập thành công'
  		#render'new'
  		login_url(user)
  		redirect_to user
  	else
  		flash.now[:'alert-danger'] = 'User/Password không đúng'
  	end
  end

  def destroy
  	log_out
  	redirect_to root_url
  end

end
