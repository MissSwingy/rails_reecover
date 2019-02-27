class UsersController < ApplicationController
  def show
    @user = current_user
    # To uncomment when other tables will be created.
    # @training_centers = current_user.users_personalities.training_centers.where.not(latitude: nil, longitude: nil)

    # @markers = @training_centers.map do |training_center|
    #   {
    #     lng: training_center.longitude,
    #     lat: training_center.latitude
    #   }
    # end
  end
end
