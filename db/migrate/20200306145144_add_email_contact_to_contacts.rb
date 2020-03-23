class AddEmailContactToContacts < ActiveRecord::Migration[5.2]
  def change
    add_column :contacts, :email_contact, :string
  end
end
