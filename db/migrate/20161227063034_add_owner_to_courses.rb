class AddOwnerToCourses < ActiveRecord::Migration[5.0]
  def change
    add_reference :courses, :owner, references: :user, index: true
    add_foreign_key :courses, :users, column: :owner_id
  end
end
