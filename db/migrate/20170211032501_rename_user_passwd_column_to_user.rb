class RenameUserPasswdColumnToUser < ActiveRecord::Migration[5.0]
  def change
    rename_column :users,:user_passwd,:password
  end
end
