class CreatePostings < ActiveRecord::Migration
  def change
    create_table :postings do |t|
      t.string :title
      t.string :location
      t.string :type
      t.string :description
      t.datetime :deadline

      t.timestamps
    end
  end
end
