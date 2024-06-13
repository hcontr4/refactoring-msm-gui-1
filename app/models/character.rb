# == Schema Information
#
# Table name: characters
#
#  id         :integer          not null, primary key
#  name       :string
#  created_at :datetime         not null
#  updated_at :datetime         not null
#  actor_id   :integer
#  movie_id   :integer
#
class Character < ApplicationRecord
  def movie
    movie_id = self.movie_id

    matching_movie = Movie.where({ :id => movie_id }).first
    matching_movie
  end

  def director
    director_id = self.director_id

    matching_director = Director.where({ :id => director_id }).first
    matching_director
  end
end
