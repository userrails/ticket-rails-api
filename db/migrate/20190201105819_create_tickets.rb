class CreateTickets < ActiveRecord::Migration[5.2]
  def change
    create_table :tickets do |t|
      t.string :title
      t.datetime :issued_date, default: Time.now
      t.string :source
      t.string :destination
      t.boolean :status, default: 'false'

      t.timestamps
    end
  end
end
