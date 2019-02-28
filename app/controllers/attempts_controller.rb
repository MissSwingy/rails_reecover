class AttemptsController < ApplicationController
  def create

  end

  def update

  end

  def algo_result
    @user = current_user
    @user_answers = UserAnswer.all.where(user_id: @user)
    @attempt = Attempt.last
    @attempt.result = []
    @user_answers.each do |answer|

  end
end
