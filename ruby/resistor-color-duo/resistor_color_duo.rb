module ResistorColorDuo
    COLOR_MAP = %w[black brown red orange yellow green blue violet grey white].freeze

    def self.value(color_bands)
        COLOR_MAP.index(color_bands[0]) * 10 + COLOR_MAP.index(color_bands[1])
    end
end
