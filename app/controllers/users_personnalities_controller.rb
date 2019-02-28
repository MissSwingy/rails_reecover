class UsersPersonnalitiesController < ApplicationController
  def show
    @user = current_user
    @result = current_user.attempts.last.result
    case @result
    when "R"
      @user.users_personalities.personality_riasec = PersonalityRiasec.find_by(name: "Réaliste")
    when "I"
      @user.users_personalities.personality_riasec = PersonalityRiasec.find_by(name: "Investigateur/trice")
    when "A"
      @user.users_personalities.personality_riasec = PersonalityRiasec.find_by(name: "Artistique")
    when "S"
      @user.users_personalities.personality_riasec = PersonalityRiasec.find_by(name: "Sociable")
    when "E"
      @user.users_personalities.personality_riasec = PersonalityRiasec.find_by(name: "Entrepreneur/se")
    when "C"
      @user.users_personalities.personality_riasec = PersonalityRiasec.find_by(name: "Conventionnel/le")
    end
    @user.save
  end
end
