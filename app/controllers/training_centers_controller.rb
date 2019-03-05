class TrainingCentersController < ApplicationController
  def index
    @training_centers = TrainingCenter.all
    @results = PgSearch.multisearch(params[:query])
    # respond_to do |format|
    #   format.html { redirect_to restaurant_path(@restaurant) }
    #   format.js
    # end
  end
end
