require "sinatra"
require "sinatra/reloader"

get("/") do
  erb(:home)
end

get("/process_roll") do
  @dice = params.fetch("dice").to_i
  @sides = params.fetch("sides").to_i
  @rolls = []
  @dice.times do
    roll = rand(1..@sides)
    @rolls.push(roll)
  end
  erb(:process_roll)
end
