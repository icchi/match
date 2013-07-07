class CreateWorkers < ActiveRecord::Migration
  def change
    create_table :workers do |t|
      t.string :dept
      t.string :org
      t.string :name
      t.string :sales_rep
      t.date :confirmed_date

      t.timestamps
    end
  end
end
