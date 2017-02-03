class HomeController < ApplicationController
  def index
    @user = User.all.where(real_student: false)
  end
  
  def approve
    a = User.find(params[:id])
    a.real_student = true
    a.save
    redirect_to "/"
  end
end
