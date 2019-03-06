class CareersController < ApplicationController
  def index
    @careers = Career.all
    @user = current_user
    @user_personality = UsersPersonality.find_by(user_id: current_user)
    @results = PgSearch.multisearch(params[:query])
  end

  def show
    @career = Career.find(params[:id])
    @users_personalities = @career.users_personalities.where(gender: [nil, current_user.gender])
  end
end
