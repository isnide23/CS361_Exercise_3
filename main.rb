class Student

  MAX_COURSES = 5

  def add_to_schedule(course, schedule, quarter_id)
    quarter     = schedule.quarter[quarter_id]
    course_list = quarter.course_list
    max_courses = course_list.maximum_number_of_courses
    if max_courses < MAX_COURSES
      course_list.add(course)
    end
  end

  def remove_course_from_schedule(course, schedule)
    schedule.remove(course)
  end

end