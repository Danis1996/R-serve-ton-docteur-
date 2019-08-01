class CreateFields < ActiveRecord::Migration[6.0]
  def change
    create_table :fields do |t|
      t.belongs_to :doctor, index: true
      t.belongs_to :specialty, index: true
      t.timestamps
    end
  end
end
