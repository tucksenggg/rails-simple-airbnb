class AddUrlToFlats < ActiveRecord::Migration[7.1]
  def change
    add_column :flats, :url, :string
  end
end
