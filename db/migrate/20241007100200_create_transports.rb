class CreateTransports < ActiveRecord::Migration[7.1]
  def change
    create_table :transports do |t|
      t.string :description
      t.string :status
      t.integer :assigned_to
      t.integer :requested_by

      t.timestamps
    end
  end
end
