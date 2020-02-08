class AddEmailToProfil < ActiveRecord::Migration[5.2]
  def change
    add_column :profils, :email, :string
  end
end
