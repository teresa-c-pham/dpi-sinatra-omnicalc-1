require "sinatra"
require "sinatra/reloader"
require "active_support/all"

get("/") do
  erb(:main)
end

get("/square/new") do
  erb(:main)
end

get("/square_root/new") do
  erb(:root)
end

get("/payment/new") do
  erb(:payment)
end

get("/random/new") do
  erb(:random)
end

get("/square/results") do
  @input = params.fetch("number")
  @square = @input.to_f**2
  erb(:square_results)
end

get("/square_root/results") do
  @input = params.fetch("number")
  @root = @input.to_f**0.5
  erb(:root_results)
end

get("/payment/results") do
  @apr = params.fetch("apr_rate").to_f
  @years = params.fetch("year").to_i
  @principal = params.fetch("start").to_f
  @payment = (@apr / 100 / 12) * @principal / (1 - (1 + (@apr / 100 / 12))**(-1 * 12 * @years))
  erb(:payment_results)
end

get("/random/results") do
  @min = params.fetch("min").to_f
  @max = params.fetch("max").to_f
  @random = rand(@min..@max)
  erb(:random_results)
end
