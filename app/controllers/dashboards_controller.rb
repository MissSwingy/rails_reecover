class DashboardsController < ApplicationController
  def show
    @user = current_user
    @user_personality = UsersPersonality.find_by(user_id: current_user)
    @training_centers = TrainingCenter.where(career_id: @user_personality[:career_id]).where.not(latitude: nil, longitude: nil).near(@user, 1000)

    @markers = @training_centers.first(3).map do |training_center|
      {
        lng: training_center.longitude,
        lat: training_center.latitude
      }
    end
    @markers << {
      lng: @user.longitude,
      lat: @user.latitude,
      image_url: helpers.asset_url(@user.photo)
    }

    @results = PgSearch.multisearch(params[:query])
  end
end
