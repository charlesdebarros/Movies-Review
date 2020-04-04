class AddMovieIdToReviews < ActiveRecord::Migration[4.2]
  def change
    add_column :reviews, :movie_id, :integer
  end
end
