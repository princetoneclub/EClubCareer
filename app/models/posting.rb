class Posting < ActiveRecord::Base
  validates_presence_of :title, :description, :location, :ptype # :deadline # TODO
end
