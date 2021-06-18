require "http"

puts "Enter 1 to see all movies, enter 2 to see one random movie:"
input = gets.chomp.to_i

if input == 1
  data = HTTP.get("http://127.0.0.1:3000/all_movies").parse(:json)
  data.each do |movie|
    puts "The movie #{movie["title"]} was released in #{movie["year"]}. #{movie["plot"]}"
  end
elsif input == 2
  movie = HTTP.get("http://127.0.0.1:3000/one_movie").parse(:json)
  puts "The movie #{movie["title"]} was released in #{movie["year"]}. #{movie["plot"]}"
else
  puts "Incorrect input. Try again!"
end
