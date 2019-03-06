class UsersPersonnalitiesController < ApplicationController

  def create
    @personality = params[:personality]
    @career = params[:career]
    @user = current_user
    user_personality = UsersPersonality.new(user: current_user, personality_riasec_id: @personality, career_id: @career)
    user_personality.save
    redirect_to dashboard_path(current_user)
  end

  def show
    @user = current_user
    @result = current_user.attempts.last.result
    case @result
    when "R"
      @personality_riasec = PersonalityRiasec.find_by(name: "Réaliste")
    when "I"
      @personality_riasec = PersonalityRiasec.find_by(name: "Investigateur")
    when "A"
      @personality_riasec  = PersonalityRiasec.find_by(name: "Artistique")
    when "S"
      @personality_riasec  = PersonalityRiasec.find_by(name: "Social")
    when "E"
      @personality_riasec  = PersonalityRiasec.find_by(name: "Entrepreneur")
    when "C"
      @personality_riasec  = PersonalityRiasec.find_by(name: "Conventionnel")
    end
  end
end
