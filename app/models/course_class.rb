class CourseClass < ApplicationRecord
  enum status: {
    DRAFT: 'DRAFT',
    OPEN: 'OPEN',
    HOLD: 'HOLD',
    CLOSED: 'CLOSED'
  }

  belongs_to :course
  belongs_to :room
  belongs_to :semester
  belongs_to :schedule, required: false

  validates :code, uniqueness: true
  validates :status, presence: true
end
