class AddApiKeyToUsers < ActiveRecord::Migration[6.0]
  def change
    add_column :users, :apiKey, :string, unique: true
  end
end
