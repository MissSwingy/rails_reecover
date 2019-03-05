class DashboardsController < ApplicationController
  def show
    @user = current_user
    @user_personality = UsersPersonality.find_by(user_id: current_user)

    @training_centers = @user_personality.careers.training_centers.where.not(latitude: nil, longitude: nil)

    # @markers = @training_centers.map do |training_center|
    #   {
    #     lng: training_center.longitude,
    #     lat: training_center.latitude
    #   }
    # end
  end
end
