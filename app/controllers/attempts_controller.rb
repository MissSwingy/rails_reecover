class AttemptsController < ApplicationController
  def create
    @attempt = Attempt.new
  end

  def update

  end

  def algo_result
    @user = current_user
    @user_answers = UserAnswer.all.where(user_id: @user)
    @attempt = Attempt.where(user_id: @user).last
    @user_answers.each do |answer|
      @attempt.result << answer.answer.column
    end
    calcul = @attempt.result.split('')
    result = calcul.max
    @attempt.result = result
  end
end
