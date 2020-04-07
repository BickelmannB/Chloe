class ChangeColumnEmailToContact < ActiveRecord::Migration[5.2]
  def change
    change_column :contacts, :email_contact, :string, default: "annickbibaut@gmail.com"
  end
end
