class CreateFunerals < ActiveRecord::Migration[7.2]
  def change
    create_table :funerals do |t|
      t.string :first_name
      t.string :middle_name
      t.string :last_name
      t.datetime :date_of_birth
      t.string :email
      t.string :phone
      t.string :street_address
      t.string :apt_or_suite_number
      t.string :city
      t.string :state
      t.string :zip
      t.string :funeral_home_name
      t.string :funeral_home_city
      t.string :name_of_deceased
      t.integer :purchase_amount
      t.boolean :credit_check_authorized
      t.boolean :electronic_disclosures_authorized
      t.string :bank_name
      t.string :bank_account_number
      t.string :bank_routing_number
      t.boolean :automatic_withdrawal_authorized

      t.timestamps
    end
  end
end
