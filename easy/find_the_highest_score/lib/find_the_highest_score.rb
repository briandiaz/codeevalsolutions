class FindTheHighestScore
  attr_accessor :score_list

  def initialize(score_list)
    self.score_list = score_list
  end
  class << self

    def create(str)
      arrays = str.split("|")
      scores = []
      arrays.each do |array|
        scores << array.split(" ").map(&:to_i)
      end
      new(scores)
    end

  end

  def find
    highest_scores = []
    length = self.score_list.first.length
    (0..length).each do |i|
      single_highest_score = []
      self.score_list.each_with_index do |scores, j|
        single_highest_score << scores[i]
      end
      highest_scores << single_highest_score.max
    end
    highest_scores.join(" ").strip
  end

end
