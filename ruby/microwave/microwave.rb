class Microwave
    def initialize(button_press)
        @minutes, @seconds = button_press.divmod(100)
        extra_minutes, @seconds = @seconds.divmod(60)
        @minutes += extra_minutes
    end

    def timer
        format('%02d:%02d', @minutes, @seconds)
    end
end