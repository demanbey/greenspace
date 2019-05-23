class PagesController < ApplicationController
  skip_before_action :authenticate_user!, only: [:home]

  def home
     # search based on location and size
    @gardens = Garden.all
    @homepage = true
  end

  def profile
    @user = User.find(params[:id])
    @gardens = Garden.all
  end
end
