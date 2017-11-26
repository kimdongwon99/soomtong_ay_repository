class CreateVideoposts < ActiveRecord::Migration
  def change
    create_table :videoposts do |t|
      t.string :video_title
      t.text :video_content
      t.integer :hit
      t.string :user_name
      t.references :user, index: true, foreign_key: true
      
      t.string :image_url, :default =>""

      t.timestamps null: false
    end
  end
end
