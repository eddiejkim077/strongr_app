class CreateExercises < ActiveRecord::Migration[5.2]
  def change
    create_table :exercises do |t|
      t.string :name
      t.references :user, foreign_key: true
      t.integer :weight
      t.integer :reps
      t.integer :sets
      t.string :body_part
      t.boolean :completed
      t.references :plan, foreign_key: true

      t.timestamps
    end
  end
end
