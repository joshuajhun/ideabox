class CreateIdea < ActiveRecord::Migration
  def change
    create_table :ideas do |t|
      t.string :name
      t.string :body
      t.integer :quality, default: 0
    end
  end
end
