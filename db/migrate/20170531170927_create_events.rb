class CreateEvents < ActiveRecord::Migration[5.0]
  def change
    create_table :events do |t|
      t.date :start_date
      t.date :end_date
      t.time :start_time
      t.time :end_time
      t.integer :ticket_face_value
      t.string :address
      t.text :event_description
      t.integer :tickets_available
      t.string :campusgroups_url
      t.string :image_url
      t.string :event_category
      t.string :name

      t.timestamps

    end
  end
end
