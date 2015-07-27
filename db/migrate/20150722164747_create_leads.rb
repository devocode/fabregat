class CreateLeads < ActiveRecord::Migration
  def change
    create_table :leads do |t|
      t.string :first_name
      t.string :last_name
      t.string :email
      t.string :subject
      t.text :message

      t.timestamps null: false
    end
  end
end
