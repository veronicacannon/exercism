class Complement
    def self.of_dna(strand)
        return '' if strand =~ /[^GCATU]/
        strand.tr('CGAT', 'GCUA')
    end
end