class CreateProfiles < ActiveRecord::Migration
  def change
    create_table :profiles do |t|
      t.string :restaurant_name
      t.string :short_intro
      t.string :address
      t.text :about
      t.string :phone_number
      t.string :email
      t.string :iphone_app
      t.string :android_app
      t.string :monday_hours
      t.string :tuesday_hours
      t.string :wednesday_hours
      t.string :thursday_hours
      t.string :friday_hours
      t.string :saturday_hours
      t.string :sunday_hours

      t.timestamps null: false
    end
  end
end
