class SurveysController < ApplicationController
  def index
    @surveys = Survey.all
  end

  def show
    @survey = Survey.find(params[:id])
    @questions = @survey.questions
  end
end
