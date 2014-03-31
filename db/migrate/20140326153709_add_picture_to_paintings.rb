class AddPictureToPaintings < ActiveRecord::Migration
  def change
    add_column :paintings, :picture, :string
  end
end
