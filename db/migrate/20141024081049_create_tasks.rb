class CreateTasks < ActiveRecord::Migration
  def change
    create_table :tasks do |t|
      t.references :task, index: true
      t.integer :status

      t.timestamps null: false
    end
  end
end
