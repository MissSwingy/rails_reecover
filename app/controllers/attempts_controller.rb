class AttemptsController < ApplicationController

  def create
    @survey = Survey.find(params[:id])
    @attempt = Attempt.create(user: current_user, survey: @survey, result: "")
    redirect_to edit_attempt_path(@attempt)
  end

  def edit
    @attempt = Attempt.find(params[:id])
    @user = current_user
  end

  def update
    @attempt = Attempt.find(params[:id])
    @user = current_user
    @user_answers = UserAnswer.all.where(user_id: @user) #ne marchera pas
    # @attempt = Attempt.where(user_id: @user).last
    @user_answers.each do |answer|
      @attempt.result << answer.answer.column
    end
    calcul = @attempt.result.split('')
    result = calcul.max
    @attempt.result = result
  end
end
