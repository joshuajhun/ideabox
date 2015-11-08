class CreateIdeas < ActiveRecord::Migration
  def change
    create_table :ideas do |t|
      t.string :title
      t.string :body
      t.references :user, index: true, foreign_key: true
    end
  end
end
