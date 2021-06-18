# frozen_string_literal: true
# compute number of nucleotide differences
class Hamming
	def self.compute(strand_1, strand_2)
		raise ArgumentError if strand_1.size != strand_2.size
		(0..strand_1.length).count do |n|
			strand_1[n] != strand_2[n]
		end
	end
end