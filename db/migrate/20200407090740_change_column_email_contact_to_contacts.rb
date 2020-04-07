class ChangeColumnEmailContactToContacts < ActiveRecord::Migration[5.2]
  def change
    change_column :contacts, :email_contact, :string, default: "bumpz13009@gmail.com"
  end
end
