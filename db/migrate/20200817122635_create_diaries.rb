class CreateDiaries < ActiveRecord::Migration[5.2]
  def change
    create_table :diaries do |t|
      t.string :title,            null :false
      t.integer :valuation,       null :false
      t.string :sleep,            null :false
      t.string :feeling,          null :false
      t.string :short_term_goals, null :false
      t.string :long_term_goals,  null :false
      t.sring :plan,              null :false
      t.string :remark,
      t.timestamps
    end
  end
end
