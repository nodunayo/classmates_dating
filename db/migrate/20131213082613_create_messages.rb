class CreateMessages < ActiveRecord::Migration
  def change
    create_table :messages do |t|
      t.belongs_to :sender, index: true
      t.belongs_to :recipient, index: true
      t.text :body

      t.timestamps
    end
  end
end
