class CreateColloects < ActiveRecord::Migration[6.0]
  def change
    create_table :colloects do |t|
      t.integer :user_id, :index => true
      t.integer :product_id, :index => true
      t.timestamps
    end
  end
end
