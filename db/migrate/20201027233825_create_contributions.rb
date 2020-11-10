class CreateContributions < ActiveRecord::Migration[6.0]
  def change
    create_table :contributions do |t|
      t.string :title
      t.string :url
      t.string :text
      t.string :creator
      
      t.timestamps
    end
  end
end
