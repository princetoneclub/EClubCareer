class RemoveTypeFromPosting < ActiveRecord::Migration
  def change
    remove_column :postings, :type, :string
  end
end
