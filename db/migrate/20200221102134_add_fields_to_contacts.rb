class AddFieldsToContacts < ActiveRecord::Migration[5.2]
  def change
    add_column :contacts, :email, :string
    add_column :contacts, :telephone, :string
    add_column :contacts, :demande, :text
  end
end
