require 'open-uri'
Movie.destroy_all
puts "Destroying the movies..."
# List.destroy_all


# the Le Wagon copy of the API
(1..5).each do |count|
  url = "https://api.themoviedb.org/3/movie/popular?api_key=c60e8b2d743239f99317ff6a0d177935&language=en-US&page=#{count}"
  el = JSON.parse(URI.open(url).read)
  el['results'].each do |movie_hash|
    Movie.create(
      poster_url: "https://image.tmdb.org/t/p/w500#{movie_hash['poster_path']}",
      title: movie_hash['title'],
      overview: movie_hash['overview'],
      rating: movie_hash['vote_average']
    )
  end
end

puts "#{Movie.count} have been seeded!"
