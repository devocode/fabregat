class RemoveColumn < ActiveRecord::Migration
  def change
  	remove_column :leads, :subject
  end
end
