class CreateOrderingLinks < ActiveRecord::Migration
  def change
    create_table :ordering_links do |t|
      t.string :url

      t.timestamps null: false
    end
  end
end
