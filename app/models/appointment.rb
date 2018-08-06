class Appointment < ApplicationRecord
  validates :title, presence: true
  validates :start_date, presence: true
  validates :start_time, presence: true
  validates :end_date, presence: true
  validates :end_time, presence: true

  def self.search(search)
    where("title LIKE ?","%#{search}%")
  end

end
