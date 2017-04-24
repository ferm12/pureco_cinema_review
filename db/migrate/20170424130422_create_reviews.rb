class CreateReviews < ActiveRecord::Migration[5.0]
  def change
    create_table :reviews do |t|
      t.string :email
      t.date :date
      t.integer :rating
      t.text :comment
      t.references :movie, foreign_key: true

      t.timestamps
    end
  end
end
