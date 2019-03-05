class CareersController < ApplicationController
  def index
    @careers = Career.all
    @results = PgSearch.multisearch(params[:query])
    # respond_to do |format|
    #   format.html { render 'dashboard' }
    #   format.js
    # end
  end

  def show
    @career = Career.find(params[:id])
    @users_personalities = @career.users_personalities.where(gender: [nil, current_user.gender])
  end
end
