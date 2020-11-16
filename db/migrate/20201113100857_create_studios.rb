class CreateStudios < ActiveRecord::Migration[6.0]
  def change
    create_table :studios do |t|
      t.string     :name,  null: false
      t.integer    :price, null: false
      t.references :admin, foreign_key: true
      t.timestamps
    end
  end
end
