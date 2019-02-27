class SurveysController < ApplicationController
  def index
    @surveys = Survey.all
  end

  def show
    @survey = Survey.find(params[:id])
    @questions = @survey.questions
    # @question = @questions[:question]
    @question = @questions[1].question
    # @answers = @question.answer
    @answers = @questions[1].answers
    # @answers = @questions.answer
    # @answer = Answer.find(@question.id)
    @answer = @answers[3].answer
     # raise
  end
end
