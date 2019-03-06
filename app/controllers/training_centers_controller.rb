class TrainingCentersController < ApplicationController
  def index
    @training_centers = TrainingCenter.all
    @results = PgSearch.multisearch(params[:query])
  end
end
