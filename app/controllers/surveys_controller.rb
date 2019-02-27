class SurveysController < ApplicationController
  def index
    @surveys = Survey.all
  end

  def show
    @survey = Survey.find(params[:id])
    @questions = @survey.questions
    @question = @questions[:question]
    @answers = @question.answer
    # @answers = @questions.answer
    # @answer = Answer.find(@question.id)
    raise
  end
end
