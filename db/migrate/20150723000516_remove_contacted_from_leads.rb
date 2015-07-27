class RemoveContactedFromLeads < ActiveRecord::Migration
  def change
  	remove_column :leads, :contacted
  end
end
