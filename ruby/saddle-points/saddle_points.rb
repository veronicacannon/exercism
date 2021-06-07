# frozen_string_literal: true

# saddle points Matrix
class Matrix
  def initialize(points)
    @points = points
  end

  def rows
    @points.each_line.map do |point|
      point.split.map(&:to_i)
    end
  end

  def columns
    rows.transpose
  end

  def saddle_points
    saddle_points = []
    rows.each.with_index do |row, row_index|
      row.each.with_index do |point, point_index|
        if point >= row.max &&
           columns[point_index][row_index] <= columns[point_index].min
          saddle_points << [row_index, point_index]
        end
      end
    end
    saddle_points
  end
end
