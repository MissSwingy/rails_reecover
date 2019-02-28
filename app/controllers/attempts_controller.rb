class AttemptsController < ApplicationController
  def new
    @survey = Survey.find(params[:survey_id])
    @attempt = Attempt.create(user: current_user, survey: @survey, result: "")
    @questions = @survey.questions.where(gender: [nil, current_user.gender])
  end

  def create
    raise
    @survey = Survey.find(params[:id])
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
    @attempt.update(result: result)
    redirect_to results_path(current_user)
  end
end
