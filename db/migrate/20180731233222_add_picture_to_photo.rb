class AddPictureToPhoto < ActiveRecord::Migration[5.0]
  def change
    add_column :photos, :pictures, :string
  end
end
