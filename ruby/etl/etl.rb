class ETL
  def self.transform(old)
    old.each_with_object({}) do | (point, letters), shiny|
      letters.each do |letter|
        shiny[letter.downcase] = point
      end
    end
  end
end