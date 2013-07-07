class CreateAssginments < ActiveRecord::Migration
  def change
    create_table :assginments do |t|
      t.date :start_date
      t.date :end_date
      t.references :worker, index: true
      t.references :project, index: true

      t.timestamps
    end
  end
end
