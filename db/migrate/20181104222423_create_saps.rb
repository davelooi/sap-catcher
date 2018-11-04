class CreateSaps < ActiveRecord::Migration[5.2]
  def change
    create_table :saps do |t|
      t.jsonb 'payload'
      t.timestamps
    end
  end
end
