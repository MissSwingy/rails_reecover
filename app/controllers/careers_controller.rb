class CareersController < ApplicationController
  def index
    @careers = Career.all
    @results = PgSearch.multisearch(params[:query]
  end

  def show
    @career = Career.find(params[:id])
    @users_personalities = @career.users_personalities.where(gender: [nil, current_user.gender])
  end
end
