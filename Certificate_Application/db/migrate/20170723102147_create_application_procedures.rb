class CreateApplicationProcedures < ActiveRecord::Migration[5.1]
  def change
    create_table :application_procedures do |t|
      t.string :certificate_type
      t.string :user_id
      t.string :payment

      t.timestamps
    end
  end
end
