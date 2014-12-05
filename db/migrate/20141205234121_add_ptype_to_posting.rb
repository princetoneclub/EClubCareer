class AddPtypeToPosting < ActiveRecord::Migration
  def change
    add_column :postings, :ptype, :string
  end
end
