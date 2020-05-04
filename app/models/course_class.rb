class CourseClass < ApplicationRecord
  enum status: {
    DRAFT: 'DRAFT',
    OPEN: 'OPEN',
    HOLD: 'HOLD',
    CLOSED: 'CLOSED'
  }

  belongs_to :course
end
