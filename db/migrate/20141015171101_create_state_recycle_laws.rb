class CreateStateRecycleLaws < ActiveRecord::Migration
  def change
    create_table :state_recycle_laws do |t|
      t.integer :item_id
      t.string :state_name
      t.string :state_abr
      t.text :description

      t.timestamps
    end
  end
end
