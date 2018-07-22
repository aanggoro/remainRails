class CreateProducts < ActiveRecord::Migration[5.1]
  def change
    create_table :products, id: false do |t|
      t.string :sku, primary_key: true

      t.timestamps
    end
  end
end
