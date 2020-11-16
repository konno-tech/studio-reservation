class CreateReservations < ActiveRecord::Migration[6.0]
  def change
    create_table :reservations do |t|
      t.date       :date,               null:        false
      t.integer    :time_from_id,       null:        false
      t.integer    :time_to_id,         null:        false
      t.integer    :number_of_users_id, null:        false
      t.text       :note,               null:        false
      t.integer    :payment_method_id,  null:        false
      t.references :user,               foreign_key: true
      t.references :reserve,            foreign_key: true
      t.timestamps
    end
  end
end
