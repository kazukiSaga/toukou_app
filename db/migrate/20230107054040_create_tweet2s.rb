class CreateTweet2s < ActiveRecord::Migration[7.0]
  def change
    create_table :tweet2s do |t|
      t.text :content

      t.timestamps
    end
  end
end
