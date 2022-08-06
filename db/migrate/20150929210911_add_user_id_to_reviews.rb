# frozen_string_literal: true

# AddUserIdToReviews migration class
class AddUserIdToReviews < ActiveRecord::Migration[4.2]
  def change
    add_column :reviews, :user_id, :integer
  end
end
