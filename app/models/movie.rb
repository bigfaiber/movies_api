class Movie < ApplicationRecord
  scope :top_rated, -> {where("rating IS NOT NULL").order("movies.rating DESC")}
end