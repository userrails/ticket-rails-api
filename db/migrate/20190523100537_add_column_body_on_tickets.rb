class AddColumnBodyOnTickets < ActiveRecord::Migration[5.2]
  def change
    add_column :tickets, :body, :text
  end
end
