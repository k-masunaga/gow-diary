class Objective < ApplicationRecord
  has_many :diaries_objectives
  has_many :diaries, through: :diaries_objectives
  has_many :amounts
  belongs_to :user
end
