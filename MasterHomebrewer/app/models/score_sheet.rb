class ScoreSheet < ApplicationRecord
  validates_presence_of :category, :score

  belongs_to :brewer
end
