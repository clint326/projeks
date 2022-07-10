class CreateProjeks < ActiveRecord::Migration[7.0]
  def change
    create_table :projeks do |t|
      t.string :name
      t.string :status
      t.text :notes

      t.timestamps
    end
  end
end
