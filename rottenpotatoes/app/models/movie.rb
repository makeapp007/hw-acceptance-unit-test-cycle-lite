class Movie < ActiveRecord::Base
  def self.all_ratings
    %w(G PG PG-13 NC-17 R)
  end
  def self.similar_movies_with_same_director(id)
    director=Movie.find(id).director
    if director=="" 
      return nil
    end
    Movie.where(director:director)
  end
  
end
