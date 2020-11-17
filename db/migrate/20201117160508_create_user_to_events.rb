class CreateUserToEvents < ActiveRecord::Migration[6.0]
  def change
    create_table :user_to_events do |t|
      t.belongs_to :user, index: true
      t.belongs_to :event, index: true
      t.timestamps
    end
  end
end
