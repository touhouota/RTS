class SessionsController < ApplicationController
  def new
  end

  def create
    puts "create: #{params}"
    user = User.find_by(name: params_permit[:user_id])
    p user
    if user && user.pw == params_permit[:password]
      render plain: "ok"
    else
      render "new"
    end
  end

  private
    def params_permit
      @params_permit ||= params.require(:session).permit(:user_id, :password)
    end
end
