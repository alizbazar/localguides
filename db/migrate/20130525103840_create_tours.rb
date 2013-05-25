class CreateTours < ActiveRecord::Migration
  def change
    create_table :tours do |t|
      t.date :start_time
      t.date :end_time

      t.timestamps
    end
  end
end
