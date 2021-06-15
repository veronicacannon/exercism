# frozen_string_literal: true

NUCLEOTIDES = 'ATCG'
# count nucleotides in DNA strand
class Nucleotide < String
  def self.from_dna(dna_strand)
    raise ArgumentError unless dna_strand =~ /^["#{NUCLEOTIDES}"]*$/

    Nucleotide.new(dna_strand)
  end

  def histogram
    NUCLEOTIDES.each_char.with_object({}) do |nucleotide, hash|
      hash[nucleotide] = count(nucleotide)
    end
  end
end
