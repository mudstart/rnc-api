class CreateRncs < ActiveRecord::Migration[5.2]
  def change
    create_table :rncs do |t|
      t.string :nombre

      t.timestamps
    end
  end
end
