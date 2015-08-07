class AddTelephoneToLeads < ActiveRecord::Migration
  def change
    add_column :leads, :telephone, :string
  end
end
