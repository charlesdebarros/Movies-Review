# frozen_string_literal: true

# CreateMovies migration class
class CreateMovies < ActiveRecord::Migration[4.2]
  def change
    create_table :movies do |t|
      t.string :title
      t.text :description
      t.string :movie_length
      t.string :director
      t.string :rating

      t.timestamps null: false
    end
  end
end
