# transpose strings
class Transpose

  def self.transpose(str)
    return '' if str.empty?

    rows = str.split("\n")

    number_of_columns = (rows.max { |a, b| a.length <=> b.length }).size

    number_of_columns.times.map do |column_number|
      column = rows.map { |original| original[column_number] }
      column.pop while column.last.nil?
      column.map { |c| c || ' ' }.join('')
    end.join("\n")
  end
end
