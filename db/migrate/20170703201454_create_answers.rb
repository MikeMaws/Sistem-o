class CreateAnswers < ActiveRecord::Migration[5.1]
  def change
    create_table :answers do |t|
      t.integer :subtask_id
      t.string :link
      t.integer :like
      t.integer :dislike
      t.integer :report
      t.references :user, foreign_key: true

      t.timestamps
    end
  end
end
