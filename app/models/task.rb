class Task < ApplicationRecord
  STATUSES = { 'New' => 'New task',
               'Progress' => 'In progress',
               'Done' => 'Task done',
  }

  def self.valid_statuses
    STATUSES.keys
  end

  validates :title, presence: true
  validates :description, presence: true, length: { minimum: 10 }
  validates :status, inclusion: { in: valid_statuses }, presence: true

  def extended_status
    STATUSES[status]
  end
end
