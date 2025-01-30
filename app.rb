require "sinatra"
require "sinatra/reloader"

get("/") do
  erb(:home)
end

get("/process_roll") do
  
  @num_dice = params.fetch("dice_roll").to_i
  @sides = params.fetch("die_sides").to_i
  @rolls = []

  @num_dice.times do
    die = rand(1..@sides)

    @rolls.push(die)
  end

  erb(:flexible)
end
