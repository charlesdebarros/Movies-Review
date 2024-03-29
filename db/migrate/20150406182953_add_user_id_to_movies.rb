# frozen_string_literal: true

# AddUserIdToMovies migration class
class AddUserIdToMovies < ActiveRecord::Migration[4.2]
  def change
    add_column :movies, :user_id, :integer
  end
end
