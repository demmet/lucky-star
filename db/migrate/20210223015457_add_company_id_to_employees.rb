class AddCompanyIdToEmployees < ActiveRecord::Migration[6.0]
  def change
    add_reference :employees, :company, null: false, foreign_key: true
  end
end
