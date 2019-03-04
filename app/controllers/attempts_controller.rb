class AttemptsController < ApplicationController
  def new
    @survey = Survey.find(params[:survey_id])
    @attempt = Attempt.create(user: current_user, survey: @survey, result: "")
    @questions = @survey.questions.where(gender: [nil, current_user.gender])
  end

  def update
    @attempt = Attempt.find(params[:id])
    @user = current_user
    @user_answer = UserAnswer.all.where(user_id: @user)
    @user_answers = @user_answer.where(attempt_id: @attempt)
    @user_answers.each do |answer|
      @attempt.result << answer.answer.column
    end
    calcul = []
    r = @attempt.result.count("R")
    calcul << r
    i = @attempt.result.count("I")
    calcul << i
    a = @attempt.result.count("A")
    calcul << a
    s = @attempt.result.count("S")
    calcul << s
    e = @attempt.result.count("E")
    calcul << e
    c = @attempt.result.count("C")
    calcul << c
    case calcul.max
    when calcul[0]
      result = "R"
    when calcul[1]
      result = "I"
    when calcul[2]
      result = "A"
    when calcul[3]
      result = "S"
    when calcul[4]
      result = "E"
    when calcul[5]
      result = "C"
    end
    @attempt.update(result: result)
    redirect_to results_path(current_user)
  end
end
