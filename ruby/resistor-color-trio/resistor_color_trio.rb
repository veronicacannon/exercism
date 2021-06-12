# frozen_string_literal: true

# return a label for a resistor
class ResistorColorTrio
  COLORS = %w[black brown red orange yellow green blue violet grey white].freeze

	def initialize(resistor)
		*@bands, zeros = resistor
		raise ArgumentError unless (resistor - COLORS).empty?
		@multiplier = COLORS.index(zeros)
	end

	def label
		if value >= 1000 then
			ohms = value / 1000
			uom = "kiloohms"
		else
			ohms = value
			uom = "ohms"
		end
		"Resistor value: #{ohms} #{uom}"
	end

	private

	def value
		@bands.map do |band|
			COLORS.index(band)
		end.join().to_i * 10.pow(@multiplier)
	end
end
