class Message < ApplicationRecord
  $total_hours = 0
  def total_study_hours_hour
    $total_hours += hours
  end

  def total_study_hours_minute
  end

  def total_study_hours_minute
  end

  def hours_proc_minute
    minute = hours % 60
  end

  def hours_proc_hour
    hour = (hours - hours % 60) / 60
  end

  validates :hours, presence: true
  after_create_commit { MessageBroadcastJob.perform_later self }

  belongs_to :user
  belongs_to :room
end
