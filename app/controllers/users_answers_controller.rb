class UsersAnswersController < ApplicationController
  def create
    @attempt = Attempt.last
    @answer = Answer.find(params[:answer_id])
    @user_answer = UserAnswer.new(answer: @answer, user: current_user, attempt: @attempt)
    @user_answer.save
    respond_to do |format|
      format.html
      format.js
    end
  end
end
