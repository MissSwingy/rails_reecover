class CareersController < ApplicationController
  def index
    @careers = Career.all
  end

  def show
    @careers = Career.find(params[:id])
    @users_personalities = @career.users_personalities.where(gender: [nil, current_user.gender])
  end
end
