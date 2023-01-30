class FortuneController < ApplicationController
  def get_horoscope
    all_zodiacs = Zodiac.list
    @the_sign = params.fetch("the_sign").to_sym
    this_zodiac = all_zodiacs.fetch(@the_sign)
    @horoscope = this_zodiac.fetch(:horoscope)

    @array_of_numbers = Zodiac.lucky_numbers
    render({ :template => "fortune_templates/specific-sign.html.erb" })
  end
end
