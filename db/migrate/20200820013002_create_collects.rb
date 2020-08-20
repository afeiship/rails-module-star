class CreateCollects < ActiveRecord::Migration[6.0]
  def change
    create_table :collects do |t|
      t.integer :user_id, :index => true
      t.integer :product_id, :index => true
      t.timestamps
    end
  end
end
