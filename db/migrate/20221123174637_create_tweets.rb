class CreateTweets < ActiveRecord::Migration[7.0]
  def change
    create_table :tweets do |t|
      t.integer :user_id
      t.string :text

      t.timestamps
    end
  end
end
