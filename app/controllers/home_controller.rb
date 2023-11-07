class HomeController < ApplicationController
  def index
    number = params[:number] || 1234567890
    @lcd_representation = LcdNumberService.new(number).to_lcd
  end

  def big_lcd_numbers
    number = params[:number] || 1234567890
    @big_lcd_representation = BigLcdNumberService.new(number).to_lcd
  end
end
