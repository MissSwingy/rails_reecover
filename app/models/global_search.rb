class GlobalSearch

  def initialize(query)
    @query = query
  end

  def result_careers
    Career.search(query)
  end

  def result_training_centers
    TrainingCenter.search(query)
  end
end
