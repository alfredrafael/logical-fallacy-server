class CreateFlashCards < ActiveRecord::Migration[5.2]
  def change
    create_table :flash_cards do |t|
      t.string :fallacy_name
      t.string :fallacy_example

      t.timestamps
    end
  end
end
