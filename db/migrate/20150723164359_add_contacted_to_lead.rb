class AddContactedToLead < ActiveRecord::Migration
  def change
    add_column :leads, :contacted, :boolean, default: false
  end
end
