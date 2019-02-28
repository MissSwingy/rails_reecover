class PersonalitiesRiasecController < ApplicationController
  def show
    @personality_riasec = Personality_riasec.find(params[:id])
    @users_personalities = @personality_riasec.users_personalities
  end
end
