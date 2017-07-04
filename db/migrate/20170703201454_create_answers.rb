class CreateAnswers < ActiveRecord::Migration[5.1]
  def change
    create_table :answers do |t|
      t.integer :subtask_id
      t.string :link
      t.integer :like, default: 0
      t.integer :dislike, default: 0
      t.integer :report, default: 0
      t.references :user, foreign_key: true

      t.timestamps
    end
  end
end
