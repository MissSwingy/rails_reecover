class DashboardsController < ApplicationController
  def show
    @user = current_user
    @user_personality = UsersPersonality.find_by(user_id: current_user)
    @results = PgSearch.multisearch(params[:query])
    respond_to do |format|
      format.html { render 'dashboards/show' }
      format.js
    end

    # To uncomment when other tables will be created.
    # @training_centers = current_user.users_personalities.training_centers.where.not(latitude: nil, longitude: nil)
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
  end
end
