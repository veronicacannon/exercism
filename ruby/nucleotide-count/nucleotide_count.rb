class Nucleotide < String
  NUCLEOTIDES = 'ATCG'
  def Nucleotide.from_dna(strand)
    raise ArgumentError if not_dna?(strand) 
    Nucleotide.new(strand)
  end
  def histogram
    histogram = {}
    NUCLEOTIDES.each_char do |nucleotide|
      histogram[nucleotide] = self.count(nucleotide)
    end
    histogram
  end
  
  private 
  
  def Nucleotide.not_dna?(strand)
    strand =~ /[^#{NUCLEOTIDES}]/
  end
end