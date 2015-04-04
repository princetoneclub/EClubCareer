class ChangeDescriptionToText < ActiveRecord::Migration
  def change
    change_column :postings, :description, :text, :limit => 65535
  end
end
