class CreateDiariesObjectives < ActiveRecord::Migration[5.2]
  def change
    create_table :diaries_objectives do |t|
      t.integer :diary_id,     null :false, foreign_key :true
      t.integer :objective_id, null :false, foreign_key :true
      t.timestamps
    end
  end
end
