class Hamming
	VERSION = 1
	def self.compute(strand_1, strand_2)
		raise ArgumentError if strand_1.size != strand_2.size
		hamming_distance = 0
		strand_1.each_char.with_index do |nucleotide, index| 
			hamming_distance += 1 unless nucleotide == strand_2[index]
		end
		return hamming_distance
	end
end