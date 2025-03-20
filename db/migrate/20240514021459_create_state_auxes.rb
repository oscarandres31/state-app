class CreateStateAuxes < ActiveRecord::Migration[7.0]
  def change
    create_table :state_auxes do |t|
      t.string :state_now

      t.timestamps
    end
  end
end
