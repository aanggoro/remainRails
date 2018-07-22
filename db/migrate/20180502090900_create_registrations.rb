class CreateRegistrations < ActiveRecord::Migration[5.1]
  def change
    create_table :registrations do |t|
      t.string :name
      t.string :address
      t.string :password
      t.string :phone_number
      t.string :email

      t.timestamps
    end
  end
end
