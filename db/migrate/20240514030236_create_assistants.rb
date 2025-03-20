class CreateAssistants < ActiveRecord::Migration[7.0]
  def change
    create_table :assistants do |t|
      t.text :name
      t.references :state_aux, null: false, foreign_key: true

      t.timestamps
    end
  end
end
