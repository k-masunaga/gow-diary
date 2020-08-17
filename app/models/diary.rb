class Diary < ApplicationRecord
  has_many :diaries_objectives
  has_many :objectives, through: :diaries_objectives
  belongs_to :user
end
