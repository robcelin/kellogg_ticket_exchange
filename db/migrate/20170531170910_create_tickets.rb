class CreateTickets < ActiveRecord::Migration[5.0]
  def change
    create_table :tickets do |t|
      t.integer :event_id
      t.integer :user_id
      t.integer :quantity
      t.integer :price
      t.string :ticket_type
      t.string :contact_method

      t.timestamps

    end
  end
end
