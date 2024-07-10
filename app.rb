require "sinatra"
require "sinatra/reloader"

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
  erb(:square_results)
end

get("/square_root/results") do
  @input = params.fetch("number")
  erb(:root_results)
end
