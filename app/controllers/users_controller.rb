class UsersController < ApplicationController
  def show
    @user = current_user
    @training_centers = current_user.user_personality.career.training_center.where.not(latitude: nil, longitude: nil)

    @markers = @training_centers.map do |training_center|
      {
        lng: training_center.longitude,
        lat: training_center.latitude
      }

  end
end
