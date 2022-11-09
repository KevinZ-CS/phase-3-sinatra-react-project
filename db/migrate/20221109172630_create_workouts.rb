class CreateWorkouts < ActiveRecord::Migration[6.1]
  def change
    create_table :workouts do |t|
      t.string :exercise
      t.string :weight
      t.string :sets
      t.string :reps
      t.integer :category_id
      t.boolean :complete
      t.timestamps
    end
  end
end
