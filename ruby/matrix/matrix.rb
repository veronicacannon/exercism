class Matrix
  def initialize(string)
    @string = string
  end
  def rows
    @string.each_line.map do |row|
      row.split.map(&:to_i)
    end  
  end
  def columns
    rows.transpose
  end
end