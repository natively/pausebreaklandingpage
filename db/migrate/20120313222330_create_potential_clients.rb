class CreatePotentialClients < ActiveRecord::Migration
  def change
    create_table :potential_clients do |t|
      t.string :name
      t.string :email
      t.string :phone
      t.text :project_description

      t.timestamps
    end
  end
end
