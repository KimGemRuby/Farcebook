class SessionsController < ApplicationController



  def create
    #render plain: "Thanks you buddy!"
    user = User.find_by(email:params[:email])
    if user && user.authenticate(params[:password])
    session[:user_id] = user.id  

    #@user = User.new(user_params)
    #if @user.save
    redirect_to root_path, notice: "Succefully created account"
    else
    flash.now[:danger] = 'Something was wrong'
    render :new
    end
  end

  def new
    @user = User.new
  end


  def destroy 
    session.delete(:user_id)
    redirect_to root_path
  end

end

private
 


#def user_params
  #params.require(:user).permit(email, :password, :password_confirmation)
#end