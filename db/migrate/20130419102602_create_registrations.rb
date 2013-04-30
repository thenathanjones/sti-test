class CreateRegistrations < ActiveRecord::Migration
  def change
    create_table :registrations do |t|
      t.integer :regulatory_object_id
      t.integer :organisation_id
      t.string :outcome
      t.text :type_fields
      t.string :objective_file_id
      t.datetime :effective_date

      t.timestamps
    end
  end
end
