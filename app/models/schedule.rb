class Schedule < ApplicationRecord
  def days
    result = []
    result << "MONDAY" if monday
    result << "TUESDAY" if tuesday
    result << "WEDNESDAY" if wednesday
    result << "THURSDAY" if thursday
    result << "FRIDAY" if friday
    result << "SATURDAY" if saturday
    result << "SUNDAY" if sunday
    result
  end

  def time_start
	extract_time_string 'time_start'
  end

  def time_end
	extract_time_string 'time_end'
  end

  private

  def extract_time_string attribute_name
    time_value = @attributes[attribute_name].value
    "#{'%02.0f' % (time_value / 60)}:#{'%02.0f' % (time_value % 60)}"
  end
end
