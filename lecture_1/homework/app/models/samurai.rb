class Samurai < ApplicationRecord
  belongs_to :clan

  validates :name, presence: true
  validates :armor, presence: true, numericality: {greater_than: 0, less_than: 1000}
  validates :battles, presence: true, numericality: {grater_than:0}
  validates :join_date, presence: true

  scope :alive, -> { where('death_date IS NULL')}
  scope :dead, -> { where('death_date IS NOT NULL')}

end
