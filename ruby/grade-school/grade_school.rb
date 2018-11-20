class School
  def initialize
    @all_students = Hash.new { |h, k| h[k] = [] } 
  end

  def add(name, grade)
    @all_students[grade] << name
  end

  def students(grade)
    @all_students[grade].sort
  end

  def students_by_grade
    @all_students.keys.sort.map do |grade|
      {
        grade: grade,
        students: students(grade)
      }
    end
  end
end

# Problem version
module BookKeeping
  VERSION = 3
end
