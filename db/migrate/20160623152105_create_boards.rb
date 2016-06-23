class CreateBoards < ActiveRecord::Migration
  def change
    create_table :boards do |t|
      t.boolean :public,   default: false
      t.string :name,      default: ''
      t.text :description, default: ''

      t.timestamps null: false
    end
  end
end
