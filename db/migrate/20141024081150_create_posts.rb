class CreatePosts < ActiveRecord::Migration
  def change
    create_table :posts do |t|
      t.references :author, index: true
      t.integer :status

      t.timestamps null: false
    end
  end
end
