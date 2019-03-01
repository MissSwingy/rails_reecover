class UsersPersonnalitiesController < ApplicationController

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
    # @careers = @personality_riasec.careers.sample(3)
  end
end
