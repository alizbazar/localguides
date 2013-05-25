class CreateReviews < ActiveRecord::Migration
  def change
    create_table :reviews do |t|
      t.integer :rating
      t.string :comment
      t.float :tip

      t.timestamps
    end
  end
end
