class CreateProfiles < ActiveRecord::Migration[6.1]
  def change
    create_table :profiles do |t|
      t.string  :developer_type
      t.string  :preferred_languange
      t.integer :points
      t.string  :ranking, default: 0
      t.text    :bio
      t.references :user, null: false, foreign_key: true

      t.timestamps
    end
  end
end
