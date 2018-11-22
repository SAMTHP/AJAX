class AddReadedToEmails < ActiveRecord::Migration[5.2]
  def change
    add_column :emails, :readed, :boolean
  end
end
