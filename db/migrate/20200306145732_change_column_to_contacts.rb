class ChangeColumnToContacts < ActiveRecord::Migration[5.2]
  def change
    change_column :contacts, :email_contact, :string, default: "toto@toto.fr"
  end
end
