class AddEmail2ToContact < ActiveRecord::Migration[5.2]
  def change
    add_column :contacts, :email2, :string
  end
end
