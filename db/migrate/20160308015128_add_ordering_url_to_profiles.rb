class AddOrderingUrlToProfiles < ActiveRecord::Migration
  def change
    add_column :profiles, :ordering_url, :string
  end
end
