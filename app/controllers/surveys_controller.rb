class SurveysController < ApplicationController
  def index
    @surveys = Survey.all
  end

  def show
    @survey = Survey.find(params[:id])
    @question = Question.find(@survey.id)
    @answer = Answer.find(@question.id)
  end
end
