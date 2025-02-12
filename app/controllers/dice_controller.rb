class DiceController < ApplicationController
  def index
    @preset_rolls = [
      { dice: 2, sides: 6 },
      { dice: 2, sides: 10 },
      { dice: 1, sides: 20 },
      { dice: 5, sides: 4 }
    ]
  end

  def roll
    @num_dice = params[:number_of_dice].to_i
    @sides = params[:sides].to_i

    @rolls = Array.new(@num_dice) { rand(1..@sides) }  # Simulate dice rolls

    render "dice/roll"
  end
end
