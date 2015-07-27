class ChangeContactedInLead < ActiveRecord::Migration
  def change
  	change_column :leads, :contacted, :string, default: "No"
  end
end
