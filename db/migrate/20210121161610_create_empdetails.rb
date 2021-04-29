class CreateEmpdetails < ActiveRecord::Migration[6.0]
  def change
    create_table :empdetails do |t|
      t.string :name
      t.string :role
      t.string :email
      t.string :phone_number
      t.string :location

      t.timestamps
    end
  end
end
